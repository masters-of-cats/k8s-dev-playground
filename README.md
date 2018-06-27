# k8s-dev-playground

Based on [cfurman/linux-playground](https://github.com/craigfurman/linux-playground) but with Kubernetes repos ready to go.

## Host requirements

1. Vagrant
   - with vagrant-disksize plugin (`vagrant plugin install vagrant-disksize`)
1. Virtualbox
1. Ansible

## Usage

1. Clone this.
1. Set K8S_DEV_PLAYGROUND_CPUS (Default: number of cores on your host),
   K8S_DEV_PLAYGROUND_MEMORY (in MB. Default: 4096), and
   K8S_DEV_PLAYGROUND_SHARED_DIR (Default: ~/workspace. Mounted at
   /vagrant_data).
1. `./vmup.sh`.
1. The first time you launch tmux in the vm, press prefix+I to install TPM plugins. The
   default prefix is ctrl+space.
1. Run `~/.vim/update` in the VM. This is idempotent but slow, so I didn't want
   to have it run every time while developing this.
1. `cd go/src/k8s.io/kubernetes` and `go get ./...` all the deps. This will be done in as part of the install one day but that day is not now.

## Developing Kubernetes
1. Run tests as root
1. e2e tests require a lot of resources. They broke my mac.
1. Follow contribution guidelines [here](https://github.com/kubernetes/community/blob/c71d8fe460c72eb9e8f1cd1347f89ae3feee0ad7/contributors/guide/README.md#kubernetes-contributor-guide)
