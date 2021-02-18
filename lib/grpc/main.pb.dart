///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BidInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BidInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refresh')
    ..hasRequiredFields = false
  ;

  BidInput._() : super();
  factory BidInput({
    $core.bool? refresh,
  }) {
    final _result = create();
    if (refresh != null) {
      _result.refresh = refresh;
    }
    return _result;
  }
  factory BidInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BidInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BidInput clone() => BidInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BidInput copyWith(void Function(BidInput) updates) => super.copyWith((message) => updates(message as BidInput)) as BidInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BidInput create() => BidInput._();
  BidInput createEmptyInstance() => create();
  static $pb.PbList<BidInput> createRepeated() => $pb.PbList<BidInput>();
  @$core.pragma('dart2js:noInline')
  static BidInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BidInput>(create);
  static BidInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get refresh => $_getBF(0);
  @$pb.TagNumber(1)
  set refresh($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefresh() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefresh() => clearField(1);
}

class BidOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BidOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bids', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BidOutput._() : super();
  factory BidOutput({
    $core.int? bids,
  }) {
    final _result = create();
    if (bids != null) {
      _result.bids = bids;
    }
    return _result;
  }
  factory BidOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BidOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BidOutput clone() => BidOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BidOutput copyWith(void Function(BidOutput) updates) => super.copyWith((message) => updates(message as BidOutput)) as BidOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BidOutput create() => BidOutput._();
  BidOutput createEmptyInstance() => create();
  static $pb.PbList<BidOutput> createRepeated() => $pb.PbList<BidOutput>();
  @$core.pragma('dart2js:noInline')
  static BidOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BidOutput>(create);
  static BidOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bids => $_getIZ(0);
  @$pb.TagNumber(1)
  set bids($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBids() => $_has(0);
  @$pb.TagNumber(1)
  void clearBids() => clearField(1);
}

class ProjectEmpty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProjectEmpty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ProjectEmpty._() : super();
  factory ProjectEmpty() => create();
  factory ProjectEmpty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectEmpty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectEmpty clone() => ProjectEmpty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectEmpty copyWith(void Function(ProjectEmpty) updates) => super.copyWith((message) => updates(message as ProjectEmpty)) as ProjectEmpty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProjectEmpty create() => ProjectEmpty._();
  ProjectEmpty createEmptyInstance() => create();
  static $pb.PbList<ProjectEmpty> createRepeated() => $pb.PbList<ProjectEmpty>();
  @$core.pragma('dart2js:noInline')
  static ProjectEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectEmpty>(create);
  static ProjectEmpty? _defaultInstance;
}

class ProjectStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProjectStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  ProjectStatus._() : super();
  factory ProjectStatus({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ProjectStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectStatus clone() => ProjectStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectStatus copyWith(void Function(ProjectStatus) updates) => super.copyWith((message) => updates(message as ProjectStatus)) as ProjectStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProjectStatus create() => ProjectStatus._();
  ProjectStatus createEmptyInstance() => create();
  static $pb.PbList<ProjectStatus> createRepeated() => $pb.PbList<ProjectStatus>();
  @$core.pragma('dart2js:noInline')
  static ProjectStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectStatus>(create);
  static ProjectStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AuthEmpty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthEmpty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthEmpty._() : super();
  factory AuthEmpty() => create();
  factory AuthEmpty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthEmpty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthEmpty clone() => AuthEmpty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthEmpty copyWith(void Function(AuthEmpty) updates) => super.copyWith((message) => updates(message as AuthEmpty)) as AuthEmpty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthEmpty create() => AuthEmpty._();
  AuthEmpty createEmptyInstance() => create();
  static $pb.PbList<AuthEmpty> createRepeated() => $pb.PbList<AuthEmpty>();
  @$core.pragma('dart2js:noInline')
  static AuthEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthEmpty>(create);
  static AuthEmpty? _defaultInstance;
}

class AuthStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isCookie', protoName: 'isCookie')
    ..hasRequiredFields = false
  ;

  AuthStatus._() : super();
  factory AuthStatus({
    $core.bool? isCookie,
  }) {
    final _result = create();
    if (isCookie != null) {
      _result.isCookie = isCookie;
    }
    return _result;
  }
  factory AuthStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthStatus clone() => AuthStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthStatus copyWith(void Function(AuthStatus) updates) => super.copyWith((message) => updates(message as AuthStatus)) as AuthStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthStatus create() => AuthStatus._();
  AuthStatus createEmptyInstance() => create();
  static $pb.PbList<AuthStatus> createRepeated() => $pb.PbList<AuthStatus>();
  @$core.pragma('dart2js:noInline')
  static AuthStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthStatus>(create);
  static AuthStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isCookie => $_getBF(0);
  @$pb.TagNumber(1)
  set isCookie($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsCookie() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsCookie() => clearField(1);
}

class AuthCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usernameInput', protoName: 'usernameInput')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordInput', protoName: 'passwordInput')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonInput', protoName: 'buttonInput')
    ..hasRequiredFields = false
  ;

  AuthCredentials._() : super();
  factory AuthCredentials({
    $core.String? username,
    $core.String? password,
    $core.String? usernameInput,
    $core.String? passwordInput,
    $core.String? buttonInput,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    if (usernameInput != null) {
      _result.usernameInput = usernameInput;
    }
    if (passwordInput != null) {
      _result.passwordInput = passwordInput;
    }
    if (buttonInput != null) {
      _result.buttonInput = buttonInput;
    }
    return _result;
  }
  factory AuthCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthCredentials clone() => AuthCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthCredentials copyWith(void Function(AuthCredentials) updates) => super.copyWith((message) => updates(message as AuthCredentials)) as AuthCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthCredentials create() => AuthCredentials._();
  AuthCredentials createEmptyInstance() => create();
  static $pb.PbList<AuthCredentials> createRepeated() => $pb.PbList<AuthCredentials>();
  @$core.pragma('dart2js:noInline')
  static AuthCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthCredentials>(create);
  static AuthCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get usernameInput => $_getSZ(2);
  @$pb.TagNumber(3)
  set usernameInput($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsernameInput() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsernameInput() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get passwordInput => $_getSZ(3);
  @$pb.TagNumber(4)
  set passwordInput($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPasswordInput() => $_has(3);
  @$pb.TagNumber(4)
  void clearPasswordInput() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buttonInput => $_getSZ(4);
  @$pb.TagNumber(5)
  set buttonInput($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasButtonInput() => $_has(4);
  @$pb.TagNumber(5)
  void clearButtonInput() => clearField(5);
}

class ProjectInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProjectInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidAmount', protoName: 'bidAmount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectDelivery', protoName: 'projectDelivery')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectDescription', protoName: 'projectDescription')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidAmountPath', protoName: 'bidAmountPath')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectDeliveryPath', protoName: 'projectDeliveryPath')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectDescriptionPath', protoName: 'projectDescriptionPath')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidButtonPath', protoName: 'bidButtonPath')
    ..hasRequiredFields = false
  ;

  ProjectInfo._() : super();
  factory ProjectInfo({
    $core.String? link,
    $core.String? bidAmount,
    $core.String? projectDelivery,
    $core.String? projectDescription,
    $core.String? bidAmountPath,
    $core.String? projectDeliveryPath,
    $core.String? projectDescriptionPath,
    $core.String? bidButtonPath,
  }) {
    final _result = create();
    if (link != null) {
      _result.link = link;
    }
    if (bidAmount != null) {
      _result.bidAmount = bidAmount;
    }
    if (projectDelivery != null) {
      _result.projectDelivery = projectDelivery;
    }
    if (projectDescription != null) {
      _result.projectDescription = projectDescription;
    }
    if (bidAmountPath != null) {
      _result.bidAmountPath = bidAmountPath;
    }
    if (projectDeliveryPath != null) {
      _result.projectDeliveryPath = projectDeliveryPath;
    }
    if (projectDescriptionPath != null) {
      _result.projectDescriptionPath = projectDescriptionPath;
    }
    if (bidButtonPath != null) {
      _result.bidButtonPath = bidButtonPath;
    }
    return _result;
  }
  factory ProjectInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectInfo clone() => ProjectInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectInfo copyWith(void Function(ProjectInfo) updates) => super.copyWith((message) => updates(message as ProjectInfo)) as ProjectInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProjectInfo create() => ProjectInfo._();
  ProjectInfo createEmptyInstance() => create();
  static $pb.PbList<ProjectInfo> createRepeated() => $pb.PbList<ProjectInfo>();
  @$core.pragma('dart2js:noInline')
  static ProjectInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectInfo>(create);
  static ProjectInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get link => $_getSZ(0);
  @$pb.TagNumber(1)
  set link($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearLink() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bidAmount => $_getSZ(1);
  @$pb.TagNumber(2)
  set bidAmount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBidAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBidAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get projectDelivery => $_getSZ(2);
  @$pb.TagNumber(3)
  set projectDelivery($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProjectDelivery() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectDelivery() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get projectDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set projectDescription($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProjectDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearProjectDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bidAmountPath => $_getSZ(4);
  @$pb.TagNumber(5)
  set bidAmountPath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBidAmountPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearBidAmountPath() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get projectDeliveryPath => $_getSZ(5);
  @$pb.TagNumber(6)
  set projectDeliveryPath($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProjectDeliveryPath() => $_has(5);
  @$pb.TagNumber(6)
  void clearProjectDeliveryPath() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get projectDescriptionPath => $_getSZ(6);
  @$pb.TagNumber(7)
  set projectDescriptionPath($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasProjectDescriptionPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearProjectDescriptionPath() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get bidButtonPath => $_getSZ(7);
  @$pb.TagNumber(8)
  set bidButtonPath($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBidButtonPath() => $_has(7);
  @$pb.TagNumber(8)
  void clearBidButtonPath() => clearField(8);
}

class Projects extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Projects', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auto_bidder_RPC'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skills')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'biddingPrice', protoName: 'biddingPrice')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selected')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currency')
    ..hasRequiredFields = false
  ;

  Projects._() : super();
  factory Projects({
    $core.String? skills,
    $core.String? title,
    $core.String? link,
    $core.String? description,
    $core.String? biddingPrice,
    $core.bool? selected,
    $core.String? currency,
  }) {
    final _result = create();
    if (skills != null) {
      _result.skills = skills;
    }
    if (title != null) {
      _result.title = title;
    }
    if (link != null) {
      _result.link = link;
    }
    if (description != null) {
      _result.description = description;
    }
    if (biddingPrice != null) {
      _result.biddingPrice = biddingPrice;
    }
    if (selected != null) {
      _result.selected = selected;
    }
    if (currency != null) {
      _result.currency = currency;
    }
    return _result;
  }
  factory Projects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Projects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Projects clone() => Projects()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Projects copyWith(void Function(Projects) updates) => super.copyWith((message) => updates(message as Projects)) as Projects; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Projects create() => Projects._();
  Projects createEmptyInstance() => create();
  static $pb.PbList<Projects> createRepeated() => $pb.PbList<Projects>();
  @$core.pragma('dart2js:noInline')
  static Projects getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Projects>(create);
  static Projects? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skills => $_getSZ(0);
  @$pb.TagNumber(1)
  set skills($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkills() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkills() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get biddingPrice => $_getSZ(4);
  @$pb.TagNumber(5)
  set biddingPrice($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBiddingPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearBiddingPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get selected => $_getBF(5);
  @$pb.TagNumber(6)
  set selected($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSelected() => $_has(5);
  @$pb.TagNumber(6)
  void clearSelected() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get currency => $_getSZ(6);
  @$pb.TagNumber(7)
  set currency($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurrency() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrency() => clearField(7);
}

