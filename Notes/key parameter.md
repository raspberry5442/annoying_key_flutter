Watch this video first.
[YouTube: When to Use Keys - Flutter Widgets 101 Ep.4](https://www.youtube.com/watch?v=kn0EOS-ZiIc)

Corresponding article of this video:
[Keys! What are they good for?](https://medium.com/flutter/keys-what-are-they-good-for-13cb51742e7d)

## when you need keys

For some simple situation, the entire widget subtree in your collection is stateless, keys aren't needed. And most of the time, you don't need keys. 

However, the key parameter is used when you need to uniquely identify and track individual widgets within a collection of widgets. It is typically used in scenarios where widgets are dynamically **added**, **removed**, or **reordered**. By providing a key to a widget, Flutter can efficiently update and reconcile the widget tree, ensuring correct state preservation and optimized rendering. Some common use cases for using the key parameter include **managing lists**, **handling widget state during animations**, and **preserving state across widget rebuilds**.

## where to put key parameters in widget tree?

### how key parameter works?
In the example from the video, when you add key properties to stateful widgets and press the button to swap the widgets, the row widgets seem to stay the same as before, but Flutter actually checks if the type of the widgets is the same or not. However, the key of the color block element doesn't match the key of the corresponding color block widget. As a result, Flutter deactivates those elements and their state transitions to non-matched children in the widget tree.

Then, Flutter looks through the non-matched children for an element with the corresponding key. When it finds a match, it updates its reference to the corresponding widget. This way, the swapping of color blocks is realized.
![keyparameter](https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/keyparameter.gif)

### the position of key property

Specify a key at **the top of the widget subtree** that you need to preserve. A stateful widget which hold a state doesn't means that it should keep a key property. The video explains why.

## which Key widget to use?

### LocalKey
It is commly used when you need to associate a key with a widget but do not need to access it from outside the subtree.
#### ObjectKey
For example, you have an address book app that listed information about each user. Any of the individual fields, like a first name or a birthday, might be the same as another entry, but the combination is unique. In this scenario, an ObjectKey is probably most appropriate. ![image-20230720210208731](https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/image-20230720210208731.png)



#### UniqueKey
If you have multiple widgets in your collection with the same value, or if you want to really ensure that each widget is distinct from all others, you can use the UniqueKey. In the example project of the video, it used the UniqueKey to identify the container widget beacause the widget didn't have any other constant data and we don't know what the color will be until we construct the widget. 

#### ValueKey

it takes a value of a specific type and uses that value to identify the widget. It is useful when the widget's identity is based on its value rather than its position or type. For example, in a to-do list app, we might expect the text of a to-do item to be constant and unique. If that's the case, it's probably a good candidate for a ValueKey where the text is the value. 
#### PageStorageKey
PageStorageKey is a specialized key that store a user's scroll location so the app can preserve it for later.
### GlobalKey
GlobalKey has two uses. 1️⃣It allow widgets to change parents anywhere in the app without losing state, 2️⃣or it can be used to access information about another widget in a completely different part of the widget tree. 
1️⃣ An example of the first scenario might be if you want to show the same widget on two different screens, but holding all the same states.<img src="https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/example1.gif" alt="example" width=150 height="334">
2️⃣ In the second scenario, this capability is particularly useful in scenarios where you need to communicate or synchronize information between different parts of the widget tree. For example, if you have a complex UI with nested widgets and you need to update the state of a widget deep down in the tree from a completely different part of the tree, you can use a GlobalKey to access that widget and trigger the state update.

#### GlobalObjectKey
#### LableGlobalKey

![Key_Class_Flutter.drawio](https://zheyu-notepic.oss-cn-beijing.aliyuncs.com/Upside/Key_Class_Flutter.drawio.png)
