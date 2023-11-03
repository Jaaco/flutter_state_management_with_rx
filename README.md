# State Management with rx_dart

This repo shows a very basic example of state management utilizing BehaviorSubjects from rx_dart.

## Why
Like any other state management solution, there are some advantages as well as disadvantages to this approach.

### Advantages:
#### Clean build method
No additional widgets are needed in order to listen to the state. This means, for example, no Consumers. The only thing needed to get it to run is a stateful widget

#### Reliability and Understandability
Nothing complicated is happening under the hood. You add events to the stream and you listen to the stream, simple as that.

#### Full Control
When subscribing to the stream inside the widget, you get to decide how to handle this specific event in this specific widget. The counter in this example always calls setsState for any new state, but this must not necessarily be the case for all widgets. A hypothetical widget displaying only if the counter is positive or negative might only call setState if the counter has changed from positive to negative.

### Disadvantages
#### Boilerplate
Like every other state management solution, this also introduces some boilerplate code. While removing it from the widget  tree, a function for subscribing to the state has to be added, as well as the widget itself has to be stateful.

#### Streams
A basic understanding of streams is needed in order to understand how this approach works.

#### No Documentation
Since this not necessarily a wide-spread approach, there is no documentation about this available, like for BLoC or Riverpod. But since the approach is so simple, with an understanding of this example and some slight changes, all use cases can easily be handled.

## Changes to use in real world projects
- If needed, give the state object a variable which holds the "app state" of this state, like Ok, Request, and Error and change accordingly in state mutations like in 'increaseCounter'.
- Instead of making the state a global state with the singleton constructor, consider using a normal constructor to scope the state to specific widgtes, eg. with Provider.
