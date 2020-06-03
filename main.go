package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	// Register endpoints
	http.HandleFunc("/", helloWorld)

	// Get the port
	port := os.Getenv("PORT")
	if port == "" {
		panic("❌ Port not specified")
	}

	// Launch the server
	log.Printf("📡 Serving traffic on port %v\n", port)
	http.ListenAndServe(fmt.Sprintf(":%v", port), nil)
}

func helloWorld(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Hello, world!"))
}
