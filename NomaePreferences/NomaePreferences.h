//
//  NomaePreferences.h
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//! Project version number for NomaePreferences.
FOUNDATION_EXPORT double NomaePreferencesVersionNumber;

//! Project version string for NomaePreferences.
FOUNDATION_EXPORT const unsigned char NomaePreferencesVersionString[];

// UIImage private API
@interface UIImage (Private)
+ (nullable UIImage *)_applicationIconImageForBundleIdentifier:(nullable NSString *)bundleIdentifier format:(int)format;
@end

// LSApplicationProxy private API
@interface LSApplicationProxy: NSObject
+ (nonnull instancetype)applicationProxyForIdentifier:(nullable NSString *)identifier;
- (nullable NSString *)applicationIdentifier;
- (nullable NSString *)localizedNameForContext:(nullable id)context;
@end

// LSApplicationWorkspace private API
@interface LSApplicationWorkspace: NSObject
+ (nonnull instancetype)defaultWorkspace;
- (nonnull NSArray<LSApplicationProxy *> *)allInstalledApplications;
@end

// NSTask private API
@interface NSTask: NSObject
- (void)setArguments:(nullable NSArray *)arguments;
- (void)setLaunchPath:(nullable NSString *)launchPath;
- (NSInteger)terminationStatus;
- (void)launch;
- (void)waitUntilExit;
@end
