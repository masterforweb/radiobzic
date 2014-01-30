BEGIN TRANSACTION;

----
-- Table structure for Radio
----
CREATE TABLE [Radio]
(
    [RadioId] INTEGER  NOT NULL,
    [Name] NVARCHAR(160)  NOT NULL,
    [StyleId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Radio] PRIMARY KEY  ([RadioId]),
    FOREIGN KEY ([StyleId]) REFERENCES [Style] ([StyleId]) 
		ON DELETE NO ACTION ON UPDATE NO ACTION
);


----
-- Table structure for Style
----
CREATE TABLE [Style]
(
	[StyleId] INTEGER  NOT NULL,
    [url] NVARCHAR(160)  NOT NULL,

)



----
-- Table structure for Style
----
CREATE TABLE [Url]
(
	[UrlId] INTEGER  NOT NULL,
	[Url] NVARCHAR(220)  NOT NULL,
	[Quality] INTEGER,
	[RadioId] INTEGER  NOT NULL
	CONSTRAINT [PK_Url] PRIMARY KEY  ([UrlId]),
    FOREIGN KEY ([RadioId]) REFERENCES [Radio] ([RadioId]) 
		ON DELETE NO ACTION ON UPDATE NO ACTION


quality


)



COMMIT;