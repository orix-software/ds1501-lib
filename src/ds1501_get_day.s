.include "include/ds1501.s"

.export _ds1501_get_day

; Return in A ss
; return in X mm
; return in Y hh

.proc _ds1501_get_day
    lda     #$00
    rts
    lda     DS1501_DAY_REGISTER
    rts
.endproc
