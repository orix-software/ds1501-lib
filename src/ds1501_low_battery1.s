.include "include/ds1501.s"

.export _ds1501_low_battery1

; Modify a,x,y

.proc _ds1501_low_battery1
    lda     DS1501_CTRLA_REGISTER
    and     #%10000000
    cmp     #%10000000
    beq     @low
    lda     #$01
    rts
@low:
    lda     #$00
    
    rts
.endproc
