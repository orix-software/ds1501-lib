
#define DS1501_LOW_BATTERY  0x01
#define DS1501_HIGH_BATTERY 0x00


unsigned char ds1501_get_day();
unsigned char ds1501_get_month();
unsigned char ds1501_get_date();
unsigned int ds1501_get_year();
unsigned char ds1501_get_seconds();
unsigned char ds1501_get_minutes();
unsigned char ds1501_get_hour();

void ds1501_set_year(unsigned int year);
void ds1501_set_month(unsigned char month);
void ds1501_set_date(unsigned char date);



unsigned char ds1501_low_battery1();