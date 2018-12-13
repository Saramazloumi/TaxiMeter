
#import <Foundation/Foundation.h>
#import "Taxi.h"

@implementation MyTaxi



-(void)calculateBalanceAfterPutGas:(double)price :(double)litres{
    balance -= (price * litres);
}
-(void)calculateBalanceAfterOnSite:(double)fee{
    balance -= fee;
}
-(void)calculateBalanceEndingTrip:(double)price {
    balance += price;
    totalTrip ++;
}
-(void)setAvailableBalance:(double)currentBalance{
    balance =currentBalance;
}
-(double)getAvailableBalance{
    return balance;
}
-(int)getTotaltrip{
    return totalTrip;
}
@end

