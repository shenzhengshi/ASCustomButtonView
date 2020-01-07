//
//  ASCustomButtonView.m
//  ASCustomButtonView
//
//  Created by Mac on 2020/1/7.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ASCustomButtonView.h"

@interface ASCustomButtonView ()

@property (nonatomic, strong) UIImageView * iconImgView;

@property (nonatomic, strong) UILabel * titleLabel;

@property (nonatomic, strong) UIImageView * lastIconImgView;

@property (nonatomic, strong) UILabel * subTitleLabel;

@end

@implementation ASCustomButtonView

- (instancetype)initCustomButtonViewWithIconName:(NSString *)iconName title:(NSString *)title subTitle:(NSString *)subTitle lastIconName:(NSString *)lastIconName {
    
    if (self == [super init]) {
        
        [self setupUIWithIconName:iconName title:title subTitle:subTitle lastIconName:lastIconName];
    }
    return self;
}

- (void)setupUIWithIconName:(NSString *)iconName title:(NSString *)title subTitle:(NSString *)subTitle lastIconName:(NSString *)lastIconName {
    
    self.backgroundColor = [UIColor blueColor];
    self.layer.borderColor = [UIColor redColor].CGColor;
    self.layer.borderWidth = 2.0;
    self.layer.cornerRadius = 20;
    
    CGFloat margin = 10;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    self.iconImgView.frame = CGRectMake(margin, margin, iconW, iconH);
    self.iconImgView.image = [UIImage imageNamed:iconName];
    [self addSubview:self.iconImgView];
    
    self.titleLabel.frame = CGRectMake(CGRectGetMaxX(self.iconImgView.frame) + margin, margin, 120, 30);
    self.titleLabel.text = title;
    [self addSubview:self.titleLabel];
    
    self.subTitleLabel.frame = CGRectMake(CGRectGetMaxX(self.titleLabel.frame) + margin, margin, 70, 30);
    self.subTitleLabel.text = subTitle;
    [self addSubview:self.subTitleLabel];
    
    self.lastIconImgView.frame = CGRectMake(CGRectGetMaxX(self.subTitleLabel.frame) + margin, margin, iconW, iconH);
    self.lastIconImgView.image = [UIImage imageNamed:lastIconName];
    [self addSubview:self.lastIconImgView];
    
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(customButtonViewClick)]];
}

- (void)customButtonViewClick {
    
    if (self.customButtonViewClickOperation) {
        self.customButtonViewClickOperation();
    }
}

- (UIImageView *)iconImgView {
    if (!_iconImgView) {
        _iconImgView = [[UIImageView alloc] init];
    }
    return _iconImgView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont boldSystemFontOfSize:12];
        _titleLabel.textColor = [UIColor blackColor];
    }
    return _titleLabel;
}

- (UIImageView *)lastIconImgView {
    if (!_lastIconImgView) {
        _lastIconImgView = [[UIImageView alloc] init];
    }
    return _lastIconImgView;
}

- (UILabel *)subTitleLabel {
    if (!_subTitleLabel) {
        _subTitleLabel = [[UILabel alloc] init];
        _subTitleLabel.textColor = [UIColor redColor];
        _subTitleLabel.font = [UIFont systemFontOfSize:8];
        _subTitleLabel.textAlignment = NSTextAlignmentRight;
    }
    return _subTitleLabel;
}

@end
