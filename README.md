
# BMI Calculator for iOS 📱


A simple, native iOS application built with Swift and SwiftUI that calculates a user's Body Mass Index (BMI). This project was created to practice fundamental concepts in modern iOS development.


![Image](https://github.com/user-attachments/assets/f5d861e6-ccdc-46e1-9c5e-5ad8a3e4df5f)



![Image](https://github.com/user-attachments/assets/18fd80b3-9ebb-4c25-b68f-79aeac5282ba)

About The Project
This app provides a clean interface for users to input their name, weight in kilograms, and height in meters. Upon submission, it navigates to a results screen that displays the calculated BMI score along with the corresponding World Health Organization (WHO) health classification. The project serves as a practical example of state management, navigation, and conditional logic in SwiftUI.

Features
User-friendly Input: Text fields for name, weight (kg), and height (m).

Numeric Keyboard: The app presents a decimal-pad keyboard for weight and height entries to improve user experience.

Seamless Navigation: Uses NavigationStack and NavigationLink to move from the input screen to the results view.

Automatic BMI Calculation: Instantly computes the BMI score based on user data.

Dynamic Classification: Displays the official WHO health category (e.g., "Normal weight," "Overweight").

Visual Feedback: The result's text color changes dynamically (e.g., green for normal, orange for overweight) to provide immediate visual feedback.

Built With
Swift: The core programming language for iOS development.

SwiftUI: Apple's declarative UI framework for building modern, responsive user interfaces.

Xcode: The integrated development environment for all Apple platforms.

How It Was Made
This project is structured around two main views and demonstrates several key SwiftUI concepts.

Project Structure
ContentView.swift: The initial screen of the app. It's responsible for gathering user input via TextFields and contains the NavigationLink to trigger the transition to the results view.

BienvenidaView.swift (or ResultsView): The destination screen. It receives the user's data from ContentView, contains the logic for the BMI calculation, and displays the final result and classification.

Key Concepts Implemented
State Management: Used the @State property wrapper to manage and bind the user's input from the TextFields to the view's state. When the text changes, the UI updates automatically.

Navigation & Data Passing: Implemented a NavigationStack as the root view to enable a push-based navigation flow. A NavigationLink is used to pass the user's name, weight, and height from ContentView to the BienvenidaView.

Computed Properties: The logic for calculating the BMI and determining the appropriate classification (and its color) is handled within computed properties. This keeps the main body of the view clean and readable, separating calculation logic from the UI layout.

Conditional Logic: A switch statement is used within a computed property to evaluate the final BMI score and return the correct classification string and color, making the logic efficient and easy to maintain.
