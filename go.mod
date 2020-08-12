// This is a generated file. Do not edit directly.

module k8s.io/sample-cli-plugin

go 1.13

require (
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20200812060339-cde5fe1397fa
	k8s.io/client-go v0.0.0-20200812053003-c8494005d10a
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20200812052025-e70c4f3b2093
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20200812051649-2a282836017b
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20200812060339-cde5fe1397fa
	k8s.io/client-go => k8s.io/client-go v0.0.0-20200812053003-c8494005d10a
)
