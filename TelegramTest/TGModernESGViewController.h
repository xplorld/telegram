//
//  TGModernESGViewController.h
//  Telegram
//
//  Created by keepcoder on 20/04/16.
//  Copyright © 2016 keepcoder. All rights reserved.
//

#import "TMViewController.h"
#import "TGModernEmojiViewController.h"
#import "TGModernSGViewController.h"
@interface TGModernESGViewController : TMViewController

@property (nonatomic,weak) MessagesViewController *messagesViewController;
@property (nonatomic,weak) RBLPopover *epopover;


@property (nonatomic,strong,readonly) TGModernEmojiViewController *emojiViewController;
@property (nonatomic,strong,readonly) TGModernSGViewController *sgViewController;

-(void)showSGController:(BOOL)animated;

- (void)show;
- (void)close;

-(void)forceClose;

+(TGModernESGViewController *)controller;

+(NSDictionary *)allStickers;
+(NSArray *)allSets;
+(TL_stickerSet *)setWithId:(long)n_id;
+(NSArray *)stickersWithId:(long)n_id;


+(void)reloadStickers;

@end
