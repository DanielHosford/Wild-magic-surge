DECLARE @DEBUG BIT = 1;
DECLARE @KIOSKID INT = dbo.udf_GetKioskID(db_name());
DECLARE @PASS VARCHAR(255) = '$(OLS_KEY_PASS)';
SET NOCOUNT ON;

IF (@PASS = CONCAT('$', '(OLS_KEY_PASS)') OR @PASS = '')
    BEGIN
        RAISERROR (N'OLS_KEY_PASS is required! Ensure it is set as environment variable and/or running in sqlcmd Mode.',18,-1);
        RETURN
    END

IF OBJECT_ID('tempdb..#APPROVERLIST') IS NOT NULL DROP TABLE #APPROVERLIST;

CREATE TABLE #APPROVERLIST
(
    email  VARCHAR(255),
    active BIT NOT NULL DEFAULT 1
);

-- This script assigns approvers to secondary approver fields
INSERT INTO #APPROVERLIST (email)
VALUES ('approve.permit@onelooksystems.com')
     ,('test.sysadmin@onelooksystems.com')
     ,('chris.ahern@onelooksystems.com')
     ,('dermot.harris@onelooksystems.com')
     ,('luis.almeida@onelooksystems.com')
;

INSERT INTO [permitDropDownApprover] ( [kioskID], [kioskSiteUUID]
                                     , [kuID], [pddaIsActive], [pfID]
                                     , [pddaCreateBy], [pddaCreateUTC])
SELECT @KIOSKID
     , ks.kioskSiteUUID
     , ku.kuid
     , al.active
     , pf.pfID
     , 0
     , GETUTCDATE()
FROM #APPROVERLIST AS al
LEFT JOIN kioskUser AS ku 
    ON CONVERT(VARCHAR(255), DECRYPTBYPASSPHRASE(@PASS, ku.kuemailN)) = al.email
FULL OUTER JOIN kioskSite AS ks 
    ON ks.kioskID = @KIOSKID
    AND ks.kioskSiteUUID IS NOT NULL
FULL OUTER JOIN permitType AS pt 
    ON pt.kioskID = @KIOSKID
    AND pt.ptInitial = 'GRSA'
    AND pt.ptID IS NOT NULL
LEFT JOIN permitField AS pf 
    ON pf.ptID = pt.ptID
    AND pf.pfFieldType IN ('approver', 'pApprover', 'preApprover')
LEFT JOIN permitDropDownApprover AS pdda 
    ON pdda.kioskID = @KIOSKID
    AND pdda.kioskSiteUUID = ks.kioskSiteUUID
    AND pdda.kuID = ku.kuID
    AND pdda.pddaIsActive = al.active
    AND pdda.pfID = pf.pfID
WHERE pdda.pddaID IS NULL;

IF OBJECT_ID('tempdb..#APPROVERLIST') IS NOT NULL DROP TABLE #APPROVERLIST;