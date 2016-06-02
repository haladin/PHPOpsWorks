# zmotPHPOpsWorks

'''json{
    "apache":{
        "log_level": "warn"
    },
    "nfs": {
        "export": "/srv/nfs/export",
        "port": {
            "statd": 32765,
            "statd_out": 32766,
            "mountd": 32767,
            "lockd": 32768
        }
    },
    "nfs_client": {
        "nfs_server": "nfs1",
        "nfs_mount_point": "/mnt/nfs"
    },
    "alerts": {
        "send_alert": true,
        "smtp": "smtp.gmail.com",
        "port": 587,
        "username": "leadsecure.monit@gmail.com",
        "password": "tarator349;",
        "useTLS": true,
        "emails": ["dvieregge@zmotauto.com","slav@videoengager.com"]
    },
    "sites": [
        {"name": "dev",
         "directories": [],
         "ServerName": "test-dev.zmotauto.com",
         "DocumentRoot": "dev",
         "ServerAlias": "www.test-dev.zmotauto.com",
         "enable_cgi": true,
         "cgi-bin": "dev/cgi-bin"
         },
        {"name": "stats",
         "directories": [
            {"directory": "performance/performancereport", "link": "sites/stats/performancereport"}
         ],
         "ServerName": "test-stats.zmotauto.com",
         "DocumentRoot": "stats",
         "ServerAlias": "www.test-stats.zmotauto.com",
         "enable_cgi": false
         },
        {"name": "forms",
         "directories": [],
         "ServerName": "test-forms.zmotauto.com",
         "DocumentRoot": "forms",
         "ServerAlias": "www.test-forms.zmotauto.com",
         "enable_cgi": false
         },
        {"name": "vx",
         "directories": [
            {"directory": "vx_upload/spreadsheet", "link": "sites/vx/spreadsheet"},
            {"directory": "finals", "link": "sites/vx/finals"},
            {"directory": "cgi-bin/in", "link": "sites/vx/in"}
         ],
         "ServerName": "test-vx.zmotauto.com",
         "directories": [],
         "DocumentRoot": "vx",
         "ServerAlias": "www.test-vx.zmotauto.com",
         "enable_cgi": true,
         "cgi-bin": "vx/cgi-bin"
         },
         {"name": "specials",
         "directories": [
            {"directory": "home", "link": "sites/specials/home"}
         ],
         "ServerName": "test-specials.zmotauto.com",
         "DocumentRoot": "specials/home",
         "ServerAlias": "www.test-specials.zmotauto.com",
         "enable_cgi": false
         },
         {"name": "cardinalegroup",
         "directories": [
            {"directory": "home", "link": "sites/cardinalegroup/home"}
         ],
         "ServerName": "test-cardinalegroup.zmotauto.com",
         "DocumentRoot": "cardinalegroup/home",
         "ServerAlias": "www.test-cardinalegroup.zmotauto.com",
         "enable_cgi": false
         },
         {"name": "main",
         "directories": [],
         "ServerName": "test-main.zmotauto.com",
         "DocumentRoot": "main",
         "ServerAlias": "www.test-main.zmotauto.com",
         "enable_cgi": false
         },
        {"name": "inventory",
         "directories": [],
         "ServerName": "test-inventory.zmotauto.com",
         "DocumentRoot": "inventory",
         "ServerAlias": "www.test-inventory.zmotauto.com",
         "enable_cgi": false
         },
        {"name": "dealers",
         "directories": [
             {"directory": "home", "link": "sites/dealers/home"}
         ],
         "ServerName": "test-dealers.zmotauto.com",
         "DocumentRoot": "dealers/home",
         "ServerAlias": "www.test-dealers.zmotauto.com",
         "enable_cgi": false
         }]
}
