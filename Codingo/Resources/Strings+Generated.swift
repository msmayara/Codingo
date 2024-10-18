// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Award {
    /// Unleash more magic!
    internal static let button = L10n.tr("Localizable", "Award.button", fallback: "Unleash more magic!")
    /// You’ve just added %@ new tricks to your skills!
    internal static func subtitle(_ p1: Any) -> String {
      return L10n.tr("Localizable", "Award.subtitle", String(describing: p1), fallback: "You’ve just added %@ new tricks to your skills!")
    }
    /// Code wizard!
    internal static let title = L10n.tr("Localizable", "Award.title", fallback: "Code wizard!")
  }
  internal enum CodingQuests {
    /// The Enchanted Realm of Accessibility
    internal static let accessibility = L10n.tr("Localizable", "CodingQuests.accessibility", fallback: "The Enchanted Realm of Accessibility")
    /// Runes of Error Handling
    internal static let errorHandling = L10n.tr("Localizable", "CodingQuests.errorHandling", fallback: "Runes of Error Handling")
    /// Guardians of Grand Central Dispatch
    internal static let grandCentralDispatch = L10n.tr("Localizable", "CodingQuests.grandCentralDispatch", fallback: "Guardians of Grand Central Dispatch")
    /// The Spell of Many Tongues
    internal static let internationalization = L10n.tr("Localizable", "CodingQuests.internationalization", fallback: "The Spell of Many Tongues")
    /// The Alchemist's Guide to Memory Management
    internal static let memoryManagement = L10n.tr("Localizable", "CodingQuests.memoryManagement", fallback: "The Alchemist's Guide to Memory Management")
    /// Not started yet
    internal static let notStarted = L10n.tr("Localizable", "CodingQuests.notStarted", fallback: "Not started yet")
    /// Potions and Protocols
    internal static let protocols = L10n.tr("Localizable", "CodingQuests.protocols", fallback: "Potions and Protocols")
    /// Started on %@
    internal static func startedOn(_ p1: Any) -> String {
      return L10n.tr("Localizable", "CodingQuests.startedOn", String(describing: p1), fallback: "Started on %@")
    }
    /// Coding Quests
    internal static let title = L10n.tr("Localizable", "CodingQuests.title", fallback: "Coding Quests")
  }
  internal enum Codingo {
    /// Codingo
    internal static let title = L10n.tr("Localizable", "Codingo.title", fallback: "Codingo")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
