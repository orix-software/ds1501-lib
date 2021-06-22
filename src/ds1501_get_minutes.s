.include "include/ds1501.s"

.export _ds1501_get_minutes

; Modify a,x,y

.proc _ds1501_get_minutes
    lda     DS1501_MINUTES_REGISTER

    tax
    and     #%00001111
    tay
    
    txa
    and     #%01110000
    lsr
    lsr
    lsr
    lsr
    tax
    beq     @out
    dex
    tya
@loop:    
    clc
    adc     #10
    dex
    bpl     @loop
    ldx     #$00
    rts
    
@out:
    ldx     #$00    
    tya
    
    rts
.endproc
