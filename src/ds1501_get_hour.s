.include "include/ds1501.inc"

.export _ds1501_get_hour

.export ds1501_get_hour

; Modify a,x,y

.proc _ds1501_get_hour
    ;;@proto unsigned char ds1501_get_hour();
    ;;@brief Get hour
    ;;@returns Hour
.endproc

.proc ds1501_get_hour
    ;;@brief Get hour
    ;;@modifyA
    ;;@modifyX
    ;;@modifyY
    ;;@returnA hour
    lda     DS1501_HOUR_REGISTER

    tax
    and     #%00001111
    tay

    txa
    and     #%00110000
    lsr
    lsr
    lsr
    lsr
    tax
    beq     @out
    tya

@loop:
    clc
    adc     #10
    dex
    bne     @loop
    ldx     #$00
    rts

@out:
    ldx     #$00
    tya

    rts

.endproc
