// This is a generated file. Do not edit directly.

module k8s.io/sample-cli-plugin

go 1.13

require (
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	k8s.io/cli-runtime v0.0.0-20200429130547-e254e0f0ad5e
	k8s.io/client-go v0.0.0-20200429122812-7b592a8174df
)

replace (
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/api => k8s.io/api v0.0.0-20200429122142-1b2a9461f0df
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20200429121720-6f2abe07e083
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20200429130547-e254e0f0ad5e
	k8s.io/client-go => k8s.io/client-go v0.0.0-20200429122812-7b592a8174df
)
