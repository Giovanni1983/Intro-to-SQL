library( RODBC )

sql_query_char <- 
  "SELECT * FROM FactCallCenter"


db_conn_0 <-
  DBI::dbConnect( odbc::odbc() , 
                  Driver = "ODBC Driver 17 for SQL Server", 
                  Server = "DESKTOP-459D1RS" , 
                  Database = "AdventureWorksDW2017" , 
                  trusted_connection = "yes" ,
                  port = 1433 )

DBI::dbGetQuery( db_conn_0 , sql_query_char )


db_conn_1 <- odbcConnect( dsn = "LocalDSN" , rows_at_time = 1 )

sqlQuery( db_conn_1 , sql_query_char , stringsAsFactors = F )




