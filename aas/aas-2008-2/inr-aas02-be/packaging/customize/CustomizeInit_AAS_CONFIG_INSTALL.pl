#
# The first column contains the keyword that this bootstrap Customization script uses to look for
# in a file. If such a string is matched, the matched string will be replaced by
# the corresponding word on the second column.
#

$VAR1 = {

 #
 #-----------------------------------------------------------------#
 #---------------------- General Settings -------------------------#
 #-----------------------------------------------------------------#
 #
 # JDK home and options
 '__VRSN_JAVA_HOME' => '/usr/java/jdk1.5.0_12',
 '__VRSN_JAVA_OPTIONS' => '-Xms128m -Xmx128m -XX:NewSize=48m -XX:MaxNewSize=48m',

 # Oracle home path
 '__VRSN_ORACLE_HOME' => '/home/oracle/orahome',

 # JBOSS_HOME/server install dir.
 '__VRSN_JBOSS_SERVER_DIR' => '/app/jboss/server',

 # WebLogic domain name for this service
 '__VRSN_DOMAIN' => 'aas',

 #
 #-----------------------------------------------------------------#
 #-------------- Query Manager (QM) Configuration -----------------#
 #-----------------------------------------------------------------#
 #
 # DEFAULT QM info
 # WARNING: The QM hostname CANNOT be localhost/ 127.0.0.1
 '__VRSN_QM_HOST' => 'inr-aas02-be',
 '__VRSN_QM_PORT' => '2002',
 '__VRSN_QM_DBINFO' => 'apps/password@ecas012',

 # SECOND QM info - toggle (comment/ uncomment) next two lines
 # to enable/ disable a second QM instance
 #
 # Warning: the following macro must be defined. Do not remove!
 #
 '__VRSN_SECOND_QM' => '',
 #'__VRSN_SECOND_QM' => 'SECOND',

 # WARNING: The QM hostname CANNOT be localhost/ 127.0.0.1
 '__VRSN_SECOND_QM_HOST' => 'inr-aas02-be',
 '__VRSN_SECOND_QM_PORT' => '2002',
 '__VRSN_SECOND_QM_DBINFO' => 'apps/password@ecas012',

 # Service failure messages are forwarded to this email
 '__VRSN_NOTIFICATION_EMAIL_ADDRESS' => 'prodpage@verisign.net',

 '__VRSN_APP_JAVA_OPTIONS' => ' -Dsun.net.inetaddr.ttl=10 -Dfile.encoding=ISO8859-1 ',

 #
 #-----------------------------------------------------------------#
 #----------------------- ADMS Configuration ----------------------#
 #-----------------------------------------------------------------#
 #
 #----------- ADMS timer task variables ----------------#
 #
 #  Start time of the ADMS. The value should be mintues after hour,
 #  Has to be a value of 0-59, please uses '15' on another aas machine
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
   '__VST_ADMS_SERVICE_HOST' => 'inr-adms01.bbtest.net',
 # the service port number of front-end proxy, leave it empty.
   '__VST_ADMS_SERVICE_PORT' => '443',

 #----------- ADMS report feature related ----- #
 # Report flag: control whether the report will be generated
   '__VST_ADMS_REPORT_FLAG'  => 'TRUE',

 # The email alias to send report to. The format could be one email or mutiple email seperate by space
   '__VST_ADMS_REPORT_MAIL_ALIAS' => 'whsiao@verisign.com',

 # The hour of the day the service will send email with report file as attached, '23' is highly recommended
 # should be set as default
   '__VST_ADMS_REPORT_HOUR' => '23',

 #
 #-----------------------------------------------------------------#
 #----------------------- APOR Configuration ----------------------#
 #-----------------------------------------------------------------#
 #
 #----------- APOR timer task variables ----------------#
 #
 #  Start time of the APOR. The value should be mintues after hour,
 #  Has to be a value of 0-59
 #  NOTE: the value of start time should be set such that the two machines in the cluster
 #  could be staged apart to handle timer task. For example, one machine could start
 #  at 5 mins after the hour, and interval is 10 min, and another machine starts at
 #  10 mins after the hour, and interval also 10 min. With this setup, the APOR service runs
 #  every other 5 mins.
 #  we recommend: set the start time on one machine as 10, on the other machine as 20
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
   '__VST_APOR_REPORT_MAIL_ALIAS' => 'whsiao@verisign.com',

 # The hour of the day the service will send email with report file as attached.
 # Do not change!
   '__VST_APOR_REPORT_HOUR' => '23',

 #----------- Qsent ----- #
   '__VST_APOR_QSENT_FLAG' => 'TRUE',

 #
 #-----------------------------------------------------------------#
 #----------------------- CAT  Configuration ----------------------#
 #-----------------------------------------------------------------#
 #
 #----------- CAT timer task variables ----------------#
 #
 #  The hour number of Start time for CAT.
 #  Has to be a value of 0-23
  '__CAT_START_HOUR' => '5',

 #  The CAT starting time in minute. The value must be between 1-60
  '__CAT_START_MINUTE' => '0',

 # The number of days prior to order's expritation date
 # Do not change, please uses '85' in QA
   '__CAT_DAYS_TO_EXPIRE'  => '90',

 # The number of days reauth is expired
 # Do not change, please uses '85' in QA
   '__CAT_DAYS_REAUTH_EXPIRE' => '90',

 # run interval in minutes,
 # NOTE: on one side of AAS cluster, set it to 1440; The other side should be set as -1
 # Please uses '10' in QA
   '__CAT_RUN_INTERVAL' => '1440',

 # EuroInfoPool support
 # Do not change
   '__CAT_RUN_EUROINFOPOOL' => '0',

 #
 #-----------------------------------------------------------------#
 #----------------------- AVS  Configuration ----------------------#
 #-----------------------------------------------------------------#
 #
 #
 # The host name of current machine.
 #
 # *** The value is LOCAL HOST DEPENDENT  ***
 # You must change the value of following variables when you
 # try to install in second host after you setup the first in
 # a cluster.
 '__VST_THIS_HOSTNAME' => 'inr-aas02-be.qa.edcwest.vrsn.com',

 #
 #------------MDS Server Configuration---------------#
 #
 '__VST_AVS_MDS_HOST_1' => 'qa-mmr1-be.qa.edcwest.vrsn.com',
 '__VST_AVS_MDS_PORT_1' => '32001',
 '__VST_AVS_MDS_HOST_2' => 'qa-mmr1-be.qa.edcwest.vrsn.com',
 '__VST_AVS_MDS_PORT_2' => '32001',

 #------------  Security/ Certs  ---------------#
 #
 # The CERTCHAINS must reflect which environment we're configuring for.
 # Currently, in AVS, there are the following:
 #   avsPilot, avsProd and casTest(old)
 '__VST_AVS_SEC_CERTCHAINS_DEFAULT' => 'avsProd',
 '__VST_AVS_SEC_CERTCHAINS_AUTHENTIFY_ADAPTOR' => 'avsProd',

 #
 #------------  Data Providers  ---------------#
 #
 '__VST_AVS_AUTHENTIFY_PORT' => '443',

 # Please uses 'imp.authentify.com' for QA environment
 '__VST_AVS_AUTHENTIFY_HOST' => 'register.authentify.net',
 
 # Please uses '/s2s/Default.asp' for QA environment
 '__VST_AVS_AUTHENTIFY_URI' => '/certs2s/Default.asp',

 '__VST_AVS_AUTHENTIFY_POLL1_PORT' => '443',

 # Please uses 'imp.authentify.com' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL1_HOST' => 'r1.authentify.net',

 # Please uses '/s2s/Default.asp' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL1_URI' => '/certs2s/Default.asp',

 '__VST_AVS_AUTHENTIFY_POLL2_PORT' => '443',

 # Please uses 'imp.authentify.com' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL2_HOST' => 'r2.authentify.net',

 # Please uses '/s2s/Default.asp' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL2_URI' => '/s2s/Default.asp',

 '__VST_AVS_AUTHENTIFY_POLL3_PORT' => '443',

 # Please uses 'imp.authentify.com' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL3_HOST' => 'r3.authentify.net',

 # Please uses '/s2s/Default.asp' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL3_URI' => '/certs2s/Default.asp',

 '__VST_AVS_AUTHENTIFY_POLL4_PORT' => '443',

 # Please uses 'imp.authentify.com' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL4_HOST' => 'r4.authentify.net',

 # Please uses '/s2s/Default.asp' for QA environment
 '__VST_AVS_AUTHENTIFY_POLL4_URI' => '/certs2s/Default.asp',

 # Authentify Account Info

 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_ID_VRSN_US' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_VRSN_US' => '',

 # Please use prodcution password for pilot/production environment
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_PASSWORD_VRSN_US' => 'g8hfbuVx',

 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_ID_VRSN_US' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_VRSN_US' => '',

 # Please use prodcution password for pilot/production environment
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_PASSWORD_VRSN_US' => 'duecxrSu',

 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_ID_THAWTE' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_ACCOUNT_THAWTE' => 'thawte01',

 # Please use prodcution password for pilot/production environment
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_01_PASSWORD_THAWTE' => 'duecxrSu',

 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_ID_THAWTE' => 'VeriSign',
 '__VST_AVS_AUTHENTIFY_VERIFICATION_CALL_02_ACCOUNT_THAWTE' => 'thawte01',

 # Please use prodcution password for pilot/production environment
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
 #  Please uses '20' for another aas machine
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
  '__VST_AVS_AUTOMAIL_SUBJECT_THAWTE' => 'thawte Automated Order Verification',

 # The from email address of verification mail
  '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_VRSN_US' => 'support@verisign.com',
  '__VST_AVS_AUTOMAIL_MAIL_FROM_MAIL_THAWTE' => 'cs-support@thawte.com',

 # The verification URL included in verification mail
  '__VST_AVS_AUTOMAIL_MAIL_URL_VRSN_US' => 'https://inr-verify01.bbtest.net',
  '__VST_AVS_AUTOMAIL_MAIL_URL_THAWTE' => 'https://inr-thawte-verify01.bbtest.net',

 # Emailsender host name
  '__VST_AVS_MAIL_HOSTNAME' => 'inr-aas02-be.qa.edcwest.vrsn.com',

 # Configuration for AutoIssuer task
  '__VST_AVS_AUTOISSUER_LOCALES' => 'VRSN_US, THAWTE',

  # Amin cert name for VRSN_US (default)
  '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_VRSN_US' => 'VERISIGN AVS ISSUER',

  # Amin cert organization for VRSN_US (default)
  '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_VRSN_US' => 'VERISIGN',

  # Amin cert organization unit for VRSN_US (default)
  '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_VRSN_US' => 'INTL AND DOMESTIC GROUPING',

  # Admin cert jurisdiction hash for VRSN_US (default)
  # Please uses '3c8dab435cd9a1467e636b2135d51302' for QA environment
  '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_VRSN_US' => 'c89018b7a6284b12a988e19a28938065',

  # Amin cert name for THAWTE
  '__VST_AVS_AUTOISSUER_ADMIN_CERT_NAME_THAWTE' => 'THAWTE AVS ISSUER',

  # Amin cert organization for THAWTE
  '__VST_AVS_AUTOISSUER_ADMIN_ORGANIZATION_THAWTE' => 'VERISIGN',

  # Amin cert organization unit for THAWTE
  '__VST_AVS_AUTOISSUER_ADMIN_ORG_UNIT_THAWTE' => 'THAWTECACENTER',

  # Admin cert jurisdiction hash for THAWTE
  # Please uses '3c8dab435cd9a1467e636b2135d51302' for QA environment
  '__VST_AVS_AUTOISSUER_ADMIN_JURI_HASH_THAWTE' => 'c89018b7a6284b12a988e19a28938065',

  # Valid start offset
  # Only orders enrolled after (today - offset) will be processed by Auto Issuer task
  # The value should be number of days*24*60*60 (i.e. 2592000 = 30*24*60*60)
  '__VST_AVS_AUTOISSUER_VALID_START_OFFSET' => '2592000',

  #
  #------------  Monitor Config  ---------------#
  #
  '__VST_AVS_AUTHENTIFY_MONITOR_PORT' => '443',

  # Please uses 'alpha.authentify.com' for QA environment
  '__VST_AVS_AUTHENTIFY_MONITOR_HOST' => 'register.authentify.net',
  '__VST_AVS_AUTHENTIFY_MONITOR_URI' => '/sp/default.asp',
  '__VST_AVS_AUTHENTIFY_MONITOR_STRING' => 'up',

};

