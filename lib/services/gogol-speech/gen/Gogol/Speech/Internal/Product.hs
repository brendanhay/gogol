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
-- Module      : Gogol.Speech.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Speech.Internal.Product
  ( -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * LongRunningRecognizeMetadata
    LongRunningRecognizeMetadata (..),
    newLongRunningRecognizeMetadata,

    -- * LongRunningRecognizeResponse
    LongRunningRecognizeResponse (..),
    newLongRunningRecognizeResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * SpeechRecognitionAlternative
    SpeechRecognitionAlternative (..),
    newSpeechRecognitionAlternative,

    -- * SpeechRecognitionResult
    SpeechRecognitionResult (..),
    newSpeechRecognitionResult,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * WordInfo
    WordInfo (..),
    newWordInfo,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Speech.Internal.Sum

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

-- | Describes the progress of a long-running @LongRunningRecognize@ call. It is included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newLongRunningRecognizeMetadata' smart constructor.
data LongRunningRecognizeMetadata = LongRunningRecognizeMetadata
  { -- | Output only. Time of the most recent processing update.
    lastUpdateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Approximate percentage of audio processed thus far. Guaranteed to be 100 when the audio is fully processed and the results are available.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Output only. Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The URI of the audio file being transcribed. Empty if the audio was sent as byte content.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LongRunningRecognizeMetadata' with the minimum fields required to make a request.
newLongRunningRecognizeMetadata ::
  LongRunningRecognizeMetadata
newLongRunningRecognizeMetadata =
  LongRunningRecognizeMetadata
    { lastUpdateTime = Core.Nothing,
      progressPercent = Core.Nothing,
      startTime = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON LongRunningRecognizeMetadata where
  parseJSON =
    Core.withObject
      "LongRunningRecognizeMetadata"
      ( \o ->
          LongRunningRecognizeMetadata
            Core.<$> (o Core..:? "lastUpdateTime")
            Core.<*> (o Core..:? "progressPercent")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON LongRunningRecognizeMetadata where
  toJSON LongRunningRecognizeMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastUpdateTime" Core..=) Core.<$> lastUpdateTime,
            ("progressPercent" Core..=) Core.<$> progressPercent,
            ("startTime" Core..=) Core.<$> startTime,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | The only message returned to the client by the @LongRunningRecognize@ method. It contains the result as zero or more sequential SpeechRecognitionResult messages. It is included in the @result.response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newLongRunningRecognizeResponse' smart constructor.
newtype LongRunningRecognizeResponse = LongRunningRecognizeResponse
  { -- | Output only. Sequential list of transcription results corresponding to sequential portions of audio.
    results :: (Core.Maybe [SpeechRecognitionResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LongRunningRecognizeResponse' with the minimum fields required to make a request.
newLongRunningRecognizeResponse ::
  LongRunningRecognizeResponse
newLongRunningRecognizeResponse =
  LongRunningRecognizeResponse {results = Core.Nothing}

instance Core.FromJSON LongRunningRecognizeResponse where
  parseJSON =
    Core.withObject
      "LongRunningRecognizeResponse"
      ( \o ->
          LongRunningRecognizeResponse Core.<$> (o Core..:? "results")
      )

instance Core.ToJSON LongRunningRecognizeResponse where
  toJSON LongRunningRecognizeResponse {..} =
    Core.object
      (Core.catMaybes [("results" Core..=) Core.<$> results])

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
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

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
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newSpeechRecognitionAlternative' smart constructor.
data SpeechRecognitionAlternative = SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where @is_final=true@. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Output only. Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpeechRecognitionAlternative' with the minimum fields required to make a request.
newSpeechRecognitionAlternative ::
  SpeechRecognitionAlternative
newSpeechRecognitionAlternative =
  SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON SpeechRecognitionAlternative where
  parseJSON =
    Core.withObject
      "SpeechRecognitionAlternative"
      ( \o ->
          SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "transcript")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON SpeechRecognitionAlternative where
  toJSON SpeechRecognitionAlternative {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("transcript" Core..=) Core.<$> transcript,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newSpeechRecognitionResult' smart constructor.
data SpeechRecognitionResult = SpeechRecognitionResult
  { -- | Output only. May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives :: (Core.Maybe [SpeechRecognitionAlternative]),
    -- | Output only. For multi-channel audio, this is the channel number corresponding to the recognized result for the audio from that channel. For @audio_channel_count@ = N, its output values can range from @1@ to @N@.
    channelTag :: (Core.Maybe Core.Int32),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpeechRecognitionResult' with the minimum fields required to make a request.
newSpeechRecognitionResult ::
  SpeechRecognitionResult
newSpeechRecognitionResult =
  SpeechRecognitionResult
    { alternatives = Core.Nothing,
      channelTag = Core.Nothing,
      languageCode = Core.Nothing
    }

instance Core.FromJSON SpeechRecognitionResult where
  parseJSON =
    Core.withObject
      "SpeechRecognitionResult"
      ( \o ->
          SpeechRecognitionResult
            Core.<$> (o Core..:? "alternatives")
            Core.<*> (o Core..:? "channelTag")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON SpeechRecognitionResult where
  toJSON SpeechRecognitionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternatives" Core..=) Core.<$> alternatives,
            ("channelTag" Core..=) Core.<$> channelTag,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

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
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

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
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Word-specific information for recognized words.
--
-- /See:/ 'newWordInfo' smart constructor.
data WordInfo = WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where @is_final=true@. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Output only. Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endOffset :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from @1@ to @diarization_config.max_speaker_count@ . @speaker_tag@ is set if @diarization_config.enable_speaker_diarization@ = @true@ and only in the top alternative.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Output only. Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startOffset :: (Core.Maybe Core.Duration),
    -- | Output only. The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WordInfo' with the minimum fields required to make a request.
newWordInfo ::
  WordInfo
newWordInfo =
  WordInfo
    { confidence = Core.Nothing,
      endOffset = Core.Nothing,
      speakerTag = Core.Nothing,
      startOffset = Core.Nothing,
      word = Core.Nothing
    }

instance Core.FromJSON WordInfo where
  parseJSON =
    Core.withObject
      "WordInfo"
      ( \o ->
          WordInfo
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "endOffset")
            Core.<*> (o Core..:? "speakerTag")
            Core.<*> (o Core..:? "startOffset")
            Core.<*> (o Core..:? "word")
      )

instance Core.ToJSON WordInfo where
  toJSON WordInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("endOffset" Core..=) Core.<$> endOffset,
            ("speakerTag" Core..=) Core.<$> speakerTag,
            ("startOffset" Core..=) Core.<$> startOffset,
            ("word" Core..=) Core.<$> word
          ]
      )
