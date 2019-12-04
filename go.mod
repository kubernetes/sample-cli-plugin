// This is a generated file. Do not edit directly.

module k8s.io/sample-cli-plugin

go 1.12

require (
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20191204091503-dc57eadcaaf1
	k8s.io/client-go v0.0.0-20191204083517-ea72ff2b5b2f
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20191204082340-384b28a90b2b
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20191121175448-79c2a76c473a
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20191204091503-dc57eadcaaf1
	k8s.io/client-go => k8s.io/client-go v0.0.0-20191204083517-ea72ff2b5b2f
)
