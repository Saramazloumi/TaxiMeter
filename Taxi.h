
#ifndef Taxi_h
#define Taxi_h
#import "Menu.h"

@interface MyTaxi : MyMenu{
    double balance;
    int totalTrip;
}


-(void)calculateBalanceAfterPutGas:(double)price :(double)litres;
-(void)calculateBalanceAfterOnSite:(double)fee;
-(void)calculateBalanceEndingTrip:(double)price;
-(void)setAvailableBalance:(double)currentBalance;
-(double)getAvailableBalance;
-(int)getTotaltrip;

@end

#endif /* Taxi_h */
