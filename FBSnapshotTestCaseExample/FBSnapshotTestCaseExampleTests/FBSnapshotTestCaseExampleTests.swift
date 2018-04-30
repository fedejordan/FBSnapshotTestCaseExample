//
//  FBSnapshotTestCaseExampleTests.swift
//  FBSnapshotTestCaseExampleTests
//
//  Created by Federico Jordán on 13/2/18.
//  Copyright © 2018 Federico Jordán. All rights reserved.
//

import FBSnapshotTestCase
@testable import FBSnapshotTestCaseExample

class FBSnapshotTestCaseExampleTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        self.recordMode = false
        self.isDeviceAgnostic = true
    }
    
    func testExample() {
        let viewController: UIViewController = ViewController()
        FBSnapshotVerifyView(viewController.view)
    }
    
    
}
