CREATE DATABASE Learn_T_SQL
ON
( NAME = Learn_T_SQL_data,
	FILENAME = 'C:\Learn T-SQL\Learn_T_SQL_data.mdf'
)
LOG ON
( NAME = Learn_T_SQL_log,
	FILENAME = 'C:\Learn T-SQL\Learn_T_SQL_log.ldf'
) ;