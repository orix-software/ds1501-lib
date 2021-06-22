
 .include "telestrat.inc"
.export  _kbhit_ds1501
.proc _kbhit_ds1501

   BRK_TELEMON XRD0
   bcs     @no_char_action
   lda     #$01
   rts
@no_char_action:
   lda     #$00
   rts
.endproc   