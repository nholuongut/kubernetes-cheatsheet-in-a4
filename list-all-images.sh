#!/usr/bin/env bash
## @copyright 2018 nholuong.com
## Licensed under MIT
## https://www.nholuong.com/wp-content/mit_license.txt
##
## Author : Denny <https://www.nholuong.com/contact>
## Description :
## https://cheatsheet.nholuong.com/cheatsheet-kubernetes-A4
## --
## Created : <2018-07-17>
## Updated: Time-stamp: <2018-12-30 19:07:42>
##-------------------------------------------------------------------
# https://kubernetes.io/docs/tasks/access-application-cluster/list-all-running-container-images/
kubectl get pods --all-namespaces -o jsonpath="{..image}" |\
tr -s '[[:space:]]' '\n' |\
sort |\
uniq -c
