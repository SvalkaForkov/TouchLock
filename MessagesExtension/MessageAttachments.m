//
//  MessageAttachments.m
//  TouchLock
//
//  Created by Ryan D'souza on 4/10/17.
//  Copyright © 2017 Ryan D'souza. All rights reserved.
//

#import "MessageAttachments.h"

@implementation MessageAttachments

- (instancetype) init
{
    NSString *attachmentName = [Constants getSendFormatUsingCurrentDate];
    self = [self initWithAttachmentName:attachmentName];
    
    return self;
}

- (instancetype) initWithAttachmentName:(NSString*)attachmentName
{
    self = [super init];
    
    if(self) {
        
        NSString *documentsDirectory = [Constants getDocumentsDirectory];
        
        self.pathToUnzippedAttachment = [documentsDirectory stringByAppendingPathComponent:attachmentName];
        self.pathToZippedAttachment = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.zip", attachmentName]];
        
        self.pathToImagesFolder = [self.pathToUnzippedAttachment stringByAppendingPathComponent:@"images"];
        self.pathToVideosFolder = [self.pathToUnzippedAttachment stringByAppendingPathComponent:@"videos"];
        self.pathToTextFilesFolder = [self.pathToUnzippedAttachment stringByAppendingString:@"text"];
        
        NSFileManager *defaultManager = [NSFileManager defaultManager];
        NSError *error;
        
        //Let's create the media folders if they don't already exist
        NSArray *mediaPaths = @[self.pathToUnzippedAttachment, self.pathToImagesFolder, self.pathToVideosFolder, self.pathToTextFilesFolder];
        
        for(NSString *path in mediaPaths) {
            if(![defaultManager fileExistsAtPath:path]) {
                [defaultManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
            }
        }
    }
    
    return self;
}

@end