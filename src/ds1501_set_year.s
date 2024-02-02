.include "include/ds1501.s"

.export _ds1501_set_year

.import _ds1501_unlock_te,_ds1501_lock_te

; Modify a,x,y

.proc _ds1501_set_year
    ; Set write bit

    tay ; save
    jsr     _ds1501_unlock_te
    sty     DS1501_YEAR_REGISTER
    tya
    and     #%00001111
    sec
    sbc     #10
    bcc     @setyear

    ;lda     DS1501_YEAR_REGISTER
    jmp      _ds1501_lock_te

@setyear:
    sty     DS1501_YEAR_REGISTER
    ;lda     DS1501_YEAR_REGISTER ; ???
    jmp      _ds1501_lock_te

.endproc
