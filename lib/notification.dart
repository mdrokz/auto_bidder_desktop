import 'dart:io' show Directory, Platform;
import 'dart:ffi';
import 'package:path/path.dart' as path;
import 'package:ffi/ffi.dart';

// class CString extends Pointer<Uint8> {}

class NotificationInfo extends Struct {
  Pointer<Utf8> title;

  Pointer<Utf8> body;

  Pointer<Utf8> link;

  Pointer<Utf8> button_name;

  @Int32()
  int loop_timeout;

  factory NotificationInfo.allocate(Pointer<Utf8> title, Pointer<Utf8> body,
          Pointer<Utf8> button_name, Pointer<Utf8> link, int loop_timeout) =>
      allocate<NotificationInfo>().ref
        ..title = title
        ..body = body
        ..link = link
        ..button_name = button_name
        ..loop_timeout = loop_timeout;
}

typedef notification_callback = Void Function(Pointer<Int8> link);

typedef send_notification_func = Void Function(NotificationInfo);

typedef SendNotifcation = void Function(NotificationInfo);

typedef hello_world_func = Void Function(Pointer<Utf8>);

typedef HelloWorld = void Function(Pointer<Utf8>);

class Notification {
  String libraryPath = "./libnotification.so";
  DynamicLibrary notificationLibrary;
  SendNotifcation sendNotification;
  HelloWorld hello;

  Notification() {
    notificationLibrary = DynamicLibrary.open(libraryPath);

    sendNotification = notificationLibrary
        .lookup<NativeFunction<send_notification_func>>(
            'invoke_send_notification')
        .asFunction();

    // hello = notificationLibrary
    //     .lookup<NativeFunction<hello_world_func>>('hello')
    //     .asFunction();
  }
}
