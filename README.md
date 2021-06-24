# GH Medic app

Flutter challenge for GH Medic consuming API REST

## Getting Started

This project is using Flutter 2.2.1 with null safety, for more info visit:

- [Flutter 2: Quick Guide](https://flutter.dev/docs/null-safety)

## Installation


- All the `code` is required for run the app

- Need to have a `phone` with android / iOS  or an `Android Emulator` | `iOS Emulator`


### Clone


- Clone this repo to your local machine using `https://github.com/DarkMarksDoe/ghmedic`


### Setup


> 1. Clone the repository, and enter to folder


```shell

$ git clone https://github.com/DarkMarksDoe/ghmedic.git

$ cd ghmedic

```


> 2. Now update all the flutter packages

```shell

$ flutter pub get

```

> 3. And now you're ready to run the app

```shell

$ flutter run

```

## Packages (Null Safety Ready)

* In StateManagement, the easiest way (for me) is using GetX, GetX was used for dependency injection, state management and UI tools.

The Plugin is:

`get`: at version `4.1.4`.

<br>
* For consuming HTTP/HTTPS services, the best (at least for me), the reliable old is Dio.

The Plugin is:

`dio`: at version `4.0.0`.

<br>
* For local storage, the winner in most of the cases, Hive (unused at this moment).

The Plugin is:

`hive`: at version `2.0.4`.