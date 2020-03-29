
import 'package:flutter/material.dart';

/// Application scenario
enum ZegoScenario {
    /// General scenario
    General,
    /// Communication scenario
    Communication,
    /// Live scenario
    Live
}

/// Language
enum ZegoLanguage {
    /// English
    English,
    /// Chinese
    Chinese
}

/// Room state
enum ZegoRoomState {
    /// Unconnected state, enter this state before logging in and after exiting the room. If there is a steady state abnormality in the process of logging in to the room, such as AppID and AppSign are incorrect, or if the same user name is logged in elsewhere and the local end is KickOut, it will enter this state.
    Disconnected,
    /// The state that the connection is being requested. It will enter this state after successful execution login room function. The display of the application interface is usually performed using this state. If the connection is interrupted due to poor network quality, the SDK will perform an internal retry and will return to the requesting connection status.
    Connecting,
    /// The status that is successfully connected. Entering this status indicates that the login to the room has been successful. The user can receive the callback notification of the user and the stream information in the room.
    Connected
}

/// Publish channel
enum ZegoPublishChannel {
    /// Main publish channel
    Main,
    /// Auxiliary publish channel
    Aux
}

/// Video rendering mode
enum ZegoViewMode {
    /// The proportional scaling up, there may be black borders
    AspectFit,
    /// The proportional zoom fills the entire View and may be partially cut
    AspectFill,
    /// Fill the entire view, the image may be stretched
    ScaleToFill
}

/// Mirror mode for previewing or playing the  of the stream
enum ZegoVideoMirrorMode {
    /// The mirror image only for previewing locally. This mode is used by default.
    OnlyPreviewMirror,
    /// Both the video previewed locally and the far end playing the stream will see mirror image.
    BothMirror,
    /// Both the video previewed locally and the far end playing the stream will not see mirror image.
    NoMirror,
    /// The mirror image only for far end playing the stream.
    OnlyPublishMirror
}

/// Publish stream status
enum ZegoPublisherState {
    /// The state is not published, and it is in this state before publishing the stream. If a steady-state exception occurs in the publish process, such as AppID and AppSign are incorrect, or if other users are already publishing the stream, there will be a failure and enter this state.
    NoPublish,
    /// The state that it is requesting to publish the stream. After the publish stream interface is successfully called, and the application interface is usually displayed using the state. If the connection is interrupted due to poor network quality, the SDK will perform an internal retry and will return to the requesting state.
    PublishRequesting,
    /// The state that the stream is being published, entering the state indicates that the stream has been successfully published, and the user can communicate normally.
    Publishing
}

/// Video configuration resolution and bitrate preset enumeration. The preset resolutions are adapted for mobile and desktop. On mobile, height is longer than width, and desktop is the opposite. For example, 1080p is actually 1080(w) x 1920(h) on mobile and 1920(w) x 1080(h) on desktop.
enum ZegoVideoConfigPreset {
    /// Set the resolution to 320x180, the default is 15 fps, the code rate is 300 kbps
    Preset180P,
    /// Set the resolution to 480x270, the default is 15 fps, the code rate is 400 kbps
    Preset270P,
    /// Set the resolution to 640x360, the default is 15 fps, the code rate is 600 kbps
    Preset360P,
    /// Set the resolution to 960x540, the default is 15 fps, the code rate is 1200 kbps
    Preset540P,
    /// Set the resolution to 1280x720, the default is 15 fps, the code rate is 1500 kbps
    Preset720P,
    /// Set the resolution to 1920x1080, the default is 15 fps, the code rate is 3000 kbps
    Preset1080P
}

/// Stream quality level
enum ZegoStreamQualityLevel {
    /// Excellent
    Excellent,
    /// Good
    Good,
    /// Normal
    Medium,
    /// Bad
    Bad,
    /// Failed
    Die
}

/// Audio channel type
enum ZegoAudioChannel {
    /// MONO
    Mono,
    /// STEREO
    Stereo
}

/// Audio Codec ID
enum ZegoAudioCodecID {
    /// default
    Default,
    /// Normal
    Normal,
    /// Normal2
    Normal2,
    /// Normal3
    Normal3,
    /// Low
    Low,
    /// Low2
    Low2,
    /// Low3
    Low3
}

/// Video Codec ID
enum ZegoVideoCodecID {
    /// default
    Default,
    /// SVC
    Svc,
    /// VP8
    Vp8
}

/// Player video layer
enum ZegoPlayerVideoLayer {
    /// The layer to be played depends on the network status
    Auto,
    /// Play the base layer (small resolution)
    Base,
    /// Play the extend layer (big resolution)
    BaseExtend
}

/// Audio echo cancellation mode
enum ZegoAECMode {
    /// Aggressive echo cancellation may affect the sound quality slightly, but the echo will be very clean
    Aggressive,
    /// Moderate echo cancellation, which may slightly affect a little bit of sound, but the residual echo will be less
    Medium,
    /// Comfortable echo cancellation, that is, echo cancellation does not affect the sound quality of the sound, and sometimes there may be a little echo, but it will not affect the normal listening.
    Soft
}

