
#import <Foundation/Foundation.h>
#import "Menu.h"

@implementation MyMenu

-(int)showMenu{
    int input;
    printf("1- Pick up Passengers \n");
    printf("2- Filling up the gas tank \n");
    printf("3- Detail display \n");
    scanf("%d", &input);
    return input;
}
-(void)setStartTime{
    printf("Start time of the trip ");
    scanf("%dh%d", &startHour, &startMinute);
}
-(void)setEndTime{
    printf("End time fo the trip ");
    scanf("%dh%d", &endHour, &endMinute);
}
-(void)timeTravel{
    //set the timeTravel
    sTotalHour = (float)(startHour + startMinute/ 60.0);
    eTotalHour =(float)(endHour + endMinute / 60.0);
}
-(float)getStartTime{
    return sTotalHour;
}
-(float)getEndTime{
    return eTotalHour;
}
-(float)getTotalTravelTime{
    //calculatin the timeTravel
    if(eTotalHour > sTotalHour){
        difference = ((endHour * 60.0) + endMinute) - ((startHour * 60.0) + startMinute);
    }else{
        difference = (24 - ((startHour * 60.0) + startMinute)) + ((endHour * 60.0) + endMinute);
    }
    return difference;
}
-(double)calculateTravelCost:(float)totalTravelTime{
    totalTravelTime =difference;
    
//    while (totalTravelTime > 12) {
//        printf("This Travel is firbiden due to long trip hour \n");
//        [self showMenu];
//    }
    
    if(startHour >=0 && startHour< 8 && totalTravelTime != 0){
        price= (totalTravelTime * 0.5);
        printf("The total price travel is : %f \n", price);
        numberOfTrip ++;
    }else if(startHour >=8 && startHour < 14 && totalTravelTime != 0){
        price= (totalTravelTime * 0.33);
        printf("The total price travel is : %f \n", price);
        numberOfTrip ++;
    }else if(startHour >= 14 && startHour <24 && totalTravelTime != 0){
        price= (totalTravelTime * 0.41);
        printf("The total price travel is : %f \n", price);
        numberOfTrip ++;
    }
  
    return price;
}
-(void)setTravelPrice:(double)cost{
    price = cost;
}
-(double)getTravelPrice{
    return price;
}
-(float)initSpeed{
    printf("Enter your initial speed ");
    scanf("%f", &speed);
    return speed;
}

-(double)initialGas{
    printf("Please enter your current gas level ");
    scanf("%lf", &gasLevel);
    return gasLevel;
}




@end
