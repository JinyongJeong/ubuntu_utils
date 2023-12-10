# There is incorrect time issue when dual boot (window, linux) is used.
# To correct this issue, linux should use local time for RTC.

timedatectl set-local-rtc 1 --adjust-system-clock

# when `timedatectl` is entered, this update is well applied if you can find "RTC in local TZ: yes" 

# Enter following command if you want to recovery original setting
# timedatectl set-local-rtc 0 --adjust-system-clock
