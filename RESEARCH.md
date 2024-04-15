
This file is where we write research notes as we explore the functionality. 

This will be replaced with a website (hopefully, maybe)/

## Write ups

- [The first development experience](https://x.com/DaneMackier/status/1773348709461344415?s=20)

## Findings (Kind of Docs)

### Dynamically Update Text

When loading an artboard you can pass in a `textValue` map that

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
