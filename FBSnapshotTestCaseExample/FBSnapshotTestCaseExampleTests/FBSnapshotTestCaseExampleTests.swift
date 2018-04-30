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
//        self.recordMode = true
//        self.agnosticOptions = FBSnapshotTestCaseAgnosticOption.screenSize
    }
    
    func testExample() {
        let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        FBSnapshotVerifyView(viewController.view)
    }
    
    
}
