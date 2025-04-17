//
//  ThemeProvider.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import Foundation
import SwiftUI

public struct ThemeProvider {
    nonisolated(unsafe) public static var isDynamicTypeEnabled: Bool = false
    
    private let primaryColors: PrimaryColors?
    private let appBackgroundColors: AppBackgroundColors?
    private let separatorColors: SeparatorColors?
    private let textColors: TextColors?
    private let linkColors: LinkColors?
    private let surfaceColors: SurfaceColors?
    private let stateColors: StateColors?
    
    public init(primaryColors: PrimaryColors? = nil,
                appBackgroundColors: AppBackgroundColors? = nil,
                separatorColors: SeparatorColors? = nil,
                textColors: TextColors? = nil,
                linkColors: LinkColors? = nil,
                surfaceColors: SurfaceColors? = nil,
                stateColors: StateColors? = nil,
                isDynamicTypeEnabled: Bool = false) {
        self.primaryColors = primaryColors
        self.appBackgroundColors = appBackgroundColors
        self.separatorColors = separatorColors
        self.textColors = textColors
        self.linkColors = linkColors
        self.surfaceColors = surfaceColors
        self.stateColors = stateColors
        ThemeProvider.isDynamicTypeEnabled = isDynamicTypeEnabled
    }
    
    public func config() {
        ThemeColors.primary = self.primaryColors ?? EmeraldColors()
        ThemeColors.appBackground = self.appBackgroundColors ?? EmeraldAppBackgroundColors()
        ThemeColors.separator = self.separatorColors ?? EmeraldSeparatorColors()
        ThemeColors.text = self.textColors ?? EmeraldTextColors()
        ThemeColors.link = self.linkColors ?? EmeraldLinkColors()
        ThemeColors.surface = self.surfaceColors ?? EmeraldSurfaceColors()
        ThemeColors.state = self.stateColors ?? EmeraldStateColors()
    }
    
    public static func enableDynamicTypes(_ isEnabled: Bool) {
        ThemeProvider.isDynamicTypeEnabled = isEnabled
    }
}

public struct ThemeColors {
    nonisolated(unsafe) public static let global: GlobalColors = DefaultGlobalColors()
    nonisolated(unsafe) public static let banner: BannerColors = DefaultBannerColors()

    nonisolated(unsafe) public static var primary: PrimaryColors = EmeraldColors()
    nonisolated(unsafe) public static var appBackground: AppBackgroundColors = EmeraldAppBackgroundColors()
    nonisolated(unsafe) public static var separator: SeparatorColors = EmeraldSeparatorColors()
    nonisolated(unsafe) public static var text: TextColors = EmeraldTextColors()
    nonisolated(unsafe) public static var link: LinkColors = EmeraldLinkColors()
    nonisolated(unsafe) public static var surface: SurfaceColors = EmeraldSurfaceColors()
    nonisolated(unsafe) public static var state: StateColors = EmeraldStateColors()
}
