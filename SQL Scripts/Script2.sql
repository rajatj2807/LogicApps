IF OBJECT_ID(N'dbo.TRACKER', N'U') IS NULL
BEGIN
    CREATE TABLE TRACKER (
		[TrackerName] VARCHAR(255) PRIMARY KEY,
		[TrackerValue] VARCHAR(255)
	);
	INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('StandardLicense','0');
END

IF OBJECT_ID(N'dbo.TRACKER', N'U') IS NOT NULL
BEGIN
	IF NOT EXISTS (SELECT * FROM dbo.TRACKER WHERE TrackerName = N'StandardLicense')
	BEGIN
		INSERT INTO TRACKER(TrackerName,TrackerValue) VALUES ('StandardLicense','0');
	END
END

IF OBJECT_ID(N'dbo.SIMA_STANDARD_STEEL_LICENSE', N'U') IS NULL
BEGIN
	CREATE TABLE SIMA_STANDARD_STEEL_LICENSE (
	[Account_ID] INTEGER,
	[ExpirationDate] DATE,
	[LicenseNumber] VARCHAR(255),
	[ApplicationDate] DATE,
	[HTS Code] VARCHAR(255),
	[ValidFromDate] DATE,
	[Title] VARCHAR(255),
	[JsonData] VARCHAR(MAX),
	[LicenseStatus] VARCHAR(255)
	);
END
