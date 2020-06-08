// This is a generated file. Do not edit directly.

module k8s.io/sample-cli-plugin

go 1.13

require (
	github.com/spf13/cobra v1.0.0
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20200616102832-a8624640395d
	k8s.io/client-go v0.0.0-20200616091859-0adb702ae49b
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20200616091053-96dd8b8608bc
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20200616090325-1a0ee4aea6d1
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20200616102832-a8624640395d
	k8s.io/client-go => k8s.io/client-go v0.0.0-20200616091859-0adb702ae49b
)
