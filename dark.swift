import Cocoa

func printAppearance() {
    if NSApplication.shared.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
        print("dark")
    } else {
        print("light")
    }
    fflush(stdout)
}

DistributedNotificationCenter.default().addObserver(forName: Notification.Name("AppleInterfaceThemeChangedNotification"), object: nil, queue: nil) { _ in
    printAppearance()
}

printAppearance()

NSApplication.shared.run()
