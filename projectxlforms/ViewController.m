//
//  ViewController.m
//  projectxlforms
//
//  Created by IQRQA on 12/14/16.
//  Copyright © 2016 IQRQA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property XLFormDescriptor *mform;
@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self){

        [self initializeForm];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self){
        [self initializeForm];
    }
    return self;
}



- (void)initializeForm {
    
    


    XLFormSectionDescriptor * section;
    XLFormRowDescriptor * row;
    
    
    // First section
    section = [XLFormSectionDescriptor formSection];
    [self.mform addFormSection:section];
    
    // Title
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Name" rowType:XLFormRowDescriptorTypeText];
    [row.cellConfigAtConfigure setObject:@"Title" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"RecipientsAddress" rowType:XLFormRowDescriptorTypeText];
    [row.cellConfigAtConfigure setObject:@"Recipients Address" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Country" rowType:XLFormRowDescriptorTypeText];
    [row.cellConfigAtConfigure setObject:@"Country" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"State" rowType:XLFormRowDescriptorTypeText];
    [row.cellConfigAtConfigure setObject:@"State" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Postal Code" rowType:XLFormRowDescriptorTypeText];
    [row.cellConfigAtConfigure setObject:@"Postel Code" forKey:@"textField.placeholder"];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    [section addFormRow:row];
    
    
    // Second Section
   // section = [XLFormSectionDescriptor formSection];
    [self.mform addFormSection:section];
    
    
    self.form = self.mform;
    
    // Implementation details covered in the next section.
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *addbutton  = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(addFormSection)];
    
    self.navigationItem.rightBarButtonItem = addbutton;
    self.mform = [XLFormDescriptor formDescriptorWithTitle:@"Add Recepients"];
    [self initializeForm];

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)addFormSection
{
    XLFormSectionDescriptor * section;
    XLFormRowDescriptor * row;
    
    
    // First section
    section = [XLFormSectionDescriptor formSection];
    [self.mform addFormSection:section];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Title
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Name" rowType:XLFormRowDescriptorTypeText title:@"Name"];
    [row.cellConfigAtConfigure setObject:@"Title" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];
    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"RecipientsAddress" rowType:XLFormRowDescriptorTypeText title:@"Address"];
    [row.cellConfigAtConfigure setObject:@"Recipients Address" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];

    
    
    
    //Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Postal Code" rowType:XLFormRowDescriptorTypeNumber title:@"Postel Code"];
    [row.cellConfigAtConfigure setObject:@"Postel Code" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];


    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"Country" rowType:XLFormRowDescriptorTypeText title:@"Country"];
    [row.cellConfigAtConfigure setObject:@"Country" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];

    
    // Location
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"State" rowType:XLFormRowDescriptorTypeText title:@"State"];
    [row.cellConfigAtConfigure setObject:@"State" forKey:@"textField.placeholder"];
    [section addFormRow:row];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];

    
    
    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"State" rowType:XLFormRowDescriptorTypeText title:@"State"];
    [row.cellConfigAtConfigure setObject:@"State" forKey:@"textField.placeholder"];
    [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];

    [section addFormRow:row];
        [row.cellConfigForSelector setObject:[UIColor redColor] forKey:@"textLabel.textColor"];

    row = [XLFormRowDescriptor formRowDescriptorWithTag:@"State" rowType:XLFormRowDescriptorTypeButton title:@"State"];
    [row.cellConfig setObject:@(NSTextAlignmentRight) forKey:@"textLabel.textAlignment"];
    row.action.formSelector = @selector(removeindividualRow:);

    
   // [row.cellConfigAtConfigure setObject:@"State" forKey:@"textField.placeholder"];
    
    [section addFormRow:row];
    
    
    
    
    
    // Second Section
    // section = [XLFormSectionDescriptor formSection];
    [self.form addFormSection:section];
    
    
   // self.form = self.mform;
    


    
}

-(void)removeindividualRow:(XLFormRowDescriptor*)sender
{
    NSIndexPath *index = [self.form indexPathOfFormRow:sender];
    NSLog(@"%@",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
