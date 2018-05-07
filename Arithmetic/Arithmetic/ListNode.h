//
//  ListNode.h
//  BinaryTree
//
//  Created by KeSen on 15/9/7.
//  Copyright (c) 2015年 KeSen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ListNode;

@interface ListNode : NSObject

/**
 *  添加节点
 *
 *  @param p   节点指针
 *  @param val 节点值
 *
 *  @return 头结点, 其中头结点 val 为 0
 */
+ (ListNode *)addNode:(ListNode *)p andValue:(id)val;

/**
 *  遍历单链表
 *
 *  @param head 头结点
 */
+ (void)traversalList:(ListNode *)head;

/**
 *  单链表逆置
 *
 *  @param head 头结点
 */
+ (void)reverseList:(ListNode *)head;

@end
