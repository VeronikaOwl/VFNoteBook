//
//  VFNoteListViewController.m
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFNoteListViewController.h"

#import "VFNoteServiceImplementation.h"

#import "VFNoteListTableViewCell.h"

#import "VFNoteModel.h"



@interface VFNoteListViewController ()

@property (nonatomic, strong) NSArray <VFNoteModel *> *notes;

@end

@implementation VFNoteListViewController

#pragma mark - Inits

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder: aDecoder];
  
  if (self != nil) {
    _noteService = [[VFNoteServiceImplementation alloc] init];
  }
  return self;
}



#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated
{
  [super viewWillAppear: animated];
  
  self.notes = [self.noteService obtainNotes];
  
}

#pragma mark - UITableViewDataSource

- (NSInteger) tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section
{
  return self.notes.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView
          cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: NSStringFromClass([VFNoteListTableViewCell class])
                                                          forIndexPath: indexPath];
  
  VFNoteModel *currentNote = [self.notes objectAtIndex: indexPath.row];
  cell.textLabel.text = currentNote.name;
  cell.detailTextLabel.text = currentNote.text;
  
  return cell;
}

@end
