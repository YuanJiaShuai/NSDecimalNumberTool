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
```

## Installation

NSDecimalNumberTool is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NSDecimalNumberTool'
```

## Author

YuanJiaShuai, 1361253662@qq.com

## License

NSDecimalNumberTool is available under the MIT license. See the LICENSE file for more info.
