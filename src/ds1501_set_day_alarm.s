.include "include/ds1501.inc"

.export _ds1501_set_day_alarm
.export ds1501_set_day_alarm

.proc _ds1501_set_day_alarm
    ;;@proto
    ;;@bried Disables date alarm (1-31) and set day alarm  (1-7)
.endproc

.proc ds1501_set_day_alarm
    ;;@bried Disables date alarm (1-31) and set day alarm (1-31) (1-7)
    rts
.endproc