/// Traffic control property (bitmask enumeration)
class ZegoTrafficControlProperty {
    /// Basic
    static const int Basic = 0;
    /// Adaptive FPS
    static const int AdaptiveFPS = 1;
    /// Adaptive resolution
    static const int AdaptiveResolution = 1 << 1;
    /// Adaptive Audio bitrate
    static const int AdaptiveAudioBitrate = 1 << 2;
}

/// Video transmission mode when current bitrate is lower than the set minimum bitrate
enum ZegoTrafficControlMinVideoBitrateMode {
    /// Stop video transmission when current bitrate is lower than the set minimum bitrate
    NoVideo,
    /// Video is sent at a very low frequency (no more than 2fps) which is lower than the set minimum bitrate
    UltraLowFPS
}

/// Playing stream status
enum ZegoPlayerState {
    /// The state of the flow is not played, and it is in this state before the stream is played. If the steady flow anomaly occurs during the playing process, such as AppID and AppSign are incorrect, it will enter this state.
    NoPlay,
    /// The state that the stream is being requested for playing. After the stream playing interface is successfully called, it will enter the state, and the application interface is usually displayed using this state. If the connection is interrupted due to poor network quality, the SDK will perform an internal retry and will return to the requesting state.
    PlayRequesting,
    /// The state that the stream is being playing, entering the state indicates that the stream has been successfully played, and the user can communicate normally.
    Playing
}

/// Media event when playing
enum ZegoPlayerMediaEvent {
    /// Audio stuck event when playing
    AudioBreakOccur,
    /// Audio stuck event recovery when playing
    AudioBreakResume,
    /// Video stuck event when playing
    VideoBreakOccur,
    /// Video stuck event recovery when playing
    VideoBreakResume
}

/// Update type
enum ZegoUpdateType {
    /// Add
    Add,
    /// Delete
    Delete
}

/// State of CDN relay
enum ZegoStreamRelayCDNState {
    /// The state indicates that there is no CDN relay
    NoRelay,
    /// The CDN relay is being requested
    RelayRequesting,
    /// Entering this status indicates that the CDN relay has been successful
    Relaying
}

/// Reason for state of CDN relay changed
enum ZegoStreamRelayCDNUpdateReason {
    /// No error
    None,
    /// Server error
    ServerError,
    /// Handshake error
    HandshakeFailed,
    /// Access point error
    AccessPointError,
    /// Stream create failure
    CreateStreamFailed,
    /// Bad name
    BadName,
    /// CDN server actively disconnected
    CDNServerDisconnected,
    /// Active disconnect
    Disconnected
}

/// Beauty feature (bitmask enumeration)
class ZegoBeautifyFeature {
    /// No beautifying
    static const int None = 0;
    /// Polish
    static const int Polish = 1 << 0;
    /// Sharpen
    static const int Whiten = 1 << 1;
    /// Skin whiten
    static const int SkinWhiten = 1 << 2;
    /// Whiten
    static const int Sharpen = 1 << 3;
}

/// Remote device status
enum ZegoRemoteDeviceState {
    /// Device on
    Open,
    /// General device error
    GenericError,
    /// Invalid device ID
    InvalidID,
    /// No permission
    NoAuthorization,
    /// Captured frame rate is 0
    ZeroFPS,
    /// The device is occupied
    InUseByOther,
    /// The device is not plugged in or unplugged
    Unplugged,
    /// The system needs to be restarted
    RebootRequired,
    /// System media services stop, such as under the iOS platform, when the system detects that the current pressure is huge (such as playing a lot of animation), it is possible to disable all media related services.
    SystemMediaServicesLost,
    /// Capturing disabled
    Disable,
    /// The remote device is muted
    Mute,
    /// The device is interrupted, such as a phone call interruption, etc.
    Interruption,
    /// There are multiple apps at the same time in the foreground, such as the iPad app split screen, the system will prohibit all apps from using the camera.
    InBackground,
    /// CDN server actively disconnected
    MultiForegroundApp,
    /// The system is under high load pressure and may cause abnormal equipment.
    BySystemPressure
}

/// Audio device type
enum ZegoAudioDeviceType {
    /// Audio input type
    Input,
    /// Audio output type
    Output
}

/// Mix stream content type
enum ZegoMixerInputContentType {
    /// Mix stream for audio only
    Audio,
    /// Mix stream for both audio and video
    Video
}

/// Capture pipeline scale mode
enum ZegoCapturePipelineScaleMode {
    /// Zoom immediately after acquisition, default
    Pre,
    /// Scaling while encoding
    Post
}

/// Video frame format
enum ZegoVideoFrameFormat {
    /// Unknown format, will take platform default
    Unknown,
    /// I420 (YUV420Planar) format
    I420,
    /// NV12 (YUV420SemiPlanar) format
    NV12,
    /// NV21 (YUV420SemiPlanar) format
    NV21,
    /// BGRA32 format
    BGRA32,
    /// RGBA32 format
    RGBA32,
    /// ARGB32 format
    ARGB32,
    /// ABGR32 format
    ABGR32,
    /// I422 (YUV422Planar) format
    I422
}

