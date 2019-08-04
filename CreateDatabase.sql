EXEC sp_configure filestream_access_level, 2  
RECONFIGURE  

CREATE DATABASE ExampleFileTable
ON PRIMARY
(Name = ExampleFileTable,
FILENAME = 'C:\krzhan\ExampleFileTable\FTDB.mdf'),
FILEGROUP FTFG CONTAINS FILESTREAM
(NAME = ExampleFileTableFS,
FILENAME='C:\krzhan\ExampleFileTable\FS')
LOG ON
(Name = ExampleFileTableLog,
FILENAME = 'C:\krzhan\ExampleFileTable\FTDBLog.ldf')
WITH FILESTREAM (NON_TRANSACTED_ACCESS = FULL,
DIRECTORY_NAME = N'ExampleFileTable');
GO

