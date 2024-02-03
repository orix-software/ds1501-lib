.include "include/ds1501.inc"

.export _ds1501_set_month
.export ds1501_set_month

.import ds1501_unlock_te
.import ds1501_lock_te



.proc _ds1501_set_month
.endproc

.proc ds1501_set_month
    ; Set write bit
    and     #%00011111 ;  Prevent override of RTC bits for oscilator etc
    tay ; save
    jsr     ds1501_unlock_te
    tya
    sta     DS1501_MONTH_REGISTER
    jmp     ds1501_lock_te
 .endproc
