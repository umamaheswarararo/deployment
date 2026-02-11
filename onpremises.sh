#!/bin/bash
#This script is created to install all mdm application on premises environment

mkdir artifacts
mkdir /etc/halofort

BASE_DIR="/etc/halofort"
COMMON_ENV="$BASE_DIR/commons.env"

if [[ ! -s "$COMMON_ENV" ]]; then
  echo "ERROR: common.env missing or empty"
  exit 1
fi

declare -A services=(
  [halo_android_api]=dev-android
  [halo_ios_api]=dev-ios
  [halo_windows]=dev-windows
  [halo_idm]=dev-idm
  [halo_androidtv_api]=dev-android-tv
  [halo_av_api]=dev-av
  [halo_chat_api]=dev-chat
  [halo_messages_api]=dev-messages
  [halo_collector]=dev-collector
  [halo_commons]=dev-commons
  [halo_scheduler]=dev-scheduler
  [halo_reporting_api]=dev-commons
  [halo_digitalsignage_api]=dev-digitalsignage
  [halo_linux_api]=dev-linux
  [halo_supplymgmt_api]=dev-supplymgmt
  [halo_ticket_api]=dev-ticket
  [halo_superadmin_api]=dev-superadmin
  [halo_chromeos_api]=dev-chromeos
)

for svc in "${services[@]}"; do
  DB_NAME="${services[$svc]}"
  ENV_FILE="$BASE_DIR/${svc}_svc.env"
  echo "Creating $ENV_FILE with DB_NAME=$DB_NAME"
  cat "$COMMON_ENV" "$ENV_FILE"
  echo "" >> "$ENV_FILE"
  echo "# Service specific" >> "$ENV_FILE"
  echo "DB_NAME=$DB_NAME" >> "$ENV_FILE"
done

echo "All env files created from common.env"

cd artifacts
curl -O https://pub-340acc7116ac463cb96b980f15c20561.r2.dev/halofort/halo/local-2025.12.2/halo_linux_amd64_08.deb
dpkg -i halo_linux_amd64_08.deb

