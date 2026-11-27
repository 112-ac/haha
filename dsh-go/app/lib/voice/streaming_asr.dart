import 'dart:async';
import 'dart:typed_data';

import 'streaming_asr_model.dart';

export 'streaming_asr_model.dart';

// 1. 保留事件基础类（UI 层监听状态需要用到）
sealed class StreamingAsrEvent {
  const StreamingAsrEvent(this.text);
  final String text;
}

class StreamingAsrPartial extends StreamingAsrEvent {
  const StreamingAsrPartial(super.text);
}

class StreamingAsrFinal extends StreamingAsrEvent {
  const StreamingAsrFinal(super.text);
}
// 2. 保留接口定义
abstract interface class StreamingAsrDecoder {
  void close();
}

typedef StreamingAsrDecoderFactory = StreamingAsrDecoder Function(StreamingAsrModel model);

// 3. 提供完整的空壳接口，满足外部所有调用
class StreamingAsr {
  StreamingAsr({this.createDecoder});
  final StreamingAsrDecoderFactory? createDecoder;

  static const int maxQueued = 50;

  final _events = StreamController<StreamingAsrEvent>.broadcast();
  Stream<StreamingAsrEvent> get events => _events.stream;

  Future<void> start(StreamingAsrModel model) async {
    // 语音识别已禁用
    return;
  }

  Future<void> stop({bool finalize = true}) async {
    // 语音识别已禁用
    return;
  }

  Future<void> feed(Uint8List pcm16le) async {
    // 语音识别已禁用
    return;
  }

  Future<void> dispose() async {
    await _events.close();
  }
}