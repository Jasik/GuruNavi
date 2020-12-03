//
//  Logger.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/03.
//

import Foundation
import SwiftyBeaver

enum Logger {
    static func setup() {
        #if DEBUG
            SwiftyBeaver.addDestination(makeDevelopConsoleDestination())
        #endif
    }

    static func verbose(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.verbose(message(), file, function, line: line, context: nil)
    }

    static func debug(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.debug(message(), file, function, line: line, context: nil)
    }

    static func info(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.info(message(), file, function, line: line, context: nil)
    }

    static func warning(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.warning(message(), file, function, line: line, context: nil)
    }

    static func error(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.error(message(), file, function, line: line, context: nil)
    }
}

private extension Logger {
    static func makeDevelopConsoleDestination() -> ConsoleDestination {
        let destination = ConsoleDestination()

        destination.levelColor.verbose = "🖖"
        destination.levelColor.debug = "🙀"
        destination.levelColor.info = "🚀"
        destination.levelColor.warning = "⚠️"
        destination.levelColor.error = "🔥"

        return destination
    }
}
