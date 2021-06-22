.include "include/ds1501.s"

.export _ds1501_set_month

.import _ds1501_unlock_te,_ds1501_lock_te

; Modify a,y

.proc _ds1501_set_month
    ; Set write bit
    and     #%00011111 ;  Prevent override of RTC bits for oscilator etc
    tay ; save
    jsr     _ds1501_unlock_te
    tya
    sta     DS1501_MONTH_REGISTER    
    jmp     _ds1501_lock_te
 .endproc
