```markdown
# DesignSystem

A lightweight, reusable SwiftUI Design System packaged as a Swift Package.

Overview
- Centralized semantic color tokens and typography.
- Dynamic Type friendly and themeable.
- Easy to import with `import DesignSystem`.
- Includes example app target to demonstrate usage.

Quick start (SPM)
1. In Xcode: File > Add Packages... and paste the repository URL (e.g. https://github.com/your-username/DesignSystem).
2. Add `DesignSystem` product to your app target.
3. In code:
```swift
import DesignSystem
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
            .dsHeading()
            .padding()
            .background(DesignSystem.current.colors.background)
    }
}
```

Project structure
- Package.swift
- Sources/DesignSystem/
  - DesignSystem.swift
  - Colors.swift
  - Typography.swift
  - ViewModifiers.swift
  - Components/DSButtonStyle.swift
  - Resources/ (Colors.xcassets, Fonts)
- Examples/ExampleApp/
  - ContentView.swift
  - ExampleApp.swift
- Tests/DesignSystemTests/ (optional)
- README.md
- .github/workflows/ci.yml

Contributing
- Add components under Sources/DesignSystem/Components
- Add color sets to Sources/DesignSystem/Resources/Colors.xcassets
- Add fonts to Resources and register them in Package.swift

License: MIT
```