/// Video frame buffer type
enum ZegoVideoBufferType {
    /// Raw data type video frame
    Unknown,
    /// Raw data type video frame
    RawData,
    /// Encoded data type video frame
    EncodedData,
    /// Texture 2D type video frame
    GLTexture2D,
    /// CVPixelBuffer type video frame
    CVPixelBuffer,
    /// Surface Texture type video frame
    SurfaceTexture
}

/// Video frame format series
enum ZegoVideoFrameFormatSeries {
    /// RGB series
    RGB,
    /// YUV series
    YUV
}

/// Video frame flip mode
enum ZegoVideoFlipMode {
    /// No flip
    None,
    /// X-axis flip
    X
}

/// Audio Config Preset
enum ZegoAudioConfigPreset {
    /// basic-quality
    BasicQuality,
    /// standard-quality
    StandardQuality,
    /// standard-quality-stereo
    StandardQualityStereo,
    /// high-quality
    HighQuality,
    /// high-quality-stereo
    HighQualityStereo
}

/// Player state
enum ZegoMediaPlayerState {
    /// Not playing
    NoPlay,
    /// Playing
    Playing,
    /// Pausing
    Pausing,
    /// End of play
    PlayEnded
}

/// Player network event
enum ZegoMediaPlayerNetworkEvent {
    /// Network resources are not playing well, and start trying to cache data
    BufferBegin,
    /// Network resources can be played smoothly
    BufferEnded
}

/// Advanced room configuration
///
/// Configure maximum number of users in the room and authentication token, etc.
class ZegoRoomConfig {

    /// The maximum number of users in the room, Passing 0 means unlimited, the default is unlimited.
    int maxMemberCount;

    /// Whether to enable the user in and out of the room callback notification [onRoomUserUpdate], the default is off.
    bool isUserStatusNotify;

    /// The token issued by the developer's business server is used to ensure security. The generation rules are detailed in [https://doc.zego.im/CN/565.html](https://doc.zego.im/CN/565.html). Default is empty string, that is, no authentication
    String token;

    ZegoRoomConfig(this.maxMemberCount, this.isUserStatusNotify, this.token): assert(maxMemberCount != null), assert(isUserStatusNotify != null), assert(token != null);

    ZegoRoomConfig.fromMap(Map<dynamic, dynamic> map):
        maxMemberCount = map['maxMemberCount'],
        isUserStatusNotify = map['isUserStatusNotify'],
        token = map['token'];

    Map<String, dynamic> toMap() {
        return {
            'maxMemberCount': this.maxMemberCount,
            'isUserStatusNotify': this.isUserStatusNotify,
            'token': this.token
        };
    }

}

/// Video config
///
/// Configure parameters used for publishing stream, such as bitrate, frame rate, and resolution.
/// Developers should note that the width and height resolution of the mobile and desktop are opposite. For example, 360p, the resolution of the mobile is 360x640, and the desktop is 640x360.
class ZegoVideoConfig {

    /// Capture resolution width
    int captureWidth;

    /// Capture resolution height
    int captureHeight;

    /// Encode resolution width
    int encodeWidth;

    /// Encode resolution height
    int encodeHeight;

    /// frame rate
    int fps;

    /// Bit rate in kbps
    int bitrate;

    /// codec ID
    ZegoVideoCodecID codecID;

    ZegoVideoConfig(this.captureWidth, this.captureHeight, this.encodeWidth, this.encodeHeight, this.fps, this.bitrate, this.codecID): assert(captureWidth != null), assert(captureHeight != null), assert(encodeWidth != null), assert(encodeHeight != null), assert(fps != null), assert(bitrate != null), assert(codecID != null);

    ZegoVideoConfig.fromMap(Map<dynamic, dynamic> map):
        captureWidth = map['captureWidth'],
        captureHeight = map['captureHeight'],
        encodeWidth = map['encodeWidth'],
        encodeHeight = map['encodeHeight'],
        fps = map['fps'],
        bitrate = map['bitrate'],
        codecID = map['codecID'];

    Map<String, dynamic> toMap() {
        return {
            'captureWidth': this.captureWidth,
            'captureHeight': this.captureHeight,
            'encodeWidth': this.encodeWidth,
            'encodeHeight': this.encodeHeight,
            'fps': this.fps,
            'bitrate': this.bitrate,
            'codecID': this.codecID.index
        };
    }

}

/// User object
///
/// Configure user ID and username to identify users in the room.
/// Note that the userID must be unique under the same appID, otherwise mutual kicks out will occur.
class ZegoUser {

    /// User ID, a string with a maximum length of 64 bytes or less. Only support numbers, English characters and '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '=', '-', '`', ';', '’', ',', '.', '<', '>', '/', '\'.
    String userID;

    /// User Name, a string with a maximum length of 256 bytes or less
    String userName;

    ZegoUser(this.userID, this.userName): assert(userID != null), assert(userName != null);

