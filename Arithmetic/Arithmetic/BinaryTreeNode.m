//
//  BinaryTreeNode.m
//  BinaryTree
//
//  Created by KeSen on 15/9/7.
//  Copyright (c) 2015年 KeSen. All rights reserved.
//

#import "BinaryTreeNode.h"

@interface BinaryTreeNode()
{
    id val;
    BinaryTreeNode *left;
    BinaryTreeNode *right;
}
@end

@implementation BinaryTreeNode

// 添加节点
+ (BinaryTreeNode *)addTree:(BinaryTreeNode *)p addValue:(id)value {
    
    if (p == nil) {
        p = [[BinaryTreeNode alloc] init];
        p->val = value;
        p->left = nil;
        p->right = nil;
    
    } else if ([value integerValue] < [p->val integerValue]) {
    
        p->left = [BinaryTreeNode addTree:p->left addValue:value];
    } else {
        
        p->right = [BinaryTreeNode addTree:p->right addValue:value];
    }
    
    return p;
}

// 中序遍历二叉树
- (void)inOrderBinaryTree:(BinaryTreeNode *)p {
    
    if (p != nil) {
        [self inOrderBinaryTree:p->left];
        printf("%ld\n", (long)[p->val integerValue]);
        [self inOrderBinaryTree:p->right];
    }
}

- (BinaryTreeNode *)invertTree:(BinaryTreeNode *)p {
    
    if (p == nil) {
        return nil;
    }
    
    p->left = [p invertTree:p->left];
    p->right = [p invertTree:p->right];
    
    BinaryTreeNode *temp = p->left;
    p->left = p->right;
    p->right = temp;
    return p;
}


@end
