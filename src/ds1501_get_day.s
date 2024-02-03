.include "include/ds1501.inc"

.export _ds1501_get_day
.export ds1501_get_day

.proc _ds1501_get_day
    ;;@proto unsigned char ds1501_get_hour();
    ;;@brief Get the day of the week (1-7)
    ;;@returns day of the week
.endproc

.proc ds1501_get_day
    ;;@brief Get the day of the week (1-7)
    ;;@returnsA Returns Get the day of the week (1-7)
    lda     DS1501_DAY_REGISTER
    rts
.endproc
