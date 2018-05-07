//
//  ArithmeticTests.m
//  ArithmeticTests
//
//  Created by ke sen. on 2018/5/7.
//  Copyright © 2018年 ke sen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "BinaryTreeNode.h"
#import "Sort.h"

@interface ArithmeticTests : XCTestCase

@end

@implementation ArithmeticTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testListNode {
    ListNode *root = nil;
    
    for (id value in @[@(0), @(5), @(6), @(8), @(9)]) {
        root = [ListNode addNode:root andValue:value];
    }
    
    [ListNode traversalList:root];
    [ListNode reverseList:root];
    [ListNode traversalList:root];
    
    
}

- (void)testBinaryTreeNode {
    BinaryTreeNode *root = nil;
    for (id value in @[@(2), @(5), @(6), @(8), @(9)]) {
        root = [BinaryTreeNode addTree:root addValue:value];
    }
    
    [root inOrderBinaryTree:root];
    
    printf("\n");
    
    BinaryTreeNode *invertTree = [root invertTree:root];
    [invertTree inOrderBinaryTree:invertTree];
}

- (void)testBubbleSort {
    int a[8] = {2, 3, 4, 1, 9, 5, 8, 6};
    bubble_sort(a);
    XCTAssertEqual(a[0], 1);
    XCTAssertEqual(a[7], 9);
}

- (void)testQuickSort {
    int a[8] = {2, 3, 4, 1, 9, 5, 8, 6};
    quick_sort(a, 0, 7);
    XCTAssertEqual(a[0], 1);
    XCTAssertEqual(a[7], 9);
}

- (void)testInsertSort {
    int a[8] = {2, 3, 4, 1, 9, 5, 8, 6};
    insert_sort(a);
    XCTAssertEqual(a[0], 1);
    XCTAssertEqual(a[7], 9);
}

@end
