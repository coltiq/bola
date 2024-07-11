package main

import (
	"fmt"
	"path/filepath"

	"github.com/coltiq/bola/util"
)

func main() {
	// Path to install script
	installScript := filepath.Join("scripts", "install.sh")
	// Run
	err := util.RunScript(installScript)
	if err != nil {
		fmt.Printf("Err: %s", err)
	}
}
