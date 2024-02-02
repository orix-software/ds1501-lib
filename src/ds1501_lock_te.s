.include "include/ds1501.s"

.export _ds1501_lock_te
.export ds1501_lock_te

.proc _ds1501_lock_te
    ;;@proto void ds1501_lock_te()
    ;;@brief Set Write bit (TE)
.endproc


.proc ds1501_lock_te
    ;;@brief Set Write bit (TE)
    ;;@modifyA

    lda     DS1501_CTRLB_REGISTER
    ora     #%10000000
    sta     DS1501_CTRLB_REGISTER
    rts
.endproc
