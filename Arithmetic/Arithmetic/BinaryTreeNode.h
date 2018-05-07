//
//  BinaryTreeNode.h
//  BinaryTree
//
//  Created by KeSen on 15/9/7.
//  Copyright (c) 2015年 KeSen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BinaryTreeNode;

@interface BinaryTreeNode : NSObject

/**
 *  添加节点
 *
 *  @param p     节点指针
 *  @param value 节点值
 *
 *  @return 根节点
 */
+ (BinaryTreeNode *)addTree:(BinaryTreeNode *)p addValue:(id)value;

/**
 *  中序遍历二叉树
 *
 *  @param p 头节点
 */
- (void)inOrderBinaryTree:(BinaryTreeNode *)p;

/**
 *  翻转二叉树
 *
 *  @param p 根节点
 *
 *  @return 头结点
 */
- (BinaryTreeNode *)invertTree:(BinaryTreeNode *)p;

@end