    ZegoUser.fromMap(Map<dynamic, dynamic> map):
        userID = map['userID'],
        userName = map['userName'];

    Map<String, dynamic> toMap() {
        return {
            'userID': this.userID,
            'userName': this.userName
        };
    }

}

/// Stream object
///
/// Identify an stream object
class ZegoStream {

    /// User object instance
    ZegoUser user;

    /// Stream ID, a string of up to 256 characters. You cannot include URL keywords, otherwise publishing stream and playing stream will fails. Only support numbers, English characters and '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '=', '-', '`', ';', '’', ',', '.', '<', '>', '/', '\'.
    String streamID;

    /// Stream extra info
    String extraInfo;

    ZegoStream(this.user, this.streamID, this.extraInfo): assert(user != null), assert(streamID != null), assert(extraInfo != null);

    ZegoStream.fromMap(Map<dynamic, dynamic> map):
        user = ZegoUser.fromMap(map['user']),
        streamID = map['streamID'],
        extraInfo = map['extraInfo'];

    Map<String, dynamic> toMap() {
        return {
            'user': this.user.toMap(),
            'streamID': this.streamID,
            'extraInfo': this.extraInfo
        };
    }

}

/// View related coordinates
///
class ZegoRect {

    /// The horizontal offset from the top-left corner
    int x;

    /// The vertical offset from the top-left corner
    int y;

    /// The width of the rectangle
    int width;

    /// The height of the rectangle
    int height;

    ZegoRect(this.x, this.y, this.width, this.height): assert(x != null), assert(y != null), assert(width != null), assert(height != null);

    ZegoRect.fromMap(Map<dynamic, dynamic> map):
        x = map['x'],
        y = map['y'],
        width = map['width'],
        height = map['height'];

    Map<String, dynamic> toMap() {
        return {
            'x': this.x,
            'y': this.y,
            'width': this.width,
            'height': this.height
        };
    }

}

/// View object
///
/// Configure view object, view Mode, background color
class ZegoCanvas {

    /// ViewID, if [enablePlatformView] is set to [true] when [createEngine], this parameter is [PlatformViewID], otherwise it is [TextureID]
    int view;

    /// View mode, default is ZegoViewModeAspectFit
    ZegoViewMode viewMode;

    /// Background color, the format is 0xRRGGBB, default is black, which is 0x000000
    int backgroundColor;

    ZegoCanvas(this.view, this.viewMode, this.backgroundColor): assert(view != null), assert(viewMode != null), assert(backgroundColor != null);

    ZegoCanvas.fromMap(Map<dynamic, dynamic> map):
        view = map['view'],
        viewMode = map['viewMode'],
        backgroundColor = map['backgroundColor'];

    Map<String, dynamic> toMap() {
        return {
            'view': this.view,
            'viewMode': this.viewMode.index,
            'backgroundColor': this.backgroundColor
        };
    }

}

/// Published stream quality information
///
/// Audio and video parameters and network quality, etc.
class ZegoPublishStreamQuality {

    /// Video capture frame rate. The unit of frame rate is f/s
    double videoCaptureFPS;

    /// Video encoding frame rate. The unit of frame rate is f/s
    double videoEncodeFPS;

    /// Video transmission frame rate. The unit of frame rate is f/s
    double videoSendFPS;

    /// Video bit rate in kbps
    double videoKBPS;

    /// Audio capture frame rate. The unit of frame rate is f/s
    double audioCaptureFPS;

    /// Audio transmission frame rate. The unit of frame rate is f/s
    double audioSendFPS;

    /// Audio bit rate in kbps
    double audioKBPS;

    /// Local to server delay, in milliseconds
    int rtt;

    /// Packet loss rate, in percentage, 0.0 ~ 1.0
    double packetLostRate;

    /// Published stream quality level
    ZegoStreamQualityLevel level;

    /// Whether to enable hardware encoding
    bool isHardwareEncode;

    ZegoPublishStreamQuality(this.videoCaptureFPS, this.videoEncodeFPS, this.videoSendFPS, this.videoKBPS, this.audioCaptureFPS, this.audioSendFPS, this.audioKBPS, this.rtt, this.packetLostRate, this.level, this.isHardwareEncode): assert(videoCaptureFPS != null), assert(videoEncodeFPS != null), assert(videoSendFPS != null), assert(videoKBPS != null), assert(audioCaptureFPS != null), assert(audioSendFPS != null), assert(audioKBPS != null), assert(rtt != null), assert(packetLostRate != null), assert(level != null), assert(isHardwareEncode != null);

    ZegoPublishStreamQuality.fromMap(Map<dynamic, dynamic> map):
        videoCaptureFPS = map['videoCaptureFPS'],
        videoEncodeFPS = map['videoEncodeFPS'],
        videoSendFPS = map['videoSendFPS'],
        videoKBPS = map['videoKBPS'],
        audioCaptureFPS = map['audioCaptureFPS'],
        audioSendFPS = map['audioSendFPS'],
        audioKBPS = map['audioKBPS'],
        rtt = map['rtt'],
        packetLostRate = map['packetLostRate'],
        level = map['level'],
        isHardwareEncode = map['isHardwareEncode'];

    Map<String, dynamic> toMap() {
        return {
            'videoCaptureFPS': this.videoCaptureFPS,
            'videoEncodeFPS': this.videoEncodeFPS,
            'videoSendFPS': this.videoSendFPS,
            'videoKBPS': this.videoKBPS,
            'audioCaptureFPS': this.audioCaptureFPS,
            'audioSendFPS': this.audioSendFPS,
            'audioKBPS': this.audioKBPS,
            'rtt': this.rtt,
            'packetLostRate': this.packetLostRate,
            'level': this.level.index,
            'isHardwareEncode': this.isHardwareEncode
        };
    }

}

/// CDN config object
///
/// Includes CDN URL and authentication parameter string
class ZegoCDNConfig {

    /// CDN URL
    String url;

    /// Auth param of URL
    String authParam;

    ZegoCDNConfig(this.url, this.authParam): assert(url != null), assert(authParam != null);

    ZegoCDNConfig.fromMap(Map<dynamic, dynamic> map):
        url = map['url'],
        authParam = map['authParam'];

    Map<String, dynamic> toMap() {
        return {
            'url': this.url,
            'authParam': this.authParam
        };
    }

}

/// Relay to CDN info
///
/// Including the URL of the relaying CDN, relaying state, etc.
class ZegoStreamRelayCDNInfo {

    /// URL of publishing stream to CDN
    String url;

    /// State of relaying to CDN
    ZegoStreamRelayCDNState state;

    /// Reason for relay state changed
    ZegoStreamRelayCDNUpdateReason updateReason;

    /// The timestamp when the state changed, in milliseconds
    int stateTime;

    ZegoStreamRelayCDNInfo(this.url, this.state, this.updateReason, this.stateTime): assert(url != null), assert(state != null), assert(updateReason != null), assert(stateTime != null);

    ZegoStreamRelayCDNInfo.fromMap(Map<dynamic, dynamic> map):
        url = map['url'],
        state = map['state'],
        updateReason = map['updateReason'],
        stateTime = map['stateTime'];

    Map<String, dynamic> toMap() {
        return {
            'url': this.url,
            'state': this.state.index,
            'updateReason': this.updateReason.index,
            'stateTime': this.stateTime
        };
    }

}

/// Advanced player configuration
///
/// Configure playing stream CDN configuration, video layer
class ZegoPlayerConfig {

    /// The CDN configuration for playing stream. If set, the stream is play according to the URL instead of the streamID. After that, the streamID is only used as the ID of SDK internal callback.
    ZegoCDNConfig cdnConfig;

    /// Set the video layer for playing the stream
    ZegoPlayerVideoLayer videoLayer;

    ZegoPlayerConfig(this.cdnConfig, this.videoLayer): assert(cdnConfig != null), assert(videoLayer != null);

    ZegoPlayerConfig.fromMap(Map<dynamic, dynamic> map):
        cdnConfig = ZegoCDNConfig.fromMap(map['cdnConfig']),
        videoLayer = map['videoLayer'];

    Map<String, dynamic> toMap() {
        return {
            'cdnConfig': this.cdnConfig.toMap(),
            'videoLayer': this.videoLayer.index
        };
    }

}

/// Played stream quality information
///
/// Audio and video parameters and network quality, etc.
class ZegoPlayStreamQuality {

    /// Video reception frame rate. The unit of frame rate is f/s
    double videoRecvFPS;

    /// Video decoding frame rate. The unit of frame rate is f/s
    double videoDecodeFPS;

    /// Video rendering frame rate. The unit of frame rate is f/s
    double videoRenderFPS;

    /// Video bit rate in kbps
    double videoKBPS;

    /// Audio reception frame rate. The unit of frame rate is f/s
    double audioRecvFPS;

    /// Audio decoding frame rate. The unit of frame rate is f/s
    double audioDecodeFPS;

    /// Audio rendering frame rate. The unit of frame rate is f/s
    double audioRenderFPS;

    /// Audio bit rate in kbps
    double audioKBPS;

    /// Server to local delay, in milliseconds
    int rtt;

    /// Packet loss rate, in percentage, 0.0 ~ 1.0
    double packetLostRate;

    /// Published stream quality level
    ZegoStreamQualityLevel level;

    /// Delay after the data is received by the local end, in milliseconds
    int delay;

    /// Whether to enable hardware decoding
    bool isHardwareDecode;

    ZegoPlayStreamQuality(this.videoRecvFPS, this.videoDecodeFPS, this.videoRenderFPS, this.videoKBPS, this.audioRecvFPS, this.audioDecodeFPS, this.audioRenderFPS, this.audioKBPS, this.rtt, this.packetLostRate, this.level, this.delay, this.isHardwareDecode): assert(videoRecvFPS != null), assert(videoDecodeFPS != null), assert(videoRenderFPS != null), assert(videoKBPS != null), assert(audioRecvFPS != null), assert(audioDecodeFPS != null), assert(audioRenderFPS != null), assert(audioKBPS != null), assert(rtt != null), assert(packetLostRate != null), assert(level != null), assert(delay != null), assert(isHardwareDecode != null);

    ZegoPlayStreamQuality.fromMap(Map<dynamic, dynamic> map):
        videoRecvFPS = map['videoRecvFPS'],
        videoDecodeFPS = map['videoDecodeFPS'],
        videoRenderFPS = map['videoRenderFPS'],
        videoKBPS = map['videoKBPS'],
        audioRecvFPS = map['audioRecvFPS'],
        audioDecodeFPS = map['audioDecodeFPS'],
        audioRenderFPS = map['audioRenderFPS'],
        audioKBPS = map['audioKBPS'],
        rtt = map['rtt'],
        packetLostRate = map['packetLostRate'],
        level = map['level'],
        delay = map['delay'],
        isHardwareDecode = map['isHardwareDecode'];

    Map<String, dynamic> toMap() {
        return {
            'videoRecvFPS': this.videoRecvFPS,
            'videoDecodeFPS': this.videoDecodeFPS,
            'videoRenderFPS': this.videoRenderFPS,
            'videoKBPS': this.videoKBPS,
            'audioRecvFPS': this.audioRecvFPS,
            'audioDecodeFPS': this.audioDecodeFPS,
            'audioRenderFPS': this.audioRenderFPS,
            'audioKBPS': this.audioKBPS,
            'rtt': this.rtt,
            'packetLostRate': this.packetLostRate,
            'level': this.level.index,
            'delay': this.delay,
            'isHardwareDecode': this.isHardwareDecode
        };
    }

}

/// Device Info
///
/// Including device ID and name
class ZegoDeviceInfo {

    /// Device ID
    String deviceID;

    /// Device name
    String deviceName;

    ZegoDeviceInfo(this.deviceID, this.deviceName): assert(deviceID != null), assert(deviceName != null);

    ZegoDeviceInfo.fromMap(Map<dynamic, dynamic> map):
        deviceID = map['deviceID'],
        deviceName = map['deviceName'];

    Map<String, dynamic> toMap() {
        return {
            'deviceID': this.deviceID,
            'deviceName': this.deviceName
        };
    }

}

/// Beauty configuration options
///
/// Configure the parameters of skin peeling, whitening and sharpening
class ZegoBeautifyOption {

    /// The sample step size of beauty peeling, the value range is [0,1], default 0.2
    double polishStep;

    /// Brightness parameter for beauty and whitening, the larger the value, the brighter the brightness, ranging from [0,1], default 0.5
    double whitenFactor;

    /// Beauty sharpening parameter, the larger the value, the stronger the sharpening, value range [0,1], default 0.1
    double sharpenFactor;

    ZegoBeautifyOption(this.polishStep, this.whitenFactor, this.sharpenFactor): assert(polishStep != null), assert(whitenFactor != null), assert(sharpenFactor != null);

    ZegoBeautifyOption.fromMap(Map<dynamic, dynamic> map):
        polishStep = map['polishStep'],
        whitenFactor = map['whitenFactor'],
        sharpenFactor = map['sharpenFactor'];

    Map<String, dynamic> toMap() {
        return {
            'polishStep': this.polishStep,
            'whitenFactor': this.whitenFactor,
            'sharpenFactor': this.sharpenFactor
        };
    }

}

/// Mix stream audio configuration
///
/// Configure video frame rate, bitrate, and resolution for mixer task
class ZegoMixerAudioConfig {

    /// Audio bitrate in kbps, default is 48 kbps, cannot be modified after starting a mixer task
    int bitrate;

    /// Audio channel, default is Mono
    ZegoAudioChannel channel;

    /// codec ID, default is ZegoAudioCodecIDDefault
    ZegoAudioCodecID codecID;

    ZegoMixerAudioConfig(this.bitrate, this.channel, this.codecID): assert(bitrate != null), assert(channel != null), assert(codecID != null);

    ZegoMixerAudioConfig.fromMap(Map<dynamic, dynamic> map):
        bitrate = map['bitrate'],
        channel = map['channel'],
        codecID = map['codecID'];

    Map<String, dynamic> toMap() {
        return {
            'bitrate': this.bitrate,
            'channel': this.channel.index,
            'codecID': this.codecID.index
        };
    }

}

/// Mix stream video config object
///
/// Configure video frame rate, bitrate, and resolution for mixer task
class ZegoMixerVideoConfig {

    /// Video resolution width
    int width;

    /// Video resolution height
    int height;

    /// Video FPS, cannot be modified after starting a mixer task
    int fps;

    /// Video bitrate in kbps
    int bitrate;

    ZegoMixerVideoConfig(this.width, this.height, this.fps, this.bitrate): assert(width != null), assert(height != null), assert(fps != null), assert(bitrate != null);

    ZegoMixerVideoConfig.fromMap(Map<dynamic, dynamic> map):
        width = map['width'],
        height = map['height'],
        fps = map['fps'],
        bitrate = map['bitrate'];

