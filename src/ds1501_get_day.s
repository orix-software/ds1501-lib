.include "include/ds1501.s"

.export _ds1501_get_day
.export ds1501_get_day

.proc _ds1501_get_day
.endproc

; Return in A ss
; return in X mm
; return in Y hh

.proc ds1501_get_day
    lda     DS1501_DAY_REGISTER
    rts
.endproc
