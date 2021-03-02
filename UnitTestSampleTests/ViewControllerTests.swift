//
//  ViewControllerTests.swift
//  UnitTestSampleTests
//
//  Created by osakamiseri on 2021/03/03.
//

import XCTest
@testable import UnitTestSample

class ViewControllerTests: XCTestCase {

    // 数字が2文字含まれており合計7文字入力された場合にfalseが返されること
    func test_validate() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertFalse(vc.validate(password: "abcde12"))
    }

    // 数字が2文字含まれており合計8文字入力された場合にtrueが返されること
    func test_validate2() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertTrue(vc.validate(password: "abcdef12"))
    }

    // 数字が2文字含まれており合計9文字入力された場合にtrueが返されること
    func test_validate3() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertTrue(vc.validate(password: "abcdefg12"))
    }

    // 数字が2文字以上利用されていること+数字以外を7文字と数字が1文字入力された場合にfalseが返されること
    func test_validate4() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertFalse(vc.validate(password: "abcdefg1"))
    }

    // 数字が2文字以上利用されていること+数字以外を7文字と数字が2文字入力された場合にtrueが返されること
    func test_validate5() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertTrue(vc.validate(password: "abcdefg12"))
    }

    // 数字が2文字以上利用されていること+数字以外を7文字と数字が3文字入力された場合にtrueが返されること
    func test_validate6() {
        let dependency = Dependency()
        let vc = dependency.testTarget
        XCTAssertTrue(vc.validate(password: "abcdefg123"))
    }

}

private extension ViewControllerTests {
    struct Dependency {
        let testTarget: ViewController

        init() {
            self.testTarget = .init()
        }
    }
}
