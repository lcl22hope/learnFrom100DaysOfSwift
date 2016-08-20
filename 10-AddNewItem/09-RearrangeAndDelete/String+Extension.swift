//
//  String+Extension.swift
//  10-AddNewItem
//
//  Created by 玉皇大亮 on 8/20/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import Foundation

extension String {
    
    enum TrimmingType {
        case Whitespace
        case WhitespaceAndNewline
    }
    
    func trimming(trimmingType: TrimmingType) -> String {
        switch trimmingType {
        case .Whitespace:
            return stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        case .WhitespaceAndNewline:
            return stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        default: break
        }
    }
    
    var aa_removeAllWhitespaces: String {
        return self.stringByReplacingOccurrencesOfString(" ", withString: "").stringByReplacingOccurrencesOfString(" ", withString: "")
    }
    
    var aa_removeAllNewLines: String {
        return self.componentsSeparatedByCharactersInSet(NSCharacterSet.newlineCharacterSet()).joinWithSeparator("")
    }
    
    func aa_truncate(length: Int, trailing: String? = nil) -> String {
        if self.characters.count > length {
            return self.substringToIndex(self.startIndex.advancedBy(length)) + (trailing ?? "")
        }
        else {
            return self
        }
    }
    
    var aa_truncatedForFeed: String {
        return aa_truncate(120, trailing: "...")
    }
}