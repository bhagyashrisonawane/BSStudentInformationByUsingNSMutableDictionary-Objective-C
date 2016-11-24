//
//  main.m
//  BSStudentInformationByUsingNSMutableDictionary
//
//  Created by Student P_03 on 21/11/16.
//  Copyright © 2016 Bhagyashri Sonawane. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choice;
        
        NSMutableDictionary *student=[[NSMutableDictionary alloc]init];
        NSArray *RollNumber=@[
                              [NSNumber numberWithInt:01],
                              [NSNumber numberWithInt:02],
                              [NSNumber numberWithInt:03]];
        
        NSArray *StudentName=@[@"Pallavi",@"Rupali",@"Afsana"];
        student=[NSMutableDictionary dictionaryWithObjects:StudentName forKeys:RollNumber];
        
        NSLog(@"%@",student);
        
        do
        {
            printf("\n Enter your Roll Number:");
            scanf("%d",&choice);
            
            switch(choice)
            {
                case 1:NSLog(@"Student Name of Roll Number 1:%@ ",[student objectForKey:@1]);
                    break;
                    
                case 2:NSLog(@"Student Name of Roll Number 2:%@ ",[student objectForKey:@2]);
                    
                    break;
                    
                case 3:NSLog(@"student Name of Roll Number 3:%@ ",[student objectForKey:@3]);
                    
                    break;
                    
                default:
                    NSLog(@"Invalid Choice");
                    break;
                    
            }
            
            
        }while(choice!=4);
        
    
    
    
       }
    return 0;
}
