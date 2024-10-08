#!/usr/bin/expect -f

set timeout -1
spawn npm start

expect {
    "Would you like to run the app on another port instead?*" {
        send -- "Y\r"
        exp_continue
    }
    eof
}
