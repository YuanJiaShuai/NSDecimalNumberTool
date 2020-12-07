# NSDecimalNumberTool

[![CI Status](https://img.shields.io/travis/YuanJiaShuai/NSDecimalNumberTool.svg?style=flat)](https://travis-ci.org/YuanJiaShuai/NSDecimalNumberTool)
[![Version](https://img.shields.io/cocoapods/v/NSDecimalNumberTool.svg?style=flat)](https://cocoapods.org/pods/NSDecimalNumberTool)
[![License](https://img.shields.io/cocoapods/l/NSDecimalNumberTool.svg?style=flat)](https://cocoapods.org/pods/NSDecimalNumberTool)
[![Platform](https://img.shields.io/cocoapods/p/NSDecimalNumberTool.svg?style=flat)](https://cocoapods.org/pods/NSDecimalNumberTool)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

一款使用NSDecimalNumber和NSNumberFormatter处理高精度数值的工具类，保证数值的精度不丢失
```
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
```

## Installation

NSDecimalNumberTool is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby

```

## Author

YuanJiaShuai, 1361253662@qq.com

## License

NSDecimalNumberTool is available under the MIT license. See the LICENSE file for more info.
