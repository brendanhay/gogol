{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TextToSpeech.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TextToSpeech.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AudioConfig_AudioEncoding
    AudioConfig_AudioEncoding
      ( AudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
        AudioConfig_AudioEncoding_LINEAR16,
        AudioConfig_AudioEncoding_MP3,
        AudioConfig_AudioEncoding_OGGOPUS,
        AudioConfig_AudioEncoding_Mulaw,
        AudioConfig_AudioEncoding_Alaw,
        AudioConfig_AudioEncoding_Pcm,
        ..
      ),

    -- * CustomPronunciationParams_PhoneticEncoding
    CustomPronunciationParams_PhoneticEncoding
      ( CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGUNSPECIFIED,
        CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGIPA,
        CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGXSAMPA,
        ..
      ),

    -- * CustomVoiceParams_ReportedUsage
    CustomVoiceParams_ReportedUsage
      ( CustomVoiceParams_ReportedUsage_REPORTEDUSAGEUNSPECIFIED,
        CustomVoiceParams_ReportedUsage_Realtime,
        CustomVoiceParams_ReportedUsage_Offline,
        ..
      ),

    -- * Voice_SsmlGender
    Voice_SsmlGender
      ( Voice_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
        Voice_SsmlGender_Male,
        Voice_SsmlGender_Female,
        Voice_SsmlGender_Neutral,
        ..
      ),

    -- * VoiceSelectionParams_SsmlGender
    VoiceSelectionParams_SsmlGender
      ( VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
        VoiceSelectionParams_SsmlGender_Male,
        VoiceSelectionParams_SsmlGender_Female,
        VoiceSelectionParams_SsmlGender_Neutral,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Required. The format of the audio byte stream.
newtype AudioConfig_AudioEncoding = AudioConfig_AudioEncoding {fromAudioConfig_AudioEncoding :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified. Will return result google.rpc.Code.INVALID_ARGUMENT.
pattern AudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED = AudioConfig_AudioEncoding "AUDIO_ENCODING_UNSPECIFIED"

-- | Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio content returned as LINEAR16 also contains a WAV header.
pattern AudioConfig_AudioEncoding_LINEAR16 :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_LINEAR16 = AudioConfig_AudioEncoding "LINEAR16"

-- | MP3 audio at 32kbps.
pattern AudioConfig_AudioEncoding_MP3 :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_MP3 = AudioConfig_AudioEncoding "MP3"

-- | Opus encoded audio wrapped in an ogg container. The result is a file which can be played natively on Android, and in browsers (at least Chrome and Firefox). The quality of the encoding is considerably higher than MP3 while using approximately the same bitrate.
pattern AudioConfig_AudioEncoding_OGGOPUS :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_OGGOPUS = AudioConfig_AudioEncoding "OGG_OPUS"

-- | 8-bit samples that compand 14-bit audio samples using G.711 PCMU\/mu-law. Audio content returned as MULAW also contains a WAV header.
pattern AudioConfig_AudioEncoding_Mulaw :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_Mulaw = AudioConfig_AudioEncoding "MULAW"

-- | 8-bit samples that compand 14-bit audio samples using G.711 PCMU\/A-law. Audio content returned as ALAW also contains a WAV header.
pattern AudioConfig_AudioEncoding_Alaw :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_Alaw = AudioConfig_AudioEncoding "ALAW"

-- | Uncompressed 16-bit signed little-endian samples (Linear PCM). Note that as opposed to LINEAR16, audio won\'t be wrapped in a WAV (or any other) header.
pattern AudioConfig_AudioEncoding_Pcm :: AudioConfig_AudioEncoding
pattern AudioConfig_AudioEncoding_Pcm = AudioConfig_AudioEncoding "PCM"

{-# COMPLETE
  AudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
  AudioConfig_AudioEncoding_LINEAR16,
  AudioConfig_AudioEncoding_MP3,
  AudioConfig_AudioEncoding_OGGOPUS,
  AudioConfig_AudioEncoding_Mulaw,
  AudioConfig_AudioEncoding_Alaw,
  AudioConfig_AudioEncoding_Pcm,
  AudioConfig_AudioEncoding
  #-}

-- | The phonetic encoding of the phrase.
newtype CustomPronunciationParams_PhoneticEncoding = CustomPronunciationParams_PhoneticEncoding {fromCustomPronunciationParams_PhoneticEncoding :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified.
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGUNSPECIFIED :: CustomPronunciationParams_PhoneticEncoding
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGUNSPECIFIED = CustomPronunciationParams_PhoneticEncoding "PHONETIC_ENCODING_UNSPECIFIED"

-- | IPA, such as apple -> ˈæpəl. https:\/\/en.wikipedia.org\/wiki\/International/Phonetic/Alphabet
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGIPA :: CustomPronunciationParams_PhoneticEncoding
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGIPA = CustomPronunciationParams_PhoneticEncoding "PHONETIC_ENCODING_IPA"

-- | X-SAMPA, such as apple -> \"{p\@l\". https:\/\/en.wikipedia.org\/wiki\/X-SAMPA
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGXSAMPA :: CustomPronunciationParams_PhoneticEncoding
pattern CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGXSAMPA = CustomPronunciationParams_PhoneticEncoding "PHONETIC_ENCODING_X_SAMPA"

{-# COMPLETE
  CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGUNSPECIFIED,
  CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGIPA,
  CustomPronunciationParams_PhoneticEncoding_PHONETICENCODINGXSAMPA,
  CustomPronunciationParams_PhoneticEncoding
  #-}

-- | Optional. Deprecated. The usage of the synthesized audio to be reported.
newtype CustomVoiceParams_ReportedUsage = CustomVoiceParams_ReportedUsage {fromCustomVoiceParams_ReportedUsage :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Request with reported usage unspecified will be rejected.
pattern CustomVoiceParams_ReportedUsage_REPORTEDUSAGEUNSPECIFIED :: CustomVoiceParams_ReportedUsage
pattern CustomVoiceParams_ReportedUsage_REPORTEDUSAGEUNSPECIFIED = CustomVoiceParams_ReportedUsage "REPORTED_USAGE_UNSPECIFIED"

-- | For scenarios where the synthesized audio is not downloadable and can only be used once. For example, real-time request in IVR system.
pattern CustomVoiceParams_ReportedUsage_Realtime :: CustomVoiceParams_ReportedUsage
pattern CustomVoiceParams_ReportedUsage_Realtime = CustomVoiceParams_ReportedUsage "REALTIME"

-- | For scenarios where the synthesized audio is downloadable and can be reused. For example, the synthesized audio is downloaded, stored in customer service system and played repeatedly.
pattern CustomVoiceParams_ReportedUsage_Offline :: CustomVoiceParams_ReportedUsage
pattern CustomVoiceParams_ReportedUsage_Offline = CustomVoiceParams_ReportedUsage "OFFLINE"

{-# COMPLETE
  CustomVoiceParams_ReportedUsage_REPORTEDUSAGEUNSPECIFIED,
  CustomVoiceParams_ReportedUsage_Realtime,
  CustomVoiceParams_ReportedUsage_Offline,
  CustomVoiceParams_ReportedUsage
  #-}

-- | The gender of this voice.
newtype Voice_SsmlGender = Voice_SsmlGender {fromVoice_SsmlGender :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An unspecified gender. In VoiceSelectionParams, this means that the client doesn\'t care which gender the selected voice will have. In the Voice field of ListVoicesResponse, this may mean that the voice doesn\'t fit any of the other categories in this enum, or that the gender of the voice isn\'t known.
pattern Voice_SsmlGender_SSMLVOICEGENDERUNSPECIFIED :: Voice_SsmlGender
pattern Voice_SsmlGender_SSMLVOICEGENDERUNSPECIFIED = Voice_SsmlGender "SSML_VOICE_GENDER_UNSPECIFIED"

-- | A male voice.
pattern Voice_SsmlGender_Male :: Voice_SsmlGender
pattern Voice_SsmlGender_Male = Voice_SsmlGender "MALE"

-- | A female voice.
pattern Voice_SsmlGender_Female :: Voice_SsmlGender
pattern Voice_SsmlGender_Female = Voice_SsmlGender "FEMALE"

-- | A gender-neutral voice. This voice is not yet supported.
pattern Voice_SsmlGender_Neutral :: Voice_SsmlGender
pattern Voice_SsmlGender_Neutral = Voice_SsmlGender "NEUTRAL"

{-# COMPLETE
  Voice_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
  Voice_SsmlGender_Male,
  Voice_SsmlGender_Female,
  Voice_SsmlGender_Neutral,
  Voice_SsmlGender
  #-}

-- | The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement; if a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
newtype VoiceSelectionParams_SsmlGender = VoiceSelectionParams_SsmlGender {fromVoiceSelectionParams_SsmlGender :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An unspecified gender. In VoiceSelectionParams, this means that the client doesn\'t care which gender the selected voice will have. In the Voice field of ListVoicesResponse, this may mean that the voice doesn\'t fit any of the other categories in this enum, or that the gender of the voice isn\'t known.
pattern VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED :: VoiceSelectionParams_SsmlGender
pattern VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED = VoiceSelectionParams_SsmlGender "SSML_VOICE_GENDER_UNSPECIFIED"

-- | A male voice.
pattern VoiceSelectionParams_SsmlGender_Male :: VoiceSelectionParams_SsmlGender
pattern VoiceSelectionParams_SsmlGender_Male = VoiceSelectionParams_SsmlGender "MALE"

-- | A female voice.
pattern VoiceSelectionParams_SsmlGender_Female :: VoiceSelectionParams_SsmlGender
pattern VoiceSelectionParams_SsmlGender_Female = VoiceSelectionParams_SsmlGender "FEMALE"

-- | A gender-neutral voice. This voice is not yet supported.
pattern VoiceSelectionParams_SsmlGender_Neutral :: VoiceSelectionParams_SsmlGender
pattern VoiceSelectionParams_SsmlGender_Neutral = VoiceSelectionParams_SsmlGender "NEUTRAL"

{-# COMPLETE
  VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
  VoiceSelectionParams_SsmlGender_Male,
  VoiceSelectionParams_SsmlGender_Female,
  VoiceSelectionParams_SsmlGender_Neutral,
  VoiceSelectionParams_SsmlGender
  #-}
