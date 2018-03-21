
$VAR1 = {
    ####### ----------- Common variables ---------------- #######
    '__VRSN_QM_HOST' => 'mmr1qmzn1be-m1-ap',
    '__VRSN_QM_PORT' => '20080',
    '__VRSN_JBOSS_SERVER_DIR' => '/app/jboss/server',
    '__VRSN_DOMAIN' => 'aas',

    ####### ----------- ADMS task variables ---------------- #######

    #  Start time of the ADMS. The value should be mintues after hour, 
    #  Has to be a value of 0-59 
    '__VST_ADMS_START_TIME' => '5',
 
    #  The interval of ADMS in minutes. The value must be between 1-60
    '__VST_ADMS_INTERVAL' => '20',

    #  NOTE: the above two values should be set such that the two machines in the cluster
    #  could be staged apart to handle the notification. For example, one machine could start
    #  at 5 mins after the hour, and interval is 10 min, and another machine starts at
    #  10 mins after the hour, and interval also 10 min. With this setup, the ADMS service runs
    #  every other 5 mins.

    #----------- ADMS socket timeout variables ------ #
    #  Timeout in milliseconds for building network connection, the recommended value 
    #  of this could be 4000 ~ 7000
    '__VST_ADMS_CONNECTION_TIMEOUT'   => '6000',

    #  Timeout in milliseconds for reading response from whois server, the recommended value 
    #  of this could be 4000 ~ 7000
    '__VST_ADMS_CONNECTION_READ_TIMEOUT'  =>  '5000',
 
    # The maximum one-time record process number
    '__VST_ADMS_PROCESS_LIMIT'  =>  '50',

    #----------- ADMS servlet related variables ------ #
    # the protocol name when accessing ADMS from internet. do not changes
    '__VST_ADMS_SERVICE_PROTOCOL' => 'https',

    # the front-end proxy hostname for ADMS service. The current valud of it should be: adms.verisign.com
    '__VST_ADMS_SERVICE_HOST' => 'adms3.bbtest.net',

    # the service port number of front-end proxy, leave it empty.
    '__VST_ADMS_SERVICE_PORT' => '443',
 
    #----------- ADMS report feature related ----- #
    # Report flag: control whether the report will be generated
    '__VST_ADMS_REPORT_FLAG'  => 'TRUE',

    # The email alias to send report to. The format could be one email or mutiple email seperate by space
    '__VST_ADMS_REPORT_MAIL_ALIAS' => 'testlabs@verisign.com',

    # The hour of the day the service will send email with report file as attached, '23' is highly recommended
    # should be set as default
    '__VST_ADMS_REPORT_HOUR' => '23',


    ####### ----------- APOR task variables ---------------- #######

    #  Start time of the APOR. The value should be mintues after hour, 
    #  Has to be a value of 0-59 
    #  NOTE: the value of start time should be set such that the two machines in the cluster
    #  could be staged apart to handle timer task. For example, one machine could start
    #  at 5 mins after the hour, and interval is 10 min, and another machine starts at
    #  10 mins after the hour, and interval also 10 min. With this setup, the APOR service runs
    #  every other 5 mins.
    #  we recommend: set the start time on one machine as 5, on the other machine as 10
    '__VST_APOR_START_TIME' => '10',
 
    #  The interval of APOR in minutes. The value must be between 1-60
    #  Do not change
    '__VST_APOR_INTERVAL' => '20',

    # The maximum one-time record process number
    # Do not change
    '__VST_APOR_PROCESS_LIMIT'  =>  '50',
 
    #----------- APOR report feature related ----- #
    # Report flag: control whether the report will be generated
    # Do not change
    '__VST_APOR_REPORT_FLAG'  => 'TRUE',

    # The email alias to send report to. The format could be one email or mutiple email seperate by space
    '__VST_APOR_REPORT_MAIL_ALIAS' => 'testlabs@verisign.com',

    # The hour of the day the service will send email with report file as attached.
    # Do not change!
    '__VST_APOR_REPORT_HOUR' => '23',

    #----------- Qsent ----- #
    '__VST_APOR_QSENT_FLAG' => 'TRUE',


    ####### ----------- AVS task variables ---------------- #######

    #
    #------------MDS Server Configuration---------------#
    #
    '__VST_AVS_MDS_HOST_1' => 'mmr3be-m1-data',
    '__VST_AVS_MDS_PORT_1' => '32001',
    '__VST_AVS_MDS_HOST_2' => 'mmr3be-m1-data',
    '__VST_AVS_MDS_PORT_2' => '32001',

    #
    #------------Danube JMS Configuration---------------#
    #
    '__VST_AVS_JMS_QUEUE_JNDINAME' => 'DanubeQueueAutoVerify',
    '__VST_AVS_JMS_QUEQUE_NAME' => 'DanubeQAutoVerify',

    #------------  Security/ Certs  ---------------#
    #
    # The CERTCHAINS must reflect which environment we're configuring for.
    # Currently, in AVS, there are the following:
    #   avsPilot, avsProd and casTest(old)
    '__VST_AVS_SEC_CERTCHAINS_DEFAULT' => 'avsPilot',
    '__VST_AVS_SEC_CERTCHAINS_AUTHENTIFY_ADAPTOR' => 'avsPilot',

    #
    #------------  Data Providers  ---------------#
    #
    '__VST_AVS_AUTHENTIFY_PORT' => '443',
    '__VST_AVS_AUTHENTIFY_HOST' => 'alpha.authentify.com',
    '__VST_AVS_AUTHENTIFY_URI' => '/s2s/Default.asp',

    '__VST_AVS_AUTHENTIFY_POLL1_PORT' => '443',
    '__VST_AVS_AUTHENTIFY_POLL1_HOST' => 'a1.authentify.com',
    '__VST_AVS_AUTHENTIFY_POLL1_URI' => '/s2s/Default.asp',

    '__VST_AVS_AUTHENTIFY_POLL2_PORT' => '443',
    '__VST_AVS_AUTHENTIFY_POLL2_HOST' => 'a2.authentify.com',
    '__VST_AVS_AUTHENTIFY_POLL2_URI' => '/s2s/Default.asp',

    '__VST_AVS_AUTHENTIFY_POLL3_PORT' => '443',
    '__VST_AVS_AUTHENTIFY_POLL3_HOST' => 'a1.authentify.com',
    '__VST_AVS_AUTHENTIFY_POLL3_URI' => '/s2s/Default.asp',

    '__VST_AVS_AUTHENTIFY_POLL4_PORT' => '443',
    '__VST_AVS_AUTHENTIFY_POLL4_HOST' => 'a1.authentify.com',
    '__VST_AVS_AUTHENTIFY_POLL4_URI' => '/s2s/Default.asp',

    # Authentify Account Info

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

    #
    #----------- The timer service configuration ----------------#
    #
    # Set this to be true to disable timers
    #
    '__VST_AVS_DISABLE_CLEANUP' => 'FALSE',
    '__VST_AVS_DISABLE_AUTOMAIL' => 'FALSE',
    '__VST_AVS_DISABLE_AUTOISSUER' => 'FALSE',

    # 
    #  Start time of the timer. The value could be mintues after hour, 
    #  Has to be a value of 0-59 
    #  There are 3 timer tasks for AVS
    '__VST_AVS_CLEANUP_START_TIME' => '10',
    '__VST_AVS_AUTOMAIL_START_TIME' => '10',
    '__VST_AVS_AUTOISSUER_START_TIME' => '10',
 
    # The interval of the timer in minutes.
    '__VST_AVS_CLEANUP_INTERVAL' => '20',
    '__VST_AVS_AUTOMAIL_INTERVAL' => '20',
    '__VST_AVS_AUTOISSUER_INTERVAL' => '20',

    #  NOTE: the above two values should be set such that the two machines in the cluster
    #  could be staged apart to handle the notification. For example, one machine could start
    #  at 5 mins after the hour, and interval is 60 min, and another machine starts at
    #  35 mins after the hour, and interval also 60 mins. With this setup, you basically
    #  do notification every other 30 mins.

    '__VST_AVS_CLEANUP_RUN_LENGTH' => '10',
    '__VST_AVS_AUTOMAIL_RUN_LENGTH' => '10',
    '__VST_AVS_AUTOISSUER_RUN_LENGTH' => '10',
 
    # Configuration for CleanUp task
    # The maximum times to poll transaction status from service provider
     '__VST_AVS_CLEANUP_POLL_TIMES' => '6',

    # Configuration for AutoMail task
    '__VST_AVS_AUTOMAIL_LOCALES' => 'VRSN_US, VRSN_GB, THAWTE',

    # The subject of the verification mail for specific locale
    '__VST_AVS_AUTOMAIL_SUBJECT_VRSN_US' => 'VeriSign Automated Order Verification',
    '__VST_AVS_AUTOMAIL_SUBJECT_THAWTE' => 'Thawte Automated Order Verification',

    # The from email address of verification mail
    '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_VRSN_US' => 'testlabs@verisign.com',
    '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_THAWTE' => 'testlabs@verisign.com',
   
    # The verification URL included in verification mail
    '__VST_AVS_AUTOMAIL_MAIL_URL_VRSN_US' => 'https://verify3.bbtest.net',
    '__VST_AVS_AUTOMAIL_MAIL_URL_THAWTE' => 'https://verify-thawte3.bbtest.net',

    # Emailsender host name
    '__VST_AVS_MAIL_HOSTNAME' => 'aas3be-m1-ap',
   
    # Configuration for AutoIssuer task
    '__VST_AVS_AUTOISSUER_LOCALES' => 'VRSN_US, THAWTE',

     # Amin cert name for VRSN_US (default)
     '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_VRSN_US' => 'VERISIGN AVS ISSUER',

     # Amin cert organization for VRSN_US (default)
     '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_VRSN_US' => 'VERISIGN',

     # Amin cert organization unit for VRSN_US (default)
     '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_VRSN_US' => 'INTL AND DOMESTIC GROUPING',

     # Admin cert jurisdiction hash for VRSN_US (default)
     '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_VRSN_US' => '3c8dab435cd9a1467e636b2135d51302',

     # Amin cert name for THAWTE
     '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_THAWTE' => 'THAWTE AVS ISSUER',

     # Amin cert organization for THAWTE
     '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_THAWTE' => 'VERISIGN',

     # Amin cert organization unit for THAWTE
     '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_THAWTE' => 'THAWTECACENTER',

     # Admin cert jurisdiction hash for THAWTE
     '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_THAWTE' => '3c8dab435cd9a1467e636b2135d51302',
 
     # Valid start offset
     # Only orders enrolled after (today - offset) will be processed by Auto Issuer task
     # The value should be number of days*24*60*60 (i.e. 2592000 = 30*24*60*60)
     '__VST_AVS_AUTOISSUER_VALID_START_OFFSET' => '2592000',

     #
     #------------  Monitor Config  ---------------#
     #
     '__VST_AVS_AUTHENTIFY_MONITOR_PORT' => '443',
     '__VST_AVS_AUTHENTIFY_MONITOR_HOST' => 'alpha.authentify.com',
     '__VST_AVS_AUTHENTIFY_MONITOR_URI' => '/sp/default.asp',
     '__VST_AVS_AUTHENTIFY_MONITOR_STRING' => 'up',
     '__VST_SOS_MONITOR_START_HOUR' =>  '12',
     '__VST_SOS_MONITOR_INTERVAL' => '20',
     '__VST_SOS_MONITOR_MAIL_RECIPIENT' => 'DL-ENG-SSL-QA-MTV@symantec.com',
     '__VST_APOR_MAIL_HOSTNAME' => 'aas3be-m1-ap',



    ####### ----------- CAT task variables ---------------- #######

    # 
    #  The hour number of Start time for CAT. 
    #  Has to be a value of 0-23
    '__CAT_START_HOUR' => '5',
 
    #  The CAT starting time in minute. The value must be between 1-60
    '__CAT_START_MINUTE' => '0',

    # The number of days prior to order's expritation date
    # Do not change
    '__CAT_DAYS_TO_EXPIRE'  => '90',

    # The number of days reauth is expired
    # Do not change
    '__CAT_DAYS_REAUTH_EXPIRE' => '90',

    # run interval in minutes, 
    # NOTE: on one side of AAS cluster, set it to 1440; The other side should be set as -1
    '__CAT_RUN_INTERVAL' => '-1',

    # EuroInfoPool support
    # Do not change
    '__CAT_RUN_EUROINFOPOOL' => '0',

    ####### ----------- APOREnterprise/ADMSEnterprise variables ---------------- #######
    '__APOR_ENT_CRON_TRIGGER__' => '10 0 * * * ?',
    '__APOR_ENT_CRON_ACTIVE__' => 'true',
    '__ADMS_ENT_CRON_TRIGGER__' => '10 30 * * * ?',
    '__ADMS_ENT_CRON_ACTIVE__' => 'true',
    '__ORACLE_SERVICE__' => '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=10.204.144.208)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=10.204.144.209)(PORT=1521))(FAILOVER=on))(CONNECT_DATA=(SERVICE_NAME=ECASODD)))',
    '__ORACLE_USER_NAME__' => 'apps',
    '__ORACLE_PASSWORD__' => 'password',
    '__VRSN_SENTINEL_SERVICE_URL__' => 'sentinel3.bbtest.net',

    ####### ----------- DNB variables ---------------- #######
    '__DNB_USERID__' => 'SymantecDNBTest1',
    '__DNB_PASSWORD__' => '1SymantecDNBTest',
    '__DNB_USERID_INTL__' => 'SymantecDNBTest1',
    '__DNB_PASSWORD_INTL__' => '1SymantecDNBTest',

};

