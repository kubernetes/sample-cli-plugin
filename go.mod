// This is a generated file. Do not edit directly.

module k8s.io/sample-cli-plugin

go 1.12

require (
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20200131202043-1dc23f43cc94
	k8s.io/client-go v0.0.0-20200131194155-0cdd283dfd7a
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20200131193051-d9adff57e763
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20200131192631-731dcecc2054
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20200131202043-1dc23f43cc94
	k8s.io/client-go => k8s.io/client-go v0.0.0-20200131194155-0cdd283dfd7a
)
