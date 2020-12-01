package main

import (
	"database/sql"
	"encoding/csv"
	"fmt"
	"os"

	_ "github.com/go-sql-driver/mysql"
)

// defining constant for database connection
const (
	username = "root"
	password = ""
	hostname = "127.0.0.1:3306"
	dbname   = "task"
)

// function to connect with database(returns a formatted string for connection)
func dsn() string {
	return fmt.Sprintf("%s:%s@tcp(%s)/%s", username, password, hostname, dbname)
}

func main() {
	// connecting with database
	db, err := sql.Open("mysql", dsn())
	if err != nil {
		fmt.Println("Connection To Database Failed")
		panic(err.Error())
	}
	defer db.Close()
	// opening the csv file
	file, err := os.Open("Persons.csv")
	if err != nil {
		fmt.Println("Error Occured : ", err.Error())
	}
	// Reading the csv file
	reader := csv.NewReader(file)
	records, _ := reader.ReadAll()
	// loop through each element of records array and upload them one by one
	fmt.Println("Total Rows To Upload : ", len(records))
	for i := 0; i < len(records); i++ {
		statement, err := db.Prepare("INSERT INTO persons(first_name, last_name, age, blood_group) VALUES (?, ?, ?, ?)")
		if err == nil {
			_, err := statement.Exec(records[i][0], records[i][1], records[i][2], records[i][3])
			if err != nil {
				fmt.Println("Some Error Occur While Uploading Data")
				panic(err.Error())
			} else {
				fmt.Println("Successfully Uploaded This Row : ", records[i])
			}
		} else {
			fmt.Println("Some Error Occur While Inserting Data Into Database")
			os.Exit(0)
		}
	}
	fmt.Println("Done")
}
