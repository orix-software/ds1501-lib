.include "include/ds1501.inc"

.export _ds1501_get_battery2_status
.export ds1501_get_battery2_status

.proc _ds1501_get_battery2_status
    ;;@proto unsigned char ds1501_get_battery2_status();
    ;;@brief Get battery2 status
    ;;@returns Battery2 status
.endproc

.proc ds1501_get_battery2_status
    ;;@brief Get battery2 status
    ;;@modifyA
    ;;@returnsA DS1501_BATTERY_LEVEL_FULL or DS1501_BATTERY_LEVEL_EMPTY
    lda     DS1501_CTRLA_REGISTER
    and     #%01000000
    asl     ; In order to have 128 if it's full
    rts
.endproc
