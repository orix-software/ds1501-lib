.include "include/ds1501.inc"

.export _ds1501_get_time
.export ds1501_get_time

.import ds1501_get_seconds
.import ds1501_get_minutes
.import ds1501_get_hours

.proc _ds1501_get_time
    ;;@proto long int      ds1501_get_time();
    ;;@brief Get time : hh mm ss
.endproc

.proc ds1501_get_time
    ;;@brief Get time : hh mm ss
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY
    ;;@returnX Seconds
    ;;@returnY Minutes
    ;;@returnA Seconds
    jsr     ds1501_get_seconds
    pha
    jsr     ds1501_get_minutes
    pha
    jsr     ds1501_get_hours
    tax     ; X contains hours
    pla
    tay     ; Y contains Minutes
    pla
    ; A contains seconds
    rts
.endproc
