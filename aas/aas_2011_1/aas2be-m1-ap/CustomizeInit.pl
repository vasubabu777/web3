# This file combines all the vars.dat together
$replHash = {
# ADMS
 '__VST_ADMS_START_TIME' => '5',
 '__VST_ADMS_INTERVAL' => '10',
 '__VST_ADMS_CONNECTION_TIMEOUT'   => '6000',
 '__VST_ADMS_CONNECTION_READ_TIMEOUT'  =>  '5000',
 '__VST_ADMS_PROCESS_LIMIT'  =>  '50',
 '__VST_ADMS_SERVICE_PROTOCOL' => 'https',
 '__VST_ADMS_SERVICE_HOST' => 'pv-adms.bbtest.net',
 '__VST_ADMS_SERVICE_PORT' => '',
 '__VST_ADMS_REPORT_FLAG'  => 'TRUE',
 '__VST_ADMS_REPORT_MAIL_ALIAS' => 'testlabs@verisign.com',
 '__VST_ADMS_REPORT_HOUR' => '23',

# APOR
 '__VST_APOR_START_TIME' => '5',
 '__VST_APOR_INTERVAL' => '10',
 '__VST_APOR_PROCESS_LIMIT'  =>  '50',
 '__VST_APOR_REPORT_FLAG'  => 'TRUE',
 '__VST_APOR_REPORT_MAIL_ALIAS' => 'testlabs@verisign.com',
 '__VST_APOR_REPORT_HOUR' => '23',
 '__VST_APOR_QSENT_FLAG' => 'TRUE',

# AVS
 '__VST_THIS_HOSTNAME' => 'aas2be-m1-ap', 
 '__VST_AVS_MDS_HOST_1' => 'mmrzn2be-m1-data',
 '__VST_AVS_MDS_PORT_1' => '32001',
 '__VST_AVS_MDS_HOST_2' => 'mmrzn2be-m1-data',
 '__VST_AVS_MDS_PORT_2' => '32001',
 '__VST_AVS_JMS_QUEUE_JNDINAME' => 'DanubeQueueAutoVerify',
 '__VST_AVS_JMS_QUEQUE_NAME' => 'DanubeQAutoVerify',
 '__VST_AVS_SEC_CERTCHAINS_DEFAULT' => 'avsPilot',
 '__VST_AVS_SEC_CERTCHAINS_AUTHENTIFY_ADAPTOR' => 'avsPilot',
 '__VST_AVS_AUTHENTIFY_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_HOST' => 'alpha.authentify.com',
 '__VST_AVS_AUTHENTIFY_URI' => '/s2s/default.asp',
 '__VST_AVS_AUTHENTIFY_POLL1_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_POLL1_HOST' => 'a1.authentify.com',
 '__VST_AVS_AUTHENTIFY_POLL1_URI' => '/s2s/default.asp',
 '__VST_AVS_AUTHENTIFY_POLL2_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_POLL2_HOST' => 'a2.authentify.com',
 '__VST_AVS_AUTHENTIFY_POLL2_URI' => '/s2s/default.asp',
 '__VST_AVS_AUTHENTIFY_POLL3_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_POLL3_HOST' => 'a3.authentify.com',
 '__VST_AVS_AUTHENTIFY_POLL3_URI' => '/s2s/default.asp',
 '__VST_AVS_AUTHENTIFY_POLL4_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_POLL4_HOST' => 'a4.authentify.com',
 '__VST_AVS_AUTHENTIFY_POLL4_URI' => '/s2s/default.asp',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_ID_VRSN_US' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_VRSN_US' => '',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_PASSWORD_VRSN_US' => 'g8hfbuVx',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_ID_VRSN_US' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_VRSN_US' => '',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_PASSWORD_VRSN_US' => 'duecxrSu',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_ID_THAWTE' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_THAWTE' => 'thawte01',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_PASSWORD_THAWTE' => 'duecxrSu',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_ID_THAWTE' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_THAWTE' => 'thawte01',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_PASSWORD_THAWTE' => 'g8hfbuVx',
 '__VST_AVS_DISABLE_CLEANUP' => 'FALSE',
 '__VST_AVS_DISABLE_AUTOMAIL' => 'FALSE',
 '__VST_AVS_DISABLE_AUTOISSUER' => 'FALSE',
 '__VST_AVS_CLEANUP_START_TIME' => '5',
 '__VST_AVS_AUTOMAIL_START_TIME' => '5',
 '__VST_AVS_AUTOISSUER_START_TIME' => '5',
 '__VST_AVS_CLEANUP_INTERVAL' => '20',
 '__VST_AVS_AUTOMAIL_INTERVAL' => '20',
 '__VST_AVS_AUTOISSUER_INTERVAL' => '20',
 '__VST_AVS_CLEANUP_RUN_LENGTH' => '10',
 '__VST_AVS_AUTOMAIL_RUN_LENGTH' => '10',
 '__VST_AVS_AUTOISSUER_RUN_LENGTH' => '10',
 '__VST_AVS_CLEANUP_POLL_TIMES' => '6',
 '__VST_AVS_AUTOMAIL_LOCALES' => 'VRSN_US, VRSN_GB, THAWTE',
 '__VST_AVS_AUTOMAIL_SUBJECT_VRSN_US' => 'VeriSign Automated Order Verification',
 '__VST_AVS_AUTOMAIL_SUBJECT_THAWTE' => 'thawte Automated Order Verification',
 '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_VRSN_US' => 'aas2be-m1-ap',
 '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_THAWTE' => 'aas2be-m1-ap',
 '__VST_AVS_AUTOMAIL_MAIL_URL_VRSN_US' => 'https://pv-verify.bbtest.net',
 '__VST_AVS_AUTOMAIL_MAIL_URL_THAWTE' => 'https://pv-verify-thawte.bbtest.net',
 '__VST_AVS_MAIL_HOSTNAME' => 'aas2be-m1-ap',
 '__VST_AVS_AUTOISSUER_LOCALES' => 'VRSN_US, THAWTE',
 '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_VRSN_US' => 'VERISIGN AVS ISSUER',
 '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_VRSN_US' => 'VERISIGN',
 '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_VRSN_US' => 'INTL AND DOMESTIC GROUPING',
 '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_VRSN_US' => '3c8dab435cd9a1467e636b2135d51302',
 '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_THAWTE' => 'VERISIGN AVS ISSUER',
 '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_THAWTE' => 'VERISIGN',
 '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_THAWTE' => 'INTL AND DOMESTIC GROUPING',
 '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_THAWTE' => '3c8dab435cd9a1467e636b2135d51302',
 '__VST_AVS_AUTOISSUER_VALID_START_OFFSET' => '2592000',
 '__VST_AVS_AUTHENTIFY_MONITOR_PORT' => '443',
 '__VST_AVS_AUTHENTIFY_MONITOR_HOST' => 'alpha.authentify.com',
 '__VST_AVS_AUTHENTIFY_MONITOR_URI' => '/sp/default.asp',
 '__VST_AVS_AUTHENTIFY_MONITOR_STRING' => 'up',

# CAT
 '__VRSN_WLS_LOCAL_PROCESS_PORT' => '7001',

# Domain
 '__VRSN_JAVA_HOME' => '/usr/java/latest',
 '__VRSN_JAVA_OPTIONS' => '-Xms128m -Xmx128m -XX:NewSize=48m -XX:MaxNewSize=48m',
 '__VRSN_ORACLE_HOME' => '/app/oracle/orahome',
 '__VRSN_JBOSS_SERVER_DIR' => '/app/jboss/server',
 '__VRSN_DOMAIN' => 'aas',
 '__VRSN_RUNAS_UID' => '600',
 '__VRSN_MULTICAST_ADDRESS' => '224.0.0.112',
 '__VRSN_ADMIN_HOST' => 'aas2be-m1-ap', 
 '__VRSN_ADMIN_PORT' => '9007', 
 '__VRSN_PROCESS_0_HOST' => 'aas2be-m1-ap', 
 '__VRSN_PROCESS_0_PORT' => '8004', 
 '__VRSN_PROCESS_1_HOST' => 'aas2be-m1-ap', 
 '__VRSN_PROCESS_1_PORT' => '8004', 
 '__VRSN_INITTAB_ID_0' => 'zb', 
 '__VRSN_INITTAB_ID_1' => 'z2', 
 '__VRSN_INITTAB_ID_2' => 'z3', 
 '__VRSN_INITTAB_ID_3' => 'zm', 
 '__VRSN_QM_HOST' => 'mmr1qmbe-m1-ap',
 '__VRSN_QM_PORT' => '20080',
 '__VRSN_QM_DBINFO' => 'apps/password@ECASEVEN',
 '__VRSN_SECOND_QM' => '',
 '__VRSN_SECOND_QM_HOST' => 'mmr1qmbe-m1-ap',
 '__VRSN_SECOND_QM_PORT' => '20080',
 '__VRSN_SECOND_QM_DBINFO' => 'apps/password@ECASODD',
 '__VRSN_NOTIFICATION_EMAIL_ADDRESS' => 'nobody@verisign.com',
 '__VRSN_APP_JAVA_OPTIONS' => ' -Dsun.net.inetaddr.ttl=10 -Dfile.encoding=ISO8859-1 ',

# Jboss Config
 '__ORACLE_SERVICE__' => 'ECASEVEN',
 '__ORACLE_USERNAME__' => 'apps',
 '__ORACLE_PASSWORD__' => 'password',
 '__VRSN_AAS_SERVER_CONF_DIR__' => 'conf/vsconfig',
 '__VRSN_WLS_LOCAL_PROCESS_PORT' => '7001',
 '__VRSN_FPE_SERVICE_URI__' => 'edc-proxy.bbtest.net:8401',
 '__VRSN_FPE_SCHEMA_PATH__' => '',
 '__PKCS12_FILE__' => '',
 '__PKCS12_PSWD__' => '',
 '__VRSN_RO_QM_URL1__' => '',
 '__VRSN_RO_QM_URL2__' => '',
 '__VRSN_QM_URL1__' => '',
 '__VRSN_QM_URL2__' => '',
};
