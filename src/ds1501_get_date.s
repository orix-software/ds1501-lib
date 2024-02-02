.include "include/ds1501.s"

.export _ds1501_get_date
.export ds1501_get_date

; Modify a,x,y

.proc _ds1501_get_date
.endproc

.proc ds1501_get_date
    lda     DS1501_DATE_REGISTER
    tax     ; save
    and     #%00001111
    tay     ; Save first digit
    txa     ; Get initial value
    and     #%00110000

    lsr
    lsr
    lsr
    lsr

    tax
    tya
    beq     @skip

@loop:
    clc
    adc     #10
    dex
    bne     @loop
    ldx     #$00
    rts

@skip:
    ldx     #$00
    tya     ; Return number
    rts
.endproc
