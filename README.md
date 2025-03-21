# SwiftUI-Playground

A collection of small SwiftUI projects to explore and practice different SwiftUI concepts.

This repository contains **various SwiftUI practice projects**, each focusing on a specific SwiftUI concept. The goal is to help understand and experiment with different UI elements, animations, gestures, and state management techniques.

## 📂 Projects Overview

| Project | Description |
|---------|-------------|
| **Binding Example** | Learning how `@Binding` works in SwiftUI |
| **Card** | A simple `CardView` UI with discount pricing |
| **State Example** | Understanding `@State` for managing local view state |
| **Environment Object Example** | Using `@EnvironmentObject` for shared data across views |
| **Observed Object Example** | Exploring `@ObservedObject` to manage state in SwiftUI |
| **Image Exploration App** | Experimenting with images, grids, animations, and `AsyncImage` |
| **Mask** | Applying `mask()` to text, shapes, and images for advanced effects |
| **SFSymbols** | Working with `SFSymbols` to create dynamic and scalable icons |
| **Breath Rotate Wiggle** | Animations using `breathe`, `rotate`, and `wiggle` effects |
| **Gestures Demo** | Exploring different gestures including drag, rotation, and magnification |
| **Zoom Transition** | Using `navigationTransition(.zoom)` for animated view transitions |
| **Text Exploration** | Working with formatted text, Markdown, AttributedString, OpenURL actions, pluralization, and date formatting |
| **BlurEffect Using Text Renderer** | Applying blur and wobble effects to text using custom `TextRenderer` and Metal shaders |
| **Gradient Indicator** | Creating a progress indicator with a gradient effect |
| **Gradient Border Shadow** | Applying a gradient border and shadow using custom modifiers |
| **Left Center Right Alignment** | Using custom `ViewModifier` extensions to align text in left, center, or right positions |
| **Toast Demo** | Implementing a custom toast notification using `ViewModifier` |

## 📚 Learning Topics

### 🟢 State Management
* `@State` - Local state management
* `@Binding` - Sharing state between views
* `@ObservedObject` - Managing state in a class
* `@EnvironmentObject` - Sharing global state

### 🎨 SwiftUI Animations
* `rotationEffect` - Rotating views
* `scaleEffect` - Scaling views
* Wiggle animations for fun UI effects
* `withAnimation(.spring())` - Spring-based animations

### 🎭 Gesture Handling
* `DragGesture` - Moving views with user interaction
* `MagnificationGesture` - Pinch-to-zoom effects
* `RotationGesture` - Rotating views with gestures
* Gesture sequencing and combination for complex interactions

### 🎼 Images & Rendering
* `AsyncImage` - Loading images from the web
* `mask()` - Clipping images and text with custom shapes
* `SFSymbols` - Using system icons
* `clipShape()` - Applying custom shapes to views
* Custom `TextRenderer` with blur and distortion shaders

### 🏢 Layout & UI Design
* `VStack` & `HStack` - Arranging views in vertical & horizontal stacks
* `LazyVGrid` - Creating flexible grid layouts
* `ZStack` - Layering views on top of each other
* `NavigationStack` with transitions - Handling navigation with animations
* `ViewModifier` for custom text alignment (Left, Center, Right)

### 🔢 Text Handling & Formatting
* Markdown with `Text(LocalizedStringKey)`
* `AttributedString` for rich text formatting
* OpenURL actions with `environment(\.openURL)`
* Pluralization using `Text(inflect: true)`
* Date formatting with `.dateTime`, `.relative`, `.offset`, `.timer`
* Custom toast notifications using `ViewModifier`

## 🚀 Getting Started

1. Clone this repository
   ```bash
   git clone https://github.com/anup810/SwiftUI-Playground
   ```
2. Open the project in Xcode
   ```bash
   cd SwiftUI-Playground
   open SwiftUI-Playground.xcodeproj
   ```
3. Navigate to the specific example you want to explore
4. Run the example on the simulator or a physical device

## 📋 Requirements

* Xcode 14.0+
* iOS 16.0+
* Swift 5.7+

## 🙏 Acknowledgments

* Apple's SwiftUI documentation
* The SwiftUI community for inspiration and examples
