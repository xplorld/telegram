//
//  TGWebPageYTContainer.m
//  Telegram
//
//  Created by keepcoder on 01.04.15.
//  Copyright (c) 2015 keepcoder. All rights reserved.
//

#import "TGWebPageIGContainer.h"
#import "TGImageView.h"
#import "TMLoaderView.h"
#import "TGPhotoViewer.h"
#import "TGWebpageIGObject.h"
@interface TGWebpageIGContainer ()

@property (nonatomic,strong) NSImageView *playVideo;
@end

@implementation TGWebpageIGContainer



-(instancetype)initWithFrame:(NSRect)frameRect {
    if(self = [super initWithFrame:frameRect]) {
        
    }
    
    return self;
}

-(void)setWebpage:(TGWebpageIGObject *)webpage {
    
     [super setWebpage:webpage];
    
    [_playVideo removeFromSuperview];
    _playVideo = nil;
    
    [self.descriptionField setFrame:NSMakeRect([self textX], !self.author.isHidden ? 32 : 12, webpage.descSize.width , webpage.descSize.height )];
    
    
    [self.imageView setFrame:NSMakeRect(0, [webpage.webpage.type isEqualToString:@"profile"] ? 0 : NSMaxY(self.descriptionField.frame) + 4, webpage.imageSize.width, webpage.imageSize.height)];
   
    
    if([webpage.webpage.type isEqualToString:@"video"]) {
        
        _playVideo = imageViewWithImage(image_WebpageInstagramVideoPlay());
        
        [self.imageView addSubview:_playVideo];
        
        [_playVideo setCenterByView:self.imageView];
    }
    
    [self.descriptionField setAttributedString:webpage.desc];
    
    
}

-(void)updateState:(TMLoaderViewState)state {
    [super updateState:state];
    
}


@end
