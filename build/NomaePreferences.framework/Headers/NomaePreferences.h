//
//  NomaePreferences.h
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for NomaePreferences.
FOUNDATION_EXPORT double NomaePreferencesVersionNumber;

//! Project version string for NomaePreferences.
FOUNDATION_EXPORT const unsigned char NomaePreferencesVersionString[];

@interface NSUserDefaults (Domain)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
@end
