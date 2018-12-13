
#ifndef Menu_h
#define Menu_h

@interface MyMenu : NSObject{
    int startHour, startMinute, endHour, endMinute, numberOfTrip;
    float difference, eTotalHour, sTotalHour, speed;
    double gasLevel;
    double price;
}

-(int)showMenu;
-(void)setStartTime;
-(void)setEndTime;
-(float)getStartTime;
-(float)getEndTime;
-(double)calculateTravelCost:(float)totalTravelTime;
-(void)setTravelPrice:(double)cost;
-(double)getTravelPrice;
-(float)initSpeed;
-(float)getTotalTravelTime;
-(void)timeTravel;
-(double)initialGas;



@end

#endif /* Menu_h */
