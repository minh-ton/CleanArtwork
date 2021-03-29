#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MRUShadowView : UIView
@end

@interface MRUArtworkView : UIView
@property (nonatomic, retain) UIImageView *iconView;
@property (nonatomic, retain) MRUShadowView *iconShadowView;
@end

%hook MRUArtworkView
-(void)layoutSubviews {
   %orig;
   self.iconView.hidden = YES;
   self.iconShadowView.hidden = YES;
}
%end