package main

import (
	"database/sql"
	"encoding/csv"
	"fmt"
	"os"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	// connecting with database
	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/task")
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
