
#import <Foundation/Foundation.h>
#import "Menu.h"
#import "Fuel.h"
#import "Taxi.h"
#import "Passenger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double gasLevel;
        double fuelConsumption = 0.0;
       // double initialLevel;
        double mile;
        int option, numberOfTotalTrip;
        float difference;
        double price;
        double gasUsed =0.0;
        float initialSpeed;
        double mileage;
        //double initMileage =0.0;
        double gasPrice;
        bool exit = true;
        //float startTime, endTime, travelHour;
        
        
        MyMenu *menu =[[MyMenu alloc]init];
        MyFuel *fuel =[[MyFuel alloc]init];
        fuelConsumption = [menu initialGas];
        [fuel setGas:fuelConsumption];
        
        MyTaxi *taxi =[[MyTaxi alloc]init];
        MyPassenger *passenger =[[MyPassenger alloc]init];
        [taxi setAvailableBalance:0];
        [passenger setMileage:0];        
        
        do{
           
       option = [menu showMenu];

        switch(option){
                
            case 1:
                [menu setStartTime];
                [menu setEndTime];
                initialSpeed = [menu initSpeed];
                [menu timeTravel];
                difference = [menu getTotalTravelTime];
                price = [menu calculateTravelCost:difference];
                [taxi calculateBalanceEndingTrip:price];

                gasUsed = [fuel calculatingFuelConsumption :difference :initialSpeed];
                //printf("gas used is : %lf \n",gasUsed);>>controlling
                fuelConsumption = [fuel getGasLevel] - gasUsed;
                [fuel setGas:fuelConsumption];
                //printf("%lf", [fuel getGasLevel]);>>controlling
                
                mile = [passenger calculateTaxiMileage:difference :initialSpeed];
                mileage = [passenger getMileage] + mile;
                [passenger setMileage:mileage];
                
                
                numberOfTotalTrip = [taxi getTotaltrip];
                //printf("%d", [taxi getTotaltrip]);>>>controling get the number
                
                if([fuel getGasLevel] < 5.0){
                    printf("WARNING*** You are about roun out of GAS \n");
                    printf("You need to go to the nearest gas station \n");
                    
                }else if ([fuel getGasLevel] == 0.0){
                    [fuel callingOnsiteGass:60];
                    [fuel updatedGasTank:60];
                    [taxi calculateBalanceAfterOnSite:100.0];
                }
                    break;

            case 2:
                gasPrice = [fuel costPutGas];
                gasLevel = [fuel fillGasTankCost:gasPrice :[taxi getAvailableBalance]];
                [fuel updatedGasTank:gasLevel];
                [taxi calculateBalanceAfterPutGas:gasPrice :gasLevel];
                break;
            
            case 3:
                printf("****************************** INFORMATION ***********************************\n\n");
                printf("Total Net Income is : %lf \n", [taxi getAvailableBalance]);
                printf("The car fuel level is : %lf \n",[fuel getGasLevel]);
                printf("The total Car's Mileage is : %lf \n", [passenger getMileage]);
                printf("the total number of trips is : %d \n\n", [taxi getTotaltrip]);
                printf("****************************** HAVE A NICE DAY! ****************************** \n\n");
                break;
            
            case 0 :
                exit = false;
                break;
                
                default:
                printf("Invalid input");
                break;
            }//end of switch
        }while(exit);
        printf("GOOD BYE!");
    }
    return 0;
}
