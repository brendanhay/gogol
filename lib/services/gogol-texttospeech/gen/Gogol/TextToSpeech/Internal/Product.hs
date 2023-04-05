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
-- Module      : Gogol.TextToSpeech.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TextToSpeech.Internal.Product
  ( -- * AudioConfig
    AudioConfig (..),
    newAudioConfig,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CustomVoiceParams
    CustomVoiceParams (..),
    newCustomVoiceParams,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata (..),
    newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListVoicesResponse
    ListVoicesResponse (..),
    newListVoicesResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * SynthesisInput
    SynthesisInput (..),
    newSynthesisInput,

    -- * SynthesizeLongAudioMetadata
    SynthesizeLongAudioMetadata (..),
    newSynthesizeLongAudioMetadata,

    -- * SynthesizeLongAudioRequest
    SynthesizeLongAudioRequest (..),
    newSynthesizeLongAudioRequest,

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

import qualified Gogol.Prelude as Core
import Gogol.TextToSpeech.Internal.Sum

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
            Core.<*> (o Core..:? "effectsProfileId")
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

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Description of the custom voice to be synthesized.
--
-- /See:/ 'newCustomVoiceParams' smart constructor.
data CustomVoiceParams = CustomVoiceParams
  { -- | Required. The name of the AutoML model that synthesizes the custom voice.
    model :: (Core.Maybe Core.Text),
    -- | Optional. The usage of the synthesized audio to be reported.
    reportedUsage :: (Core.Maybe CustomVoiceParams_ReportedUsage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomVoiceParams' with the minimum fields required to make a request.
newCustomVoiceParams ::
  CustomVoiceParams
newCustomVoiceParams =
  CustomVoiceParams {model = Core.Nothing, reportedUsage = Core.Nothing}

instance Core.FromJSON CustomVoiceParams where
  parseJSON =
    Core.withObject
      "CustomVoiceParams"
      ( \o ->
          CustomVoiceParams
            Core.<$> (o Core..:? "model")
            Core.<*> (o Core..:? "reportedUsage")
      )

instance Core.ToJSON CustomVoiceParams where
  toJSON CustomVoiceParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("model" Core..=) Core.<$> model,
            ("reportedUsage" Core..=) Core.<$> reportedUsage
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Metadata for response returned by the @SynthesizeLongAudio@ method.
--
-- /See:/ 'newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata' smart constructor.
data GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata = GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
  { -- | The progress of the most recent processing update in percentage, ie. 70.0%.
    progressPercentage :: (Core.Maybe Core.Double),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata' with the minimum fields required to make a request.
newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata ::
  GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata =
  GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
    { progressPercentage = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata"
      ( \o ->
          GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
            Core.<$> (o Core..:? "progressPercentage")
              Core.<*> (o Core..:? "startTime")
      )

instance
  Core.ToJSON
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
  where
  toJSON
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("progressPercentage" Core..=)
                Core.<$> progressPercentage,
              ("startTime" Core..=) Core.<$> startTime
            ]
        )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
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
          ListVoicesResponse Core.<$> (o Core..:? "voices")
      )

instance Core.ToJSON ListVoicesResponse where
  toJSON ListVoicesResponse {..} =
    Core.object
      (Core.catMaybes [("voices" Core..=) Core.<$> voices])

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Contains text input to be synthesized. Either @text@ or @ssml@ must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 bytes.
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

-- | Metadata for response returned by the @SynthesizeLongAudio@ method.
--
-- /See:/ 'newSynthesizeLongAudioMetadata' smart constructor.
data SynthesizeLongAudioMetadata = SynthesizeLongAudioMetadata
  { -- | The progress of the most recent processing update in percentage, ie. 70.0%.
    progressPercentage :: (Core.Maybe Core.Double),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SynthesizeLongAudioMetadata' with the minimum fields required to make a request.
newSynthesizeLongAudioMetadata ::
  SynthesizeLongAudioMetadata
newSynthesizeLongAudioMetadata =
  SynthesizeLongAudioMetadata
    { progressPercentage = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON SynthesizeLongAudioMetadata where
  parseJSON =
    Core.withObject
      "SynthesizeLongAudioMetadata"
      ( \o ->
          SynthesizeLongAudioMetadata
            Core.<$> (o Core..:? "progressPercentage")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON SynthesizeLongAudioMetadata where
  toJSON SynthesizeLongAudioMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("progressPercentage" Core..=)
              Core.<$> progressPercentage,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The top-level message sent by the client for the @SynthesizeLongAudio@ method.
--
-- /See:/ 'newSynthesizeLongAudioRequest' smart constructor.
data SynthesizeLongAudioRequest = SynthesizeLongAudioRequest
  { -- | Required. The configuration of the synthesized audio.
    audioConfig :: (Core.Maybe AudioConfig),
    -- | Required. The Synthesizer requires either plain text or SSML as input.
    input :: (Core.Maybe SynthesisInput),
    -- | Specifies a Cloud Storage URI for the synthesis results. Must be specified in the format: @gs:\/\/bucket_name\/object_name@, and the bucket must already exist.
    outputGcsUri :: (Core.Maybe Core.Text),
    -- | The desired voice of the synthesized audio.
    voice :: (Core.Maybe VoiceSelectionParams)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SynthesizeLongAudioRequest' with the minimum fields required to make a request.
newSynthesizeLongAudioRequest ::
  SynthesizeLongAudioRequest
newSynthesizeLongAudioRequest =
  SynthesizeLongAudioRequest
    { audioConfig = Core.Nothing,
      input = Core.Nothing,
      outputGcsUri = Core.Nothing,
      voice = Core.Nothing
    }

instance Core.FromJSON SynthesizeLongAudioRequest where
  parseJSON =
    Core.withObject
      "SynthesizeLongAudioRequest"
      ( \o ->
          SynthesizeLongAudioRequest
            Core.<$> (o Core..:? "audioConfig")
            Core.<*> (o Core..:? "input")
            Core.<*> (o Core..:? "outputGcsUri")
            Core.<*> (o Core..:? "voice")
      )

instance Core.ToJSON SynthesizeLongAudioRequest where
  toJSON SynthesizeLongAudioRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioConfig" Core..=) Core.<$> audioConfig,
            ("input" Core..=) Core.<$> input,
            ("outputGcsUri" Core..=) Core.<$> outputGcsUri,
            ("voice" Core..=) Core.<$> voice
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
            Core.<$> (o Core..:? "languageCodes")
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
  { -- | The configuration for a custom voice. If [CustomVoiceParams.model] is set, the service will choose the custom voice matching the specified configuration.
    customVoice :: (Core.Maybe CustomVoiceParams),
    -- | Required. The language (and potentially also the region) of the voice expressed as a <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag, e.g. \"en-US\". This should not include a script tag (e.g. use \"cmn-cn\" rather than \"cmn-Hant-cn\"), because the script will be inferred from the input provided in the SynthesisInput. The TTS service will use this parameter to help choose an appropriate voice. Note that the TTS service may choose a voice with a slightly different language code than the one selected; it may substitute a different region (e.g. using en-US rather than en-CA if there isn\'t a Canadian voice available), or even a different language, e.g. using \"nb\" (Norwegian Bokmal) instead of \"no\" (Norwegian)\".
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
    { customVoice = Core.Nothing,
      languageCode = Core.Nothing,
      name = Core.Nothing,
      ssmlGender = Core.Nothing
    }

instance Core.FromJSON VoiceSelectionParams where
  parseJSON =
    Core.withObject
      "VoiceSelectionParams"
      ( \o ->
          VoiceSelectionParams
            Core.<$> (o Core..:? "customVoice")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ssmlGender")
      )

instance Core.ToJSON VoiceSelectionParams where
  toJSON VoiceSelectionParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("customVoice" Core..=) Core.<$> customVoice,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("name" Core..=) Core.<$> name,
            ("ssmlGender" Core..=) Core.<$> ssmlGender
          ]
      )
