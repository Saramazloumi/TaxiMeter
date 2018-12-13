
#ifndef Fuel_h
#define Fuel_h
#import "Menu.h"

@interface MyFuel : MyMenu{
    double currentLevelGas;
}

-(void)setGas:(double)level;
-(double)getGasLevel;
-(void)updatedGasTank:(double)litre;
-(double)fillGasTankCost:(double)gasPrice :(double)availableBalance;
-(double)costPutGas;
-(BOOL)callingOnsiteGass:(double)fee;
-(double)calculatingFuelConsumption :(float)time : (double)initialSpeed;

@end



#endif /* Fuel_h */
