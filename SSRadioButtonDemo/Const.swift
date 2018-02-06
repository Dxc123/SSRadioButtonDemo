//
//  Const.swift
//  MySwift
//
//  Created by Dxc_iOS on 2017/7/2.
//  Copyright © 2017年 Dxc_iOS. All rights reserved.
//

import  UIKit
import Foundation

//设置全局常量

//(在swift中的宏定义的意义, 在swift中, 并非是预编译代码替换, 而是设置全局常量, 简单宏, 直接let 加常量名即可, 复杂的宏由于必须保证宏的代码的语句的合法性(C语言就不用担心, 合法不合法都会被替换), 所以使用函数进行实现)
/*
 iPhone X
 1.1 高度增加了145pt，变成812pt.
 1.2 屏幕圆角显示，注意至少留10pt边距。
 1.3 状态栏高度由20pt变成44pt，留意这个距离就能避开“刘海”的尴尬，相应的导航栏以上变化64->88。
 1.4 底部工具栏需要为home indicator留出34pt边距。
 1.5 物理分辨率为1125px * 2436px.

 */

// MARK: - 常用宽高

/// 全屏高度
let SCREEN_HEIGHT = UIScreen.main.bounds.height
/// 屏幕宽度
let SCREEN_WIDTH = UIScreen.main.bounds.size.width

///iPhone X 宏定义
let isIPhoneX: Bool = SCREEN_HEIGHT == 812 ? true : false

/// 导航栏高度
let kNavBarHeight = isIPhoneX ? 88.0 : 64.0
/// 状态栏高度
let kStatusBarHeight = isIPhoneX ? 44.0 : 20.0
/// TabBar栏高度
let kTabBarHeight = isIPhoneX ? 49.0+34.0 : 49.0
///Tabbar距离底部的距离
let KBottomMargin = isIPhoneX ? 34.0 : 0.0

/// 服务器地址
let BASE_URL = ""

// MARK: - 适配
let UISCALE =  UIScreen.main.bounds.size.width/375
let kScaleW =  UIScreen.main.bounds.size.width/375
let kScaleH =  UIScreen.main.bounds.size.width/667

// MARK: - 颜色
func RGB(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
// MARK: - 随机颜色
func RandomColor(alpha:CGFloat = 1)->UIColor{
    let r = CGFloat(arc4random() % 256) / 255.0
    let g = CGFloat(arc4random() % 256) / 255.0
    let b = CGFloat(arc4random() % 256) / 255.0
    
    return UIColor(red: r, green: g, blue: b, alpha: alpha)
}
// MARK: - 根据图片名称获取图片
let IMAGE: (String) -> UIImage? = {imageName in
    return UIImage(named: imageName);
}

// MARK: - fram
func x(object : UIView)->CGFloat{
    return object.frame.origin.x
}
func y(object : UIView)->CGFloat{
    return object.frame.origin.y
}
func w(object : UIView)->CGFloat{
    return object.frame.size.width
}
func h(object : UIView)->CGFloat{
    return object.frame.size.height
}


// MARK: - 打印日志

/**
 打印日志
 
 - parameter message: 日志消息内容
 */
func printLog<T>(message: T)
{
    #if DEBUG
        print(" \(message)");
    #endif
}

func printNSLog<T>(_ messsage: T, file: String = #file, funcName: String = #function, lineNum: Int = #line) {
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        print("\(fileName):(\(lineNum))======>>>>>>\n\(messsage)")
    #endif
}















