{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TextToSpeech.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TextToSpeech.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The preferred gender of the voice. If not set, the service will choose a
-- voice based on the other parameters such as language_code and name. Note
-- that this is only a preference, not requirement; if a voice of the
-- appropriate gender is not available, the synthesizer should substitute a
-- voice with a different gender rather than failing the request.
data VoiceSelectionParamsSsmlGender
    = SsmlVoiceGenderUnspecified
      -- ^ @SSML_VOICE_GENDER_UNSPECIFIED@
      -- An unspecified gender. In VoiceSelectionParams, this means that the
      -- client doesn\'t care which gender the selected voice will have. In the
      -- Voice field of ListVoicesResponse, this may mean that the voice doesn\'t
      -- fit any of the other categories in this enum, or that the gender of the
      -- voice isn\'t known.
    | Male
      -- ^ @MALE@
      -- A male voice.
    | Female
      -- ^ @FEMALE@
      -- A female voice.
    | Neutral
      -- ^ @NEUTRAL@
      -- A gender-neutral voice. This voice is not yet supported.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VoiceSelectionParamsSsmlGender

instance FromHttpApiData VoiceSelectionParamsSsmlGender where
    parseQueryParam = \case
        "SSML_VOICE_GENDER_UNSPECIFIED" -> Right SsmlVoiceGenderUnspecified
        "MALE" -> Right Male
        "FEMALE" -> Right Female
        "NEUTRAL" -> Right Neutral
        x -> Left ("Unable to parse VoiceSelectionParamsSsmlGender from: " <> x)

instance ToHttpApiData VoiceSelectionParamsSsmlGender where
    toQueryParam = \case
        SsmlVoiceGenderUnspecified -> "SSML_VOICE_GENDER_UNSPECIFIED"
        Male -> "MALE"
        Female -> "FEMALE"
        Neutral -> "NEUTRAL"

instance FromJSON VoiceSelectionParamsSsmlGender where
    parseJSON = parseJSONText "VoiceSelectionParamsSsmlGender"

instance ToJSON VoiceSelectionParamsSsmlGender where
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

-- | The gender of this voice.
data VoiceSsmlGender
    = VSGSsmlVoiceGenderUnspecified
      -- ^ @SSML_VOICE_GENDER_UNSPECIFIED@
      -- An unspecified gender. In VoiceSelectionParams, this means that the
      -- client doesn\'t care which gender the selected voice will have. In the
      -- Voice field of ListVoicesResponse, this may mean that the voice doesn\'t
      -- fit any of the other categories in this enum, or that the gender of the
      -- voice isn\'t known.
    | VSGMale
      -- ^ @MALE@
      -- A male voice.
    | VSGFemale
      -- ^ @FEMALE@
      -- A female voice.
    | VSGNeutral
      -- ^ @NEUTRAL@
      -- A gender-neutral voice. This voice is not yet supported.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VoiceSsmlGender

instance FromHttpApiData VoiceSsmlGender where
    parseQueryParam = \case
        "SSML_VOICE_GENDER_UNSPECIFIED" -> Right VSGSsmlVoiceGenderUnspecified
        "MALE" -> Right VSGMale
        "FEMALE" -> Right VSGFemale
        "NEUTRAL" -> Right VSGNeutral
        x -> Left ("Unable to parse VoiceSsmlGender from: " <> x)

instance ToHttpApiData VoiceSsmlGender where
    toQueryParam = \case
        VSGSsmlVoiceGenderUnspecified -> "SSML_VOICE_GENDER_UNSPECIFIED"
        VSGMale -> "MALE"
        VSGFemale -> "FEMALE"
        VSGNeutral -> "NEUTRAL"

instance FromJSON VoiceSsmlGender where
    parseJSON = parseJSONText "VoiceSsmlGender"

instance ToJSON VoiceSsmlGender where
    toJSON = toJSONText

-- | Required. The format of the audio byte stream.
data AudioConfigAudioEncoding
    = AudioEncodingUnspecified
      -- ^ @AUDIO_ENCODING_UNSPECIFIED@
      -- Not specified. Will return result google.rpc.Code.INVALID_ARGUMENT.
    | LINEAR16
      -- ^ @LINEAR16@
      -- Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio
      -- content returned as LINEAR16 also contains a WAV header.
    | MP3
      -- ^ @MP3@
      -- MP3 audio at 32kbps.
    | OggOpus
      -- ^ @OGG_OPUS@
      -- Opus encoded audio wrapped in an ogg container. The result will be a
      -- file which can be played natively on Android, and in browsers (at least
      -- Chrome and Firefox). The quality of the encoding is considerably higher
      -- than MP3 while using approximately the same bitrate.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AudioConfigAudioEncoding

instance FromHttpApiData AudioConfigAudioEncoding where
    parseQueryParam = \case
        "AUDIO_ENCODING_UNSPECIFIED" -> Right AudioEncodingUnspecified
        "LINEAR16" -> Right LINEAR16
        "MP3" -> Right MP3
        "OGG_OPUS" -> Right OggOpus
        x -> Left ("Unable to parse AudioConfigAudioEncoding from: " <> x)

instance ToHttpApiData AudioConfigAudioEncoding where
    toQueryParam = \case
        AudioEncodingUnspecified -> "AUDIO_ENCODING_UNSPECIFIED"
        LINEAR16 -> "LINEAR16"
        MP3 -> "MP3"
        OggOpus -> "OGG_OPUS"

instance FromJSON AudioConfigAudioEncoding where
    parseJSON = parseJSONText "AudioConfigAudioEncoding"

instance ToJSON AudioConfigAudioEncoding where
    toJSON = toJSONText
