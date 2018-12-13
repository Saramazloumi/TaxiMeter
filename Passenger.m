
#import <Foundation/Foundation.h>
#import "Passenger.h"

@implementation MyPassenger



-(double)calculateTaxiMileage:(double)totalTimeTravel :(double)initialSpeed{
    mileage = mileage + pow(initialSpeed, (2 * totalTimeTravel/60)) - (initialSpeed * totalTimeTravel/60);
    return mileage;
}

-(void)setMileage:(double)km{
    mileage = km;
}
-(double)getMileage{
    return mileage;
}


@end
