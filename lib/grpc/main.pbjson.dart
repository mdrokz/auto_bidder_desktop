///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bidInputDescriptor instead')
const BidInput$json = const {
  '1': 'BidInput',
  '2': const [
    const {'1': 'refresh', '3': 1, '4': 1, '5': 8, '10': 'refresh'},
  ],
};

/// Descriptor for `BidInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bidInputDescriptor = $convert.base64Decode('CghCaWRJbnB1dBIYCgdyZWZyZXNoGAEgASgIUgdyZWZyZXNo');
@$core.Deprecated('Use bidOutputDescriptor instead')
const BidOutput$json = const {
  '1': 'BidOutput',
  '2': const [
    const {'1': 'bids', '3': 1, '4': 1, '5': 5, '10': 'bids'},
  ],
};

/// Descriptor for `BidOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bidOutputDescriptor = $convert.base64Decode('CglCaWRPdXRwdXQSEgoEYmlkcxgBIAEoBVIEYmlkcw==');
@$core.Deprecated('Use projectEmptyDescriptor instead')
const ProjectEmpty$json = const {
  '1': 'ProjectEmpty',
};

/// Descriptor for `ProjectEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectEmptyDescriptor = $convert.base64Decode('CgxQcm9qZWN0RW1wdHk=');
@$core.Deprecated('Use projectStatusDescriptor instead')
const ProjectStatus$json = const {
  '1': 'ProjectStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ProjectStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectStatusDescriptor = $convert.base64Decode('Cg1Qcm9qZWN0U3RhdHVzEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
@$core.Deprecated('Use authEmptyDescriptor instead')
const AuthEmpty$json = const {
  '1': 'AuthEmpty',
};

/// Descriptor for `AuthEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authEmptyDescriptor = $convert.base64Decode('CglBdXRoRW1wdHk=');
@$core.Deprecated('Use authStatusDescriptor instead')
const AuthStatus$json = const {
  '1': 'AuthStatus',
  '2': const [
    const {'1': 'isCookie', '3': 1, '4': 1, '5': 8, '10': 'isCookie'},
  ],
};

/// Descriptor for `AuthStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authStatusDescriptor = $convert.base64Decode('CgpBdXRoU3RhdHVzEhoKCGlzQ29va2llGAEgASgIUghpc0Nvb2tpZQ==');
@$core.Deprecated('Use authCredentialsDescriptor instead')
const AuthCredentials$json = const {
  '1': 'AuthCredentials',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'usernameInput', '3': 3, '4': 1, '5': 9, '10': 'usernameInput'},
    const {'1': 'passwordInput', '3': 4, '4': 1, '5': 9, '10': 'passwordInput'},
    const {'1': 'buttonInput', '3': 5, '4': 1, '5': 9, '10': 'buttonInput'},
  ],
};

/// Descriptor for `AuthCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authCredentialsDescriptor = $convert.base64Decode('Cg9BdXRoQ3JlZGVudGlhbHMSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIkCg11c2VybmFtZUlucHV0GAMgASgJUg11c2VybmFtZUlucHV0EiQKDXBhc3N3b3JkSW5wdXQYBCABKAlSDXBhc3N3b3JkSW5wdXQSIAoLYnV0dG9uSW5wdXQYBSABKAlSC2J1dHRvbklucHV0');
@$core.Deprecated('Use projectInfoDescriptor instead')
const ProjectInfo$json = const {
  '1': 'ProjectInfo',
  '2': const [
    const {'1': 'link', '3': 1, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'bidAmount', '3': 2, '4': 1, '5': 9, '10': 'bidAmount'},
    const {'1': 'projectDelivery', '3': 3, '4': 1, '5': 9, '10': 'projectDelivery'},
    const {'1': 'projectDescription', '3': 4, '4': 1, '5': 9, '10': 'projectDescription'},
    const {'1': 'bidAmountPath', '3': 5, '4': 1, '5': 9, '10': 'bidAmountPath'},
    const {'1': 'projectDeliveryPath', '3': 6, '4': 1, '5': 9, '10': 'projectDeliveryPath'},
    const {'1': 'projectDescriptionPath', '3': 7, '4': 1, '5': 9, '10': 'projectDescriptionPath'},
    const {'1': 'bidButtonPath', '3': 8, '4': 1, '5': 9, '10': 'bidButtonPath'},
  ],
};

