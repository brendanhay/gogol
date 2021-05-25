{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Speech.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Speech.Types.Product where

import Network.Google.Prelude
import Network.Google.Speech.Types.Sum

-- | Describes the progress of a long-running \`LongRunningRecognize\` call.
-- It is included in the \`metadata\` field of the \`Operation\` returned
-- by the \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'longRunningRecognizeMetadata' smart constructor.
data LongRunningRecognizeMetadata =
  LongRunningRecognizeMetadata'
    { _lrrmStartTime :: !(Maybe DateTime')
    , _lrrmURI :: !(Maybe Text)
    , _lrrmProgressPercent :: !(Maybe (Textual Int32))
    , _lrrmLastUpdateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LongRunningRecognizeMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrmStartTime'
--
-- * 'lrrmURI'
--
-- * 'lrrmProgressPercent'
--
-- * 'lrrmLastUpdateTime'
longRunningRecognizeMetadata
    :: LongRunningRecognizeMetadata
longRunningRecognizeMetadata =
  LongRunningRecognizeMetadata'
    { _lrrmStartTime = Nothing
    , _lrrmURI = Nothing
    , _lrrmProgressPercent = Nothing
    , _lrrmLastUpdateTime = Nothing
    }


-- | Output only. Time when the request was received.
lrrmStartTime :: Lens' LongRunningRecognizeMetadata (Maybe UTCTime)
lrrmStartTime
  = lens _lrrmStartTime
      (\ s a -> s{_lrrmStartTime = a})
      . mapping _DateTime

-- | The URI of the audio file being transcribed. Empty if the audio was sent
-- as byte content.
lrrmURI :: Lens' LongRunningRecognizeMetadata (Maybe Text)
lrrmURI = lens _lrrmURI (\ s a -> s{_lrrmURI = a})

-- | Output only. Approximate percentage of audio processed thus far.
-- Guaranteed to be 100 when the audio is fully processed and the results
-- are available.
lrrmProgressPercent :: Lens' LongRunningRecognizeMetadata (Maybe Int32)
lrrmProgressPercent
  = lens _lrrmProgressPercent
      (\ s a -> s{_lrrmProgressPercent = a})
      . mapping _Coerce

-- | Output only. Time of the most recent processing update.
lrrmLastUpdateTime :: Lens' LongRunningRecognizeMetadata (Maybe UTCTime)
lrrmLastUpdateTime
  = lens _lrrmLastUpdateTime
      (\ s a -> s{_lrrmLastUpdateTime = a})
      . mapping _DateTime

instance FromJSON LongRunningRecognizeMetadata where
        parseJSON
          = withObject "LongRunningRecognizeMetadata"
              (\ o ->
                 LongRunningRecognizeMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "uri") <*>
                     (o .:? "progressPercent")
                     <*> (o .:? "lastUpdateTime"))

instance ToJSON LongRunningRecognizeMetadata where
        toJSON LongRunningRecognizeMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _lrrmStartTime,
                  ("uri" .=) <$> _lrrmURI,
                  ("progressPercent" .=) <$> _lrrmProgressPercent,
                  ("lastUpdateTime" .=) <$> _lrrmLastUpdateTime])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'speechRecognitionAlternative' smart constructor.
data SpeechRecognitionAlternative =
  SpeechRecognitionAlternative'
    { _sraConfidence :: !(Maybe (Textual Double))
    , _sraWords :: !(Maybe [WordInfo])
    , _sraTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sraConfidence'
--
-- * 'sraWords'
--
-- * 'sraTranscript'
speechRecognitionAlternative
    :: SpeechRecognitionAlternative
speechRecognitionAlternative =
  SpeechRecognitionAlternative'
    {_sraConfidence = Nothing, _sraWords = Nothing, _sraTranscript = Nothing}


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative of a
-- non-streaming result or, of a streaming result where \`is_final=true\`.
-- This field is not guaranteed to be accurate and users should not rely on
-- it to be always provided. The default of 0.0 is a sentinel value
-- indicating \`confidence\` was not set.
sraConfidence :: Lens' SpeechRecognitionAlternative (Maybe Double)
sraConfidence
  = lens _sraConfidence
      (\ s a -> s{_sraConfidence = a})
      . mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is true, you will see
-- all the words from the beginning of the audio.
sraWords :: Lens' SpeechRecognitionAlternative [WordInfo]
sraWords
  = lens _sraWords (\ s a -> s{_sraWords = a}) .
      _Default
      . _Coerce

-- | Output only. Transcript text representing the words that the user spoke.
sraTranscript :: Lens' SpeechRecognitionAlternative (Maybe Text)
sraTranscript
  = lens _sraTranscript
      (\ s a -> s{_sraTranscript = a})

instance FromJSON SpeechRecognitionAlternative where
        parseJSON
          = withObject "SpeechRecognitionAlternative"
              (\ o ->
                 SpeechRecognitionAlternative' <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON SpeechRecognitionAlternative where
        toJSON SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _sraConfidence,
                  ("words" .=) <$> _sraWords,
                  ("transcript" .=) <$> _sraTranscript])

-- | Word-specific information for recognized words.
--
-- /See:/ 'wordInfo' smart constructor.
data WordInfo =
  WordInfo'
    { _wiStartOffSet :: !(Maybe GDuration)
    , _wiConfidence :: !(Maybe (Textual Double))
    , _wiEndOffSet :: !(Maybe GDuration)
    , _wiWord :: !(Maybe Text)
    , _wiSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiStartOffSet'
--
-- * 'wiConfidence'
--
-- * 'wiEndOffSet'
--
-- * 'wiWord'
--
-- * 'wiSpeakerTag'
wordInfo
    :: WordInfo
wordInfo =
  WordInfo'
    { _wiStartOffSet = Nothing
    , _wiConfidence = Nothing
    , _wiEndOffSet = Nothing
    , _wiWord = Nothing
    , _wiSpeakerTag = Nothing
    }


-- | Output only. Time offset relative to the beginning of the audio, and
-- corresponding to the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
wiStartOffSet :: Lens' WordInfo (Maybe Scientific)
wiStartOffSet
  = lens _wiStartOffSet
      (\ s a -> s{_wiStartOffSet = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative of a
-- non-streaming result or, of a streaming result where \`is_final=true\`.
-- This field is not guaranteed to be accurate and users should not rely on
-- it to be always provided. The default of 0.0 is a sentinel value
-- indicating \`confidence\` was not set.
wiConfidence :: Lens' WordInfo (Maybe Double)
wiConfidence
  = lens _wiConfidence (\ s a -> s{_wiConfidence = a})
      . mapping _Coerce

-- | Output only. Time offset relative to the beginning of the audio, and
-- corresponding to the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
wiEndOffSet :: Lens' WordInfo (Maybe Scientific)
wiEndOffSet
  = lens _wiEndOffSet (\ s a -> s{_wiEndOffSet = a}) .
      mapping _GDuration

-- | Output only. The word corresponding to this set of information.
wiWord :: Lens' WordInfo (Maybe Text)
wiWord = lens _wiWord (\ s a -> s{_wiWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from \`1\` to
-- \`diarization_config.max_speaker_count\` . \`speaker_tag\` is set if
-- \`diarization_config.enable_speaker_diarization\` = \`true\` and only in
-- the top alternative.
wiSpeakerTag :: Lens' WordInfo (Maybe Int32)
wiSpeakerTag
  = lens _wiSpeakerTag (\ s a -> s{_wiSpeakerTag = a})
      . mapping _Coerce

instance FromJSON WordInfo where
        parseJSON
          = withObject "WordInfo"
              (\ o ->
                 WordInfo' <$>
                   (o .:? "startOffset") <*> (o .:? "confidence") <*>
                     (o .:? "endOffset")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON WordInfo where
        toJSON WordInfo'{..}
          = object
              (catMaybes
                 [("startOffset" .=) <$> _wiStartOffSet,
                  ("confidence" .=) <$> _wiConfidence,
                  ("endOffset" .=) <$> _wiEndOffSet,
                  ("word" .=) <$> _wiWord,
                  ("speakerTag" .=) <$> _wiSpeakerTag])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'speechRecognitionResult' smart constructor.
data SpeechRecognitionResult =
  SpeechRecognitionResult'
    { _srrAlternatives :: !(Maybe [SpeechRecognitionAlternative])
    , _srrLanguageCode :: !(Maybe Text)
    , _srrChannelTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpeechRecognitionResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrAlternatives'
--
-- * 'srrLanguageCode'
--
-- * 'srrChannelTag'
speechRecognitionResult
    :: SpeechRecognitionResult
speechRecognitionResult =
  SpeechRecognitionResult'
    { _srrAlternatives = Nothing
    , _srrLanguageCode = Nothing
    , _srrChannelTag = Nothing
    }


-- | Output only. May contain one or more recognition hypotheses (up to the
-- maximum specified in \`max_alternatives\`). These alternatives are
-- ordered in terms of accuracy, with the top (first) alternative being the
-- most probable, as ranked by the recognizer.
srrAlternatives :: Lens' SpeechRecognitionResult [SpeechRecognitionAlternative]
srrAlternatives
  = lens _srrAlternatives
      (\ s a -> s{_srrAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
srrLanguageCode :: Lens' SpeechRecognitionResult (Maybe Text)
srrLanguageCode
  = lens _srrLanguageCode
      (\ s a -> s{_srrLanguageCode = a})

-- | Output only. For multi-channel audio, this is the channel number
-- corresponding to the recognized result for the audio from that channel.
-- For \`audio_channel_count\` = N, its output values can range from \`1\`
-- to \`N\`.
srrChannelTag :: Lens' SpeechRecognitionResult (Maybe Int32)
srrChannelTag
  = lens _srrChannelTag
      (\ s a -> s{_srrChannelTag = a})
      . mapping _Coerce

instance FromJSON SpeechRecognitionResult where
        parseJSON
          = withObject "SpeechRecognitionResult"
              (\ o ->
                 SpeechRecognitionResult' <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode")
                     <*> (o .:? "channelTag"))

instance ToJSON SpeechRecognitionResult where
        toJSON SpeechRecognitionResult'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _srrAlternatives,
                  ("languageCode" .=) <$> _srrLanguageCode,
                  ("channelTag" .=) <$> _srrChannelTag])

-- | The only message returned to the client by the \`LongRunningRecognize\`
-- method. It contains the result as zero or more sequential
-- SpeechRecognitionResult messages. It is included in the
-- \`result.response\` field of the \`Operation\` returned by the
-- \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'longRunningRecognizeResponse' smart constructor.
newtype LongRunningRecognizeResponse =
  LongRunningRecognizeResponse'
    { _lrrrResults :: Maybe [SpeechRecognitionResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LongRunningRecognizeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrResults'
longRunningRecognizeResponse
    :: LongRunningRecognizeResponse
longRunningRecognizeResponse =
  LongRunningRecognizeResponse' {_lrrrResults = Nothing}


-- | Output only. Sequential list of transcription results corresponding to
-- sequential portions of audio.
lrrrResults :: Lens' LongRunningRecognizeResponse [SpeechRecognitionResult]
lrrrResults
  = lens _lrrrResults (\ s a -> s{_lrrrResults = a}) .
      _Default
      . _Coerce

instance FromJSON LongRunningRecognizeResponse where
        parseJSON
          = withObject "LongRunningRecognizeResponse"
              (\ o ->
                 LongRunningRecognizeResponse' <$>
                   (o .:? "results" .!= mempty))

instance ToJSON LongRunningRecognizeResponse where
        toJSON LongRunningRecognizeResponse'{..}
          = object
              (catMaybes [("results" .=) <$> _lrrrResults])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional
