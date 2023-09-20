connect_DB <- function(){

  con <- 
    DBI::dbConnect( odbc::odbc() , 
                    Driver = "ODBC Driver 17 for SQL Server", 
                    Server = "DESKTOP-459D1RS" , 
                    Database = "AdventureWorksDW2017" , 
                    trusted_connection = "yes" ,
                    port = 1433 )
  
  con
    
}


