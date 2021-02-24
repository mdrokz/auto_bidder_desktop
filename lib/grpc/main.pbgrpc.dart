///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'main.pb.dart' as $0;
export 'main.pb.dart';

class BidClient extends $grpc.Client {
  static final _$getBids = $grpc.ClientMethod<$0.BidInput, $0.BidOutput>(
      '/auto_bidder_RPC.Bid/getBids',
      ($0.BidInput value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BidOutput.fromBuffer(value));

  BidClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.BidOutput> getBids($0.BidInput request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBids, request, options: options);
  }
}

abstract class BidServiceBase extends $grpc.Service {
  $core.String get $name => 'auto_bidder_RPC.Bid';

  BidServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BidInput, $0.BidOutput>(
        'getBids',
        getBids_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BidInput.fromBuffer(value),
        ($0.BidOutput value) => value.writeToBuffer()));
  }

  $async.Future<$0.BidOutput> getBids_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BidInput> request) async {
    return getBids(call, await request);
  }

  $async.Future<$0.BidOutput> getBids(
      $grpc.ServiceCall call, $0.BidInput request);
}

class ProjectClient extends $grpc.Client {
  static final _$getProjects =
      $grpc.ClientMethod<$0.ProjectPathInfo, $0.Projects>(
          '/auto_bidder_RPC.Project/getProjects',
          ($0.ProjectPathInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Projects.fromBuffer(value));
  static final _$bidOnProject =
      $grpc.ClientMethod<$0.ProjectInfo, $0.ProjectStatus>(
          '/auto_bidder_RPC.Project/bidOnProject',
          ($0.ProjectInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ProjectStatus.fromBuffer(value));
  static final _$subscribeToProject =
      $grpc.ClientMethod<$0.ProjectEmpty, $0.Projects>(
          '/auto_bidder_RPC.Project/subscribeToProject',
          ($0.ProjectEmpty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Projects.fromBuffer(value));

  ProjectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Projects> getProjects($0.ProjectPathInfo request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getProjects, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ProjectStatus> bidOnProject($0.ProjectInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bidOnProject, request, options: options);
  }

  $grpc.ResponseStream<$0.Projects> subscribeToProject($0.ProjectEmpty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeToProject, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ProjectServiceBase extends $grpc.Service {
  $core.String get $name => 'auto_bidder_RPC.Project';

  ProjectServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProjectPathInfo, $0.Projects>(
        'getProjects',
        getProjects_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProjectPathInfo.fromBuffer(value),
        ($0.Projects value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectInfo, $0.ProjectStatus>(
        'bidOnProject',
        bidOnProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProjectInfo.fromBuffer(value),
        ($0.ProjectStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProjectEmpty, $0.Projects>(
        'subscribeToProject',
        subscribeToProject_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProjectEmpty.fromBuffer(value),
        ($0.Projects value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Projects> getProjects_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProjectPathInfo> request) async* {
    yield* getProjects(call, await request);
  }

  $async.Future<$0.ProjectStatus> bidOnProject_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProjectInfo> request) async {
    return bidOnProject(call, await request);
  }

  $async.Stream<$0.Projects> subscribeToProject_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProjectEmpty> request) async* {
    yield* subscribeToProject(call, await request);
  }

  $async.Stream<$0.Projects> getProjects(
      $grpc.ServiceCall call, $0.ProjectPathInfo request);
  $async.Future<$0.ProjectStatus> bidOnProject(
      $grpc.ServiceCall call, $0.ProjectInfo request);
  $async.Stream<$0.Projects> subscribeToProject(
      $grpc.ServiceCall call, $0.ProjectEmpty request);
}

class AuthClient extends $grpc.Client {
  static final _$checkStatus = $grpc.ClientMethod<$0.AuthEmpty, $0.AuthStatus>(
      '/auto_bidder_RPC.Auth/checkStatus',
      ($0.AuthEmpty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthStatus.fromBuffer(value));
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthCredentials, $0.AuthStatus>(
          '/auto_bidder_RPC.Auth/authenticate',
          ($0.AuthCredentials value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthStatus.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthStatus> checkStatus($0.AuthEmpty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthStatus> authenticate($0.AuthCredentials request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auto_bidder_RPC.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthEmpty, $0.AuthStatus>(
        'checkStatus',
        checkStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthEmpty.fromBuffer(value),
        ($0.AuthStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthCredentials, $0.AuthStatus>(
        'authenticate',
        authenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthCredentials.fromBuffer(value),
        ($0.AuthStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthStatus> checkStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthEmpty> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$0.AuthStatus> authenticate_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthCredentials> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.AuthStatus> checkStatus(
      $grpc.ServiceCall call, $0.AuthEmpty request);
  $async.Future<$0.AuthStatus> authenticate(
      $grpc.ServiceCall call, $0.AuthCredentials request);
}
