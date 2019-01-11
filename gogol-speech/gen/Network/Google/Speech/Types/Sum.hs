{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Speech.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Speech.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The original media the speech was recorded on.
data RecognitionMetadataOriginalMediaType
    = OriginalMediaTypeUnspecified
      -- ^ @ORIGINAL_MEDIA_TYPE_UNSPECIFIED@
      -- Unknown original media type.
    | Audio
      -- ^ @AUDIO@
      -- The speech data is an audio recording.
    | Video
      -- ^ @VIDEO@
      -- The speech data originally recorded on a video.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecognitionMetadataOriginalMediaType

instance FromHttpApiData RecognitionMetadataOriginalMediaType where
    parseQueryParam = \case
        "ORIGINAL_MEDIA_TYPE_UNSPECIFIED" -> Right OriginalMediaTypeUnspecified
        "AUDIO" -> Right Audio
        "VIDEO" -> Right Video
        x -> Left ("Unable to parse RecognitionMetadataOriginalMediaType from: " <> x)

instance ToHttpApiData RecognitionMetadataOriginalMediaType where
    toQueryParam = \case
        OriginalMediaTypeUnspecified -> "ORIGINAL_MEDIA_TYPE_UNSPECIFIED"
        Audio -> "AUDIO"
        Video -> "VIDEO"

instance FromJSON RecognitionMetadataOriginalMediaType where
    parseJSON = parseJSONText "RecognitionMetadataOriginalMediaType"

instance ToJSON RecognitionMetadataOriginalMediaType where
    toJSON = toJSONText

-- | The use case most closely describing the audio content to be recognized.
data RecognitionMetadataInteractionType
    = InteractionTypeUnspecified
      -- ^ @INTERACTION_TYPE_UNSPECIFIED@
      -- Use case is either unknown or is something other than one of the other
      -- values below.
    | Discussion
      -- ^ @DISCUSSION@
      -- Multiple people in a conversation or discussion. For example in a
      -- meeting with two or more people actively participating. Typically all
      -- the primary people speaking would be in the same room (if not, see
      -- PHONE_CALL)
    | Presentation
      -- ^ @PRESENTATION@
      -- One or more persons lecturing or presenting to others, mostly
      -- uninterrupted.
    | PhoneCall
      -- ^ @PHONE_CALL@
      -- A phone-call or video-conference in which two or more people, who are
      -- not in the same room, are actively participating.
    | Voicemail
      -- ^ @VOICEMAIL@
      -- A recorded message intended for another person to listen to.
    | ProfessionallyProduced
      -- ^ @PROFESSIONALLY_PRODUCED@
      -- Professionally produced audio (eg. TV Show, Podcast).
    | VoiceSearch
      -- ^ @VOICE_SEARCH@
      -- Transcribe spoken questions and queries into text.
    | VoiceCommand
      -- ^ @VOICE_COMMAND@
      -- Transcribe voice commands, such as for controlling a device.
    | Dictation
      -- ^ @DICTATION@
      -- Transcribe speech to text to create a written document, such as a
      -- text-message, email or report.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecognitionMetadataInteractionType

instance FromHttpApiData RecognitionMetadataInteractionType where
    parseQueryParam = \case
        "INTERACTION_TYPE_UNSPECIFIED" -> Right InteractionTypeUnspecified
        "DISCUSSION" -> Right Discussion
        "PRESENTATION" -> Right Presentation
        "PHONE_CALL" -> Right PhoneCall
        "VOICEMAIL" -> Right Voicemail
        "PROFESSIONALLY_PRODUCED" -> Right ProfessionallyProduced
        "VOICE_SEARCH" -> Right VoiceSearch
        "VOICE_COMMAND" -> Right VoiceCommand
        "DICTATION" -> Right Dictation
        x -> Left ("Unable to parse RecognitionMetadataInteractionType from: " <> x)

instance ToHttpApiData RecognitionMetadataInteractionType where
    toQueryParam = \case
        InteractionTypeUnspecified -> "INTERACTION_TYPE_UNSPECIFIED"
        Discussion -> "DISCUSSION"
        Presentation -> "PRESENTATION"
        PhoneCall -> "PHONE_CALL"
        Voicemail -> "VOICEMAIL"
        ProfessionallyProduced -> "PROFESSIONALLY_PRODUCED"
        VoiceSearch -> "VOICE_SEARCH"
        VoiceCommand -> "VOICE_COMMAND"
        Dictation -> "DICTATION"

instance FromJSON RecognitionMetadataInteractionType where
    parseJSON = parseJSONText "RecognitionMetadataInteractionType"

instance ToJSON RecognitionMetadataInteractionType where
    toJSON = toJSONText

-- | The type of device the speech was recorded with.
data RecognitionMetadataRecordingDeviceType
    = RecordingDeviceTypeUnspecified
      -- ^ @RECORDING_DEVICE_TYPE_UNSPECIFIED@
      -- The recording device is unknown.
    | Smartphone
      -- ^ @SMARTPHONE@
      -- Speech was recorded on a smartphone.
    | PC
      -- ^ @PC@
      -- Speech was recorded using a personal computer or tablet.
    | PhoneLine
      -- ^ @PHONE_LINE@
      -- Speech was recorded over a phone line.
    | Vehicle
      -- ^ @VEHICLE@
      -- Speech was recorded in a vehicle.
    | OtherOutdoorDevice
      -- ^ @OTHER_OUTDOOR_DEVICE@
      -- Speech was recorded outdoors.
    | OtherIndoorDevice
      -- ^ @OTHER_INDOOR_DEVICE@
      -- Speech was recorded indoors.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecognitionMetadataRecordingDeviceType

instance FromHttpApiData RecognitionMetadataRecordingDeviceType where
    parseQueryParam = \case
        "RECORDING_DEVICE_TYPE_UNSPECIFIED" -> Right RecordingDeviceTypeUnspecified
        "SMARTPHONE" -> Right Smartphone
        "PC" -> Right PC
        "PHONE_LINE" -> Right PhoneLine
        "VEHICLE" -> Right Vehicle
        "OTHER_OUTDOOR_DEVICE" -> Right OtherOutdoorDevice
        "OTHER_INDOOR_DEVICE" -> Right OtherIndoorDevice
        x -> Left ("Unable to parse RecognitionMetadataRecordingDeviceType from: " <> x)

instance ToHttpApiData RecognitionMetadataRecordingDeviceType where
    toQueryParam = \case
        RecordingDeviceTypeUnspecified -> "RECORDING_DEVICE_TYPE_UNSPECIFIED"
        Smartphone -> "SMARTPHONE"
        PC -> "PC"
        PhoneLine -> "PHONE_LINE"
        Vehicle -> "VEHICLE"
        OtherOutdoorDevice -> "OTHER_OUTDOOR_DEVICE"
        OtherIndoorDevice -> "OTHER_INDOOR_DEVICE"

instance FromJSON RecognitionMetadataRecordingDeviceType where
    parseJSON = parseJSONText "RecognitionMetadataRecordingDeviceType"

instance ToJSON RecognitionMetadataRecordingDeviceType where
    toJSON = toJSONText

-- | The audio type that most closely describes the audio being recognized.
data RecognitionMetadataMicrophoneDistance
    = MicrophoneDistanceUnspecified
      -- ^ @MICROPHONE_DISTANCE_UNSPECIFIED@
      -- Audio type is not known.
    | Nearfield
      -- ^ @NEARFIELD@
      -- The audio was captured from a closely placed microphone. Eg. phone,
      -- dictaphone, or handheld microphone. Generally if there speaker is within
      -- 1 meter of the microphone.
    | Midfield
      -- ^ @MIDFIELD@
      -- The speaker if within 3 meters of the microphone.
    | Farfield
      -- ^ @FARFIELD@
      -- The speaker is more than 3 meters away from the microphone.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecognitionMetadataMicrophoneDistance

instance FromHttpApiData RecognitionMetadataMicrophoneDistance where
    parseQueryParam = \case
        "MICROPHONE_DISTANCE_UNSPECIFIED" -> Right MicrophoneDistanceUnspecified
        "NEARFIELD" -> Right Nearfield
        "MIDFIELD" -> Right Midfield
        "FARFIELD" -> Right Farfield
        x -> Left ("Unable to parse RecognitionMetadataMicrophoneDistance from: " <> x)

instance ToHttpApiData RecognitionMetadataMicrophoneDistance where
    toQueryParam = \case
        MicrophoneDistanceUnspecified -> "MICROPHONE_DISTANCE_UNSPECIFIED"
        Nearfield -> "NEARFIELD"
        Midfield -> "MIDFIELD"
        Farfield -> "FARFIELD"

instance FromJSON RecognitionMetadataMicrophoneDistance where
    parseJSON = parseJSONText "RecognitionMetadataMicrophoneDistance"

instance ToJSON RecognitionMetadataMicrophoneDistance where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Encoding of audio data sent in all \`RecognitionAudio\` messages. This
-- field is optional for \`FLAC\` and \`WAV\` audio files and required for
-- all other audio formats. For details, see AudioEncoding.
data RecognitionConfigEncoding
    = EncodingUnspecified
      -- ^ @ENCODING_UNSPECIFIED@
      -- Not specified.
    | LINEAR16
      -- ^ @LINEAR16@
      -- Uncompressed 16-bit signed little-endian samples (Linear PCM).
    | Flac
      -- ^ @FLAC@
      -- \`FLAC\` (Free Lossless Audio Codec) is the recommended encoding because
      -- it is lossless--therefore recognition is not compromised--and requires
      -- only about half the bandwidth of \`LINEAR16\`. \`FLAC\` stream encoding
      -- supports 16-bit and 24-bit samples, however, not all fields in
      -- \`STREAMINFO\` are supported.
    | Mulaw
      -- ^ @MULAW@
      -- 8-bit samples that compand 14-bit audio samples using G.711
      -- PCMU\/mu-law.
    | Amr
      -- ^ @AMR@
      -- Adaptive Multi-Rate Narrowband codec. \`sample_rate_hertz\` must be
      -- 8000.
    | AmrWb
      -- ^ @AMR_WB@
      -- Adaptive Multi-Rate Wideband codec. \`sample_rate_hertz\` must be 16000.
    | OggOpus
      -- ^ @OGG_OPUS@
      -- Opus encoded audio frames in Ogg container
      -- ([OggOpus](https:\/\/wiki.xiph.org\/OggOpus)). \`sample_rate_hertz\`
      -- must be one of 8000, 12000, 16000, 24000, or 48000.
    | SpeexWithHeaderByte
      -- ^ @SPEEX_WITH_HEADER_BYTE@
      -- Although the use of lossy encodings is not recommended, if a very low
      -- bitrate encoding is required, \`OGG_OPUS\` is highly preferred over
      -- Speex encoding. The [Speex](https:\/\/speex.org\/) encoding supported by
      -- Cloud Speech API has a header byte in each block, as in MIME type
      -- \`audio\/x-speex-with-header-byte\`. It is a variant of the RTP Speex
      -- encoding defined in [RFC 5574](https:\/\/tools.ietf.org\/html\/rfc5574).
      -- The stream is a sequence of blocks, one block per RTP packet. Each block
      -- starts with a byte containing the length of the block, in bytes,
      -- followed by one or more frames of Speex data, padded to an integral
      -- number of bytes (octets) as specified in RFC 5574. In other words, each
      -- RTP header is replaced with a single byte containing the block length.
      -- Only Speex wideband is supported. \`sample_rate_hertz\` must be 16000.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecognitionConfigEncoding

instance FromHttpApiData RecognitionConfigEncoding where
    parseQueryParam = \case
        "ENCODING_UNSPECIFIED" -> Right EncodingUnspecified
        "LINEAR16" -> Right LINEAR16
        "FLAC" -> Right Flac
        "MULAW" -> Right Mulaw
        "AMR" -> Right Amr
        "AMR_WB" -> Right AmrWb
        "OGG_OPUS" -> Right OggOpus
        "SPEEX_WITH_HEADER_BYTE" -> Right SpeexWithHeaderByte
        x -> Left ("Unable to parse RecognitionConfigEncoding from: " <> x)

instance ToHttpApiData RecognitionConfigEncoding where
    toQueryParam = \case
        EncodingUnspecified -> "ENCODING_UNSPECIFIED"
        LINEAR16 -> "LINEAR16"
        Flac -> "FLAC"
        Mulaw -> "MULAW"
        Amr -> "AMR"
        AmrWb -> "AMR_WB"
        OggOpus -> "OGG_OPUS"
        SpeexWithHeaderByte -> "SPEEX_WITH_HEADER_BYTE"

instance FromJSON RecognitionConfigEncoding where
    parseJSON = parseJSONText "RecognitionConfigEncoding"

instance ToJSON RecognitionConfigEncoding where
    toJSON = toJSONText
