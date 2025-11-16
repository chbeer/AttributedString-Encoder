import Testing
import Foundation
@testable import AttributedStringEncoder

@Test func testBold() async throws {
    let original = "Hello **bold** world"
    let attributed = try! AttributedString(markdown: original)
    let encoded = MarkdownEncoder(flavor: MarkdownFlavor.commonMark).encode(attributed)
    #expect(encoded == original)
}

@Test func testItalic() async throws {
    let original = "Hello *italic* world"
    let attributed = try! AttributedString(markdown: original)
    let encoded = MarkdownEncoder(flavor: MarkdownFlavor.commonMark).encode(attributed)
    #expect(encoded == original)
}

@Test func testStrikeThrough() async throws {
    let original = "Hello ~~stroked~~ world"
    let attributed = try! AttributedString(markdown: original)
    let encoded = MarkdownEncoder(flavor: MarkdownFlavor.commonMark).encode(attributed)
    #expect(encoded == original)
}

@Test func testLink() async throws {
    let original = "Hello [Linked](https://chbeer.de) world"
    let attributed = try! AttributedString(markdown: original)
    let encoded = MarkdownEncoder(flavor: MarkdownFlavor.commonMark).encode(attributed)
    #expect(encoded == original)
}
