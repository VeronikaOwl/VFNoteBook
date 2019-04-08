//
//  VFUserDefaultsStorage.m
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFUserDefaultsStorage.h"


static NSString *const cNotesArrayKey = @"NotesArrayKey";

@implementation VFUserDefaultsStorage


#pragma mark - Inits

- (instancetype) init
{
  self = [super init];
  
  if (self != nil) 
  {
    _userDefaults = [NSUserDefaults standardUserDefaults];
  }
  return self;
}

#pragma mark - VFStorage methods

- (NSArray<VFNoteModel *> *)obtainNotes
{
  NSData *data = [self.userDefaults objectForKey: cNotesArrayKey];
  
  if (data == nil)
  {
    return @[];
  }
  NSArray<VFNoteModel *> *notes = [NSKeyedUnarchiver unarchiveObjectWithData: data];
  return notes;
}

- (void)removeNotes
{
  [self.userDefaults removeObjectForKey: cNotesArrayKey];
}

- (void)storeNotes:(NSArray<VFNoteModel *> *)notes
{
  NSData *data = [NSKeyedArchiver archivedDataWithRootObject: notes];
  [self.userDefaults setObject: data
                        forKey: cNotesArrayKey];
}

@end
