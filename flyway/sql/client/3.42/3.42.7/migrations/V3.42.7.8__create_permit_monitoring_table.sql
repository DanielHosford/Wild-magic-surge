SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[permitMonitoringGases](
	[pmgID]  [int] IDENTITY(1,1) NOT NULL,
    [gasID] [int] NULL,
    [ptID] [int] NULL,
	[kioskID] [int] NULL,
    [kioskSiteUUID] [varchar](255) NULL,
    [isActive] [bit] NOT NULL,
    [createUTC] [datetime] NOT NULL,
    [createBy] [int] NOT NULL,
    [deactivateUTC] [datetime] NULL,
    [deactivateBy] [int] NULL
 CONSTRAINT [PK_pmgID_1] PRIMARY KEY CLUSTERED 
(
	pmgID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO