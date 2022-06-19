# ios-home-assignment


# Assignment instructions:

## Timebox: **3h** or **7h** with optional tasks.

Create a functional app that can fetch a list of countries and detailed information about them by using the REST API endpoint: [https://restcountries.com](https://restcountries.com). This app is in no way a ready state, so the goal is the following - **finish it, make it readable, expandable, and testable by applying best practices**.

## Things to do:

- Change `CountryListView` to inset grouped style;
- Fix UI issues;
- Add UI to `DetailedView` so that it displays all detailed information (no specific UI requirements);
- Fetch `Countries` from API endpoint and present them on `CountryListView` and `DetailedView`:
    - Fetch `Countries` via DataTask with Completion Handler;
- Write unit tests for the app;
- Refactor code.

## Optional things (additional points):

- You can use different architecture and structure the application in any shape or form (bonus points for creativity *winking face*);
- Fetch `Countries` via DataTask with Combine;
- Add privacy (blurred) overlay once the app changes its foreground to the background state. Reverse it when it becomes active;
- Rework `DetailedView` to SwiftUI and bridge it to UIKit;
- Add support for structured concurrency (async/await)
    - Use `Actors` and `Sendable` protocol when possible;
    - Fetch `Countries` via DataTask with async/await.