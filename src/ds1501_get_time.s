.include "include/ds1501.s"

.export _ds1501_get_time
.export ds1501_get_time

; Return in A ss
; return in X mm
; return in Y hh

.proc _proto ds1501_get_time
    ;;@long int      ds1501_get_time();
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
    tax     ; X contaiuns jours
    pla
    tay     ; Y contains Minutes
    pla
    ; A contains seconds
    rts
.endproc
