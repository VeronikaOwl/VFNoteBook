//
//  VFNoteServiceImplementation.m
//  VFNoteBook
//
//  Created by Филиппов Алексей on 08/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFNoteServiceImplementation.h"
#import "VFUserDefaultsStorage.h"
#import "VFNoteModel.h"


@implementation VFNoteServiceImplementation

- (void)createNoteWithName:(NSString *)name
                      text:(NSString *)text
{
  NSUInteger lastUsedIdentifier = [self.storage takeNoteIdentifier];
  NSUInteger identifier = lastUsedIdentifier++;
  [self.storage storeNoteIdentifier: identifier];
  
  VFNoteModel *note = [[VFNoteModel alloc] initWithName: name
                                                   text: text
                                             identifier: identifier];
  
  NSArray <VFNoteModel *> *notes = [self.storage obtainNotes];
  NSMutableArray <VFNoteModel *> *mutableNotes = [notes mutableCopy];
  
  [mutableNotes addObject: note];
  notes = [mutableNotes copy];
  
  [self.storage storeNotes: notes];
}

- (NSArray<VFNoteModel *> *)obtainNotes
{
  return [self.storage obtainNotes];
}

- (void)removeNoteWithIdentifier:(NSUInteger)identifier
{
  NSArray <VFNoteModel *> *notes = [self.storage obtainNotes];
  NSMutableArray <VFNoteModel *> *mutableNotes = [notes mutableCopy];
  
  for (VFNoteModel *noteModel in mutableNotes)
  {
    if (noteModel.identifier == identifier)
    {
      [mutableNotes removeObject: noteModel];
      break;
    }
  }
  notes = [mutableNotes copy];
  [self.storage storeNotes: notes];
}

@end
