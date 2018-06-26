/*
	Gets the number of pages, record count and the data structures (IN_ROW, LOB, OVERFLOW)
	for a given table
*/

SELECT *
FROM sys.dm_db_index_physical_stats(DB_ID()
	, OBJECT_ID('TableName')
	, NULL
	, NULL
	, NULL) -- Possible vales: NULL (Limited), Detailed, Sampled.