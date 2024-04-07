import Cocoa;

if (NSApplication.shared.effectiveAppearance.name == NSAppearance.Name.aqua) {
    print("light");
} else {
    print("dark");
}
