# server settings
export ENVIRONMENT="prod"

# middleware
export MIDDLEWARE_CORS_ENABLED="Y"
export MIDDLEWARE_ENCRYPT_ENABLED="N"
export MIDDLEWARE_TOKENAUTH_ENABLED="Y"
export MIDDLEWARE_SATOKENAUTH_ENABLED="Y"
export JWT_SECRET="Tx4eTmEemfRtWsbwhVWCBvJ8a-UrVjoJpq51UZ9jzPrPWy40DlFMRPh23ujwx5Mkr-Vca-GQR-zqO_lvPht37A"
export SA_JWT_SECRET="qZA_ZjGKSy_mGe28vaYPJ7Yb4CbZxE8zHXi-aMUbvywe-aRg5Qfh-GrutX54m-ezuVcEqH_e8ve_HzR4w4YBxm"
export JWT_EXPIRATION="86400"
export ENCRYPTION_KEY="iZVhQrsuAwzU7j2pOkywChQ1wawN996fDU8NbIRLGS3G7fLm7y"

#OIDC
export OIDC_REDIRECT_URL=""
export OIDC_GOOGLE_CLIENT_ID="760131660187-t8mp7bg3pbecf2lqr482c7bip385b60g.apps.googleusercontent.com"
export OIDC_GOOGLE_CLIENT_SECRET="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"
export OIDC_MICROSOFT_CLIENT_ID="61ce5810-5d9f-4fa8-be70-57b4f45a84bc"
export OIDC_MICROSOFT_CLIENT_SECRET="UV68Q~OFIlL53wMYosipu1.NqQAK6nMMrVkvrbI9"
export OIDC_MICROSOFT_ENTRA_ID="c322687d-2797-4ae0-b3a2-5ddb7143d9f2"
export OIDC_ZOHO_CLIENT_ID="1000.NDZ2U3YTH2RKLQ51FIZMGMSOGFM96R"
export OIDC_ZOHO_CLIENT_SECRET="6fd7224e09580c1340aafb8580d1a948a1299b20d3"

# mongodb settings
export DB_URL=""
export AND_DB_NAME="andmgmt"
export ANDROID_DB_API="android"
export AV_DB_NAME="av"
export ATV_DB_NAME="android-tv"
export CERT_DB_NAME="certmgr"
export COMMONS_DB_NAME="commons"
export CHAT_DB_NAME="chat"
export DIGITALSGNG_DB_NAME="digitalsgng"
export FILES_DB_NAME="files"
export IDM_DB_NAME="idm"
export IOS_DB_NAME="ios"
export MGS_DB_NAME="messages"
export PLAY_DB_NAME="playemm"
export TASK_DB_NAME="taskmgm"
export WIN_DB_NAME="windows"
export SCH_DB_NAME="scheduler"
export LINUX_DB_NAME="linux"
export REPORTING_DB_NAME="reporting"
export TICKET_DB_API="ticket"
export ENV_PREFIX="prod"
 

#redis settings
export REDIS_URL="backend-01:35400"
export REDIS_PASSWORD=""

# mq settings
export NATS_URL="backend-01:35600"
export NATS_USERNAME="nats"
export NATS_PASSWORD=""

# es settings
export OS_URL="http://backend-01:35500"
export OS_INDEX="prod_devices_lookup"
export OS_USERNAME="admin"
export OS_PASSWORD="ChAngeme@999"

# smtp settings
export SMTP_HOST=""
export SMTP_PORT="587"
export SMTP_USER=""
export SMTP_PASSWORD=""

# s3 settings
export S3_ENDPOINT=""
export S3_PUB_ENDPOINT=""
export S3_REGION="auto"
export S3_ACCESS_KEY_ID=""
export S3_SECRET_ACCESS_KEY=""
export S3_BUCKET="ps2prod"

#REP BACKUP
export REP_BACKUP_S3_ENDPOINT=""
export REP_BACKUP_S3_ACCESS_KEY=""
export REP_BACKUP_S3_SECRET_KEY=""
export REP_BACKUP_S3_BUCKET="prod"

#firebase
export FB_PROJECT_ID="prod"
export FILE_ADAPTER_TYPE="GCP"

# pubsub
export GCP_PUBSUB_PROJECT_ID="prod"
export GCP_PUBSUB_SUBSCRIPTION_ID=""

 
# sms
export SMS_URL=""
export SMS_API_KEY=""
export SMS_CLIENT_ID=""
export OTP_SENDER_ID=""

# star
export STAR_DB_HOST="backend-02"
export STAR_DB_PORT="35300"
export STAR_DB_NAME="prod"
export STAR_DB_USER="root"
export STAR_DB_PASSWORD=""
 
# registry
export REGISTRY_URL=""
export REGISTRY_API_KEY="cfb7cbf8-9342-44ac-9ec2-af19b2f8e54b"
export API_BASE_URL="https://portal.example.com"
 
# ttns
export TTNS_URL="nats://backend-01:35700"
export TTNS_USERNAME="nats"
export TTNS_PASSWORD=""

#callback
export CALLBACK_URL="https://localhost:8080/"                       
export QRCODE_SERVER_URL="https://portal.example.com/playemm"  # playemm

#certmgr
export CERTMGR_URL="https://portal.example.com/certmgr/v1"     # cert_url

#IOS
export IOS_API_URL="https://portal.example.com/ios/v1"         #ios_url
export WORK_FOLDER="/tmp"                                             #cert mgr
export SCEP_CHALLENGE="6wz\$AezEds98wD5M"
export SIGNIN_URL="https://portal.example.com/enroll"

#windows
export WIN_URL="https://portal.example.com"             #windows_url
export WNS_CLIENT_ID=""
export WNS_SECRET=""
export WNS_PFN=""

 
# mdm-commons
export REACT_APP_API_URL="https://portal.example.com/api"
export REACT_APP_URL="https://portal.example.com"
export SUPERADMIN_URL="https://portal.example.com/admin"
export SIGNINAPP_URL="https://portal.example.com/enroll"
export REACT_APP_MAP_TOKEN="AIzaSyAyHgEL6KPlLjabMp0kjJ6p10YZ7zZNb_U"
export REACT_APP_COMPANY_ID=""
export REACT_APP_ENCRYPTION_ENABLED="false"
export NODE_ENV="production"

# webrtc
export STUN_URL=""
export TURN_URL=""
export TURN_USERNAME=""
export TURN_CRED=""

# other
export KUBE_NS="prod"

#web-socket
export WS_URL="ws.example.com"

#reporting_url
export REPORTING_URL="https://portal.example.com"
export COMPLIANCE_JOB="*/1 * * * *"


# pipeline properties
export DEVICE_UPDATE_V1_BATCHSIZE="1000"
export DEVICE_UPDATE_V1_TIMEOUT="1"
export DEVICE_UPDATE_V1_BACKUP_BATCHSIZE="10000"
 
export LOCATION_V1_BATCHSIZE="1000"
export LOCATION_V1_TIMEOUT="1"
export LOCATION_V1_BACKUP_BATCHSIZE="10000"
 
export POWER_STATUS_V1_BATCHSIZE="1000"
export POWER_STATUS_V1_TIMEOUT="1"
export POWER_STATUS_V1_BACKUP_BATCHSIZE="10000"
 
export APPUSAGE_V1_BATCHSIZE="1000"
export APPUSAGE_V1_TIMEOUT="1"
export APPUSAGE_V1_BACKUP_BATCHSIZE="10000"
 
export CALL_V1_BATCHSIZE="1000"
export CALL_V1_TIMEOUT="1"
export CALL_V1_BACKUP_BATCHSIZE="10000"
 
