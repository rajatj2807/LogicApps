IF OBJECT_ID(N'dbo.TRACKER', N'U') IS NULL
BEGIN
    CREATE TABLE TRACKER (
		[TrackerName] VARCHAR(255) PRIMARY KEY,
		[TrackerValue] VARCHAR(255)
	);
END

IF OBJECT_ID(N'dbo.TRACKER', N'U') IS NOT NULL
BEGIN
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'WIN_Contributor__c')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('WIN_Contributor__c','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'RecordType')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('RecordType','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'Industry__c')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('Industry__c','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'CASE_CONTRIBUTOR__C')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('CASE_CONTRIBUTOR__C','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'TASK')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('TASK','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'CASE')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('CASE','2000-01-01T00:00:00Z');
	END
	
	IF NOT EXISTS (SELECT 1 FROM dbo.TRACKER WHERE TrackerName = N'USER')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('USER','2000-01-01T00:00:00Z');
	END
END


IF OBJECT_ID(N'dbo.WIN_CONTRIBUTOR_SALESFORCE', N'U') IS NULL
BEGIN
	CREATE TABLE WIN_CONTRIBUTOR_SALESFORCE (
	[CreatedById] VARCHAR(255),
	[CreatedDate] DATE,
	[Id] VARCHAR(255),
	[IsDeleted] VARCHAR(256),
	[LastModifiedById] VARCHAR(255),
	[LastModifiedDate] DATE,
	[LastReferencedDate] DATE,
	[LastViewedDate] DATE,
	[Name] VARCHAR(256),
	[OwnerId] VARCHAR(255),
	[SystemModstamp] VARCHAR(255),
	[Contributor_Name__c] VARCHAR(255),
	[Contributor__c] VARCHAR(256),
	[Inactive__c] VARCHAR(256),
	[Office__c] VARCHAR(256),
	[Organization__c] VARCHAR(255),
	[Original_Office__c] VARCHAR(256),
	[RH_Lev_1_GM_All__c] VARCHAR(256),
	[RH_Lev_2_DAS__c] VARCHAR(256),
	[RH_Lev_3_Region_2__c] VARCHAR(256),
	[RH_Lev_4_Region_1__c] VARCHAR(256),
	[RH_Lev_5_Country__c] VARCHAR(256),
	[RH_Lev_6_Office__c] VARCHAR(256),
	[RH_Lev_7_Individual__c] VARCHAR(256),
	[Run_As_User__c] VARCHAR(256),
	[WIN_Contributor_ID__c] VARCHAR(255),
	[WIN_Contributor_One__c]VARCHAR(255),
	[WIN__c] VARCHAR(255)
	);
END

IF OBJECT_ID(N'dbo.RECORDTYPE_SALESFORCE', N'U') IS NULL
BEGIN
	CREATE TABLE RECORDTYPE_SALESFORCE (
	[BusinessProcessId] VARCHAR(255),
	[CreatedById] VARCHAR(255),
	[CreatedDate] DATE,
	[Description] VARCHAR(256),
	[DeveloperName]VARCHAR(256),
	[Id] VARCHAR(255),
	[IsActive] VARCHAR(256),
	[LastModifiedById] VARCHAR(255),
	[LastModifiedDate] DATE,
	[Name] VARCHAR(256),
	[NamespacePrefix] VARCHAR(256),
	[SobjectType] VARCHAR(256),
	[SystemModstamp] DATE,
	);
END

IF OBJECT_ID(N'dbo.INDUSTRY__C_SALESFORCE', N'U') IS NULL
BEGIN
	CREATE TABLE INDUSTRY__C_SALESFORCE (
	[Id] VARCHAR(255),
	[IsDeleted] VARCHAR(256),
	[Case_Industrial_Hierarchy__c] VARCHAR(256),
	[Industry__c] VARCHAR(256),
	[Organization__c] VARCHAR(256),
	[Sector__c] VARCHAR(256),
	[Sub_Sector__c] VARCHAR(256),
	[WIN_Industrial_Hierarchy__c] VARCHAR(255) 
	);
END

IF OBJECT_ID(N'dbo.CASE__C', N'U') IS NULL
BEGIN
	CREATE TABLE CASE__C(
	[Id] VARCHAR(255),
	[CaseNumber]VARCHAR(256),
	[AccountId]VARCHAR(256),
	[ParentId]VARCHAR(256),
	[Type]VARCHAR(256),
	[RecordTypeId]VARCHAR(256),
	[Status]VARCHAR(256),
	[Reason]VARCHAR(256),
	[Subject]VARCHAR(256),
	[IsClosed]VARCHAR(256),
	[ClosedDate]VARCHAR(256),
	[IsEscalated]VARCHAR(256),
	[OwnerId]VARCHAR(255),
	[CreatedDate]VARCHAR(256),
	[Fee__c]VARCHAR(256),
	[Industry_Sector__c]VARCHAR(256),
	[Other_Countries__c]VARCHAR(256),
	[Primary_Country__c]VARCHAR(256),
	[Record_Type__c]VARCHAR(256),
	[Record_type_selector__c]VARCHAR(256),
	[Request_Case_Removal__c]VARCHAR(256),
	[Actual_Create_Date__c]VARCHAR(256),
	[Actual_Case_Closed_Date__c]VARCHAR(256)
	);
END

IF OBJECT_ID(N'dbo.TASK', N'U') IS NULL
BEGIN
	CREATE TABLE TASK(
	[Id] VARCHAR(255),
	[RecordTypeId]VARCHAR(255),
	[WhoId]VARCHAR(255),
	[WhatId]VARCHAR(255),
	[Subject]VARCHAR(256),
	[ActivityDate]VARCHAR(256),
	[Status]VARCHAR(256),
	[Priority]VARCHAR(256),
	[IsHighPriority]VARCHAR(256),
	[OwnerId]VARCHAR(255),
	[IsDeleted]VARCHAR(256),
	[AccountId]VARCHAR(255),
	[IsClosed]VARCHAR(256),
	[CreatedDate]VARCHAR(256),
	[CreatedById]VARCHAR(255),
	[LastModifiedDate]VARCHAR(256),
	[LastModifiedById]VARCHAR(256),
	[SystemModstamp]VARCHAR(256),
	[IsArchived]VARCHAR(256),
	[TaskSubtype]VARCHAR(256),
	[Investment_Promotion__c]VARCHAR(256),
	[RH_Lev_1_GM_All__c]VARCHAR(256),
	[RH_Lev_2_DAS__c]VARCHAR(256),
	[RH_Lev_3_Region_2__c]VARCHAR(256),
	[RH_Lev_4_Region_1__c]VARCHAR(256),
	[RH_Lev_5_Country__c]VARCHAR(256),
	[RH_Lev_6_Office__c]VARCHAR(256),
	[RH_Lev_7_Individual__c]VARCHAR(256),
	[Related_to_Case__c]VARCHAR(256),
	[eMenu_ID_c__c]VARCHAR(256),
	[eMenu_Org_Name__c]VARCHAR(256),
	[Actual_Create_Date__c]VARCHAR(256)
	);
END

IF OBJECT_ID(N'dbo.CASE_CONTRIBUTOR__C', N'U') IS NULL
BEGIN
	CREATE TABLE CASE_CONTRIBUTOR__C(
	[Id] VARCHAR(255),
	[CreatedDate]VARCHAR(256),
	[CreatedById]VARCHAR(256),
	[LastModifiedDate]VARCHAR(256),
	[LastModifiedById]VARCHAR(256),
	[SystemModstamp]VARCHAR(256),
	[Case_ID__c]VARCHAR(256),
	[RH_Lev_6_Office__c]VARCHAR(256),
	[Contributor_Name__c]VARCHAR(256),
	[Contributor__c]VARCHAR(256),
	[RH_Lev_1_GM_All__c]VARCHAR(256),
	[RH_Lev_2_DAS__c]VARCHAR(256),
	[RH_Lev_3_Region_2__c]VARCHAR(256),
	[RH_Lev_4_Region_1__c]VARCHAR(256),
	[RH_Lev_5_Country__c]VARCHAR(256),
	[RH_Lev_7_Individual__c]VARCHAR(256)
	);
END

IF OBJECT_ID(N'dbo.USER__C', N'U') IS NULL
BEGIN
	CREATE TABLE USER__C( 
	[Id] VARCHAR(255),
	[Username]VARCHAR(256),
	[LastName]VARCHAR(256),
	[FirstName]VARCHAR(256),
	[Name]VARCHAR(256),
	[CompanyName]VARCHAR(256),
	[Division]VARCHAR(256),
	[Department]VARCHAR(256),
	[Title]VARCHAR(256),
	[Street]VARCHAR(256),
	[City]VARCHAR(256),
	[State]VARCHAR(256),
	[PostalCode]VARCHAR(256),
	[Country]VARCHAR(256),
	[Alias]VARCHAR(256),
	[CommunityNickname]VARCHAR(256),
	[IsActive]VARCHAR(256),
	[UserRoleId]VARCHAR(256),
	[ProfileId]VARCHAR(256),
	[UserType]VARCHAR(256),
	);
END

