#import "Dice.h"

@implementation Dice

-(NSString *)randomValue {
    NSArray *randomValuesArr = [[NSArray alloc]initWithObjects:@"I", @"II", @"III", @"IV", @"V", @"VI", nil];
    
    int x = arc4random_uniform(6);
    return [randomValuesArr objectAtIndex:x];
    
}

@end
