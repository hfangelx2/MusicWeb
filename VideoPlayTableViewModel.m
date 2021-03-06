//
//  VideoPlayTableViewModel.m
//  CCMV
//
//  Created by zd on 15/4/22.
//  Copyright (c) 2015年 zd. All rights reserved.
//

#import "VideoPlayTableViewModel.h"

@implementation VideoPlayTableViewModel

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if(self){
        
        
        self.albumId = [dic objectForKey:@"id"]; // 编号
        self.title = [dic objectForKey:@"title"];//标题
        self.descriptiontt = [dic objectForKey:@"description"]; // 描述
        self.artists = [dic objectForKey:@"artists"];
        
       self.artistName = [dic objectForKey:@"artistName"]; // 艺术家名字
        self.posterPic = [dic objectForKey:@"posterPic"];//海报图片(缩略图)
        self.thumbnailPic = [dic objectForKey:@"thumbnailPic"];//海报图片(缩略图)
        
        self.albumImg = [dic objectForKey:@"albumImg"]; //  海报图片(大图)
        
        self.regdate = [dic objectForKey:@"regdate"]; // 上传时间
        
        self.totalViews= [dic objectForKey:@"totalViews"]; // 全部的视图
        self.url = [dic objectForKey:@"url"];  // 网址
        self.hdUrl = [dic objectForKey:@"hdUrl"]; // hd类型的视频网址;
        self.uhdUrl = [dic objectForKey:@"uhdUrl"]; // uhd类型的视频网址;
        self.shdUrl = [dic objectForKey:@"shdUrl"];   // shd类型的视频网址;
        
        
        self.videoSize = [dic objectForKey:@"videoSize"];//视频边框大小
        self.hdVideoSize = [dic objectForKey:@"hdVideoSize"];//hd视频边框大小
        self.uhdVideoSize = [dic objectForKey:@"uhdVideoSize"];//uhd视频边框大小
        self.shdVideoSize = [dic objectForKey:@"shdVideoSize"]; // shd视频边框大小
        self.duration = [dic objectForKey:@"duration"];
        self.status = [dic objectForKey:@"status"];
        self.playListPic = [dic objectForKey:@"playListPic"]; // 播放列表的
        
    }
    return self;
}



- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if([key isEqual:@"description"]){
        self.descriptiontt = value;
    }
    if([key isEqual:@"id"]){
        self.albumId = value;
    }
}

- (id)valueForUndefinedKey:(NSString *)key
{
    return nil;
}



@end
