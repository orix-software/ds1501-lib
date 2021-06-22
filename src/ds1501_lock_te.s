.include "include/ds1501.s"

.export _ds1501_lock_te


.proc _ds1501_lock_te
    ; Set write bit
    
    lda     DS1501_CTRLB_REGISTER
    ora     #%10000000
    sta     DS1501_CTRLB_REGISTER
    rts
.endproc