/// Descriptor for `ProjectInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectInfoDescriptor = $convert.base64Decode('CgtQcm9qZWN0SW5mbxISCgRsaW5rGAEgASgJUgRsaW5rEhwKCWJpZEFtb3VudBgCIAEoCVIJYmlkQW1vdW50EigKD3Byb2plY3REZWxpdmVyeRgDIAEoCVIPcHJvamVjdERlbGl2ZXJ5Ei4KEnByb2plY3REZXNjcmlwdGlvbhgEIAEoCVIScHJvamVjdERlc2NyaXB0aW9uEiQKDWJpZEFtb3VudFBhdGgYBSABKAlSDWJpZEFtb3VudFBhdGgSMAoTcHJvamVjdERlbGl2ZXJ5UGF0aBgGIAEoCVITcHJvamVjdERlbGl2ZXJ5UGF0aBI2ChZwcm9qZWN0RGVzY3JpcHRpb25QYXRoGAcgASgJUhZwcm9qZWN0RGVzY3JpcHRpb25QYXRoEiQKDWJpZEJ1dHRvblBhdGgYCCABKAlSDWJpZEJ1dHRvblBhdGg=');
@$core.Deprecated('Use projectPathInfoDescriptor instead')
const ProjectPathInfo$json = const {
  '1': 'ProjectPathInfo',
  '2': const [
    const {'1': 'bidAmountPath', '3': 1, '4': 1, '5': 9, '10': 'bidAmountPath'},
    const {'1': 'projectDeliveryPath', '3': 2, '4': 1, '5': 9, '10': 'projectDeliveryPath'},
    const {'1': 'projectDescriptionPath', '3': 3, '4': 1, '5': 9, '10': 'projectDescriptionPath'},
    const {'1': 'bidButtonPath', '3': 4, '4': 1, '5': 9, '10': 'bidButtonPath'},
  ],
};

/// Descriptor for `ProjectPathInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectPathInfoDescriptor = $convert.base64Decode('Cg9Qcm9qZWN0UGF0aEluZm8SJAoNYmlkQW1vdW50UGF0aBgBIAEoCVINYmlkQW1vdW50UGF0aBIwChNwcm9qZWN0RGVsaXZlcnlQYXRoGAIgASgJUhNwcm9qZWN0RGVsaXZlcnlQYXRoEjYKFnByb2plY3REZXNjcmlwdGlvblBhdGgYAyABKAlSFnByb2plY3REZXNjcmlwdGlvblBhdGgSJAoNYmlkQnV0dG9uUGF0aBgEIAEoCVINYmlkQnV0dG9uUGF0aA==');
@$core.Deprecated('Use projectsDescriptor instead')
const Projects$json = const {
  '1': 'Projects',
  '2': const [
    const {'1': 'skills', '3': 1, '4': 1, '5': 9, '10': 'skills'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'link', '3': 3, '4': 1, '5': 9, '10': 'link'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'biddingPrice', '3': 5, '4': 1, '5': 9, '10': 'biddingPrice'},
    const {'1': 'selected', '3': 6, '4': 1, '5': 8, '10': 'selected'},
    const {'1': 'currency', '3': 7, '4': 1, '5': 9, '10': 'currency'},
  ],
};

/// Descriptor for `Projects`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectsDescriptor = $convert.base64Decode('CghQcm9qZWN0cxIWCgZza2lsbHMYASABKAlSBnNraWxscxIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEbGluaxgDIAEoCVIEbGluaxIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24SIgoMYmlkZGluZ1ByaWNlGAUgASgJUgxiaWRkaW5nUHJpY2USGgoIc2VsZWN0ZWQYBiABKAhSCHNlbGVjdGVkEhoKCGN1cnJlbmN5GAcgASgJUghjdXJyZW5jeQ==');
