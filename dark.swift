import Cocoa

func printAppearance() -> String {
    if NSApplication.shared.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
        return "dark"
    } else {
        return "light"
    }
}

DistributedNotificationCenter.default().addObserver(forName: Notification.Name("AppleInterfaceThemeChangedNotification"), object: nil, queue: nil) { _ in
    printAppearance()
}

printAppearance()

NSApplication.shared.run()