    Map<String, dynamic> toMap() {
        return {
            'width': this.width,
            'height': this.height,
            'fps': this.fps,
            'bitrate': this.bitrate
        };
    }

}

/// Mixer input
///
/// Configure the mix stream input stream ID, type, and the layout
class ZegoMixerInput {

    /// Stream ID, a string of up to 256 characters. You cannot include URL keywords, otherwise publishing stream and playing stream will fails. Only support numbers, English characters and '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '=', '-', '`', ';', '’', ',', '.', '<', '>', '/', '\'.
    String streamID;

    /// Mix stream content type
    ZegoMixerInputContentType contentType;

    /// Stream layout
    Rect layout;

    /// If enable soundLevel in mix stream task, an unique soundLevelID is need for every stream
    int soundLevelID;

    ZegoMixerInput(this.streamID, this.contentType, this.layout, this.soundLevelID): assert(streamID != null), assert(contentType != null), assert(layout != null), assert(soundLevelID != null);

    ZegoMixerInput.fromMap(Map<dynamic, dynamic> map):
        streamID = map['streamID'],
        contentType = map['contentType'],
        layout = map['layout'],
        soundLevelID = map['soundLevelID'];

    Map<String, dynamic> toMap() {
        return {
            'streamID': this.streamID,
            'contentType': this.contentType.index,
            'layout': this.layout,
            'soundLevelID': this.soundLevelID
        };
    }

}

/// Mixer output object
///
/// Configure mix stream output target URL or stream ID
class ZegoMixerOutput {

    /// Mix stream output target, URL or stream ID
    String target;

    /// Mix stream audio config
    ZegoMixerAudioConfig audioConfig;

    /// Mix stream audio config
    ZegoMixerVideoConfig videoConfig;

    ZegoMixerOutput(this.target, this.audioConfig, this.videoConfig): assert(target != null), assert(audioConfig != null), assert(videoConfig != null);

    ZegoMixerOutput.fromMap(Map<dynamic, dynamic> map):
        target = map['target'],
        audioConfig = ZegoMixerAudioConfig.fromMap(map['audioConfig']),
        videoConfig = ZegoMixerVideoConfig.fromMap(map['videoConfig']);

    Map<String, dynamic> toMap() {
        return {
            'target': this.target,
            'audioConfig': this.audioConfig.toMap(),
            'videoConfig': this.videoConfig.toMap()
        };
    }

}

/// Watermark object
///
/// Configure a watermark image URL and the layout of the watermark in the screen
class ZegoWatermark {

    /// Watermark image URL
    String imageURL;

    /// Watermark image layout
    Rect layout;

    ZegoWatermark(this.imageURL, this.layout): assert(imageURL != null), assert(layout != null);

    ZegoWatermark.fromMap(Map<dynamic, dynamic> map):
        imageURL = map['imageURL'],
        layout = map['layout'];

    Map<String, dynamic> toMap() {
        return {
            'imageURL': this.imageURL,
            'layout': this.layout
        };
    }

}

/// Mix stream task object
///
/// This class is the configuration class of the mixing stream task. When a mixing stream task is requested to the ZEGO audio and video cloud, the configuration of the mixing task is required.
/// This class describes the detailed configuration information of this mixed task.
class ZegoMixerTask {

    /// The task ID of the task
    String taskID;

    /// The input list of the task
    List<ZegoMixerInput> inputList;

    /// The output list of the task
    List<ZegoMixerOutput> outputList;

    /// The watermark of the task
    ZegoWatermark watermark;

    /// The background image URL of the task
    String backgroundImageURL;

    /// Enable or disable sound level callback for the task. If enabled, then the remote player can get the soundLevel of every stream in the inputlist by [onMixerSoundLevelUpdate] callback.
    bool enableSoundLevel;

    ZegoMixerTask(this.taskID, this.inputList, this.outputList, this.watermark, this.backgroundImageURL, this.enableSoundLevel): assert(taskID != null), assert(inputList != null), assert(outputList != null), assert(enableSoundLevel != null);

    ZegoMixerTask.fromMap(Map<dynamic, dynamic> map):
        taskID = map['taskID'],
        inputList = map['inputList'],
        outputList = map['outputList'],
        watermark = ZegoWatermark.fromMap(map['watermark']),
        backgroundImageURL = map['backgroundImageURL'],
        enableSoundLevel = map['enableSoundLevel'];

    Map<String, dynamic> toMap() {
        return {
            'taskID': this.taskID,
            'inputList': this.inputList,
            'outputList': this.outputList,
            'watermark': this.watermark.toMap(),
            'backgroundImageURL': this.backgroundImageURL,
            'enableSoundLevel': this.enableSoundLevel
        };
    }

}

/// Broadcast message info
///
/// The received object of the room broadcast message, including the message content, message ID, sender, sending time
class ZegoBroadcastMessageInfo {

    /// message content
    String message;

    /// message id
    int messageID;

    /// Message send time
    int sendTime;

    /// Message sender
    ZegoUser fromUser;

    ZegoBroadcastMessageInfo(this.message, this.messageID, this.sendTime, this.fromUser): assert(message != null), assert(messageID != null), assert(sendTime != null), assert(fromUser != null);

