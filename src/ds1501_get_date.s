.include "include/ds1501.inc"

.export _ds1501_get_date
.export ds1501_get_date

.proc _ds1501_get_date
    ;;@proto unsigned char ds1501_get_date();
    ;;@brief Get date (the day in the month 1-31)
.endproc

.proc ds1501_get_date
    ;;@brief Get date (the day in the month 1-31)
    ;;@modifyA
    ;;@modifyX
    ;;@returnsA The day
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
    ; At this step A contains the number *10 : 000000XX

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
