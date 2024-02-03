.include "include/ds1501.inc"

.export _ds1501_put_time
.export ds1501_put_time

.proc _ds1501_put_time
    ;;@proto void ds1501_put_time(unsigned char day, unsigned char month, unsigned char year )
    ;;@brief Set day, month, year
    rts
.endproc

.proc ds1501_put_time
    ;;@bried Set day, month, year
    ;;@inputA year
    ;;@inputX month
    ;;@inputY year

    rts
.endproc
