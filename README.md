# ceph-monitoring
A monitoring configuration for ceph using prometheus and grafana.

## Requirements

- a running kubernetes 1.7+ cluster
- a running ceph 12+ cluster
- [Prometheus operator](https://github.com/coreos/prometheus-operator/) installed

## Prepare

Enable cephs prometheus exporter:
```
# ceph mgr module enable prometheus
```

After cloning this repo, change the target configuration in configs/ceph_targets.yml to your Ceph MGR endpoints and run:

```
# ./deploy.sh
```

