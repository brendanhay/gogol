{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.TextToSpeech.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.TextToSpeech.Internal.Product
  ( -- * AudioConfig
    AudioConfig (..),
    newAudioConfig,

    -- * ListVoicesResponse
    ListVoicesResponse (..),
    newListVoicesResponse,

    -- * SynthesisInput
    SynthesisInput (..),
    newSynthesisInput,

    -- * SynthesizeSpeechRequest
    SynthesizeSpeechRequest (..),
    newSynthesizeSpeechRequest,

    -- * SynthesizeSpeechResponse
    SynthesizeSpeechResponse (..),
    newSynthesizeSpeechResponse,

    -- * Voice
    Voice (..),
    newVoice,

    -- * VoiceSelectionParams
    VoiceSelectionParams (..),
    newVoiceSelectionParams,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TextToSpeech.Internal.Sum

-- | Description of audio data to be synthesized.
--
-- /See:/ 'newAudioConfig' smart constructor.
data AudioConfig = AudioConfig
  { -- | Required. The format of the audio byte stream.
    audioEncoding :: (Core.Maybe AudioConfig_AudioEncoding),
    -- | Optional. Input only. An identifier which selects \'audio effects\' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given. See <https://cloud.google.com/text-to-speech/docs/audio-profiles audio profiles> for current supported profile ids.
    effectsProfileId :: (Core.Maybe [Core.Text]),
    -- | Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
    pitch :: (Core.Maybe Core.Double),
    -- | Optional. The synthesis sample rate (in hertz) for this audio. When this is specified in SynthesizeSpeechRequest, if this is different from the voice\'s natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality), unless the specified sample rate is not supported for the encoding chosen, in which case it will fail the request and return google.rpc.Code.INVALID_ARGUMENT.
    sampleRateHertz :: (Core.Maybe Core.Int32),
    -- | Optional. Input only. Speaking rate\/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values \< 0.25 or > 4.0 will return an error.
    speakingRate :: (Core.Maybe Core.Double),
    -- | Optional. Input only. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. Strongly recommend not to exceed +10 (dB) as there\'s usually no effective increase in loudness for any value greater than that.
    volumeGainDb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AudioConfig' with the minimum fields required to make a request.
newAudioConfig ::
  AudioConfig
newAudioConfig =
  AudioConfig
    { audioEncoding = Core.Nothing,
      effectsProfileId = Core.Nothing,
      pitch = Core.Nothing,
      sampleRateHertz = Core.Nothing,
      speakingRate = Core.Nothing,
      volumeGainDb = Core.Nothing
    }

instance Core.FromJSON AudioConfig where
  parseJSON =
    Core.withObject
      "AudioConfig"
      ( \o ->
          AudioConfig
            Core.<$> (o Core..:? "audioEncoding")
            Core.<*> (o Core..:? "effectsProfileId" Core..!= Core.mempty)
            Core.<*> (o Core..:? "pitch")
            Core.<*> (o Core..:? "sampleRateHertz")
            Core.<*> (o Core..:? "speakingRate")
            Core.<*> (o Core..:? "volumeGainDb")
      )

instance Core.ToJSON AudioConfig where
  toJSON AudioConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioEncoding" Core..=) Core.<$> audioEncoding,
            ("effectsProfileId" Core..=)
              Core.<$> effectsProfileId,
            ("pitch" Core..=) Core.<$> pitch,
            ("sampleRateHertz" Core..=) Core.<$> sampleRateHertz,
            ("speakingRate" Core..=) Core.<$> speakingRate,
            ("volumeGainDb" Core..=) Core.<$> volumeGainDb
          ]
      )

-- | The message returned to the client by the @ListVoices@ method.
--
-- /See:/ 'newListVoicesResponse' smart constructor.
newtype ListVoicesResponse = ListVoicesResponse
  { -- | The list of voices.
    voices :: (Core.Maybe [Voice])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListVoicesResponse' with the minimum fields required to make a request.
newListVoicesResponse ::
  ListVoicesResponse
newListVoicesResponse = ListVoicesResponse {voices = Core.Nothing}

instance Core.FromJSON ListVoicesResponse where
  parseJSON =
    Core.withObject
      "ListVoicesResponse"
      ( \o ->
          ListVoicesResponse
            Core.<$> (o Core..:? "voices" Core..!= Core.mempty)
      )

instance Core.ToJSON ListVoicesResponse where
  toJSON ListVoicesResponse {..} =
    Core.object
      (Core.catMaybes [("voices" Core..=) Core.<$> voices])

-- | Contains text input to be synthesized. Either @text@ or @ssml@ must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 characters.
--
-- /See:/ 'newSynthesisInput' smart constructor.
data SynthesisInput = SynthesisInput
  { -- | The SSML document to be synthesized. The SSML document must be valid and well-formed. Otherwise the RPC will fail and return google.rpc.Code.INVALID_ARGUMENT. For more information, see <https://cloud.google.com/text-to-speech/docs/ssml SSML>.
    ssml :: (Core.Maybe Core.Text),
    -- | The raw text to be synthesized.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SynthesisInput' with the minimum fields required to make a request.
newSynthesisInput ::
  SynthesisInput
newSynthesisInput = SynthesisInput {ssml = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON SynthesisInput where
  parseJSON =
    Core.withObject
      "SynthesisInput"
      ( \o ->
          SynthesisInput
            Core.<$> (o Core..:? "ssml") Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON SynthesisInput where
  toJSON SynthesisInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("ssml" Core..=) Core.<$> ssml,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | The top-level message sent by the client for the @SynthesizeSpeech@ method.
--
-- /See:/ 'newSynthesizeSpeechRequest' smart constructor.
data SynthesizeSpeechRequest = SynthesizeSpeechRequest
  { -- | Required. The configuration of the synthesized audio.
    audioConfig :: (Core.Maybe AudioConfig),
    -- | Required. The Synthesizer requires either plain text or SSML as input.
    input :: (Core.Maybe SynthesisInput),
    -- | Required. The desired voice of the synthesized audio.
    voice :: (Core.Maybe VoiceSelectionParams)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SynthesizeSpeechRequest' with the minimum fields required to make a request.
newSynthesizeSpeechRequest ::
  SynthesizeSpeechRequest
newSynthesizeSpeechRequest =
  SynthesizeSpeechRequest
    { audioConfig = Core.Nothing,
      input = Core.Nothing,
      voice = Core.Nothing
    }

instance Core.FromJSON SynthesizeSpeechRequest where
  parseJSON =
    Core.withObject
      "SynthesizeSpeechRequest"
      ( \o ->
          SynthesizeSpeechRequest
            Core.<$> (o Core..:? "audioConfig")
            Core.<*> (o Core..:? "input")
            Core.<*> (o Core..:? "voice")
      )

instance Core.ToJSON SynthesizeSpeechRequest where
  toJSON SynthesizeSpeechRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioConfig" Core..=) Core.<$> audioConfig,
            ("input" Core..=) Core.<$> input,
            ("voice" Core..=) Core.<$> voice
          ]
      )

-- | The message returned to the client by the @SynthesizeSpeech@ method.
--
-- /See:/ 'newSynthesizeSpeechResponse' smart constructor.
newtype SynthesizeSpeechResponse = SynthesizeSpeechResponse
  { -- | The audio data bytes encoded as specified in the request, including the header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS). For LINEAR16 audio, we include the WAV header. Note: as with all bytes fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
    audioContent :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SynthesizeSpeechResponse' with the minimum fields required to make a request.
newSynthesizeSpeechResponse ::
  SynthesizeSpeechResponse
newSynthesizeSpeechResponse =
  SynthesizeSpeechResponse {audioContent = Core.Nothing}

instance Core.FromJSON SynthesizeSpeechResponse where
  parseJSON =
    Core.withObject
      "SynthesizeSpeechResponse"
      ( \o ->
          SynthesizeSpeechResponse
            Core.<$> (o Core..:? "audioContent")
      )

instance Core.ToJSON SynthesizeSpeechResponse where
  toJSON SynthesizeSpeechResponse {..} =
    Core.object
      ( Core.catMaybes
          [("audioContent" Core..=) Core.<$> audioContent]
      )

-- | Description of a voice supported by the TTS service.
--
-- /See:/ 'newVoice' smart constructor.
data Voice = Voice
  { -- | The languages that this voice supports, expressed as <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tags (e.g. \"en-US\", \"es-419\", \"cmn-tw\").
    languageCodes :: (Core.Maybe [Core.Text]),
    -- | The name of this voice. Each distinct voice has a unique name.
    name :: (Core.Maybe Core.Text),
    -- | The natural sample rate (in hertz) for this voice.
    naturalSampleRateHertz :: (Core.Maybe Core.Int32),
    -- | The gender of this voice.
    ssmlGender :: (Core.Maybe Voice_SsmlGender)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Voice' with the minimum fields required to make a request.
newVoice ::
  Voice
newVoice =
  Voice
    { languageCodes = Core.Nothing,
      name = Core.Nothing,
      naturalSampleRateHertz = Core.Nothing,
      ssmlGender = Core.Nothing
    }

instance Core.FromJSON Voice where
  parseJSON =
    Core.withObject
      "Voice"
      ( \o ->
          Voice
            Core.<$> (o Core..:? "languageCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "naturalSampleRateHertz")
            Core.<*> (o Core..:? "ssmlGender")
      )

instance Core.ToJSON Voice where
  toJSON Voice {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCodes" Core..=) Core.<$> languageCodes,
            ("name" Core..=) Core.<$> name,
            ("naturalSampleRateHertz" Core..=)
              Core.<$> naturalSampleRateHertz,
            ("ssmlGender" Core..=) Core.<$> ssmlGender
          ]
      )

-- | Description of which voice to use for a synthesis request.
--
-- /See:/ 'newVoiceSelectionParams' smart constructor.
data VoiceSelectionParams = VoiceSelectionParams
  { -- | Required. The language (and potentially also the region) of the voice expressed as a <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag, e.g. \"en-US\". This should not include a script tag (e.g. use \"cmn-cn\" rather than \"cmn-Hant-cn\"), because the script will be inferred from the input provided in the SynthesisInput. The TTS service will use this parameter to help choose an appropriate voice. Note that the TTS service may choose a voice with a slightly different language code than the one selected; it may substitute a different region (e.g. using en-US rather than en-CA if there isn\'t a Canadian voice available), or even a different language, e.g. using \"nb\" (Norwegian Bokmal) instead of \"no\" (Norwegian)\".
    languageCode :: (Core.Maybe Core.Text),
    -- | The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and gender.
    name :: (Core.Maybe Core.Text),
    -- | The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement; if a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
    ssmlGender :: (Core.Maybe VoiceSelectionParams_SsmlGender)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoiceSelectionParams' with the minimum fields required to make a request.
newVoiceSelectionParams ::
  VoiceSelectionParams
newVoiceSelectionParams =
  VoiceSelectionParams
    { languageCode = Core.Nothing,
      name = Core.Nothing,
      ssmlGender = Core.Nothing
    }

instance Core.FromJSON VoiceSelectionParams where
  parseJSON =
    Core.withObject
      "VoiceSelectionParams"
      ( \o ->
          VoiceSelectionParams
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ssmlGender")
      )

instance Core.ToJSON VoiceSelectionParams where
  toJSON VoiceSelectionParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("name" Core..=) Core.<$> name,
            ("ssmlGender" Core..=) Core.<$> ssmlGender
          ]
      )
