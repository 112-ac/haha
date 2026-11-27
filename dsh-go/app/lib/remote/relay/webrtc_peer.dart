import 'dart:async';
import 'package:dsh_remote/dsh_remote.dart' as remote;

Future<remote.RemotePeerConnection> flutterPeerConnector(
  List<remote.RemoteIceServer> iceServers,
  remote.RemotePeerHandlers handlers,
) async {
  throw UnimplementedError('WebRTC 视频流功能已禁用');
}