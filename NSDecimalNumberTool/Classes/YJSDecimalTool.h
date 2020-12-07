//
//  YJSDecimalTool.h
//  NSDecimalNumberTool
//
//  Created by yjs on 2020/12/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///>>> 数据如果是0返回情况
typedef NS_ENUM(NSInteger, YJSZeroType) {
    YJSZeroTypeZero,/// 返回 0
    YJSZeroTypeLine /// 返回 --
};

@interface YJSDecimalTool : NSObject

/// 保留2位小数的百分数并且前面拼接符号 eg.[+0.06% -0.06%]
/// @param value 原始数据
/// @param zeroType zeroType
+ (NSString *)stringDoublePercentOfValue:(double)value zeroType:(YJSZeroType)zeroType;

/// 保留2位小数的百分数并且前面不拼接符号
/// @param value 原始数据
/// @param zeroType zeroType
+ (NSString *)unStringDoublePercentOfValue:(double)value zeroType:(YJSZeroType)zeroType;

/// 保留2位小数 并且前面拼接符号
/// @param value 原始数据 eg.[+0.06 -0.06]
/// @param zeroType zeroType
+ (NSString *)stringDoubleOfValue:(double)value zeroType:(YJSZeroType)zeroType;

/// 保留2位小数 但是前面不拼接符号
/// @param value value 原始数据 eg.[0.06 -0.06]
/// @param zeroType zeroType
+ (NSString *)unSignDoubleOfValue:(double)value zeroType:(YJSZeroType)zeroType;

/// iOS 数字过大处理成万,千万,亿级 「整数部分长度>= 4 保留1位小数 ，反之 保留2位小数」
/// @param value value
+ (NSString *)stringOfTenWanUnitWithValue:(double)value;

/// iOS 数字过大处理成万,千万,亿级 「整数部分长度>= 4 保留1位小数 ，反之 保留2位小数 但是如果不大于10万 就不保留小数」
/// @param value value
+ (NSString *)stringOfTenWanUnitWithValuePointOut:(double)value;

/// iOS 数字过大处理成万,千万,亿级 不保留小数
/// @param value value
+ (NSString *)scaleZeroStringOfTenWanUnitWithValue:(double)value;

@end

NS_ASSUME_NONNULL_END
