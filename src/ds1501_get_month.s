.include "include/ds1501.s"

.export _ds1501_get_month

; Modify a,x,y

.proc _ds1501_get_month

    lda     DS1501_MONTH_REGISTER
    tax
    and     #%00010000
    cmp     #%00010000
    beq     @add
    
    txa
    ldx     #$00
    rts
@add:    
    txa
    clc
    adc     #10
    ldx     #$00
    
    rts
.endproc
