package util

import (
	"os"
	"os/exec"
)

func RunScript(scriptPath string) error {
	cmd := exec.Command("/bin/sh", scriptPath)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	return cmd.Run()
}
