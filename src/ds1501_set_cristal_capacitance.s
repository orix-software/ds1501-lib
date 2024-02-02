.include "include/ds1501.s"

.export ds1501_set_cristal_capacitance
.export _ds1501_set_cristal_capacitance

.proc _ds1501_set_cristal_capacitance
    ;;@brief Set cristal capacitance.
    ;;@proto void          ds1501_set_cristal_capacitance(unsigned char capacitance);
.endproc

.proc ds1501_set_cristal_capacitance
    ;;@brief Set cristal capacitance.
    ;;@inputA DS1501_CRISTAL_CAPACITANCE_12_5PF or DS1501_CRISTAL_CAPACITANCE_6PF
    cmp     #DS1501_CRISTAL_CAPACITANCE_12_5PF
    beq     @capacitance_12

    lda     DS1501_CTRLB_REGISTER
    and     #%10111111
    sta     DS1501_CTRLB_REGISTER

    rts

@capacitance_12:
    ora     DS1501_CTRLB_REGISTER
    sta     DS1501_CTRLB_REGISTER
    rts
.endproc

