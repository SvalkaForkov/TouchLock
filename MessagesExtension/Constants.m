//
//  Constants.m
//  TouchLock
//
//  Created by Ryan D'souza on 4/5/17.
//  Copyright © 2017 Ryan D'souza. All rights reserved.
//

#import "Constants.h"

@implementation Constants

+ (NSArray*) getPHAssetCollectionSubtypes
{
    return @[
             @(PHAssetCollectionSubtypeSmartAlbumUserLibrary),
             @(PHAssetCollectionSubtypeAlbumMyPhotoStream),
             @(PHAssetCollectionSubtypeSmartAlbumFavorites),
             @(PHAssetCollectionSubtypeSmartAlbumScreenshots),
             @(PHAssetCollectionSubtypeAlbumRegular),
             @(PHAssetCollectionSubtypeAlbumMyPhotoStream),
             @(PHAssetCollectionSubtypeAlbumCloudShared),
             @(PHAssetCollectionSubtypeSmartAlbumGeneric),
             @(PHAssetCollectionSubtypeSmartAlbumUserLibrary),
             @(PHAssetCollectionSubtypeSmartAlbumPanoramas),
             @(PHAssetCollectionSubtypeSmartAlbumVideos),
             @(PHAssetCollectionSubtypeSmartAlbumBursts),
             @(PHAssetCollectionSubtypeSmartAlbumLivePhotos),
             @(PHAssetCollectionSubtypeSmartAlbumSlomoVideos)
             ];
}

+ (NSString*) getDocumentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+ (NSString*) getSendFormatUsingCurrentDate
{
    NSDateFormatter *currentSendFormat = [[NSDateFormatter alloc] init];
    [currentSendFormat setDateFormat:@"dd-MM-yy HH:mm:ss"];
    return [currentSendFormat stringFromDate:[NSDate date]];
}

+ (PHImageRequestOptions*) getPhotoRequestOptions
{
    PHImageRequestOptions *photoRequestOptions = [[PHImageRequestOptions alloc] init];
    [photoRequestOptions setResizeMode:PHImageRequestOptionsResizeModeNone];
    [photoRequestOptions setDeliveryMode:PHImageRequestOptionsDeliveryModeHighQualityFormat];
    [photoRequestOptions setSynchronous:YES];
    [photoRequestOptions setNetworkAccessAllowed:YES];
    [photoRequestOptions setVersion:PHImageRequestOptionsVersionOriginal];
    
    return photoRequestOptions;
}

+ (PHVideoRequestOptions*) getVideoRequestOptions
{
    PHVideoRequestOptions *videoRequestOptions = [[PHVideoRequestOptions alloc] init];
    [videoRequestOptions setDeliveryMode:PHVideoRequestOptionsDeliveryModeHighQualityFormat];
    [videoRequestOptions setVersion:PHVideoRequestOptionsVersionOriginal];
    [videoRequestOptions setNetworkAccessAllowed:YES];
    
    return videoRequestOptions;
}

+ (NSString*) generateEncryptionKey
{
    //Long, randomly generated string --> each UUID = 36 characters long
    NSMutableString *encryptionKey = [[NSMutableString alloc] init];
    for(int i = 0; i < 5; i++) {
        [encryptionKey appendString:[[NSUUID UUID] UUIDString]];
    }
    
    return encryptionKey;
}


@end
