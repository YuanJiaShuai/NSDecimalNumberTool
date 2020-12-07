//
//  YJSDecimalTool.m
//  NSDecimalNumberTool
//
//  Created by yjs on 2020/12/7.
//

#import "YJSDecimalTool.h"

@implementation YJSDecimalTool

+ (NSString *)stringDoublePercentOfValue:(double)value zeroType:(YJSZeroType)zeroType{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:[@(value) description]];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:4 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    formatter.numberStyle = NSNumberFormatterPercentStyle;
    formatter.alwaysShowsDecimalSeparator = YES;
    formatter.maximumFractionDigits = 2;
    formatter.minimumFractionDigits = 2;
    formatter.minimumIntegerDigits = 1;
    formatter.positivePrefix = @"+";
    formatter.negativePrefix = @"-";
    if(zeroType == YJSZeroTypeZero){
        formatter.zeroSymbol = @"0.00%";
    }else if(zeroType == YJSZeroTypeLine){
        formatter.zeroSymbol = @"--";
    }
    
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)unStringDoublePercentOfValue:(double)value zeroType:(YJSZeroType)zeroType{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:[@(value) description]];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:4 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    formatter.numberStyle = NSNumberFormatterPercentStyle;
    formatter.alwaysShowsDecimalSeparator = YES;
    formatter.maximumFractionDigits = 2;
    formatter.minimumFractionDigits = 2;
    formatter.minimumIntegerDigits = 1;
    if(zeroType == YJSZeroTypeZero){
        formatter.zeroSymbol = @"0.00%";
    }else if(zeroType == YJSZeroTypeLine){
        formatter.zeroSymbol = @"--";
    }
    
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringDoubleOfValue:(double)value zeroType:(YJSZeroType)zeroType{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:[@(value) description]];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.alwaysShowsDecimalSeparator = YES;
    formatter.maximumFractionDigits = 2;
    formatter.minimumFractionDigits = 2;
    formatter.minimumIntegerDigits = 1;
    formatter.positivePrefix = @"+";
    formatter.negativePrefix = @"-";
    if(zeroType == YJSZeroTypeZero){
        formatter.zeroSymbol = @"0.00";
    }else if(zeroType == YJSZeroTypeLine){
        formatter.zeroSymbol = @"--";
    }
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)unSignDoubleOfValue:(double)value zeroType:(YJSZeroType)zeroType{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:[@(value) description]];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.alwaysShowsDecimalSeparator = YES;
    formatter.maximumFractionDigits = 2;
    formatter.minimumFractionDigits = 2;
    formatter.minimumIntegerDigits = 1;
    if(zeroType == YJSZeroTypeZero){
        formatter.zeroSymbol = @"0.00";
    }else if(zeroType == YJSZeroTypeLine){
        formatter.zeroSymbol = @"--";
    }
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

+ (NSString *)stringOfTenWanUnitWithValue:(double)value{
    NSString *sign = value >= 0 ? @"" : @"-";
    value = fabs(value);
    if(value >= 1000000000000){//万亿
        value = value/1000000000000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万亿", sign, result];
        
    }else if(value >= 100000000){//亿
        value = value/100000000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@亿", sign, result];
        
    }else if(value >= 10000000){//万
        value = value/10000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else if(value >= 100000){//万
        value = value/10000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else{
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return result;
    }
}

+ (NSString *)stringOfTenWanUnitWithValuePointOut:(double)value{
    NSString *sign = value >= 0 ? @"" : @"-";
    value = fabs(value);
    if(value >= 1000000000000){//万亿
        value = value/1000000000000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万亿", sign, result];
        
    }else if(value >= 100000000){//亿
        value = value/100000000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@亿", sign, result];
        
    }else if(value >= 10000000){//万
        value = value/10000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else if(value >= 100000){//万
        value = value/10000;
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:1];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:2];
        }
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else{
        NSInteger number = [YJSDecimalTool obtainIntegerNumWithValue:value];
        NSString *result;
        if(number >= 4){
            result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        }else{
            result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        }
        return result;
    }
}

+ (NSString *)scaleZeroStringOfTenWanUnitWithValue:(double)value{
    NSString *sign = value >= 0 ? @"" : @"-";
    value = fabs(value);
    if(value >= 1000000000000){//万亿
        value = value/1000000000000;
        NSString *result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        return [NSString stringWithFormat:@"%@%@万亿", sign, result];
        
    }else if(value >= 100000000){//亿
        value = value/100000000;
        NSString *result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        return [NSString stringWithFormat:@"%@%@亿", sign, result];
        
    }else if(value >= 10000000){//万
        value = value/10000;
        NSString *result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else if(value >= 100000){//万
        value = value/10000;
        NSString *result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        return [NSString stringWithFormat:@"%@%@万", sign, result];
        
    }else{
        NSString *result = [YJSDecimalTool keepDoubleOfValue:value scale:0];
        return result;
    }
}

#pragma mark - Private Functions
+ (NSInteger)weekDayOfNow {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comp = [calendar components:NSCalendarUnitWeekday fromDate:[NSDate date]];
    return comp.weekday-1;
}

+ (NSString *)getCurrentYearMonthAndDay:(NSDate *)currentDate{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *str = [formatter stringFromDate:currentDate];
    return str;
}

+ (NSString *)stringOfObjc:(id)value{
    //处理null的情况
    if (value == nil || ([value class] == [NSNull class])) return @"--";
    //处理nsnumber的情况
    if ([value isKindOfClass:[NSNumber class]]) return [value description];
    //处理字符串为空的情况
    return [(NSString *)value length] >0 ? (NSString *)value : @"--";
}

//获取小数的整数位数
+ (NSInteger)obtainIntegerNumWithValue:(double)value{
    NSString *number = [@(value) description];
    if([number rangeOfString:@"."].location != NSNotFound){
        NSArray *array = [number componentsSeparatedByString:@"."];
        NSString *integerNum = [array firstObject];
        return integerNum.length;
    }else{
        return number.length;
    }
}

//保留指定位数的小数
+ (NSString *)keepDoubleOfValue:(double)value scale:(NSInteger)scale{
    NSDecimalNumber * valueNum = [NSDecimalNumber decimalNumberWithString:[@(value) description]];
    NSDecimalNumberHandler * handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc]init];
    formatter.alwaysShowsDecimalSeparator = scale == 0 ? NO : YES;
    formatter.maximumFractionDigits = scale;
    formatter.minimumFractionDigits = scale;
    formatter.zeroSymbol = scale == 0 ? @"0" : @"0.00";
    return [formatter stringFromNumber:[valueNum decimalNumberByRoundingAccordingToBehavior:handler]];
}

@end
