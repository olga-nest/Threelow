#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property bool isHeld;
@property NSString *previousValue;


-(NSString *)randomValue;


@end
