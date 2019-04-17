//
//  NSString+YJSDecimalNumberTools.h
//  NSDecimalNumberTool_Example
//
//  Created by yjs on 2019/4/17.
//  Copyright © 2019 YuanJiaShuai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (YJSDecimalNumberTools)

/**
 保留两位小数 如果数值为0则返回-- (而且不四舍五入)

 @return 结果
 */
- (NSString *)toDoubleValuePointZeroToLine;

/**
 保留两位小数 如果数值为0则返回0.00 (而且不四舍五入)

 @return 结果
 */
- (NSString *)toDoubleValuePointZeroToZero;

/**
 保留两位小数 如果数值为0则返回-- 如果最后小数位为0 则去掉 （2.10 变成 2.1, 2.00 变成 2） (而且不四舍五入)

 @return 结果
 */
- (NSString *)toDoubleValuePointZeroToLineAndRemoveEndZero;

/**
 保留两位小数 如果数值为0则返回0.00 如果最后小数位为0 则去掉 （2.10 变成 2.1, 2.00 变成 2） (而且不四舍五入)

 @return 结果
 */
- (NSString *)toDoubleValuePointZeroToZeroAndRemoveEndZero;

/**
 保留三位小数 如果数值为0则返回-- (而且不四舍五入)

 @return 结果
 */
- (NSString *)toThreeValuePointZeroToLine;

/**
 保留三位小数 如果数值为0则返回0.000 (而且不四舍五入)

 @return 结果
 */
- (NSString *)toThreeValuePointZeroToZero;

/**
 保留三位小数 如果数值为0则返回-- 如果最后小数位为0 则去掉 （2.100 变成 2.1, 2.000 变成 2） (而且不四舍五入)

 @return 结果
 */
- (NSString *)toThreeValuePointZeroToLineAndRemoveEndZero;

/**
 保留三位小数 如果数值为0则返回0.000 如果最后小数位为0 则去掉 （2.100 变成 2.1, 2.000 变成 2） (而且不四舍五入)

 @return 结果
 */
- (NSString *)toThreeValuePointZeroToZeroAndRemoveEndZero;

/**
 保留2位小数 转换为百分比 如果数值为0 变成--

 @return 结果
 */
- (NSString *)toPercentageWithDoublePointZeroToLine;

/**
 保留2位小数 转换为百分比 如果数值为0 变成0.00%

 @return 结果
 */
- (NSString *)toPercentageWithDoublePointZeroToZero;

/**
 保留3位小数 转换为百分比 如果数值为0 变成--

 @return 结果
 */
- (NSString *)toPercentageWithThreePointZeroToLine;

/**
 保留3位小数 转换为百分比 如果数值为0 变成0.000%

 @return 结果
 */
- (NSString *)toPercentageWithThreePointZeroToZero;

@end

NS_ASSUME_NONNULL_END
