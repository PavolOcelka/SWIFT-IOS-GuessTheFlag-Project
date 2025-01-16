# Guess the Flag

**Guess the Flag** is a fun and engaging iOS game built using Swift and SwiftUI. The game challenges users to correctly identify flags from a random selection, tracks their score, and provides a history of their recent answers. The design focuses on an intuitive UI and visual feedback to enhance the user experience.

---

## **Features**

- **Guessing Game:**
  - The app presents three flags and challenges the user to guess the correct one based on a randomly selected country name.

- **Score Tracking:**
  - Displays the current score prominently, resetting to zero after an incorrect answer.

- **Answer History:**
  - Keeps a record of the user's last three answers, with visual cues (color-coded feedback for "Correct" or "Wrong").

- **Dynamic UI Updates:**
  - Interactive elements such as buttons, gradients, and animations enhance gameplay.

---

## **How It Works**

1. **Random Flag Selection:**
   - The game selects three random flags from an array of countries.
   - The correct answer is chosen randomly among these flags.

2. **User Interaction:**
   - The user taps on one of the three flags.
   - If the choice is correct, the score increments; otherwise, the score resets to zero.

3. **Answer Feedback:**
   - The app displays "Correct" or "Wrong" for each attempt and adds the result to a rolling history.
   - Visual feedback: The history section uses green for "Correct" and red for "Wrong" answers.

4. **History Management:**
   - The app tracks the last three answers, updating dynamically with each new guess.

---

## **Screenshots**

### **Gameplay Interface**
![Gameplay Screenshot](https://github.com/PavolOcelka/SWIFT-IOS-GuessTheFlag-Project/blob/main/images/Screenshot%202025-01-14%20at%2013.24.54.png)

### **Answer Feedback and History**
![Answer Feedback Screenshot](https://github.com/PavolOcelka/SWIFT-IOS-GuessTheFlag-Project/blob/main/images/Screenshot%202025-01-14%20at%2013.27.52.png)

---

## **Technologies Used**

- **SwiftUI:** For building a clean, declarative UI.
- **State Management:** Leveraging `@State` to dynamically update the score, correct answer, and history.
- **Custom Styling:** Using `LinearGradient`, `VStack`, and `ZStack` for a modern, layered design.
- **Randomization:** Employing `Int.random` and `shuffle()` for dynamic gameplay.

---

## **Inspiration**
This project was inspired by the ["Hacking with Swift"](https://www.hackingwithswift.com/) course by Paul Hudson, with additional features and enhancements added for a richer gameplay experience.

