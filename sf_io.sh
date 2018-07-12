#!/bin/expect
set timeout 4
spawn sftp ionization@202.114.10.172
expect "password:"
send "ionization2015\r"
interact
