//
//  ThemeProvider.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import Foundation
import SwiftUI

public actor ThemeProvider {
    public static var isDynamicTypeEnabled: Bool = false
    
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

public actor ThemeColors {
    public static let global: GlobalColors = DefaultGlobalColors()
    public static let banner: BannerColors = DefaultBannerColors()

    public static var primary: PrimaryColors = EmeraldColors()
    public static var appBackground: AppBackgroundColors = EmeraldAppBackgroundColors()
    public static var separator: SeparatorColors = EmeraldSeparatorColors()
    public static var text: TextColors = EmeraldTextColors()
    public static var link: LinkColors = EmeraldLinkColors()
    public static var surface: SurfaceColors = EmeraldSurfaceColors()
    public static var state: StateColors = EmeraldStateColors()
}
