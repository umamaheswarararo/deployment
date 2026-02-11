#!/bin/bash

#androidtv
echo "-------------------------"
echo "deploying androidtv"
source value.sh
cat android-tv-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/android-tv-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#android-api
echo "-------------------------"
echo "deploying android-api"
source value.sh
cat android-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/android-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#av-api
echo "-------------------------"
echo "deploying av-api"
source value.sh
cat av-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/av-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#certmgr
echo "-------------------------"
echo "deploying certmgr"
source value.sh
cat certmgr-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/certmgr-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#chat-api
echo "-------------------------"
echo "deploying chat-api"
source value.sh
cat chat-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/chat-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#collector
echo "-------------------------"
echo "deploying collector"
source value.sh
cat collector-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/collector-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#commons
echo "-------------------------"
echo "deploying commons"
source value.sh
cat commons-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/commons-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -


#digital-signage-api
echo "-------------------------"
echo "deploying digital-signage-api"
source value.sh
cat digital-signage-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/digital-signage-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

# emm-api
echo "-------------------------"
echo "deploying emm-web"
source release.sh
cat ./templates/emm-portal-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#enroll-web
echo "-------------------------"
echo "deploying enroll-web"
source release.sh
cat ./templates/enroll-web-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#files-api
echo "-------------------------"
echo "deploying files-api"
source value.sh
cat files-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/files-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#IDM
echo "-------------------------"
echo "deploying idm"
source value.sh
cat idm-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/idm-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#IOS
echo "-------------------------"
echo "deploying ios"
source value.sh
cat ios-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/ios-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#messages-api
echo "-------------------------"
echo "deploying messages-api"
source value.sh
cat messages-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/messages-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#monitoring
echo "-------------------------"
echo "deploying monitoring"
source value.sh
cat monitoring-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/monitoring-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

# pipelines
echo "-------------------------"
echo "deploying pipelines"
source value.sh
cat pipelines-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/pipelines-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#reporting
echo "-------------------------"
echo "deploying reporting"
source value.sh
cat reporting-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/reporting-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#scheduler
echo "-------------------------"
echo "deploying scheduler"
source value.sh
cat scheduler-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/scheduler-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#webapp
echo "-------------------------"
echo "deploying webapp"
source release.sh
cat ./templates/webapp-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -


#superadmin
echo "-------------------------"
echo "deploying superadmin"
source release.sh
cat ./templates/superadmin-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#superadmin-api
echo "-------------------------"
echo "deploying superadmin-api"
source value.sh
cat superadmin-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/superadmin-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -


#linux-api
echo "-------------------------"
echo "deploying linux-api"
source value.sh
cat linux-api-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/linux-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#ticketing-web
echo "-----------------------"
echo "deploying ticket-web"
source release.sh
cat ./templates/ticketing-web-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#ticketing-api
echo "-------------------------"
echo "deploying ticketing-api"
source value.sh
cat ticketing-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/ticketing-api-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -


#windows
echo "-------------------------"
echo "deploying window"
source value.sh
cat windows-config.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -
source release.sh
cat ./templates/windows-deployment.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -

#ingress
echo "---------------"
echo "deploying ingress"
cat  ingress.yaml | envsubst | kubectl apply -n ${KUBE_NS} -f -



