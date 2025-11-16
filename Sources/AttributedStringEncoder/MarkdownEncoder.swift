//
//  MarkdownEncoder.swift
//  MarkdownEncoder
//
//  Created by Christian Beer on 16.11.25.
//

import Foundation

/// Encoder to encode AttributedString to Markdown string
public class MarkdownEncoder {
    
    let flavor: MarkdownFlavor
    
    public init(flavor: MarkdownFlavor) {
        self.flavor = flavor
    }
    
    /// Encode the AttributedString to Markdown
    /// - Parameter string: AttributedString to encode
    /// - Returns: encoded string as Markdown
    public func encode(_ string: AttributedString) -> String {
        string
            .runs
            .map { run in
                return flavor.encodeRun(run, in: string[run.range])
            }
            .joined()
    }

}
