import XCTest
import SwiftTreeSitter
import TreeSitterHocon

final class TreeSitterHoconTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_hocon())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Hocon grammar")
    }
}
