# expression ui 

A framework that allows you to build UI's using animation software. This is what we have so far.

![Experience So Far](/resources/experience-so-far-resize.gif)

## The Goal

I am openly building this project as exploration into something that I think would be really fun to have for mobile app developers. 

It's basically a technical research project, below are the MVP "features" I want to figure out, before I start building the package.

## Technical research

If you're interested in helping. Please reach out on [Twitter](https://twitter.com/danemackier) and I'll add you to our discord.

### UI Research

These tasks are all related to the visuals and exploring how we can actually make the user interface work as expected.

- [x] Dynamically update text
- [x] Sync state with animation UI
- [x] Building multiple views and navigating between them
- [ ] Works with a screen reader
- [ ] Building a design system and composing
- [ ] Managing text input
- [ ] Building responsive UI's
- [ ] Performing interactive gestures (Swipes)
- [ ] Creating dynamic list views

### Development Experience Research

These tasks are all related to improving the dev experience, majority of them will probably be code generation using dart cli (not the build_runner package). 

The goal would be to read the rive file and use the data in there to improve the developers experience.

- [ ] Automatic binding of click events and callbacks
- [ ] Type safe referencing of all states, animations, events and artboards 


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