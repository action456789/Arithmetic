//
//  ListNode.m
//  BinaryTree
//
//  Created by KeSen on 15/9/7.
//  Copyright (c) 2015年 KeSen. All rights reserved.
//

#import "ListNode.h"

// 单向链表
@interface ListNode()
{
    id val;
    ListNode *next;
}
@end

@implementation ListNode

+ (ListNode *)addNode:(ListNode *)p andValue:(id)val{
    if (p == nil) {
        p = [[ListNode alloc] init];
        p->val = val;
        p->next = nil;
    } else {
        p->next = [ListNode addNode:p->next andValue:val];
    }
    
    return p;
}

+ (void)traversalList:(ListNode *)head {
    if (head->next == nil) {
        printf("%ld\n", [head->val integerValue]);
        return;
    }
    printf("%ld\n", [head->val integerValue]);
    [ListNode traversalList:head->next];
}

+ (void)reverseList:(ListNode *)head {
    ListNode *p = head;
    ListNode *s = p->next;
    
    while (s->next != nil) {
        ListNode *t = s->next;
        s->next = p;
        p = s;
        s = t;
    }
    
    s->next = p;
    head->next->next = nil; //尾指针置为空
    head->next = s; //赋值到头指针后一位
}

@end
