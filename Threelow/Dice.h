#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;

@property bool isHeld;
@property NSString *previousValue;


-(NSString *)randomValue;


@end
