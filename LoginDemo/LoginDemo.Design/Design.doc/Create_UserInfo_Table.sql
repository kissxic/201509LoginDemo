USE [UserDB]
GO

/****** Object:  Table [dbo].[User]    Script Date: 2015/9/18 17:34:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserInfo](
	ID BIGINT IDENTITY(1,1) NOT NULL,
	ACCOUNT NVARCHAR(50) NOT NULL,
	USERPASSWORD NVARCHAR(50) NOT NULL,
	NICKNAME NVARCHAR(30) NULL,
	GENDER BIT NULL,
	COMPANYNAME NVARCHAR(50) NULL,
	USERADDRESS NVARCHAR(100) NULL,
	REMARK NVARCHAR(100) NULL ,

	CONSTRAINT [PK_USER_USERID] PRIMARY KEY CLUSTERED
	(
		ID ASC 
	)WITH(PAD_INDEX =OFF,STATISTICS_NORECOMPUTE =OFF,IGNORE_DUP_KEY =OFF,ALLOW_ROW_LOCKS =ON,ALLOW_PAGE_LOCKS =ON )ON [PRIMARY]
)ON [PRIMARY]

GO

CREATE TABLE [DBO].[UserInfo_AccountType_Mapping](
	ID BIGINT IDENTITY(1,1) NOT NULL,
	UserInfo_ID BIGINT NOT NULL,
	UserAccount_Type INT NOT NULL,
	CONSTRAINT [PK_USERACCOUNTTYPEMAP_ID] PRIMARY KEY CLUSTERED
	(
		ID ASC 
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
GO



