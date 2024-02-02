.include "include/ds1501.s"

.export _ds1501_get_battery1_status
.export ds1501_get_battery1_status

.proc _ds1501_get_battery1_status
    ;;@proto unsigned char ds1501_get_battery1_status();
    ;;@brief Get battery1 status
    ;;@returns Battery1 status
.endproc

.proc ds1501_get_battery1_status
    ;;@brief Get battery1 status
    ;;@modifyA
    ;;@returnsA DS1501_BATTERY_LEVEL_FULL or DS1501_BATTERY_LEVEL_EMPTY
    lda     DS1501_CTRLA_REGISTER
    and     #%10000000
    rts
.endproc
