# expression ui 

I want to create a framework that makes UI building for mobile apps fun for EVERY major framework (Flutter, React-Native, iOS Native, Android Native, Kotlin MM).

I am openly building this project as exploration into something that I think would be really fun to have for mobile app developers. 

![Experience So Far](/resources/experience-so-far-resize.gif)

## What is this about?

Currently the app building process works as follows:

1. Create or get a figma design
2. Spend hours writing the code to render that Figma design
  2a. _Every developer does it different_
3. Run the app and tweak the UI as you are building it

This process is accepted, and when I spoke about it, I was told to ["copy paste my old code" to move faster and I should stop complaining](https://www.reddit.com/r/FlutterDev/comments/1bieuy5/im_tired_of_building_flutter_uis/). 

But I don't like step 2 in the process above.

What if we could go from design directly to pixels. 

That's what I'm exploring with this framework.

The idea is:
1. Design your UI on a canvas tool
2. That gets rendered as-is, pixel-perfect using a rendering runtime

## Technical research

If you're interested in helping I would appreciate that.

I'm currently doing the Flutter parts, I would love for react-native, iOS native, Android native and all of those to be developed / researched at the same time. 

Please reach out on [Twitter](https://twitter.com/danemackier) and I'll add you to our Discord if you'd like to help explore this idea.

## Repo Setup

- examples: is where the examples will go for each of the frameworks named examples-[framework]
- packages: is where the packages will go for each of the frameworks names expression-ui-[framework]
- resources: readme images and gifs

### UI Research

These tasks are all related to the visuals and exploring how we can actually make the user interface work as expected.

- [ ] Creating checkable boxes (up to 5) and update state in code
- [ ] Managing text input
- [ ] Performing interactive gestures (Swipes)

- [x] Bottom sheets (shoud be the same as normal UI)
- [x] Creating a long scrollable list view
- [x] Dynamically update text
- [x] Sync state with animation UI
- [x] Building multiple views and navigating between them
- [x] Building responsive UI's - [PR](https://github.com/FilledStacks/expression-ui/pull/1)
- [x] Building a design system and composing
      
- [ ] ~Works with a screen reader~ - _Attempted but rive's single widget is making this difficult. Work in `feat/screen-reader`_

### Development Experience Research

These tasks are all related to improving the dev experience, majority of them will probably be code generation using dart cli (not the build_runner package). 

The goal would be to read the rive file and use the data in there to improve the developers experience.

- [ ] Automatic binding of click events and callbacks
- [ ] Type safe referencing of all states, animations, events and artboards 

## Write ups

- [The first development experience](https://x.com/DaneMackier/status/1773348709461344415?s=20)

## Findings (Kind of Docs)

### Dynamically Update Text

When loading an artboard (your view), you will need to retrieve what's called a "Text Run". This is a component defined in the rive editor, that allows you to read and dynamically update text.

```dart
RiveAnimation.asset(
    'assets/counter.riv',
    artboard: 'counter',
    fit: BoxFit.cover,
    onInit: (Artboard artboard) {
        // The textRun method is an extension, see definition below
        final counterState = artboard.textRun('Counter')!;
    },
)

// Extension
extension TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
```

### Sync Animation With State

You can see our working example with state on our side and updating by looking at the `counter_view.dart` and `counter_viewmodel.dart` file. 

What we're doing is quite simple.

1. We get the `textRun` as described above
2. We store that `textRun` in our state file 
3. We update that state when our state changes

Here's all the state code.

```dart
class CounterViewModel extends BaseViewModel {
  late TextValueRun _counter;

 // #2
  void setCounterState(TextValueRun counter) {
    _counter = counter;
  }

 // #3
  void onRiveEvent(RiveEvent event) {
    var counterValue = int.parse(_counter.text);
    counterValue++;

    _counter.text = counterValue.toString();
  }
}

```

Our goal will be to create this in a type safe way for the users of experienceUI to reference. I have some ideas around that. 

### Building multiple views

Each artboard can be a single view/screen and can be referenced per view file simply by giving the artboard name. See example below.

![Multi-screen design](/resources/multi-screen-design.jpg)

We navigate between them normally, by listening to the button tap events and doing navigation however we choose. This gives us the full capabilities of the framework we're using in terms of native style navigation and we don't have to manually build all transitions. 

It also gives us the ability to use the hero effect.

### React Native Example & Findings

- [RN Implementation with Rive Runtime](/examples/example-react-native/)

There isn't any API or method in React Native framework to retrieve the text run value from the Rive Runtime. Same goes for retrieving the input state value because of some limitations on the React Native Framework and how Rive Runtime works with RN.

There are high level APIs for other frameworks that are useful for getting the current text run value, e.g. `getTextRunValue(textRunName: string)` in React, but only React Native doesn't have this yet.

If you want Rive to report at Runtime a very specific string or text from the animation (that is defined at design time), you can use Rive Events to "report" a payload with that string at runtime.
