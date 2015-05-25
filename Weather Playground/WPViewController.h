//
//  WPViewController.h
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WPViewController : UIViewController

// buttons for StoryBoards

@property (strong, nonatomic) IBOutlet UITextField *searchField;

@property (strong, nonatomic) IBOutlet UILabel *countryName;

@property (strong, nonatomic) IBOutlet UIImageView *iconImageView;

@property (strong, nonatomic) IBOutlet UILabel *tempLabel;

@property (strong, nonatomic) IBOutlet UILabel *mainLabel;
//@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

- (IBAction)searchButtonPressed:(UIButton *)sender;

@end
