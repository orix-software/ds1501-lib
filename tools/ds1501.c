#include <stdio.h>
#include <conio.h>

#include <ds1501.h>

 unsigned char kbhit_ds1501();

unsigned char *day_of_week[]={"","Monday","Tuesday","Wednesday","Thuesday","Friday","Saturday","Sunday"};

unsigned char *month_str[]={"UNK","January",
"February",
"March",
"April",
"May",
"June",
"July",
"August",
"September",
"October",
"November",
"December"};


main() {
    char mydate[40];
    unsigned char day_week;
    clrscr();
    day_week=ds1501_get_day();
    ds1501_set_year(2015);
    ds1501_set_month(12);
    ds1501_set_date(25);
    while (1) {
        if (kbhit_ds1501()==1) break;
        //printf("%s %d, %s\n",day_of_week[day_week],ds1501_get_date(),month_str[ds1501_get_month()]);
        sprintf(mydate, "%d/%s/%d %2d:%2d:%2d",ds1501_get_date(),month_str[ds1501_get_month()],ds1501_get_year(),ds1501_get_hour(),ds1501_get_minutes(),ds1501_get_seconds() );
        //printf("Seconds %d\n",ds1501_get_seconds());
        if (ds1501_low_battery1()==DS1501_LOW_BATTERY) 
            cputsxy(1,1,"Low battery");
        else
            cputsxy(1,1,"Battery OK");
        cputsxy(1,2,mydate);
    }


}