import Cocoa

func printAppearance() {
    if NSApplication.shared.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
        print("dark")
    } else {
        print("light")
    }
    fflush(stdout)
}

printAppearance()

if CommandLine.arguments.contains("-w") {
    DistributedNotificationCenter.default().addObserver(forName: Notification.Name("AppleInterfaceThemeChangedNotification"), object: nil, queue: nil) { _ in
        printAppearance()
    }
    
    NSApplication.shared.run()
}
