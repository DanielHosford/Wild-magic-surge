USE [v3_sp]

UPDATE [dbo].[kioskApplications]
SET [remoteURL] = 'https://accelerate-dev1.ehs.dev/loto'
WHERE [kaName] = 'LOTO'