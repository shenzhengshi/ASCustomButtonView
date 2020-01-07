//
//  ASCustomButtonView.h
//  ASCustomButtonView
//
//  Created by Mac on 2020/1/7.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASCustomButtonView : UIView

@property (nonatomic, copy) void (^customButtonViewClickOperation)(void);

- (instancetype)initCustomButtonViewWithIconName:(NSString *)iconName title:(NSString *)title subTitle:(NSString *)subTitle lastIconName:(NSString *)lastIconName;

@end

NS_ASSUME_NONNULL_END
