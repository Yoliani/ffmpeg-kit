/*
 * Copyright (c) 2021 Taner Sener
 *
 * This file is part of FFmpegKit.
 *
 * FFmpegKit is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FFmpegKit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General License for more details.
 *
 *  You should have received a copy of the GNU Lesser General License
 *  along with FFmpegKit.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "ExecuteDelegate.h"
#import "FFprobeSession.h"
#import "FFmpegKitConfig.h"
#import "LogDelegate.h"

@implementation FFprobeSession

- (instancetype)init:(NSArray*)arguments {

    self = [super init:arguments withExecuteDelegate:nil withLogDelegate:nil withLogRedirectionStrategy:[FFmpegKitConfig getLogRedirectionStrategy]];

    return self;
}

- (instancetype)init:(NSArray*)arguments withExecuteDelegate:(id<ExecuteDelegate>)executeDelegate {

    self = [super init:arguments withExecuteDelegate:executeDelegate withLogDelegate:nil withLogRedirectionStrategy:[FFmpegKitConfig getLogRedirectionStrategy]];

    return self;
}

- (instancetype)init:(NSArray*)arguments withExecuteDelegate:(id<ExecuteDelegate>)executeDelegate withLogDelegate:(id<LogDelegate>)logDelegate {

    self = [super init:arguments withExecuteDelegate:executeDelegate withLogDelegate:logDelegate withLogRedirectionStrategy:[FFmpegKitConfig getLogRedirectionStrategy]];

    return self;
}

- (instancetype)init:(NSArray*)arguments withExecuteDelegate:(id<ExecuteDelegate>)executeDelegate withLogDelegate:(id<LogDelegate>)logDelegate withLogRedirectionStrategy:(LogRedirectionStrategy)logRedirectionStrategy {

    self = [super init:arguments withExecuteDelegate:executeDelegate withLogDelegate:logDelegate withLogRedirectionStrategy:logRedirectionStrategy];

    return self;
}

- (BOOL)isFFmpeg {
    return false;
}

- (BOOL)isFFprobe {
    return true;
}

@end

