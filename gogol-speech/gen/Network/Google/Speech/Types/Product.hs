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

import           Network.Google.Prelude
import           Network.Google.Speech.Types.Sum

-- | Describes the progress of a long-running \`LongRunningRecognize\` call.
-- It is included in the \`metadata\` field of the \`Operation\` returned
-- by the \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'longRunningRecognizeMetadata' smart constructor.
data LongRunningRecognizeMetadata =
  LongRunningRecognizeMetadata'
    { _lrrmStartTime       :: !(Maybe DateTime')
    , _lrrmProgressPercent :: !(Maybe (Textual Int32))
    , _lrrmLastUpdateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LongRunningRecognizeMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrmStartTime'
--
-- * 'lrrmProgressPercent'
--
-- * 'lrrmLastUpdateTime'
longRunningRecognizeMetadata
    :: LongRunningRecognizeMetadata
longRunningRecognizeMetadata =
  LongRunningRecognizeMetadata'
    { _lrrmStartTime = Nothing
    , _lrrmProgressPercent = Nothing
    , _lrrmLastUpdateTime = Nothing
    }


-- | Time when the request was received.
lrrmStartTime :: Lens' LongRunningRecognizeMetadata (Maybe UTCTime)
lrrmStartTime
  = lens _lrrmStartTime
      (\ s a -> s{_lrrmStartTime = a})
      . mapping _DateTime

-- | Approximate percentage of audio processed thus far. Guaranteed to be 100
-- when the audio is fully processed and the results are available.
lrrmProgressPercent :: Lens' LongRunningRecognizeMetadata (Maybe Int32)
lrrmProgressPercent
  = lens _lrrmProgressPercent
      (\ s a -> s{_lrrmProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent processing update.
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
                   (o .:? "startTime") <*> (o .:? "progressPercent") <*>
                     (o .:? "lastUpdateTime"))

instance ToJSON LongRunningRecognizeMetadata where
        toJSON LongRunningRecognizeMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _lrrmStartTime,
                  ("progressPercent" .=) <$> _lrrmProgressPercent,
                  ("lastUpdateTime" .=) <$> _lrrmLastUpdateTime])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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

-- | Provides \"hints\" to the speech recognizer to favor specific words and
-- phrases in the results.
--
-- /See:/ 'speechContext' smart constructor.
newtype SpeechContext =
  SpeechContext'
    { _scPhrases :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpeechContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scPhrases'
speechContext
    :: SpeechContext
speechContext = SpeechContext' {_scPhrases = Nothing}


-- | *Optional* A list of strings containing words and phrases \"hints\" so
-- that the speech recognition is more likely to recognize them. This can
-- be used to improve the accuracy for specific words and phrases, for
-- example, if specific commands are typically spoken by the user. This can
-- also be used to add additional words to the vocabulary of the
-- recognizer. See [usage limits](\/speech-to-text\/quotas#content).
scPhrases :: Lens' SpeechContext [Text]
scPhrases
  = lens _scPhrases (\ s a -> s{_scPhrases = a}) .
      _Default
      . _Coerce

instance FromJSON SpeechContext where
        parseJSON
          = withObject "SpeechContext"
              (\ o ->
                 SpeechContext' <$> (o .:? "phrases" .!= mempty))

instance ToJSON SpeechContext where
        toJSON SpeechContext'{..}
          = object (catMaybes [("phrases" .=) <$> _scPhrases])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
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

-- | Description of audio data to be recognized.
--
-- /See:/ 'recognitionMetadata' smart constructor.
data RecognitionMetadata =
  RecognitionMetadata'
    { _rmAudioTopic               :: !(Maybe Text)
    , _rmInteractionType          :: !(Maybe RecognitionMetadataInteractionType)
    , _rmOriginalMediaType        :: !(Maybe RecognitionMetadataOriginalMediaType)
    , _rmOriginalMimeType         :: !(Maybe Text)
    , _rmIndustryNaicsCodeOfAudio :: !(Maybe (Textual Word32))
    , _rmObfuscatedId             :: !(Maybe (Textual Int64))
    , _rmRecordingDeviceName      :: !(Maybe Text)
    , _rmRecordingDeviceType      :: !(Maybe RecognitionMetadataRecordingDeviceType)
    , _rmMicrophoneDistance       :: !(Maybe RecognitionMetadataMicrophoneDistance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecognitionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmAudioTopic'
--
-- * 'rmInteractionType'
--
-- * 'rmOriginalMediaType'
--
-- * 'rmOriginalMimeType'
--
-- * 'rmIndustryNaicsCodeOfAudio'
--
-- * 'rmObfuscatedId'
--
-- * 'rmRecordingDeviceName'
--
-- * 'rmRecordingDeviceType'
--
-- * 'rmMicrophoneDistance'
recognitionMetadata
    :: RecognitionMetadata
recognitionMetadata =
  RecognitionMetadata'
    { _rmAudioTopic = Nothing
    , _rmInteractionType = Nothing
    , _rmOriginalMediaType = Nothing
    , _rmOriginalMimeType = Nothing
    , _rmIndustryNaicsCodeOfAudio = Nothing
    , _rmObfuscatedId = Nothing
    , _rmRecordingDeviceName = Nothing
    , _rmRecordingDeviceType = Nothing
    , _rmMicrophoneDistance = Nothing
    }


-- | Description of the content. Eg. \"Recordings of federal supreme court
-- hearings from 2012\".
rmAudioTopic :: Lens' RecognitionMetadata (Maybe Text)
rmAudioTopic
  = lens _rmAudioTopic (\ s a -> s{_rmAudioTopic = a})

-- | The use case most closely describing the audio content to be recognized.
rmInteractionType :: Lens' RecognitionMetadata (Maybe RecognitionMetadataInteractionType)
rmInteractionType
  = lens _rmInteractionType
      (\ s a -> s{_rmInteractionType = a})

-- | The original media the speech was recorded on.
rmOriginalMediaType :: Lens' RecognitionMetadata (Maybe RecognitionMetadataOriginalMediaType)
rmOriginalMediaType
  = lens _rmOriginalMediaType
      (\ s a -> s{_rmOriginalMediaType = a})

-- | Mime type of the original audio file. For example \`audio\/m4a\`,
-- \`audio\/x-alaw-basic\`, \`audio\/mp3\`, \`audio\/3gpp\`. A list of
-- possible audio mime types is maintained at
-- http:\/\/www.iana.org\/assignments\/media-types\/media-types.xhtml#audio
rmOriginalMimeType :: Lens' RecognitionMetadata (Maybe Text)
rmOriginalMimeType
  = lens _rmOriginalMimeType
      (\ s a -> s{_rmOriginalMimeType = a})

-- | The industry vertical to which this speech recognition request most
-- closely applies. This is most indicative of the topics contained in the
-- audio. Use the 6-digit NAICS code to identify the industry vertical -
-- see https:\/\/www.naics.com\/search\/.
rmIndustryNaicsCodeOfAudio :: Lens' RecognitionMetadata (Maybe Word32)
rmIndustryNaicsCodeOfAudio
  = lens _rmIndustryNaicsCodeOfAudio
      (\ s a -> s{_rmIndustryNaicsCodeOfAudio = a})
      . mapping _Coerce

-- | Obfuscated (privacy-protected) ID of the user, to identify number of
-- unique users using the service.
rmObfuscatedId :: Lens' RecognitionMetadata (Maybe Int64)
rmObfuscatedId
  = lens _rmObfuscatedId
      (\ s a -> s{_rmObfuscatedId = a})
      . mapping _Coerce

-- | The device used to make the recording. Examples \'Nexus 5X\' or
-- \'Polycom SoundStation IP 6000\' or \'POTS\' or \'VoIP\' or \'Cardioid
-- Microphone\'.
rmRecordingDeviceName :: Lens' RecognitionMetadata (Maybe Text)
rmRecordingDeviceName
  = lens _rmRecordingDeviceName
      (\ s a -> s{_rmRecordingDeviceName = a})

-- | The type of device the speech was recorded with.
rmRecordingDeviceType :: Lens' RecognitionMetadata (Maybe RecognitionMetadataRecordingDeviceType)
rmRecordingDeviceType
  = lens _rmRecordingDeviceType
      (\ s a -> s{_rmRecordingDeviceType = a})

-- | The audio type that most closely describes the audio being recognized.
rmMicrophoneDistance :: Lens' RecognitionMetadata (Maybe RecognitionMetadataMicrophoneDistance)
rmMicrophoneDistance
  = lens _rmMicrophoneDistance
      (\ s a -> s{_rmMicrophoneDistance = a})

instance FromJSON RecognitionMetadata where
        parseJSON
          = withObject "RecognitionMetadata"
              (\ o ->
                 RecognitionMetadata' <$>
                   (o .:? "audioTopic") <*> (o .:? "interactionType")
                     <*> (o .:? "originalMediaType")
                     <*> (o .:? "originalMimeType")
                     <*> (o .:? "industryNaicsCodeOfAudio")
                     <*> (o .:? "obfuscatedId")
                     <*> (o .:? "recordingDeviceName")
                     <*> (o .:? "recordingDeviceType")
                     <*> (o .:? "microphoneDistance"))

instance ToJSON RecognitionMetadata where
        toJSON RecognitionMetadata'{..}
          = object
              (catMaybes
                 [("audioTopic" .=) <$> _rmAudioTopic,
                  ("interactionType" .=) <$> _rmInteractionType,
                  ("originalMediaType" .=) <$> _rmOriginalMediaType,
                  ("originalMimeType" .=) <$> _rmOriginalMimeType,
                  ("industryNaicsCodeOfAudio" .=) <$>
                    _rmIndustryNaicsCodeOfAudio,
                  ("obfuscatedId" .=) <$> _rmObfuscatedId,
                  ("recordingDeviceName" .=) <$>
                    _rmRecordingDeviceName,
                  ("recordingDeviceType" .=) <$>
                    _rmRecordingDeviceType,
                  ("microphoneDistance" .=) <$> _rmMicrophoneDistance])

-- | The top-level message sent by the client for the \`Recognize\` method.
--
-- /See:/ 'recognizeRequest' smart constructor.
data RecognizeRequest =
  RecognizeRequest'
    { _rrConfig :: !(Maybe RecognitionConfig)
    , _rrName   :: !(Maybe Text)
    , _rrAudio  :: !(Maybe RecognitionAudio)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecognizeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrConfig'
--
-- * 'rrName'
--
-- * 'rrAudio'
recognizeRequest
    :: RecognizeRequest
recognizeRequest =
  RecognizeRequest' {_rrConfig = Nothing, _rrName = Nothing, _rrAudio = Nothing}


-- | *Required* Provides information to the recognizer that specifies how to
-- process the request.
rrConfig :: Lens' RecognizeRequest (Maybe RecognitionConfig)
rrConfig = lens _rrConfig (\ s a -> s{_rrConfig = a})

-- | *Optional* The name of the model to use for recognition.
rrName :: Lens' RecognizeRequest (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | *Required* The audio data to be recognized.
rrAudio :: Lens' RecognizeRequest (Maybe RecognitionAudio)
rrAudio = lens _rrAudio (\ s a -> s{_rrAudio = a})

instance FromJSON RecognizeRequest where
        parseJSON
          = withObject "RecognizeRequest"
              (\ o ->
                 RecognizeRequest' <$>
                   (o .:? "config") <*> (o .:? "name") <*>
                     (o .:? "audio"))

instance ToJSON RecognizeRequest where
        toJSON RecognizeRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _rrConfig,
                  ("name" .=) <$> _rrName, ("audio" .=) <$> _rrAudio])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
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
    , _sraWords      :: !(Maybe [WordInfo])
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
    { _wiStartTime  :: !(Maybe GDuration)
    , _wiConfidence :: !(Maybe (Textual Double))
    , _wiEndTime    :: !(Maybe GDuration)
    , _wiWord       :: !(Maybe Text)
    , _wiSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiStartTime'
--
-- * 'wiConfidence'
--
-- * 'wiEndTime'
--
-- * 'wiWord'
--
-- * 'wiSpeakerTag'
wordInfo
    :: WordInfo
wordInfo =
  WordInfo'
    { _wiStartTime = Nothing
    , _wiConfidence = Nothing
    , _wiEndTime = Nothing
    , _wiWord = Nothing
    , _wiSpeakerTag = Nothing
    }


-- | Output only. Time offset relative to the beginning of the audio, and
-- corresponding to the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
wiStartTime :: Lens' WordInfo (Maybe Scientific)
wiStartTime
  = lens _wiStartTime (\ s a -> s{_wiStartTime = a}) .
      mapping _GDuration

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
wiEndTime :: Lens' WordInfo (Maybe Scientific)
wiEndTime
  = lens _wiEndTime (\ s a -> s{_wiEndTime = a}) .
      mapping _GDuration

-- | Output only. The word corresponding to this set of information.
wiWord :: Lens' WordInfo (Maybe Text)
wiWord = lens _wiWord (\ s a -> s{_wiWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from \'1\' to
-- diarization_speaker_count. speaker_tag is set if
-- enable_speaker_diarization = \'true\' and only in the top alternative.
wiSpeakerTag :: Lens' WordInfo (Maybe Int32)
wiSpeakerTag
  = lens _wiSpeakerTag (\ s a -> s{_wiSpeakerTag = a})
      . mapping _Coerce

instance FromJSON WordInfo where
        parseJSON
          = withObject "WordInfo"
              (\ o ->
                 WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON WordInfo where
        toJSON WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _wiStartTime,
                  ("confidence" .=) <$> _wiConfidence,
                  ("endTime" .=) <$> _wiEndTime,
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
    , _srrChannelTag   :: !(Maybe (Textual Int32))
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

-- | For multi-channel audio, this is the channel number corresponding to the
-- recognized result for the audio from that channel. For
-- audio_channel_count = N, its output values can range from \'1\' to
-- \'N\'.
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

-- | Contains audio data in the encoding specified in the
-- \`RecognitionConfig\`. Either \`content\` or \`uri\` must be supplied.
-- Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. See
-- [content limits](\/speech-to-text\/quotas#content).
--
-- /See:/ 'recognitionAudio' smart constructor.
data RecognitionAudio =
  RecognitionAudio'
    { _raURI     :: !(Maybe Text)
    , _raContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecognitionAudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raURI'
--
-- * 'raContent'
recognitionAudio
    :: RecognitionAudio
recognitionAudio = RecognitionAudio' {_raURI = Nothing, _raContent = Nothing}


-- | URI that points to a file that contains audio data bytes as specified in
-- \`RecognitionConfig\`. The file must not be compressed (for example,
-- gzip). Currently, only Google Cloud Storage URIs are supported, which
-- must be specified in the following format:
-- \`gs:\/\/bucket_name\/object_name\` (other URI formats return
-- google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request
-- URIs](https:\/\/cloud.google.com\/storage\/docs\/reference-uris).
raURI :: Lens' RecognitionAudio (Maybe Text)
raURI = lens _raURI (\ s a -> s{_raURI = a})

-- | The audio data bytes encoded as specified in \`RecognitionConfig\`.
-- Note: as with all bytes fields, protobuffers use a pure binary
-- representation, whereas JSON representations use base64.
raContent :: Lens' RecognitionAudio (Maybe ByteString)
raContent
  = lens _raContent (\ s a -> s{_raContent = a}) .
      mapping _Bytes

instance FromJSON RecognitionAudio where
        parseJSON
          = withObject "RecognitionAudio"
              (\ o ->
                 RecognitionAudio' <$>
                   (o .:? "uri") <*> (o .:? "content"))

instance ToJSON RecognitionAudio where
        toJSON RecognitionAudio'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _raURI,
                  ("content" .=) <$> _raContent])

-- | The only message returned to the client by the \`Recognize\` method. It
-- contains the result as zero or more sequential
-- \`SpeechRecognitionResult\` messages.
--
-- /See:/ 'recognizeResponse' smart constructor.
newtype RecognizeResponse =
  RecognizeResponse'
    { _rrResults :: Maybe [SpeechRecognitionResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecognizeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResults'
recognizeResponse
    :: RecognizeResponse
recognizeResponse = RecognizeResponse' {_rrResults = Nothing}


-- | Output only. Sequential list of transcription results corresponding to
-- sequential portions of audio.
rrResults :: Lens' RecognizeResponse [SpeechRecognitionResult]
rrResults
  = lens _rrResults (\ s a -> s{_rrResults = a}) .
      _Default
      . _Coerce

instance FromJSON RecognizeResponse where
        parseJSON
          = withObject "RecognizeResponse"
              (\ o ->
                 RecognizeResponse' <$> (o .:? "results" .!= mempty))

instance ToJSON RecognizeResponse where
        toJSON RecognizeResponse'{..}
          = object (catMaybes [("results" .=) <$> _rrResults])

-- | The only message returned to the client by the \`LongRunningRecognize\`
-- method. It contains the result as zero or more sequential
-- \`SpeechRecognitionResult\` messages. It is included in the
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

-- | Provides information to the recognizer that specifies how to process the
-- request.
--
-- /See:/ 'recognitionConfig' smart constructor.
data RecognitionConfig =
  RecognitionConfig'
    { _rcEnableWordTimeOffSets               :: !(Maybe Bool)
    , _rcSpeechContexts                      :: !(Maybe [SpeechContext])
    , _rcLanguageCode                        :: !(Maybe Text)
    , _rcDiarizationConfig                   :: !(Maybe SpeakerDiarizationConfig)
    , _rcSampleRateHertz                     :: !(Maybe (Textual Int32))
    , _rcEnableAutomaticPunctuation          :: !(Maybe Bool)
    , _rcMaxAlternatives                     :: !(Maybe (Textual Int32))
    , _rcAudioChannelCount                   :: !(Maybe (Textual Int32))
    , _rcEnableSeparateRecognitionPerChannel :: !(Maybe Bool)
    , _rcModel                               :: !(Maybe Text)
    , _rcEnableSpeakerDiarization            :: !(Maybe Bool)
    , _rcMetadata                            :: !(Maybe RecognitionMetadata)
    , _rcUseEnhanced                         :: !(Maybe Bool)
    , _rcProfanityFilter                     :: !(Maybe Bool)
    , _rcDiarizationSpeakerCount             :: !(Maybe (Textual Int32))
    , _rcEncoding                            :: !(Maybe RecognitionConfigEncoding)
    , _rcAlternativeLanguageCodes            :: !(Maybe [Text])
    , _rcEnableWordConfidence                :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RecognitionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcEnableWordTimeOffSets'
--
-- * 'rcSpeechContexts'
--
-- * 'rcLanguageCode'
--
-- * 'rcDiarizationConfig'
--
-- * 'rcSampleRateHertz'
--
-- * 'rcEnableAutomaticPunctuation'
--
-- * 'rcMaxAlternatives'
--
-- * 'rcAudioChannelCount'
--
-- * 'rcEnableSeparateRecognitionPerChannel'
--
-- * 'rcModel'
--
-- * 'rcEnableSpeakerDiarization'
--
-- * 'rcMetadata'
--
-- * 'rcUseEnhanced'
--
-- * 'rcProfanityFilter'
--
-- * 'rcDiarizationSpeakerCount'
--
-- * 'rcEncoding'
--
-- * 'rcAlternativeLanguageCodes'
--
-- * 'rcEnableWordConfidence'
recognitionConfig
    :: RecognitionConfig
recognitionConfig =
  RecognitionConfig'
    { _rcEnableWordTimeOffSets = Nothing
    , _rcSpeechContexts = Nothing
    , _rcLanguageCode = Nothing
    , _rcDiarizationConfig = Nothing
    , _rcSampleRateHertz = Nothing
    , _rcEnableAutomaticPunctuation = Nothing
    , _rcMaxAlternatives = Nothing
    , _rcAudioChannelCount = Nothing
    , _rcEnableSeparateRecognitionPerChannel = Nothing
    , _rcModel = Nothing
    , _rcEnableSpeakerDiarization = Nothing
    , _rcMetadata = Nothing
    , _rcUseEnhanced = Nothing
    , _rcProfanityFilter = Nothing
    , _rcDiarizationSpeakerCount = Nothing
    , _rcEncoding = Nothing
    , _rcAlternativeLanguageCodes = Nothing
    , _rcEnableWordConfidence = Nothing
    }


-- | *Optional* If \`true\`, the top result includes a list of words and the
-- start and end time offsets (timestamps) for those words. If \`false\`,
-- no word-level time offset information is returned. The default is
-- \`false\`.
rcEnableWordTimeOffSets :: Lens' RecognitionConfig (Maybe Bool)
rcEnableWordTimeOffSets
  = lens _rcEnableWordTimeOffSets
      (\ s a -> s{_rcEnableWordTimeOffSets = a})

-- | *Optional* array of SpeechContext. A means to provide context to assist
-- the speech recognition. For more information, see [Phrase
-- Hints](\/speech-to-text\/docs\/basics#phrase-hints).
rcSpeechContexts :: Lens' RecognitionConfig [SpeechContext]
rcSpeechContexts
  = lens _rcSpeechContexts
      (\ s a -> s{_rcSpeechContexts = a})
      . _Default
      . _Coerce

-- | *Required* The language of the supplied audio as a
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag. Example: \"en-US\". See [Language
-- Support](\/speech-to-text\/docs\/languages) for a list of the currently
-- supported language codes.
rcLanguageCode :: Lens' RecognitionConfig (Maybe Text)
rcLanguageCode
  = lens _rcLanguageCode
      (\ s a -> s{_rcLanguageCode = a})

-- | *Optional* Config to enable speaker diarization and set additional
-- parameters to make diarization better suited for your application. Note:
-- When this is enabled, we send all the words from the beginning of the
-- audio for the top alternative in every consecutive STREAMING responses.
-- This is done in order to improve our speaker tags as our models learn to
-- identify the speakers in the conversation over time. For non-streaming
-- requests, the diarization results will be provided only in the top
-- alternative of the FINAL SpeechRecognitionResult.
rcDiarizationConfig :: Lens' RecognitionConfig (Maybe SpeakerDiarizationConfig)
rcDiarizationConfig
  = lens _rcDiarizationConfig
      (\ s a -> s{_rcDiarizationConfig = a})

-- | Sample rate in Hertz of the audio data sent in all \`RecognitionAudio\`
-- messages. Valid values are: 8000-48000. 16000 is optimal. For best
-- results, set the sampling rate of the audio source to 16000 Hz. If
-- that\'s not possible, use the native sample rate of the audio source
-- (instead of re-sampling). This field is optional for FLAC and WAV audio
-- files, but is required for all other audio formats. For details, see
-- AudioEncoding.
rcSampleRateHertz :: Lens' RecognitionConfig (Maybe Int32)
rcSampleRateHertz
  = lens _rcSampleRateHertz
      (\ s a -> s{_rcSampleRateHertz = a})
      . mapping _Coerce

-- | *Optional* If \'true\', adds punctuation to recognition result
-- hypotheses. This feature is only available in select languages. Setting
-- this for requests in other languages has no effect at all. The default
-- \'false\' value does not add punctuation to result hypotheses. Note:
-- This is currently offered as an experimental service, complimentary to
-- all users. In the future this may be exclusively available as a premium
-- feature.
rcEnableAutomaticPunctuation :: Lens' RecognitionConfig (Maybe Bool)
rcEnableAutomaticPunctuation
  = lens _rcEnableAutomaticPunctuation
      (\ s a -> s{_rcEnableAutomaticPunctuation = a})

-- | *Optional* Maximum number of recognition hypotheses to be returned.
-- Specifically, the maximum number of \`SpeechRecognitionAlternative\`
-- messages within each \`SpeechRecognitionResult\`. The server may return
-- fewer than \`max_alternatives\`. Valid values are \`0\`-\`30\`. A value
-- of \`0\` or \`1\` will return a maximum of one. If omitted, will return
-- a maximum of one.
rcMaxAlternatives :: Lens' RecognitionConfig (Maybe Int32)
rcMaxAlternatives
  = lens _rcMaxAlternatives
      (\ s a -> s{_rcMaxAlternatives = a})
      . mapping _Coerce

-- | *Optional* The number of channels in the input audio data. ONLY set this
-- for MULTI-CHANNEL recognition. Valid values for LINEAR16 and FLAC are
-- \`1\`-\`8\`. Valid values for OGG_OPUS are \'1\'-\'254\'. Valid value
-- for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only \`1\`. If
-- \`0\` or omitted, defaults to one channel (mono). Note: We only
-- recognize the first channel by default. To perform independent
-- recognition on each channel set
-- \`enable_separate_recognition_per_channel\` to \'true\'.
rcAudioChannelCount :: Lens' RecognitionConfig (Maybe Int32)
rcAudioChannelCount
  = lens _rcAudioChannelCount
      (\ s a -> s{_rcAudioChannelCount = a})
      . mapping _Coerce

-- | This needs to be set to \`true\` explicitly and \`audio_channel_count\`
-- > 1 to get each channel recognized separately. The recognition result
-- will contain a \`channel_tag\` field to state which channel that result
-- belongs to. If this is not true, we will only recognize the first
-- channel. The request is billed cumulatively for all channels recognized:
-- \`audio_channel_count\` multiplied by the length of the audio.
rcEnableSeparateRecognitionPerChannel :: Lens' RecognitionConfig (Maybe Bool)
rcEnableSeparateRecognitionPerChannel
  = lens _rcEnableSeparateRecognitionPerChannel
      (\ s a ->
         s{_rcEnableSeparateRecognitionPerChannel = a})

-- | *Optional* Which model to select for the given request. Select the model
-- best suited to your domain to get best results. If a model is not
-- explicitly specified, then we auto-select a model based on the
-- parameters in the RecognitionConfig.
-- > +-----------------------------------+-----------------------------------+
-- > | __Model__                         | __Description__                   |
-- > +-----------------------------------+-----------------------------------+
-- > | 'command_and_search'              | Best for short queries such as    |
-- > |                                   | voice commands or voice search.   |
-- > +-----------------------------------+-----------------------------------+
-- > | 'phone_call'                      | Best for audio that originated    |
-- > |                                   | from a phone call (typically      |
-- > |                                   | recorded at an 8khz sampling      |
-- > |                                   | rate).                            |
-- > +-----------------------------------+-----------------------------------+
-- > | 'video'                           | Best for audio that originated    |
-- > |                                   | from from video or includes       |
-- > |                                   | multiple speakers. Ideally the    |
-- > |                                   | audio is recorded at a 16khz or   |
-- > |                                   | greater sampling rate. This is a  |
-- > |                                   | premium model that costs more     |
-- > |                                   | than the standard rate.           |
-- > +-----------------------------------+-----------------------------------+
-- > | 'default'                         | Best for audio that is not one of |
-- > |                                   | the specific audio models. For    |
-- > |                                   | example, long-form audio. Ideally |
-- > |                                   | the audio is high-fidelity,       |
-- > |                                   | recorded at a 16khz or greater    |
-- > |                                   | sampling rate.                    |
-- > +-----------------------------------+-----------------------------------+
rcModel :: Lens' RecognitionConfig (Maybe Text)
rcModel = lens _rcModel (\ s a -> s{_rcModel = a})

-- | *Optional* If \'true\', enables speaker detection for each recognized
-- word in the top alternative of the recognition result using a
-- speaker_tag provided in the WordInfo. Note: Use diarization_config
-- instead. This field will be DEPRECATED soon.
rcEnableSpeakerDiarization :: Lens' RecognitionConfig (Maybe Bool)
rcEnableSpeakerDiarization
  = lens _rcEnableSpeakerDiarization
      (\ s a -> s{_rcEnableSpeakerDiarization = a})

-- | *Optional* Metadata regarding this request.
rcMetadata :: Lens' RecognitionConfig (Maybe RecognitionMetadata)
rcMetadata
  = lens _rcMetadata (\ s a -> s{_rcMetadata = a})

-- | *Optional* Set to true to use an enhanced model for speech recognition.
-- If \`use_enhanced\` is set to true and the \`model\` field is not set,
-- then an appropriate enhanced model is chosen if: 1. project is eligible
-- for requesting enhanced models 2. an enhanced model exists for the audio
-- If \`use_enhanced\` is true and an enhanced version of the specified
-- model does not exist, then the speech is recognized using the standard
-- version of the specified model. Enhanced speech models require that you
-- opt-in to data logging using instructions in the
-- [documentation](\/speech-to-text\/docs\/enable-data-logging). If you set
-- \`use_enhanced\` to true and you have not enabled audio logging, then
-- you will receive an error.
rcUseEnhanced :: Lens' RecognitionConfig (Maybe Bool)
rcUseEnhanced
  = lens _rcUseEnhanced
      (\ s a -> s{_rcUseEnhanced = a})

-- | *Optional* If set to \`true\`, the server will attempt to filter out
-- profanities, replacing all but the initial character in each filtered
-- word with asterisks, e.g. \"f***\". If set to \`false\` or omitted,
-- profanities won\'t be filtered out.
rcProfanityFilter :: Lens' RecognitionConfig (Maybe Bool)
rcProfanityFilter
  = lens _rcProfanityFilter
      (\ s a -> s{_rcProfanityFilter = a})

-- | *Optional* If set, specifies the estimated number of speakers in the
-- conversation. If not set, defaults to \'2\'. Ignored unless
-- enable_speaker_diarization is set to true.\" Note: Use
-- diarization_config instead. This field will be DEPRECATED soon.
rcDiarizationSpeakerCount :: Lens' RecognitionConfig (Maybe Int32)
rcDiarizationSpeakerCount
  = lens _rcDiarizationSpeakerCount
      (\ s a -> s{_rcDiarizationSpeakerCount = a})
      . mapping _Coerce

-- | Encoding of audio data sent in all \`RecognitionAudio\` messages. This
-- field is optional for \`FLAC\` and \`WAV\` audio files and required for
-- all other audio formats. For details, see AudioEncoding.
rcEncoding :: Lens' RecognitionConfig (Maybe RecognitionConfigEncoding)
rcEncoding
  = lens _rcEncoding (\ s a -> s{_rcEncoding = a})

-- | *Optional* A list of up to 3 additional
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tags, listing possible alternative languages of the supplied audio. See
-- [Language Support](\/speech-to-text\/docs\/languages) for a list of the
-- currently supported language codes. If alternative languages are listed,
-- recognition result will contain recognition in the most likely language
-- detected including the main language_code. The recognition result will
-- include the language tag of the language detected in the audio. Note:
-- This feature is only supported for Voice Command and Voice Search use
-- cases and performance may vary for other use cases (e.g., phone call
-- transcription).
rcAlternativeLanguageCodes :: Lens' RecognitionConfig [Text]
rcAlternativeLanguageCodes
  = lens _rcAlternativeLanguageCodes
      (\ s a -> s{_rcAlternativeLanguageCodes = a})
      . _Default
      . _Coerce

-- | *Optional* If \`true\`, the top result includes a list of words and the
-- confidence for those words. If \`false\`, no word-level confidence
-- information is returned. The default is \`false\`.
rcEnableWordConfidence :: Lens' RecognitionConfig (Maybe Bool)
rcEnableWordConfidence
  = lens _rcEnableWordConfidence
      (\ s a -> s{_rcEnableWordConfidence = a})

instance FromJSON RecognitionConfig where
        parseJSON
          = withObject "RecognitionConfig"
              (\ o ->
                 RecognitionConfig' <$>
                   (o .:? "enableWordTimeOffsets") <*>
                     (o .:? "speechContexts" .!= mempty)
                     <*> (o .:? "languageCode")
                     <*> (o .:? "diarizationConfig")
                     <*> (o .:? "sampleRateHertz")
                     <*> (o .:? "enableAutomaticPunctuation")
                     <*> (o .:? "maxAlternatives")
                     <*> (o .:? "audioChannelCount")
                     <*> (o .:? "enableSeparateRecognitionPerChannel")
                     <*> (o .:? "model")
                     <*> (o .:? "enableSpeakerDiarization")
                     <*> (o .:? "metadata")
                     <*> (o .:? "useEnhanced")
                     <*> (o .:? "profanityFilter")
                     <*> (o .:? "diarizationSpeakerCount")
                     <*> (o .:? "encoding")
                     <*> (o .:? "alternativeLanguageCodes" .!= mempty)
                     <*> (o .:? "enableWordConfidence"))

instance ToJSON RecognitionConfig where
        toJSON RecognitionConfig'{..}
          = object
              (catMaybes
                 [("enableWordTimeOffsets" .=) <$>
                    _rcEnableWordTimeOffSets,
                  ("speechContexts" .=) <$> _rcSpeechContexts,
                  ("languageCode" .=) <$> _rcLanguageCode,
                  ("diarizationConfig" .=) <$> _rcDiarizationConfig,
                  ("sampleRateHertz" .=) <$> _rcSampleRateHertz,
                  ("enableAutomaticPunctuation" .=) <$>
                    _rcEnableAutomaticPunctuation,
                  ("maxAlternatives" .=) <$> _rcMaxAlternatives,
                  ("audioChannelCount" .=) <$> _rcAudioChannelCount,
                  ("enableSeparateRecognitionPerChannel" .=) <$>
                    _rcEnableSeparateRecognitionPerChannel,
                  ("model" .=) <$> _rcModel,
                  ("enableSpeakerDiarization" .=) <$>
                    _rcEnableSpeakerDiarization,
                  ("metadata" .=) <$> _rcMetadata,
                  ("useEnhanced" .=) <$> _rcUseEnhanced,
                  ("profanityFilter" .=) <$> _rcProfanityFilter,
                  ("diarizationSpeakerCount" .=) <$>
                    _rcDiarizationSpeakerCount,
                  ("encoding" .=) <$> _rcEncoding,
                  ("alternativeLanguageCodes" .=) <$>
                    _rcAlternativeLanguageCodes,
                  ("enableWordConfidence" .=) <$>
                    _rcEnableWordConfidence])

-- | The top-level message sent by the client for the
-- \`LongRunningRecognize\` method.
--
-- /See:/ 'longRunningRecognizeRequest' smart constructor.
data LongRunningRecognizeRequest =
  LongRunningRecognizeRequest'
    { _lrrrConfig :: !(Maybe RecognitionConfig)
    , _lrrrAudio  :: !(Maybe RecognitionAudio)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LongRunningRecognizeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrConfig'
--
-- * 'lrrrAudio'
longRunningRecognizeRequest
    :: LongRunningRecognizeRequest
longRunningRecognizeRequest =
  LongRunningRecognizeRequest' {_lrrrConfig = Nothing, _lrrrAudio = Nothing}


-- | *Required* Provides information to the recognizer that specifies how to
-- process the request.
lrrrConfig :: Lens' LongRunningRecognizeRequest (Maybe RecognitionConfig)
lrrrConfig
  = lens _lrrrConfig (\ s a -> s{_lrrrConfig = a})

-- | *Required* The audio data to be recognized.
lrrrAudio :: Lens' LongRunningRecognizeRequest (Maybe RecognitionAudio)
lrrrAudio
  = lens _lrrrAudio (\ s a -> s{_lrrrAudio = a})

instance FromJSON LongRunningRecognizeRequest where
        parseJSON
          = withObject "LongRunningRecognizeRequest"
              (\ o ->
                 LongRunningRecognizeRequest' <$>
                   (o .:? "config") <*> (o .:? "audio"))

instance ToJSON LongRunningRecognizeRequest where
        toJSON LongRunningRecognizeRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _lrrrConfig,
                  ("audio" .=) <$> _lrrrAudio])

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

--
-- /See:/ 'speakerDiarizationConfig' smart constructor.
data SpeakerDiarizationConfig =
  SpeakerDiarizationConfig'
    { _sdcMinSpeakerCount          :: !(Maybe (Textual Int32))
    , _sdcMaxSpeakerCount          :: !(Maybe (Textual Int32))
    , _sdcEnableSpeakerDiarization :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpeakerDiarizationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcMinSpeakerCount'
--
-- * 'sdcMaxSpeakerCount'
--
-- * 'sdcEnableSpeakerDiarization'
speakerDiarizationConfig
    :: SpeakerDiarizationConfig
speakerDiarizationConfig =
  SpeakerDiarizationConfig'
    { _sdcMinSpeakerCount = Nothing
    , _sdcMaxSpeakerCount = Nothing
    , _sdcEnableSpeakerDiarization = Nothing
    }


-- | *Optional* Only used if diarization_speaker_count is not set. Minimum
-- number of speakers in the conversation. This range gives you more
-- flexibility by allowing the system to automatically determine the
-- correct number of speakers. If not set, the default value is 2.
sdcMinSpeakerCount :: Lens' SpeakerDiarizationConfig (Maybe Int32)
sdcMinSpeakerCount
  = lens _sdcMinSpeakerCount
      (\ s a -> s{_sdcMinSpeakerCount = a})
      . mapping _Coerce

-- | *Optional* Only used if diarization_speaker_count is not set. Maximum
-- number of speakers in the conversation. This range gives you more
-- flexibility by allowing the system to automatically determine the
-- correct number of speakers. If not set, the default value is 6.
sdcMaxSpeakerCount :: Lens' SpeakerDiarizationConfig (Maybe Int32)
sdcMaxSpeakerCount
  = lens _sdcMaxSpeakerCount
      (\ s a -> s{_sdcMaxSpeakerCount = a})
      . mapping _Coerce

-- | *Optional* If \'true\', enables speaker detection for each recognized
-- word in the top alternative of the recognition result using a
-- speaker_tag provided in the WordInfo.
sdcEnableSpeakerDiarization :: Lens' SpeakerDiarizationConfig (Maybe Bool)
sdcEnableSpeakerDiarization
  = lens _sdcEnableSpeakerDiarization
      (\ s a -> s{_sdcEnableSpeakerDiarization = a})

instance FromJSON SpeakerDiarizationConfig where
        parseJSON
          = withObject "SpeakerDiarizationConfig"
              (\ o ->
                 SpeakerDiarizationConfig' <$>
                   (o .:? "minSpeakerCount") <*>
                     (o .:? "maxSpeakerCount")
                     <*> (o .:? "enableSpeakerDiarization"))

instance ToJSON SpeakerDiarizationConfig where
        toJSON SpeakerDiarizationConfig'{..}
          = object
              (catMaybes
                 [("minSpeakerCount" .=) <$> _sdcMinSpeakerCount,
                  ("maxSpeakerCount" .=) <$> _sdcMaxSpeakerCount,
                  ("enableSpeakerDiarization" .=) <$>
                    _sdcEnableSpeakerDiarization])
