CHANGE MASTER TO MASTER_HOST = '54.88.80.89', MASTER_USER = 'replica_user', MASTER_PASSWORD = 'replica_user', MASTER_LOG_FILE = 'mysql-bin.000002', MASTER_LOG_POS = 154;
START SLAVE;
