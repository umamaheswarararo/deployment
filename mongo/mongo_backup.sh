#!/bin/bash

# Configuration
CONTAINER_NAME="mongo"
DB_USER=""
DB_PASSWORD=""
BASE_BACKUP_DIR="/root/backup/mongo/dev"
S3_BUCKET="emm-devbackups"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Define databases and their respective S3 folders
declare -A DATABASES
DATABASES["prod-andmgmt"]="prodandmgmt"
DATABASES["prod-android-tv"]="prodandtv"
DATABASES["prod-android"]="prodandroid"
DATABASES["prod-av"]="prodav"
DATABASES["prod-commons"]="prodcommons"
DATABASES["prod-certmgr"]="prodcertmgr"
DATABASES["prod-chat"]="prodchat"
DATABASES["prod-files"]="prodfiles"
DATABASES["prod-idm"]="prodidm"
DATABASES["prod-ios"]="prodios"
DATABASES["prod-messages"]="prodmessages"
DATABASES["prod-scheduler"]="prodscheduler"
DATABASES["prod-reporting"]="prodreporting"
DATABASES["prod-windows"]="prodwindows"
DATABASES["prod-linux"]="prodlinux"
DATABASES["prod-supplymgmt"]="prodsupplymgmt"
DATABASES["prod-digitalsgng"]="proddigitalsgng"

# Create the base backup directory if it doesn't exist
mkdir -p "$BASE_BACKUP_DIR"

# Export the database password to the environment variable
export MONGO_PASSWORD="$DB_PASSWORD"

# Backup each database individually
for DB_NAME in "${!DATABASES[@]}"; do
  # Define local backup directory and file
  BACKUP_DIR="${BASE_BACKUP_DIR}/${DATABASES[$DB_NAME]}"
  BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_${TIMESTAMP}.gz"
  # Define S3 folder
  S3_FOLDER="${DATABASES[$DB_NAME]}"

  # Create the local backup directory if it doesn't exist
  mkdir -p "$BACKUP_DIR"

  echo "Starting backup of MongoDB database '${DB_NAME}' from container '${CONTAINER_NAME}'..."

  # Run the backup command inside the container
  podman exec -t "$CONTAINER_NAME" mongodump --uri="mongodb://localhost:27017/$DB_NAME" --archive=/tmp/backup.archive --gzip

  # Copy the backup file from the container to the host
  podman cp "${CONTAINER_NAME}:/tmp/backup.archive" "$BACKUP_FILE"

  # Upload the backup file to S3
  echo "Uploading ${BACKUP_FILE} to S3 bucket '${S3_BUCKET}' in folder '${S3_FOLDER}'..."
  aws s3 cp "$BACKUP_FILE" "s3://${S3_BUCKET}/mongo/${S3_FOLDER}/"

  echo "Backup completed and uploaded for '${DB_NAME}'. Backup file: ${BACKUP_FILE}"
done

# Unset the database password environment variable for security
unset MONGO_PASSWORD

echo "All backups completed and uploaded successfully."