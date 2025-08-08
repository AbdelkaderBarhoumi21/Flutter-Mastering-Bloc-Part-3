# Flutter BLoC & Cubit Architecture

## Introduction

This project uses the **BLoC** (Business Logic Component) and **Cubit** architectures for state management in a Flutter application. The BLoC architecture is based on the principle of separating business logic from the UI, allowing for a clearer, more testable, and scalable management of the application's state.

In this project, we use **`flutter_bloc`** to implement blocs and cubits, which manage events, states, and state transitions reactively.

---

## What is BLoC and Cubit?

### **BLoC** (Business Logic Component)

**BLoC** is an **architectural pattern** where all business logic is separated from the UI. **Events** are sent to a bloc, and the bloc emits **states**, which are observed by the UI to reflect changes in the application.

#### How does a BLoC work?

- **Events**: Represent actions or requests made by the user or the system (e.g., `FetchDataEvent`).
- **States**: Represent the current state of the application or widget. For example, a state could be `DataLoaded`, `Loading`, or `Error`.
- **Bloc**: A bloc receives events, performs actions in response to those events, and emits a new state.

**BlocBuilder** and **BlocListener** are used to listen to state changes in the UI and react to them.

---

### **Cubit**

A **Cubit** is a simplified version of BLoC that doesn’t require managing complex events. It is a class that manages a single state and can emit new states using the **`emit()`** method. Unlike BLoC, which uses separate events and states, a Cubit directly interacts with a state.

**Cubit** is lighter, simpler, and often used for cases where complex event management isn’t required.

---

## Installation

Make sure you have **Flutter** installed and create a Flutter project.

To add **flutter_bloc** to your project, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_bloc: ^8.0.0 # Check the latest version on pub.dev
