//
//  NSDecimalNumberTools.m
//  NSNumberFormatterDemo
//
//  Created by apple on 2018/5/17.
//  Copyright © 2018年 投星信息. All rights reserved.
//

#import "NSDecimalNumberTools.h"

@implementation NSDecimalNumberTools

+ (NSString *)stringOfDoubleValueAfterPoint:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.00";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfDoubleValueAfterPointDefaultZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.00";
    formatter.zeroSymbol = @"0.00";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfDoubleValueAfterPointRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.maximumFractionDigits = 2;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfDoubleValueAfterPointDefaultZeroRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"0";
    formatter.maximumFractionDigits = 2;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfThreeValueAfterPoint:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.000";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfThreeValueAfterPointDefaultZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000";
    formatter.zeroSymbol = @"0.000";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfThreeValueAfterPointRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.maximumFractionDigits = 3;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfThreeValueAfterPointDefaultZeroRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"0.000";
    formatter.maximumFractionDigits = 3;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringToPercentageWithDoubleValueAfterPointRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.00%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringToPercentageWithDoubleValueAfterPointDefaultZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.00%";
    formatter.zeroSymbol = @"0.00%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringToPercentageWithThreeValueAfterPointRemoveEndZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000%";
    formatter.zeroSymbol = @"--";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringToPercentageWithThreeValueAfterPointDefaultZero:(NSString *)value{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:value];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000%";
    formatter.zeroSymbol = @"0.000%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

@end
