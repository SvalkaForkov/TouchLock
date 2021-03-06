//
//  MessagesViewController.h
//  MessagesExtension
//
//  Created by Ryan D'souza on 2/18/17.
//  Copyright © 2017 Ryan D'souza. All rights reserved.
//

/**
 Main View Controller and entry point for MessagesExtension
*/

#import <Messages/Messages.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <Photos/Photos.h>
#import <AVKit/AVKit.h>

#import <Realm/Realm.h>

#import "QBImagePickerController.h"
#import "MWPhotoBrowser.h"
#import "MBProgressHUD.h"

#import "PrivateTextViewController.h"
#import "CompactDefaultView.h"
#import "ExpandedDefaultView.h"

#import "DefaultViewProtocol.h"
#import "Constants.h"
#import "MessageAttachment.h"
#import "MessageAttachments.h"
#import "MessageParameters.h"

#import "RNEncryptor.h"
#import "RNDecryptor.h"
#import "SSZipArchive.h"

@interface MessagesViewController : MSMessagesAppViewController<QBImagePickerControllerDelegate, MWPhotoBrowserDelegate, DefaultViewProtocol, PrivateTextViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end
