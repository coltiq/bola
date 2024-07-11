package main

import (
	"log"
	"os"
	"path/filepath"

	"github.com/coltiq/bola/internal/app"
	"github.com/coltiq/bola/util"
)

func main() {
	// Check if program is running for the first time
	markerFilePath := filepath.Join("configs", ".bola_marker")

	// First time
	if !util.FileExists(markerFilePath) {
		file, err := os.Create(markerFilePath)
		if err != nil {
			log.Printf("Unable to create marker file: %s", err)
		}
		file.Close()
		// First time loads installation on start
		app.Installation()
		os.Exit(0)
	}

	// Non-first time
	app.Start()
}
