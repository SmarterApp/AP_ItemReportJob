#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/@kubecfgDeployment@ ap-item-report-job=@dockerTagBase@/ap-item-report-job:@version@