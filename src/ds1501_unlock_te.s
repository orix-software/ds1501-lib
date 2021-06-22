.include "include/ds1501.s"

.export _ds1501_unlock_te


.proc _ds1501_unlock_te
    ; Set write bit
    
    lda     DS1501_CTRLB_REGISTER
    and     #%01111111
    sta     DS1501_CTRLB_REGISTER
    rts
.endproc
