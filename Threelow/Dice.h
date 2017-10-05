#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;
@property bool isHeld;

-(NSString *)randomValue;


@end
