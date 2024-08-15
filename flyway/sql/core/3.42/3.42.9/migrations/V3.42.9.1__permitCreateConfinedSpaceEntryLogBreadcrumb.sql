BEGIN
	INSERT INTO [dbo].[kioskBreadcrumb] 
            ([kbcIsActive],
            [kbcSection],
            [kbcPage],
            [kbcTitle],
            [kbcParentID],
            [kbcIsLinkClickable],
            [kbcIsFeatureLink],
            [kbcIsSelectableLink],
            [kbcIsSuperuserOnly],
            [kbcOrder],
            [kioskID],
            [kaID]) 
	VALUES(1
            ,'permitCreate'
            ,'confinedSpaceEntryLog'
            ,'SECURITY BREADCRUMB - for Confined Space Entry Log'
            ,1
            ,0
            ,0
            ,0
            ,0
            ,0
            ,0
            ,1)
	PRINT 'Added breadcrumb confinedSpaceEntryLog'
END