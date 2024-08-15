### All Types of Button in Flutter - Complete Tutorial

Buttons are essential components in any mobile application. They provide users with a way to interact with the app, trigger events, and perform actions. In Flutter, buttons are versatile and come in different types, each with its own use case. In this article, we’ll explore the common types of buttons in Flutter and how to implement them in your app.

### 1. **Introduction to Buttons in Flutter**

- **What is a Button?**

  - A button is a graphical control element that users can tap to trigger an event or action in the app.
  - Buttons are used across different parts of the UI, such as in dialog boxes, toolbars, and main screens.
- **Where are Buttons Used?**

  - Buttons can be used in dialog boxes, toolbars, pop-up menus, lists, and more.
  - Whenever an action needs to be triggered, a button is the go-to control element.

### 2. **Common Types of Buttons in Flutter**

#### a. **Text Button (formerly Flat Button)**

- **Overview:**

  - The Text Button is a simple button with no elevation or shadow.
  - It is commonly used when you need a button with just text and no background or border.
- **Code Example:**

  ```dart
  TextButton(
    onPressed: () {
      print("Text Button tapped");
    },
    child: Text("Click Here"),
  )
  ```
- **Usage:**

  - Use the Text Button when you want a minimalist button without any shadow or background.

#### b. **Elevated Button (formerly Raised Button)**

- **Overview:**

  - The Elevated Button is a button with elevation, providing a shadow effect.
  - It is used when you want to create a visual distinction between the button and the background.
- **Code Example:**

  ```dart
  ElevatedButton(
    onPressed: () {
      print("Elevated Button tapped");
    },
    child: Text("Elevated Button"),
  )
  ```
- **Usage:**

  - Use the Elevated Button when you need a button that stands out with a shadow effect.

#### c. **Outlined Button**

- **Overview:**

  - The Outlined Button is a button with a border around it, but no background.
  - It is often used when you want to highlight the button without making it too bold.
- **Code Example:**

  ```dart
  OutlinedButton(
    onPressed: () {
      print("Outlined Button tapped");
    },
    child: Text("Outlined Button"),
  )
  ```
- **Usage:**

  - Use the Outlined Button when you need a button with a subtle outline but no background color.

### 3. **Implementing Buttons in Flutter**

#### a. **Setting Up Your Flutter Project**

- Open Android Studio or VS Code.
- Create a new Flutter project.
- Clear the default counter app code and start with a clean slate.

#### b. **Adding Buttons to Your App**

- Remove any existing `Text` widgets and add the button widgets instead.
- Use the following structure to implement the buttons:
- **Example Code:**

  ```dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Types in Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                print("Text Button tapped");
              },
              child: Text("Text Button"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Elevated Button tapped");
              },
              child: Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button tapped");
              },
              child: Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
  ```

#### c. **Running the App**

- Run your app on an emulator or a physical device.
- Tap on each button to see the respective action printed in the console.

### 4. **Conclusion**

Flutter offers a variety of buttons to cater to different UI needs. Understanding the differences and use cases for each button type is crucial for creating intuitive and responsive interfaces. Experiment with these buttons in your Flutter projects to see how they can enhance your app’s user experience.
