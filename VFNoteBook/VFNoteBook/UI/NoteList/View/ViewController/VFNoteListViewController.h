//
//  VFNoteListViewController.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VFNoteService;


@interface VFNoteListViewController : UIViewController <UITableViewDataSource>


@property (nonnull, nonatomic, strong) id <VFNoteService> noteService;

@property (nullable, nonatomic, weak) IBOutlet UITableView *noteTableView;

@end
