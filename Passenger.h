
#ifndef Passenger_h
#define Passenger_h
#import "Menu.h"

@interface MyPassenger : MyMenu{
    double mileage;
}

-(double)calculateTaxiMileage:(double)totalTimeTravel :(double)initialSpeed;
-(void)setMileage:(double)km;
-(double)getMileage;



@end

#endif /* Passenger_h */
