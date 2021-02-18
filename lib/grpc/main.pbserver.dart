///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'main.pb.dart' as $0;
import 'main.pbjson.dart';

export 'main.pb.dart';

abstract class BidServiceBase extends $pb.GeneratedService {
  $async.Future<$0.BidOutput> getBids($pb.ServerContext ctx, $0.BidInput request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'getBids': return $0.BidInput();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'getBids': return this.getBids(ctx, request as $0.BidInput);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BidServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BidServiceBase$messageJson;
}

