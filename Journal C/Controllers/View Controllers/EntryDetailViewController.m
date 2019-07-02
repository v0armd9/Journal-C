//
//  EntryDetailViewController.m
//  Journal C
//
//  Created by Darin Marcus Armstrong on 7/1/19.
//  Copyright © 2019 Darin Marcus Armstrong. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()<UITextFieldDelegate>

//@property (strong, nonatomic) Entry * entry;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *titleTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith:_entry];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateWith:_entry];
}

-(void)updateWith:(Entry *)entry {
    if (entry == _entry) {
        _titleTextField.text = entry.title;
        _titleTextView.text = entry.bodyText;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_titleTextField resignFirstResponder];
    return true;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString * title = _titleTextField.text;
    NSString * body = _titleTextView.text;
    if (_entry != nil) {
        [EntryController.sharedInstance updateEntry:_entry title:title bodyText:body];
    } else {
        [EntryController.sharedInstance addEntry:title bodyText:body];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(UIButton *)sender {
    _titleTextView.text = @"";
    _titleTextField.text = @"";
}

@end