export DEVICE_LOGIN_V1_BATCHSIZE="1000"
export DEVICE_LOGIN_V1_TIMEOUT="1"
export DEVICE_LOGIN_V1_BACKUP_BATCHSIZE="10000"
 
export BROWSER_HISTORY_V1_BATCHSIZE="1000"
export BROWSER_HISTORY_V1_TIMEOUT="1"
export BROWSER_HISTORY_V1_BACKUP_BATCHSIZE="10000"

export USER_UPDATE_V1_BATCHSIZE="1000"
export USER_UPDATE_V1_TIMEOUT="1"
export USER_UPDATE_V1_BACKUP_BATCHSIZE="10000"
 
export GROUP_UPDATE_V1_BATCHSIZE="1000"
export GROUP_UPDATE_V1_TIMEOUT="1"
export GROUP_UPDATE_V1_BACKUP_BATCHSIZE="10000"
 
export PORTAL_USER_ACTIVITY_V1_BATCHSIZE="1000"
export PORTAL_USER_ACTIVITY_V1_TIMEOUT="1"
export PORTAL_USER_ACTIVITY_V1_BACKUP_BATCHSIZE="10000"
 
export DEVICE_COMPLIANCE_V1_BATCHSIZE="1000"
export DEVICE_COMPLIANCE_V1_TIMEOUT="1"
export DEVICE_COMPLIANCE_V1_BACKUP_BATCHSIZE="10000"
 
export APP_UPDATE_V1_BATCHSIZE="1000"
export APP_UPDATE_V1_TIMEOUT="1"
export APP_UPDATE_V1_BACKUP_BATCHSIZE="10000"

export LOGON_STATUS_V1_BATCHSIZE="1000"
export LOGON_STATUS_V1_TIMEOUT="1"
export LOGON_STATUS_V1_BACKUP_BATCHSIZE="10000"

export DEVICE_UPDATE_V2_BATCHSIZE="1000"
export DEVICE_UPDATE_V2_TIMEOUT="1"
export DEVICE_UPDATE_V2_BACKUP_BATCHSIZE="10000"

#pipelines3
export PIPELINES_S3_ENDPOINT="http://s3-server:35900"
export PIPELINES_REGION="auto"
export PIPELINES_S3_ACCESS_KEY_ID="kH8cBC3xyKQz5P"
export PIPELINES_S3_SECRET_ACCESS_KEY="mEFngqFMhm8Tj5RR7PzDEJEN"
export PIPELINES_S3_BUCKET="prod"

#schedular
export DEVICE_BULK_ROW_LIMIT="50000"

#chati-api
export AGORA_APP_CERTIFICATE="ffd6e95ac92e4e7bac7f7017046c78fd"
export AGORA_APP_ID="c66f9f851d324b7da5619a28971d72b8"
export AGORA_TOKEN_EXPIRY="86400"

#android-api 
export SIGNIN_URL="https://portal.example.com/enroll"
export CALLBACK_URL="https://portal.example.com"
export PROJECT_ID=""
export PUBSUB_TOPIC=""
export SUBSCRIPTION=""

#superadmin-api
export SA_SIGNIN_URL="https://portal.example.com/enroll"
export SA_CALLBACK_URL="https://portal.example.com/admin"
export SA_PROJECT_ID=""
export SA_PUBSUB_TOPIC=""
export SA_SUBSCRIPTION=""


#client-report-api
export STAR_URL="root:@tcp(star-server:35300)/prod"
export TENANTS="813088"
export TIMEZONE="Asia/Kolkata"

#commons-cron
export COMPLIANCE="31 18 * * *"
export TIMEFENCE="*/1 * * * *"

#reporting_url
export TIMEZONE="Asia/Kolkata"
export ALERT_SYNC_JOB="*/25 * * * *"
export ALERT_PUBLISH_JOB="*/30 * * * *"

IOS_SIGNIN_URL="https://portal.example.com/enroll"

#collector 
export SSL_ENABLED="N"
