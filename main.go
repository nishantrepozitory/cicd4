package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"time"
)

type TimeResponse struct {
	Time string `json:"time"`
	Date string `json:"date"`
}

func handler(w http.ResponseWriter, r *http.Request) {
	t := time.Now()

	timeStr := t.Format("Mon Jan 2 15:04:05 2006")
	dateStr := t.Format("2006-01-02")

	response := TimeResponse{
		Time: timeStr,
		Date: dateStr,
	}

	json.NewEncoder(w).Encode(response)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server listening on port 8080")
	http.ListenAndServe(":8080", nil)
}
