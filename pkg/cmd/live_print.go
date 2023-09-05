package cmd

import (
	"github.com/fatih/color"
	"os"
	"os/exec"
	"strconv"
	"strings"
	"time"
)

type Color = color.Color

func LivePrint(lines []string) {
	cmd := exec.Command("clear")
	cmd.Stdout = os.Stdout
	cmd.Run()

	ColorPrintLines(lines)

	time.Sleep(2 * time.Second)
}

func ColorPrintLines(lines []string) {
	colors := [...]*Color{
		color.New(color.FgCyan),
		color.New(color.FgYellow),
		color.New(color.FgMagenta),
		color.New(color.FgWhite),
		color.New(color.FgGreen),
		color.New(color.FgBlue)}

	for index := 0; index < len(lines); index++ {
		colorIndex := index % len(colors)
		colors[colorIndex].Println(lines[index] + " " + strconv.Itoa(index))
	}
}

// MockLines the functions that the plugin will generate for print
func MockLines(count int) []string {
	testText := "pod1 - running - live count:\npod2 - running - live count:\npod3 - running - live count:\npod4 - running - live count:\n"
	testText = testText + strings.Repeat(testText, 3)
	testOutput := strings.Split(testText, "\n")

	for index := 0; index < len(testOutput); index++ {
		testOutput[index] = testOutput[index] + strconv.Itoa(count)
	}
	return testOutput
}
