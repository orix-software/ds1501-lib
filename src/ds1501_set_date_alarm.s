.include "include/ds1501.inc"

.export _ds1501_set_date_alarm
.export ds1501_set_date_alarm


.proc _ds1501_set_date_alarm
    ;;@proto ds1501_set_date_alarm(unsigned int date);
    ;;@bried Disables day alarm (1-7) and set date alarm (1-31)
.endproc

.proc ds1501_set_date_alarm
    ;;@bried Disables day alarm (1-7) and set date alarm (1-31)
    rts
.endproc