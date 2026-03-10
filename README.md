# Talos Cluster Bootstrap

## Description

A simple Ansible playbook to bootstrap a Talos cluster. The playbook will provision the control plane and worker nodes, install Cilium, and upgrade the cluster when needed.

## Prerequisites

- `Ansible` installed on the local machine.
- `Talosctl` installed on the local machine.
- `Helm` installed on the local machine.
- Access to the nodes where the cluster will be provisioned.
- The nodes should have the necessary network connectivity and permissions to allow Ansible to manage them.

## How to use

### Provision the cluster

1. Edit `roles/talos/vars/main.yml` to set the desired Talos and Kubernetes versions.
    a. When creating the cluster set `run_setup: true` for the cluster.
    b. When running the playbook again to upgrade the cluster, set `run_setup: false` for the cluster to skip the setup tasks and only run the upgrade tasks.
2. Run the playbook:

    ```bash
    make
    ```

### Upgrade the cluster

1. Edit `roles/talos/vars/main.yml` to set the desired Talos and Kubernetes versions.
2. Run the playbook:

    ```bash
    make
    ```
