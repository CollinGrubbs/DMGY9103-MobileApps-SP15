//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Nathan Marianovsky on 2/25/15.
//  Copyright (c) 2015 Collin Grubbs. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    // call the init method implimented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // create two arrays filled with questions and answers
        // and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    // return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // step to the next question
    self.currentQuestionIndex++;
    
    // check to see if I have stepped to the next question
    if (self.currentQuestionIndex == [self.questions count]) {
        
        // go back to the first question
        self.currentQuestionIndex = 0;
        
    }
    
    // get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // display the string in the question label
    self.questionLabel.text = question;
    
    // reset the answer label
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    // what is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // display it in the answer label
    self.answerLabel.text = answer;
}

@end
