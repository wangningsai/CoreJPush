//
//  CoreJPushProtocol.h
//  CoreJPush
//
//  Created by ym on 16/8/29.
//  Copyright © 2016年 王宁. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CoreJPushProtocol <NSObject>
@required
-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo;

@end
