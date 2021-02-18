import 'package:flutter/cupertino.dart';
import 'package:grpc/service_api.dart' as $grpc;
import 'package:grpc/grpc.dart';

class Channel<T extends $grpc.Client> {
  T service;
  CallOptions callOptions = CallOptions(compression: const GzipCodec());
  Channel(this.service, CallOptions _callOptions) {
    if (_callOptions != null) callOptions = _callOptions;
  }

  static ClientChannel getClientChannel(int port) {
    return ClientChannel('localhost',
        port: port,
        options: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
            codecRegistry:
                CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()])));
  }
}
