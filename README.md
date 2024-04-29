# expression ui 

A alternative way to build mobile app UI on EVERY major framework (Flutter, React-Native, SwiftUI, and Kotlin).

## [Get tutorials and updates in your inbox](https://appsplusplus.carrd.co/)

## What is this about?

Currently the app building process works as follows:

1. Create or get a figma design
2. Spend hours writing the UI code to render that Figma design
3. Run the app and tweak the UI as you are building it
4. If the design changes, the cycle repeats from #2.

This process is accepted, and when I spoke about it, I was told to ["copy paste my old code" to move faster and I should stop complaining](https://www.reddit.com/r/FlutterDev/comments/1bieuy5/im_tired_of_building_flutter_uis/). 

But I don't like step 2 in the process above.

What if we could go from design directly to UI. 

That's what I'm exploring with this framework.

The idea is:
1. Design your UI in a canvas tool such as Figma.
2. Then, you import and use the specific components or screens by referencing their name in the the design tool.
3. We render it pixel-perfect using an open-source rendering runtime.

## Demo Examples

- [Full onboarding flow with ExpressionUI](https://x.com/DaneMackier/status/1776920388095688896)
- [Partial View Composition: Dialog and app bar](https://x.com/DaneMackier/status/1777690003558023169)
- [Partial View Composition: Bottom Navigation](https://x.com/DaneMackier/status/1775477191523827789)
- [Single Component Build](https://x.com/DaneMackier/status/1776909331167908269)
- [Full View Design](https://x.com/DaneMackier/status/1779830718941503859)
- [Responsive UI: Mobile, Tablet, Desktop, Watch](https://x.com/DaneMackier/status/1772237910252621825)
- [ExpressionUI working in SwiftUI](https://x.com/DaneMackier/status/1775730944395125118)
- [ExpressionUI working in React Native](https://x.com/DaneMackier/status/1775730944395125118)
- [Scrollable Views with Composition](https://x.com/DaneMackier/status/1774438194567602622)


## Technical research

If you're interested in helping I would appreciate that. There are currently [examples](https://github.com/FilledStacks/expression-ui/tree/main/examples) in this repo for Flutter, React Native, SwiftUI, and Kotlin.

I'm currently doing the Flutter parts, I would love for react-native, iOS native, Android native and all of those to be developed / researched at the same time. 

Please reach out on [Twitter](https://twitter.com/danemackier) and I'll add you to our Discord if you'd like to help explore this idea.

## Repo Setup

- examples: is where the examples will go for each of the frameworks named examples-[framework]
- packages: is where the packages will go for each of the frameworks names expression-ui-[framework]
- resources: readme images and gifs

### UI Research

These tasks are all related to the visuals and exploring how we can actually make the user interface work as expected.

- [x] Creating checkable boxes (up to 5) and update state in code
- [x] Bottom sheets (shoud be the same as normal UI)
- [x] Creating a long scrollable list view
- [x] Dynamically update text
- [x] Sync state with animation UI
- [x] Building multiple views and navigating between them
- [x] Building responsive UI's - [PR](https://github.com/FilledStacks/expression-ui/pull/1)
- [x] Building a design system and composing

- [ ] Performing interactive gestures (Swipes)
- [ ] Managing text input - _Done in platform code for now_      
- [ ] ~Works with a screen reader~ - _Attempted but rive's single widget is making this difficult. Work in `feat/screen-reader`_

### Development Experience Research

These tasks are all related to improving the dev experience, majority of them will probably be code generation using dart cli (not the build_runner package). 

The goal would be to read the open-source rendering runtime by rive and use it to improve the developers experience.

- [ ] Automatic binding of click events and callbacks
- [ ] Type safe referencing of all states, animations, events and artboards 
