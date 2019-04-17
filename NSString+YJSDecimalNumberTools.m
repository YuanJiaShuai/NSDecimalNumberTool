//
//  NSString+YJSDecimalNumberTools.m
//  NSDecimalNumberTool_Example
//
//  Created by yjs on 2019/4/17.
//  Copyright © 2019 YuanJiaShuai. All rights reserved.
//

#import "NSString+YJSDecimalNumberTools.h"

@implementation NSString (YJSDecimalNumberTools)

- (NSString *)toDoubleValuePointZeroToLine{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.00";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toDoubleValuePointZeroToZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.00";
    formatter.zeroSymbol = @"0.00";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toDoubleValuePointZeroToLineAndRemoveEndZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.maximumFractionDigits = 2;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toDoubleValuePointZeroToZeroAndRemoveEndZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"0";
    formatter.maximumFractionDigits = 2;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toThreeValuePointZeroToLine{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.000";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toThreeValuePointZeroToZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000";
    formatter.zeroSymbol = @"0.000";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toThreeValuePointZeroToLineAndRemoveEndZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.maximumFractionDigits = 3;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toThreeValuePointZeroToZeroAndRemoveEndZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"0.000";
    formatter.maximumFractionDigits = 3;
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toPercentageWithDoublePointZeroToLine{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.zeroSymbol = @"--";
    formatter.positiveFormat = @"#.00%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toPercentageWithDoublePointZeroToZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.00%";
    formatter.zeroSymbol = @"0.00%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toPercentageWithThreePointZeroToLine{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000%";
    formatter.zeroSymbol = @"--";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

- (NSString *)toPercentageWithThreePointZeroToZero{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:self];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.positiveFormat = @"#.000%";
    formatter.zeroSymbol = @"0.000%";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

@end
