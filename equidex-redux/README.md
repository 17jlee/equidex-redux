# Patesian: An iOS Companion App for Pate's Grammar School

Patesian is a native iOS application I designed to be an all-in-one digital companion for students at Pate's Grammar School. My goal was to streamline daily school life by bringing campus navigation, personal timetables, a friends system, and a social feed for school societies into a single, intuitive app.

## What It Does

* **Interactive Campus Map**: A live map of the school grounds that shows your current location using GPS, making it easier to find your way around.
* **Dynamic Timetables**: The app automatically fetches and displays your timetable by integrating with the official school Microsoft accounts.
* **Friends System**: You can add friends and view their timetables, which makes finding shared free periods for collaboration or socialising much simpler.
* **Social Feed**: A dedicated feed for official school societies and clubs to post announcements, event reminders, and updates.
* **Secure Authentication**: The app uses the Microsoft Authentication Library (MSAL) for secure sign-on with school Microsoft 365 accounts.
* **Offline Caching**: It also leverages CoreData to cache timetables, posts, and user data locally. This makes for a fast, responsive experience, even with a spotty internet connection.

## Screenshots

| Main Map View | Timetable View | Friends List |
| :-----------: | :------------: | :----------: |
|               |                |              |

## How It's Built

The Patesian app is a native iOS client built with modern Apple technologies.

* **Language**: Swift
* **UI Framework**: SwiftUI (with some UIKit for MapKit integration)
* **Local Database**: CoreData for on-device caching and persistence
* **Networking**: URLSession for communicating with external APIs
* **Key Dependencies**: MSAL (Microsoft Authentication Library) for authentication

## A Look Under the Hood

I built this project to solve some of the common inefficiencies I noticed in a student's daily routine. The main idea was to create a single source of truth for navigation, scheduling, and school announcements, getting rid of the need for paper maps and disorganized group chats.

### Microsoft Graph API Integration

The core of the timetable feature relies on fetching calendar data from the Microsoft Graph API. This involved a deep dive into:

* **OAuth 2.0 Authentication**: Implementing a secure sign-in flow using MSAL.
* **Asynchronous Networking**: Handling long-running API calls in background threads to keep the UI fully responsive.
* **JSON Parsing**: Decoding complex JSON responses from the API into native Swift objects using the `Codable` protocol.

### The Pivot from Bluetooth to GPS

An initial goal was to build a high-precision indoor navigation system using Bluetooth Low Energy (BLE) beacons. However, early prototyping revealed that BLE signal strength (RSSI) was too unstable and slow to update in a dense environment like a school. I made the pragmatic decision to pivot to a more reliable GPS-based system using Apple's MapKit, which better served the primary use case of outdoor and campus-level navigation.

### Concurrency and Caching for a Seamless UX

To ensure the app felt fast and fluid, I used a dual strategy of concurrency and caching:

1.  **Concurrency**: All network requests and data processing happen on background threads, leaving the main thread free for smooth UI rendering and user interaction.
2.  **CoreData Caching**: On first load, data is fetched and saved locally. On subsequent launches, the app instantly displays the cached data while simultaneously fetching updates from its APIs in the background.

## Getting Started

To run this project, you would need to set up the iOS client.

### Prerequisites

* Xcode 14+
* Swift 5.7+
* An Azure App Registration for Microsoft Graph API credentials.
* A running instance of the companion Patesian backend API for user and post data.

### iOS Client Setup
1.  Clone the repository.
2.  Open the `.xcodeproj` file in Xcode.
3.  Configure the MSAL authentication by adding your Azure App Client ID and Tenant ID to the project configuration.
4.  Update the backend server URL in the network configuration to point to your running API instance.
5.  Run the app on a simulator or a physical iOS device.

## What's Next?
* **Deeper School Integration**: Connect with SharePoint or Teams to access study materials.
* **Real-time Collaboration**: Add features for students to collaborate on projects during free periods.
* **Enhanced Timetable View**: Show overlapping events with friends directly on the timetable.
* **iPad Support**: Create a dedicated, responsive UI for iPad users.
