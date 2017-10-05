#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isHeld = NO;
    }
    return self;
}

-(NSString *)randomValue {
    NSArray *randomValuesArr = [[NSArray alloc]initWithObjects:@"I", @"II", @"III", @"IV", @"V", @"VI", nil];
    
    int x = arc4random_uniform(6);
    return [randomValuesArr objectAtIndex:x];
    
}

@end
