//
//  NSDecimalNumberTools.h
//  NSNumberFormatterDemo
//
//  Created by apple on 2018/5/17.
//  Copyright © 2018年 投星信息. All rights reserved.
//  

#import <Foundation/Foundation.h>


@interface NSDecimalNumberTools : NSObject

/**
 保留两位小数 如果数值为0则返回-- (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfDoubleValueAfterPoint:(NSString *)value;


/**
 保留两位小数 如果数值为0则返回0.00 (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfDoubleValueAfterPointDefaultZero:(NSString *)value;


/**
 保留两位小数 如果数值为0则返回-- 如果最后小数位为0 则去掉 （2.10 变成 2.1, 2.00 变成 2） (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfDoubleValueAfterPointRemoveEndZero:(NSString *)value;


/**
 保留两位小数 如果数值为0则返回0.00 如果最后小数位为0 则去掉 （2.10 变成 2.1, 2.00 变成 2） (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfDoubleValueAfterPointDefaultZeroRemoveEndZero:(NSString *)value;


/**
 保留三位小数 如果数值为0则返回-- (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfThreeValueAfterPoint:(NSString *)value;


/**
 保留三位小数 如果数值为0则返回0.000 (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfThreeValueAfterPointDefaultZero:(NSString *)value;


/**
 保留三位小数 如果数值为0则返回-- 如果最后小数位为0 则去掉 （2.100 变成 2.1, 2.000 变成 2） (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfThreeValueAfterPointRemoveEndZero:(NSString *)value;


/**
 保留三位小数 如果数值为0则返回0.000 如果最后小数位为0 则去掉 （2.100 变成 2.1, 2.000 变成 2） (而且不四舍五入)

 @param value 数值
 @return 结果
 */
+ (NSString *)stringOfThreeValueAfterPointDefaultZeroRemoveEndZero:(NSString *)value;


/**
 保留2位小数 转换为百分比 如果数值为0 变成--

 @param value 数值
 @return 结果
 */
+ (NSString *)stringToPercentageWithDoubleValueAfterPointRemoveEndZero:(NSString *)value;


/**
 保留2位小数 转换为百分比 如果数值为0 变成0.00%

 @param value 数值
 @return 结果
 */
+ (NSString *)stringToPercentageWithDoubleValueAfterPointDefaultZero:(NSString *)value;


/**
 保留3位小数 转换为百分比 如果数值为0 变成--

 @param value 数值
 @return 结果
 */
+ (NSString *)stringToPercentageWithThreeValueAfterPointRemoveEndZero:(NSString *)value;


/**
 保留3位小数 转换为百分比 如果数值为0 变成0.000%

 @param value 数值
 @return 结果
 */
+ (NSString *)stringToPercentageWithThreeValueAfterPointDefaultZero:(NSString *)value;

@end
