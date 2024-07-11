package main

import (
	"fmt"

	"github.com/coltiq/bola/util"
)

func main() {
	// Path to install script
	installScript := "./scripts/install.sh"
	// Run
	err := util.RunScript(installScript)
	if err != nil {
		fmt.Printf("Err: %s", err)
	}
}
