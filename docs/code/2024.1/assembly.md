# Assembly

## ds1501_get_battery1_status

***Description***

Get battery1 status


***Modify***

* Accumulator 

***Returns***

* Accumulator : DS1501_BATTERY_LEVEL_FULL or DS1501_BATTERY_LEVEL_EMPTY



## ds1501_get_battery2_status

***Description***

Get battery2 status


***Modify***

* Accumulator 

***Returns***

* Accumulator : DS1501_BATTERY_LEVEL_FULL or DS1501_BATTERY_LEVEL_EMPTY



## ds1501_get_date

***Description***

Get date (the day in the month 1-31)


***Modify***

* Accumulator 
* X Register 

***Returns***

* Accumulator : The day



## ds1501_get_day

***Description***

Get the day of the week (1-7)


***Returns***

* Accumulator : Returns Get the day of the week (1-7)



## ds1501_get_hour

***Description***

Get hour


***Modify***

* Accumulator 
* X Register 
* Y Register 


## ds1501_get_minutes

***Description***

Get minutes


***Modify***

* Accumulator 
* X Register 
* Y Register 


## ds1501_get_month

***Description***

Get month


***Modify***

* Accumulator 
* X Register 


## ds1501_get_seconds

***Description***

Get seconds


***Modify***

* Accumulator 
* X Register 
* Y Register 


## ds1501_get_time

***Description***

Get time : hh mm ss


***Modify***

* Accumulator 
* X Register 
* Y Register 


## ds1501_get_year

***Description***

Get year (0 to 99)


***Modify***

* Accumulator 
* X Register 
* Y Register 


## ds1501_lock_te

***Description***

Set Write bit (TE)


***Modify***

* Accumulator 


## ds1501_put_time

***Input***

* Accumulator : year 
* X Register : month 
* Y Register : year 


## ds1501_set_cristal_capacitance

***Description***

Set cristal capacitance.

***Input***

* Accumulator : DS1501_CRISTAL_CAPACITANCE_12_5PF or DS1501_CRISTAL_CAPACITANCE_6PF


## ds1501_set_date_alarm



## ds1501_set_day_alarm



## ds1501_set_hours_alarm



## ds1501_set_minutes_alarm



## ds1501_set_seconds_alarm



## ds1501_unlock_te

***Description***

Disable Write bit (TE)