    ZegoBroadcastMessageInfo.fromMap(Map<dynamic, dynamic> map):
        message = map['message'],
        messageID = map['messageID'],
        sendTime = map['sendTime'],
        fromUser = ZegoUser.fromMap(map['fromUser']);

    Map<String, dynamic> toMap() {
        return {
            'message': this.message,
            'messageID': this.messageID,
            'sendTime': this.sendTime,
            'fromUser': this.fromUser.toMap()
        };
    }

}

/// Barrage message info
///
/// The received object of the room barrage message, including the message content, message ID, sender, sending time
class ZegoBarrageMessageInfo {

    /// message content
    String message;

    /// message id
    String messageID;

    /// Message send time
    int sendTime;

    /// Message sender
    ZegoUser fromUser;

    ZegoBarrageMessageInfo(this.message, this.messageID, this.sendTime, this.fromUser): assert(message != null), assert(messageID != null), assert(sendTime != null), assert(fromUser != null);

    ZegoBarrageMessageInfo.fromMap(Map<dynamic, dynamic> map):
        message = map['message'],
        messageID = map['messageID'],
        sendTime = map['sendTime'],
        fromUser = ZegoUser.fromMap(map['fromUser']);

    Map<String, dynamic> toMap() {
        return {
            'message': this.message,
            'messageID': this.messageID,
            'sendTime': this.sendTime,
            'fromUser': this.fromUser.toMap()
        };
    }

}

/// Audio configuration
///
/// Configure audio bitrate, audio channel, audio encoding for publishing stream
class ZegoAudioConfig {

    /// Audio bitrate in kbps, default is 48 kbps
    int bitrate;

    /// Audio channel, default is Mono
    ZegoAudioChannel channel;

    /// codec ID, default is ZegoAudioCodecIDDefault
    ZegoAudioCodecID codecID;

    ZegoAudioConfig(this.bitrate, this.channel, this.codecID): assert(bitrate != null), assert(channel != null), assert(codecID != null);

    ZegoAudioConfig.fromMap(Map<dynamic, dynamic> map):
        bitrate = map['bitrate'],
        channel = map['channel'],
        codecID = map['codecID'];

    Map<String, dynamic> toMap() {
        return {
            'bitrate': this.bitrate,
            'channel': this.channel.index,
            'codecID': this.codecID.index
        };
    }

}

/// Callback for updating stream extra information
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
class ZegoPublisherSetStreamExtraInfoResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    ZegoPublisherSetStreamExtraInfoResult(this.errorCode): assert(errorCode != null);

    ZegoPublisherSetStreamExtraInfoResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode
        };
    }

}

/// Callback for add/remove CDN URL
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
class ZegoPublisherUpdateCdnUrlResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    ZegoPublisherUpdateCdnUrlResult(this.errorCode): assert(errorCode != null);

    ZegoPublisherUpdateCdnUrlResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode
        };
    }

}

/// Results of starting a mixer task
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
/// [extendedData] Extended Information
class ZegoMixerStartResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    /// Extended Information
    Map<String, dynamic> extendedData;

    ZegoMixerStartResult(this.errorCode, this.extendedData): assert(errorCode != null), assert(extendedData != null);

    ZegoMixerStartResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'],
        extendedData = map['extendedData'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode,
            'extendedData': this.extendedData
        };
    }

}

/// Results of stoping a mixer task
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
class ZegoMixerStopResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    ZegoMixerStopResult(this.errorCode): assert(errorCode != null);

    ZegoMixerStopResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode
        };
    }

}

/// Callback for sending broadcast messages
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
/// [messageID] ID of this message
class ZegoIMSendBroadcastMessageResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    /// ID of this message
    int messageID;

    ZegoIMSendBroadcastMessageResult(this.errorCode, this.messageID): assert(errorCode != null), assert(messageID != null);

    ZegoIMSendBroadcastMessageResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'],
        messageID = map['messageID'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode,
            'messageID': this.messageID
        };
    }

}

/// Callback for sending barrage message
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
/// [messageID] ID of this message
class ZegoIMSendBarrageMessageResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    /// ID of this message
    String messageID;

    ZegoIMSendBarrageMessageResult(this.errorCode, this.messageID): assert(errorCode != null), assert(messageID != null);

    ZegoIMSendBarrageMessageResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'],
        messageID = map['messageID'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode,
            'messageID': this.messageID
        };
    }

}

/// Callback for sending custom command
///
/// [errorCode] Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
class ZegoIMSendCustomCommandResult {

    /// Error code, please refer to the common error code document [https://doc-zh.zego.im/zh/308.html] for details
    int errorCode;

    ZegoIMSendCustomCommandResult(this.errorCode): assert(errorCode != null);

    ZegoIMSendCustomCommandResult.fromMap(Map<dynamic, dynamic> map):
        errorCode = map['errorCode'];

    Map<String, dynamic> toMap() {
        return {
            'errorCode': this.errorCode
        };
    }

}
