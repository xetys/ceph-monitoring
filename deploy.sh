#!/bin/sh

kubectl create ns ceph
kubectl -n ceph apply -f prometheus.yaml
kubectl -n ceph apply -f prometheus-service.yaml
kubectl -n ceph create secret generic prometheus-ceph-prometheus --from-file=configs/prometheus.yaml --from-file=configs/ceph_targets.yml --dry-run -o yaml | kubectl apply -f -
kubectl -n ceph apply -f grafana
