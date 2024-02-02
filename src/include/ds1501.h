
#define DS1501_LOW_BATTERY  0x01
#define DS1501_HIGH_BATTERY 0x00

#define DS1501_CRISTAL_CAPACITANCE_12_5PF 64
#define DS1501_CRISTAL_CAPACITANCE_6PF    0

unsigned char ds1501_get_day();
unsigned char ds1501_get_month();
unsigned char ds1501_get_date();
unsigned int  ds1501_get_year();
unsigned char ds1501_get_seconds();
unsigned char ds1501_get_minutes();
unsigned char ds1501_get_hour();

void          ds1501_set_year(unsigned int year);
void          ds1501_set_month(unsigned char month);
void          ds1501_set_date(unsigned char date);

unsigned char ds1501_get_battery1_status();
unsigned char ds1501_get_battery2_status();
void          ds1501_set_cristal_capacitance(unsigned char capacitance);
long int      ds1501_get_time();


/*Alarms*/

void          ds1501_set_seconds_alarm(unsigned int seconds);
void          ds1501_set_minutes_alarm(unsigned int minutes);
void          ds1501_set_hours_alarm(unsigned int hours);

void          ds1501_set_day_alarm(unsigned int day);
void          ds1501_set_date_alarm(unsigned int date);
