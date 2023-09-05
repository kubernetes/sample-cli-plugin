package cmd

import (
	"fmt"
	"os"
	"os/exec"
	"strconv"
	"strings"
	"time"

	"github.com/fatih/color"

	"context"

	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/client-go/kubernetes"
	"k8s.io/client-go/tools/clientcmd"
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

func LivePodsInformation() []string {
	loadingRules := clientcmd.NewDefaultClientConfigLoadingRules()
	configOverrides := &clientcmd.ConfigOverrides{}
	kubeConfig := clientcmd.NewNonInteractiveDeferredLoadingClientConfig(loadingRules, configOverrides)

	config, _ := kubeConfig.ClientConfig()
	clientset, _ := kubernetes.NewForConfig(config)

	ctx := context.Background()
	pod, _ := clientset.CoreV1().Pods("staging-in-ab-trust-cns-monitor").List(ctx, metav1.ListOptions{})

	var pods []string
	for _, p := range pod.Items {
		pods = append(pods, fmt.Sprintf("%s - %s - %s\n", p.ObjectMeta.Name, p.Status.Phase, p.Status.StartTime))
	}
	return pods
}
