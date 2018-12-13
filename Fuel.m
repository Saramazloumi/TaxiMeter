
#import <Foundation/Foundation.h>
#import "Fuel.h"

@implementation MyFuel

-(void)setGas:(double)level{
    currentLevelGas = level;
}
-(double)getGasLevel{
    return currentLevelGas;
}
-(void)updatedGasTank:(double)litre{
    currentLevelGas += litre;
}
-(double)fillGasTankCost:(double)gasPrice :(double)availableBalance{
        double level = 0;
        Boolean flag = true;
        while(flag){
            printf("Please specify how much gas you would like to put : ");
            scanf("%lf", &level);
            printf("The total price of gas is : $ %lf \n", (gasPrice * level));
    
            if((gasPrice * level) > availableBalance){
    
                printf("ERROR : There is not enough balance to afford \n");
            }else{
                flag = false;
            }
        }
        printf("The total litre of %lf successfuly done! \n", level);
    printf("HAVE A SAFE TRIP! \n");
        return level;
    }

-(double)costPutGas{
    int startPoint = 15;
    int endPoint = 45;
    int randomePrice = startPoint + arc4random() % (endPoint - startPoint);
    double price = ((double)randomePrice / 100) + 1.0;
    return price;
}
-(BOOL)callingOnsiteGass:(double)fee{
    char answer;
    printf("Your fuel level is 00.00 \n");
    printf("You need 60.00 liter for full tank \n");
    printf("Total fee would be $ 100.00 \n");
    printf("Would you like to call onSiteGas? (Y/N)");
    scanf("%c", &answer);
    if(answer=='y')
        return true;
    else
        return false;
}
-(double)calculatingFuelConsumption :(float)time : (double)initialSpeed{
    double fuelConsumption = 0;
    fuelConsumption = (time/60 * fabs(tan(initialSpeed * time/60)) + fabs(cos(initialSpeed)));
    return fuelConsumption;
}

@end


