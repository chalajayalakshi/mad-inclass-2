# Student Profile UI - Flutter Project

A modern Flutter mobile app showcasing a student profile screen with a clean, professional design.

## Features

- **Custom Profile Screen** with Material Design
- **Circular Avatar** with verification badge
- **Profile Information Display** with icons
- **Floating Action Button** for future actions
- **Clean, well-commented codebase** using Flutter best practices

## Project Structure

```
lib/
├── main.dart                 # Entry point and main app
│   ├── StudentProfileApp      # Root app widget
│   ├── ProfileScreen          # Main profile screen (StatelessWidget)
│   └── ProfileField           # Reusable labeled field widget
```

## UI Components

### App Bar
- Black background with white centered title "My Profile"
- No elevation for a flat design

### Profile Avatar
- 120x120 circular white container with person icon
- Green verification badge (32x32) overlapping bottom-right corner
- White checkmark icon on badge
- Subtle drop shadow

### Profile Information Section
- Three labeled fields with icons:
  - **Name**: Diluka
  - **Email**: diluka.w@nsbm.ac.lk (with mail icon)
  - **Points**: 0 (with star icon)
- Each field has a bold label and lighter value text
- Optional icon support for field values

### Floating Action Button
- Black circular button with white plus icon
- Positioned at bottom-right corner
- Ready for custom actions

## Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK (included with Flutter)
- Android Studio, Xcode, or VS Code with Flutter extension

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd student-profile-ui
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Available Commands

```bash
# Get packages
flutter pub get

# Run the app
flutter run

# Build for Android
flutter build apk

# Build for iOS
flutter build ios

# Run tests
flutter test

# Analyze code
flutter analyze
```

## Customization

### Changing Profile Data
Edit the values in `lib/main.dart` within the `ProfileScreen` class:
- Name: Modify the "Diluka" string
- Email: Update the email address and icon
- Points: Change the points value and icon

### Color Scheme
Key colors used:
- **Primary**: Black (#000000)
- **Background**: Light Gray (#F2F2F2)
- **Accent**: Green (for verification badge)
- **Text**: Black/Gray scale

To modify colors, update the color values in the widgets in `lib/main.dart`.

### FAB Action
Replace the TODO comment in `FloatingActionButton.onPressed` with your custom action:
```dart
onPressed: () {
  // Add your action here
},
```

## Widgets Breakdown

### StudentProfileApp
Root application widget that configures the MaterialApp and theme.

### ProfileScreen
Main screen displaying the profile information. Contains:
- App bar configuration
- Avatar with badge
- Profile fields
- FAB

### ProfileField (Reusable Widget)
A flexible widget for displaying labeled information with optional icons.

**Parameters**:
- `label` (String): The label text (e.g., "Name")
- `value` (String): The value to display
- `icon` (IconData?, optional): Icon to display before the value

## Code Quality

- **No external dependencies**: Uses only Flutter/Material widgets
- **Well-commented**: Clear documentation for complex components
- **StatelessWidget usage**: Efficient, immutable widgets
- **Reusable components**: ProfileField widget can be used in other screens
- **Proper spacing and alignment**: Uses Material Design principles

## License

This project is open source and available under the MIT License.

## Support

For issues, questions, or suggestions, please open an issue on the repository.

---

**Version**: 1.0.0  
**Flutter Channel**: Stable  
**Dart SDK**: 3.0.0+
