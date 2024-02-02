.include "include/ds1501.s"

.export _ds1501_set_date

.import _ds1501_unlock_te,_ds1501_lock_te

; Modify a,x,y

.proc _ds1501_set_date
    ; Set write bit
    tay ; save
    jsr     _ds1501_unlock_te
    tya
    cmp     #15
    bcc     @skip

    sec
    sbc     #10
    cmp     #15
    ;bcc     @add_only_one

    ;sec
    ;sbc     #10
    ;ora     #%00100000
    ;bit    $3000 ; Jump 2 bytes

@add_only_one:
    ora     #%00010000
    tay

@skip:
    tya
    sta     DS1501_DATE_REGISTER

    jmp     _ds1501_lock_te

.endproc
