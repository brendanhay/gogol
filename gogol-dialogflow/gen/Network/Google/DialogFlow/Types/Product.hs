{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DialogFlow.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DialogFlow.Types.Product where

import           Network.Google.DialogFlow.Types.Sum
import           Network.Google.Prelude

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
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Represents a single followup intent in the chain.
--
-- /See:/ 'googleCloudDialogflowV2IntentFollowupIntentInfo' smart constructor.
data GoogleCloudDialogflowV2IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2IntentFollowupIntentInfo'
    { _gcdvifiiFollowupIntentName       :: !(Maybe Text)
    , _gcdvifiiParentFollowupIntentName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentFollowupIntentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvifiiFollowupIntentName'
--
-- * 'gcdvifiiParentFollowupIntentName'
googleCloudDialogflowV2IntentFollowupIntentInfo
    :: GoogleCloudDialogflowV2IntentFollowupIntentInfo
googleCloudDialogflowV2IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2IntentFollowupIntentInfo'
    { _gcdvifiiFollowupIntentName = Nothing
    , _gcdvifiiParentFollowupIntentName = Nothing
    }

-- | The unique identifier of the followup intent. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvifiiFollowupIntentName :: Lens' GoogleCloudDialogflowV2IntentFollowupIntentInfo (Maybe Text)
gcdvifiiFollowupIntentName
  = lens _gcdvifiiFollowupIntentName
      (\ s a -> s{_gcdvifiiFollowupIntentName = a})

-- | The unique identifier of the followup intent\'s parent. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvifiiParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2IntentFollowupIntentInfo (Maybe Text)
gcdvifiiParentFollowupIntentName
  = lens _gcdvifiiParentFollowupIntentName
      (\ s a -> s{_gcdvifiiParentFollowupIntentName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentFollowupIntentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentFollowupIntentInfo"
              (\ o ->
                 GoogleCloudDialogflowV2IntentFollowupIntentInfo' <$>
                   (o .:? "followupIntentName") <*>
                     (o .:? "parentFollowupIntentName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentFollowupIntentInfo
         where
        toJSON
          GoogleCloudDialogflowV2IntentFollowupIntentInfo'{..}
          = object
              (catMaybes
                 [("followupIntentName" .=) <$>
                    _gcdvifiiFollowupIntentName,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdvifiiParentFollowupIntentName])

-- | The collection of simple response candidates. This message in
-- \`QueryResult.fulfillment_messages\` and
-- \`WebhookResponse.fulfillment_messages\` should contain only one
-- \`SimpleResponse\`.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSimpleResponses' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
    { _gcdvimsrSimpleResponses :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsrSimpleResponses'
googleCloudDialogflowV2beta1IntentMessageSimpleResponses
    :: GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
googleCloudDialogflowV2beta1IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
    {_gcdvimsrSimpleResponses = Nothing}

-- | Required. The list of simple responses.
gcdvimsrSimpleResponses :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse]
gcdvimsrSimpleResponses
  = lens _gcdvimsrSimpleResponses
      (\ s a -> s{_gcdvimsrSimpleResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
                   <$> (o .:? "simpleResponses" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'{..}
          = object
              (catMaybes
                 [("simpleResponses" .=) <$>
                    _gcdvimsrSimpleResponses])

-- | Instructs the speech recognizer how to process the audio content.
--
-- /See:/ 'googleCloudDialogflowV2InputAudioConfig' smart constructor.
data GoogleCloudDialogflowV2InputAudioConfig =
  GoogleCloudDialogflowV2InputAudioConfig'
    { _gcdviacLanguageCode    :: !(Maybe Text)
    , _gcdviacPhraseHints     :: !(Maybe [Text])
    , _gcdviacSampleRateHertz :: !(Maybe (Textual Int32))
    , _gcdviacAudioEncoding   :: !(Maybe GoogleCloudDialogflowV2InputAudioConfigAudioEncoding)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2InputAudioConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdviacLanguageCode'
--
-- * 'gcdviacPhraseHints'
--
-- * 'gcdviacSampleRateHertz'
--
-- * 'gcdviacAudioEncoding'
googleCloudDialogflowV2InputAudioConfig
    :: GoogleCloudDialogflowV2InputAudioConfig
googleCloudDialogflowV2InputAudioConfig =
  GoogleCloudDialogflowV2InputAudioConfig'
    { _gcdviacLanguageCode = Nothing
    , _gcdviacPhraseHints = Nothing
    , _gcdviacSampleRateHertz = Nothing
    , _gcdviacAudioEncoding = Nothing
    }

-- | Required. The language of the supplied audio. Dialogflow does not do
-- translations. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/languages) for a list of the
-- currently supported language codes. Note that queries in the same
-- session do not necessarily need to specify the same language.
gcdviacLanguageCode :: Lens' GoogleCloudDialogflowV2InputAudioConfig (Maybe Text)
gcdviacLanguageCode
  = lens _gcdviacLanguageCode
      (\ s a -> s{_gcdviacLanguageCode = a})

-- | Optional. The collection of phrase hints which are used to boost
-- accuracy of speech recognition. Refer to [Cloud Speech API
-- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/basics#phrase-hints)
-- for more details.
gcdviacPhraseHints :: Lens' GoogleCloudDialogflowV2InputAudioConfig [Text]
gcdviacPhraseHints
  = lens _gcdviacPhraseHints
      (\ s a -> s{_gcdviacPhraseHints = a})
      . _Default
      . _Coerce

-- | Required. Sample rate (in Hertz) of the audio content sent in the query.
-- Refer to [Cloud Speech API
-- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/basics)
-- for more details.
gcdviacSampleRateHertz :: Lens' GoogleCloudDialogflowV2InputAudioConfig (Maybe Int32)
gcdviacSampleRateHertz
  = lens _gcdviacSampleRateHertz
      (\ s a -> s{_gcdviacSampleRateHertz = a})
      . mapping _Coerce

-- | Required. Audio encoding of the audio content to process.
gcdviacAudioEncoding :: Lens' GoogleCloudDialogflowV2InputAudioConfig (Maybe GoogleCloudDialogflowV2InputAudioConfigAudioEncoding)
gcdviacAudioEncoding
  = lens _gcdviacAudioEncoding
      (\ s a -> s{_gcdviacAudioEncoding = a})

instance FromJSON
           GoogleCloudDialogflowV2InputAudioConfig
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2InputAudioConfig"
              (\ o ->
                 GoogleCloudDialogflowV2InputAudioConfig' <$>
                   (o .:? "languageCode") <*>
                     (o .:? "phraseHints" .!= mempty)
                     <*> (o .:? "sampleRateHertz")
                     <*> (o .:? "audioEncoding"))

instance ToJSON
           GoogleCloudDialogflowV2InputAudioConfig
         where
        toJSON GoogleCloudDialogflowV2InputAudioConfig'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdviacLanguageCode,
                  ("phraseHints" .=) <$> _gcdviacPhraseHints,
                  ("sampleRateHertz" .=) <$> _gcdviacSampleRateHertz,
                  ("audioEncoding" .=) <$> _gcdviacAudioEncoding])

-- | The response message for Intents.BatchUpdateIntents.
--
-- /See:/ 'googleCloudDialogflowV2beta1BatchUpdateIntentsResponse' smart constructor.
newtype GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
    { _gcdvbuirIntents :: Maybe [GoogleCloudDialogflowV2beta1Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuirIntents'
googleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    :: GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
googleCloudDialogflowV2beta1BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
    {_gcdvbuirIntents = Nothing}

-- | The collection of updated or created intents.
gcdvbuirIntents :: Lens' GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse [GoogleCloudDialogflowV2beta1Intent]
gcdvbuirIntents
  = lens _gcdvbuirIntents
      (\ s a -> s{_gcdvbuirIntents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
                   <$> (o .:? "intents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'{..}
          = object
              (catMaybes [("intents" .=) <$> _gcdvbuirIntents])

-- | Returns a response containing a custom, platform-specific payload. See
-- the Intent.Message.Platform type for a description of the structure that
-- may be required for your platform.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessagePayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessagePayload =
  GoogleCloudDialogflowV2beta1IntentMessagePayload'
    { _gcdvimpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessagePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimpAddtional'
googleCloudDialogflowV2beta1IntentMessagePayload
    :: HashMap Text JSONValue -- ^ 'gcdvimpAddtional'
    -> GoogleCloudDialogflowV2beta1IntentMessagePayload
googleCloudDialogflowV2beta1IntentMessagePayload pGcdvimpAddtional_ =
  GoogleCloudDialogflowV2beta1IntentMessagePayload'
    {_gcdvimpAddtional = _Coerce # pGcdvimpAddtional_}

-- | Properties of the object.
gcdvimpAddtional :: Lens' GoogleCloudDialogflowV2beta1IntentMessagePayload (HashMap Text JSONValue)
gcdvimpAddtional
  = lens _gcdvimpAddtional
      (\ s a -> s{_gcdvimpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessagePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessagePayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessagePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessagePayload
         where
        toJSON = toJSON . _gcdvimpAddtional

-- | The request message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2WebhookRequest' smart constructor.
data GoogleCloudDialogflowV2WebhookRequest =
  GoogleCloudDialogflowV2WebhookRequest'
    { _gcdvwrOriginalDetectIntentRequest :: !(Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequest)
    , _gcdvwrResponseId                  :: !(Maybe Text)
    , _gcdvwrQueryResult                 :: !(Maybe GoogleCloudDialogflowV2QueryResult)
    , _gcdvwrSession                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2WebhookRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrOriginalDetectIntentRequest'
--
-- * 'gcdvwrResponseId'
--
-- * 'gcdvwrQueryResult'
--
-- * 'gcdvwrSession'
googleCloudDialogflowV2WebhookRequest
    :: GoogleCloudDialogflowV2WebhookRequest
googleCloudDialogflowV2WebhookRequest =
  GoogleCloudDialogflowV2WebhookRequest'
    { _gcdvwrOriginalDetectIntentRequest = Nothing
    , _gcdvwrResponseId = Nothing
    , _gcdvwrQueryResult = Nothing
    , _gcdvwrSession = Nothing
    }

-- | Optional. The contents of the original request that was passed to
-- \`[Streaming]DetectIntent\` call.
gcdvwrOriginalDetectIntentRequest :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequest)
gcdvwrOriginalDetectIntentRequest
  = lens _gcdvwrOriginalDetectIntentRequest
      (\ s a -> s{_gcdvwrOriginalDetectIntentRequest = a})

-- | The unique identifier of the response. Contains the same value as
-- \`[Streaming]DetectIntentResponse.response_id\`.
gcdvwrResponseId :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe Text)
gcdvwrResponseId
  = lens _gcdvwrResponseId
      (\ s a -> s{_gcdvwrResponseId = a})

-- | The result of the conversational query or event processing. Contains the
-- same value as \`[Streaming]DetectIntentResponse.query_result\`.
gcdvwrQueryResult :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe GoogleCloudDialogflowV2QueryResult)
gcdvwrQueryResult
  = lens _gcdvwrQueryResult
      (\ s a -> s{_gcdvwrQueryResult = a})

-- | The unique identifier of detectIntent request session. Can be used to
-- identify end-user inside webhook implementation. Format:
-- \`projects\/\/agent\/sessions\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\`.
gcdvwrSession :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe Text)
gcdvwrSession
  = lens _gcdvwrSession
      (\ s a -> s{_gcdvwrSession = a})

instance FromJSON
           GoogleCloudDialogflowV2WebhookRequest
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2WebhookRequest"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookRequest' <$>
                   (o .:? "originalDetectIntentRequest") <*>
                     (o .:? "responseId")
                     <*> (o .:? "queryResult")
                     <*> (o .:? "session"))

instance ToJSON GoogleCloudDialogflowV2WebhookRequest
         where
        toJSON GoogleCloudDialogflowV2WebhookRequest'{..}
          = object
              (catMaybes
                 [("originalDetectIntentRequest" .=) <$>
                    _gcdvwrOriginalDetectIntentRequest,
                  ("responseId" .=) <$> _gcdvwrResponseId,
                  ("queryResult" .=) <$> _gcdvwrQueryResult,
                  ("session" .=) <$> _gcdvwrSession])

-- | An item in the carousel.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCarouselSelectItem' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
    { _gcdvimcsiImage       :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimcsiTitle       :: !(Maybe Text)
    , _gcdvimcsiDescription :: !(Maybe Text)
    , _gcdvimcsiInfo        :: !(Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCarouselSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcsiImage'
--
-- * 'gcdvimcsiTitle'
--
-- * 'gcdvimcsiDescription'
--
-- * 'gcdvimcsiInfo'
googleCloudDialogflowV2IntentMessageCarouselSelectItem
    :: GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
googleCloudDialogflowV2IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
    { _gcdvimcsiImage = Nothing
    , _gcdvimcsiTitle = Nothing
    , _gcdvimcsiDescription = Nothing
    , _gcdvimcsiInfo = Nothing
    }

-- | Optional. The image to display.
gcdvimcsiImage :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimcsiImage
  = lens _gcdvimcsiImage
      (\ s a -> s{_gcdvimcsiImage = a})

-- | Required. Title of the carousel item.
gcdvimcsiTitle :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe Text)
gcdvimcsiTitle
  = lens _gcdvimcsiTitle
      (\ s a -> s{_gcdvimcsiTitle = a})

-- | Optional. The body text of the card.
gcdvimcsiDescription :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe Text)
gcdvimcsiDescription
  = lens _gcdvimcsiDescription
      (\ s a -> s{_gcdvimcsiDescription = a})

-- | Required. Additional info about the option item.
gcdvimcsiInfo :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
gcdvimcsiInfo
  = lens _gcdvimcsiInfo
      (\ s a -> s{_gcdvimcsiInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCarouselSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimcsiImage,
                  ("title" .=) <$> _gcdvimcsiTitle,
                  ("description" .=) <$> _gcdvimcsiDescription,
                  ("info" .=) <$> _gcdvimcsiInfo])

-- | Events allow for matching intents by event name instead of the natural
-- language input. For instance, input \`\` can trigger a personalized
-- welcome response. The parameter \`name\` may be used by the agent in the
-- response: \`\"Hello #welcome_event.name! What can I do for you
-- today?\"\`.
--
-- /See:/ 'googleCloudDialogflowV2EventInput' smart constructor.
data GoogleCloudDialogflowV2EventInput =
  GoogleCloudDialogflowV2EventInput'
    { _gcdveiLanguageCode :: !(Maybe Text)
    , _gcdveiName         :: !(Maybe Text)
    , _gcdveiParameters   :: !(Maybe GoogleCloudDialogflowV2EventInputParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2EventInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveiLanguageCode'
--
-- * 'gcdveiName'
--
-- * 'gcdveiParameters'
googleCloudDialogflowV2EventInput
    :: GoogleCloudDialogflowV2EventInput
googleCloudDialogflowV2EventInput =
  GoogleCloudDialogflowV2EventInput'
    { _gcdveiLanguageCode = Nothing
    , _gcdveiName = Nothing
    , _gcdveiParameters = Nothing
    }

-- | Required. The language of this query. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/languages) for a list of the
-- currently supported language codes. Note that queries in the same
-- session do not necessarily need to specify the same language.
gcdveiLanguageCode :: Lens' GoogleCloudDialogflowV2EventInput (Maybe Text)
gcdveiLanguageCode
  = lens _gcdveiLanguageCode
      (\ s a -> s{_gcdveiLanguageCode = a})

-- | Required. The unique identifier of the event.
gcdveiName :: Lens' GoogleCloudDialogflowV2EventInput (Maybe Text)
gcdveiName
  = lens _gcdveiName (\ s a -> s{_gcdveiName = a})

-- | Optional. The collection of parameters associated with the event.
gcdveiParameters :: Lens' GoogleCloudDialogflowV2EventInput (Maybe GoogleCloudDialogflowV2EventInputParameters)
gcdveiParameters
  = lens _gcdveiParameters
      (\ s a -> s{_gcdveiParameters = a})

instance FromJSON GoogleCloudDialogflowV2EventInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2EventInput"
              (\ o ->
                 GoogleCloudDialogflowV2EventInput' <$>
                   (o .:? "languageCode") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2EventInput
         where
        toJSON GoogleCloudDialogflowV2EventInput'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdveiLanguageCode,
                  ("name" .=) <$> _gcdveiName,
                  ("parameters" .=) <$> _gcdveiParameters])

-- | The simple response message containing speech or text.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSimpleResponse' smart constructor.
data GoogleCloudDialogflowV2IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2IntentMessageSimpleResponse'
    { _gcdvimsrDisplayText  :: !(Maybe Text)
    , _gcdvimsrSsml         :: !(Maybe Text)
    , _gcdvimsrTextToSpeech :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSimpleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsrDisplayText'
--
-- * 'gcdvimsrSsml'
--
-- * 'gcdvimsrTextToSpeech'
googleCloudDialogflowV2IntentMessageSimpleResponse
    :: GoogleCloudDialogflowV2IntentMessageSimpleResponse
googleCloudDialogflowV2IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2IntentMessageSimpleResponse'
    { _gcdvimsrDisplayText = Nothing
    , _gcdvimsrSsml = Nothing
    , _gcdvimsrTextToSpeech = Nothing
    }

-- | Optional. The text to display.
gcdvimsrDisplayText :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrDisplayText
  = lens _gcdvimsrDisplayText
      (\ s a -> s{_gcdvimsrDisplayText = a})

-- | One of text_to_speech or ssml must be provided. Structured spoken
-- response to the user in the SSML format. Mutually exclusive with
-- text_to_speech.
gcdvimsrSsml :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrSsml
  = lens _gcdvimsrSsml (\ s a -> s{_gcdvimsrSsml = a})

-- | One of text_to_speech or ssml must be provided. The plain text of the
-- speech output. Mutually exclusive with ssml.
gcdvimsrTextToSpeech :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrTextToSpeech
  = lens _gcdvimsrTextToSpeech
      (\ s a -> s{_gcdvimsrTextToSpeech = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSimpleResponse"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSimpleResponse'
                   <$>
                   (o .:? "displayText") <*> (o .:? "ssml") <*>
                     (o .:? "textToSpeech"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponse
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSimpleResponse'{..}
          = object
              (catMaybes
                 [("displayText" .=) <$> _gcdvimsrDisplayText,
                  ("ssml" .=) <$> _gcdvimsrSsml,
                  ("textToSpeech" .=) <$> _gcdvimsrTextToSpeech])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunningOperationMetadata' smart constructor.
newtype GoogleLongrunningOperationMetadata =
  GoogleLongrunningOperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunningOperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunningOperationMetadata
googleLongrunningOperationMetadata pGlomAddtional_ =
  GoogleLongrunningOperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunningOperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunningOperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | Represents an example that the agent is trained on.
--
-- /See:/ 'googleCloudDialogflowV2IntentTrainingPhrase' smart constructor.
data GoogleCloudDialogflowV2IntentTrainingPhrase =
  GoogleCloudDialogflowV2IntentTrainingPhrase'
    { _gcdvitpParts           :: !(Maybe [GoogleCloudDialogflowV2IntentTrainingPhrasePart])
    , _gcdvitpName            :: !(Maybe Text)
    , _gcdvitpTimesAddedCount :: !(Maybe (Textual Int32))
    , _gcdvitpType            :: !(Maybe GoogleCloudDialogflowV2IntentTrainingPhraseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentTrainingPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitpParts'
--
-- * 'gcdvitpName'
--
-- * 'gcdvitpTimesAddedCount'
--
-- * 'gcdvitpType'
googleCloudDialogflowV2IntentTrainingPhrase
    :: GoogleCloudDialogflowV2IntentTrainingPhrase
googleCloudDialogflowV2IntentTrainingPhrase =
  GoogleCloudDialogflowV2IntentTrainingPhrase'
    { _gcdvitpParts = Nothing
    , _gcdvitpName = Nothing
    , _gcdvitpTimesAddedCount = Nothing
    , _gcdvitpType = Nothing
    }

-- | Required. The collection of training phrase parts (can be annotated).
-- Fields: \`entity_type\`, \`alias\` and \`user_defined\` should be
-- populated only for the annotated parts of the training phrase.
gcdvitpParts :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase [GoogleCloudDialogflowV2IntentTrainingPhrasePart]
gcdvitpParts
  = lens _gcdvitpParts (\ s a -> s{_gcdvitpParts = a})
      . _Default
      . _Coerce

-- | Output only. The unique identifier of this training phrase.
gcdvitpName :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe Text)
gcdvitpName
  = lens _gcdvitpName (\ s a -> s{_gcdvitpName = a})

-- | Optional. Indicates how many times this example was added to the intent.
-- Each time a developer adds an existing sample by editing an intent or
-- training, this counter is increased.
gcdvitpTimesAddedCount :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe Int32)
gcdvitpTimesAddedCount
  = lens _gcdvitpTimesAddedCount
      (\ s a -> s{_gcdvitpTimesAddedCount = a})
      . mapping _Coerce

-- | Required. The type of the training phrase.
gcdvitpType :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe GoogleCloudDialogflowV2IntentTrainingPhraseType)
gcdvitpType
  = lens _gcdvitpType (\ s a -> s{_gcdvitpType = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentTrainingPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentTrainingPhrase"
              (\ o ->
                 GoogleCloudDialogflowV2IntentTrainingPhrase' <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "timesAddedCount")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleCloudDialogflowV2IntentTrainingPhrase
         where
        toJSON
          GoogleCloudDialogflowV2IntentTrainingPhrase'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gcdvitpParts,
                  ("name" .=) <$> _gcdvitpName,
                  ("timesAddedCount" .=) <$> _gcdvitpTimesAddedCount,
                  ("type" .=) <$> _gcdvitpType])

-- | An item in the carousel.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
    { _gImage       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gTitle       :: !(Maybe Text)
    , _gDescription :: !(Maybe Text)
    , _gInfo        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gImage'
--
-- * 'gTitle'
--
-- * 'gDescription'
--
-- * 'gInfo'
googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    :: GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
    { _gImage = Nothing
    , _gTitle = Nothing
    , _gDescription = Nothing
    , _gInfo = Nothing
    }

-- | Optional. The image to display.
gImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gImage = lens _gImage (\ s a -> s{_gImage = a})

-- | Required. Title of the carousel item.
gTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe Text)
gTitle = lens _gTitle (\ s a -> s{_gTitle = a})

-- | Optional. The body text of the card.
gDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | Required. Additional info about the option item.
gInfo :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
gInfo = lens _gInfo (\ s a -> s{_gInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gImage, ("title" .=) <$> _gTitle,
                  ("description" .=) <$> _gDescription,
                  ("info" .=) <$> _gInfo])

-- | The basic card message. Useful for displaying information.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBasicCard =
  GoogleCloudDialogflowV2IntentMessageBasicCard'
    { _gcdvimbcImage         :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimbcButtons       :: !(Maybe [GoogleCloudDialogflowV2IntentMessageBasicCardButton])
    , _gcdvimbcSubtitle      :: !(Maybe Text)
    , _gcdvimbcTitle         :: !(Maybe Text)
    , _gcdvimbcFormattedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcImage'
--
-- * 'gcdvimbcButtons'
--
-- * 'gcdvimbcSubtitle'
--
-- * 'gcdvimbcTitle'
--
-- * 'gcdvimbcFormattedText'
googleCloudDialogflowV2IntentMessageBasicCard
    :: GoogleCloudDialogflowV2IntentMessageBasicCard
googleCloudDialogflowV2IntentMessageBasicCard =
  GoogleCloudDialogflowV2IntentMessageBasicCard'
    { _gcdvimbcImage = Nothing
    , _gcdvimbcButtons = Nothing
    , _gcdvimbcSubtitle = Nothing
    , _gcdvimbcTitle = Nothing
    , _gcdvimbcFormattedText = Nothing
    }

-- | Optional. The image for the card.
gcdvimbcImage :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimbcImage
  = lens _gcdvimbcImage
      (\ s a -> s{_gcdvimbcImage = a})

-- | Optional. The collection of card buttons.
gcdvimbcButtons :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard [GoogleCloudDialogflowV2IntentMessageBasicCardButton]
gcdvimbcButtons
  = lens _gcdvimbcButtons
      (\ s a -> s{_gcdvimbcButtons = a})
      . _Default
      . _Coerce

-- | Optional. The subtitle of the card.
gcdvimbcSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcSubtitle
  = lens _gcdvimbcSubtitle
      (\ s a -> s{_gcdvimbcSubtitle = a})

-- | Optional. The title of the card.
gcdvimbcTitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcTitle
  = lens _gcdvimbcTitle
      (\ s a -> s{_gcdvimbcTitle = a})

-- | Required, unless image is present. The body text of the card.
gcdvimbcFormattedText :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcFormattedText
  = lens _gcdvimbcFormattedText
      (\ s a -> s{_gcdvimbcFormattedText = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCard' <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "subtitle")
                     <*> (o .:? "title")
                     <*> (o .:? "formattedText"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCard
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimbcImage,
                  ("buttons" .=) <$> _gcdvimbcButtons,
                  ("subtitle" .=) <$> _gcdvimbcSubtitle,
                  ("title" .=) <$> _gcdvimbcTitle,
                  ("formattedText" .=) <$> _gcdvimbcFormattedText])

-- | The simple response message containing speech or text.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSimpleResponse' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
    { _gDisplayText  :: !(Maybe Text)
    , _gSsml         :: !(Maybe Text)
    , _gTextToSpeech :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDisplayText'
--
-- * 'gSsml'
--
-- * 'gTextToSpeech'
googleCloudDialogflowV2beta1IntentMessageSimpleResponse
    :: GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
googleCloudDialogflowV2beta1IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
    {_gDisplayText = Nothing, _gSsml = Nothing, _gTextToSpeech = Nothing}

-- | Optional. The text to display.
gDisplayText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gDisplayText
  = lens _gDisplayText (\ s a -> s{_gDisplayText = a})

-- | One of text_to_speech or ssml must be provided. Structured spoken
-- response to the user in the SSML format. Mutually exclusive with
-- text_to_speech.
gSsml :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gSsml = lens _gSsml (\ s a -> s{_gSsml = a})

-- | One of text_to_speech or ssml must be provided. The plain text of the
-- speech output. Mutually exclusive with ssml.
gTextToSpeech :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gTextToSpeech
  = lens _gTextToSpeech
      (\ s a -> s{_gTextToSpeech = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
                   <$>
                   (o .:? "displayText") <*> (o .:? "ssml") <*>
                     (o .:? "textToSpeech"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'{..}
          = object
              (catMaybes
                 [("displayText" .=) <$> _gDisplayText,
                  ("ssml" .=) <$> _gSsml,
                  ("textToSpeech" .=) <$> _gTextToSpeech])

-- | Represents an intent. Intents convert a number of user expressions or
-- patterns into an action. An action is an extraction of a user command or
-- sentence semantics.
--
-- /See:/ 'googleCloudDialogflowV2Intent' smart constructor.
data GoogleCloudDialogflowV2Intent =
  GoogleCloudDialogflowV2Intent'
    { _gcdviDefaultResponsePlatforms :: !(Maybe [Text])
    , _gcdviWebhookState             :: !(Maybe GoogleCloudDialogflowV2IntentWebhookState)
    , _gcdviPriority                 :: !(Maybe (Textual Int32))
    , _gcdviAction                   :: !(Maybe Text)
    , _gcdviRootFollowupIntentName   :: !(Maybe Text)
    , _gcdviName                     :: !(Maybe Text)
    , _gcdviEvents                   :: !(Maybe [Text])
    , _gcdviParameters               :: !(Maybe [GoogleCloudDialogflowV2IntentParameter])
    , _gcdviDisplayName              :: !(Maybe Text)
    , _gcdviInputContextNames        :: !(Maybe [Text])
    , _gcdviMessages                 :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gcdviParentFollowupIntentName :: !(Maybe Text)
    , _gcdviOutputContexts           :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdviTrainingPhrases          :: !(Maybe [GoogleCloudDialogflowV2IntentTrainingPhrase])
    , _gcdviFollowupIntentInfo       :: !(Maybe [GoogleCloudDialogflowV2IntentFollowupIntentInfo])
    , _gcdviIsFallback               :: !(Maybe Bool)
    , _gcdviMlDisabled               :: !(Maybe Bool)
    , _gcdviResetContexts            :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2Intent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdviDefaultResponsePlatforms'
--
-- * 'gcdviWebhookState'
--
-- * 'gcdviPriority'
--
-- * 'gcdviAction'
--
-- * 'gcdviRootFollowupIntentName'
--
-- * 'gcdviName'
--
-- * 'gcdviEvents'
--
-- * 'gcdviParameters'
--
-- * 'gcdviDisplayName'
--
-- * 'gcdviInputContextNames'
--
-- * 'gcdviMessages'
--
-- * 'gcdviParentFollowupIntentName'
--
-- * 'gcdviOutputContexts'
--
-- * 'gcdviTrainingPhrases'
--
-- * 'gcdviFollowupIntentInfo'
--
-- * 'gcdviIsFallback'
--
-- * 'gcdviMlDisabled'
--
-- * 'gcdviResetContexts'
googleCloudDialogflowV2Intent
    :: GoogleCloudDialogflowV2Intent
googleCloudDialogflowV2Intent =
  GoogleCloudDialogflowV2Intent'
    { _gcdviDefaultResponsePlatforms = Nothing
    , _gcdviWebhookState = Nothing
    , _gcdviPriority = Nothing
    , _gcdviAction = Nothing
    , _gcdviRootFollowupIntentName = Nothing
    , _gcdviName = Nothing
    , _gcdviEvents = Nothing
    , _gcdviParameters = Nothing
    , _gcdviDisplayName = Nothing
    , _gcdviInputContextNames = Nothing
    , _gcdviMessages = Nothing
    , _gcdviParentFollowupIntentName = Nothing
    , _gcdviOutputContexts = Nothing
    , _gcdviTrainingPhrases = Nothing
    , _gcdviFollowupIntentInfo = Nothing
    , _gcdviIsFallback = Nothing
    , _gcdviMlDisabled = Nothing
    , _gcdviResetContexts = Nothing
    }

-- | Optional. The list of platforms for which the first response will be
-- taken from among the messages assigned to the DEFAULT_PLATFORM.
gcdviDefaultResponsePlatforms :: Lens' GoogleCloudDialogflowV2Intent [Text]
gcdviDefaultResponsePlatforms
  = lens _gcdviDefaultResponsePlatforms
      (\ s a -> s{_gcdviDefaultResponsePlatforms = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether webhooks are enabled for the intent.
gcdviWebhookState :: Lens' GoogleCloudDialogflowV2Intent (Maybe GoogleCloudDialogflowV2IntentWebhookState)
gcdviWebhookState
  = lens _gcdviWebhookState
      (\ s a -> s{_gcdviWebhookState = a})

-- | Optional. The priority of this intent. Higher numbers represent higher
-- priorities. If this is zero or unspecified, we use the default priority
-- 500000. Negative numbers mean that the intent is disabled.
gcdviPriority :: Lens' GoogleCloudDialogflowV2Intent (Maybe Int32)
gcdviPriority
  = lens _gcdviPriority
      (\ s a -> s{_gcdviPriority = a})
      . mapping _Coerce

-- | Optional. The name of the action associated with the intent. Note: The
-- action name must not contain whitespaces.
gcdviAction :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviAction
  = lens _gcdviAction (\ s a -> s{_gcdviAction = a})

-- | Read-only. The unique identifier of the root intent in the chain of
-- followup intents. It identifies the correct followup intents chain for
-- this intent. We populate this field only in the output. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdviRootFollowupIntentName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviRootFollowupIntentName
  = lens _gcdviRootFollowupIntentName
      (\ s a -> s{_gcdviRootFollowupIntentName = a})

-- | The unique identifier of this intent. Required for Intents.UpdateIntent
-- and Intents.BatchUpdateIntents methods. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdviName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviName
  = lens _gcdviName (\ s a -> s{_gcdviName = a})

-- | Optional. The collection of event names that trigger the intent. If the
-- collection of input contexts is not empty, all of the contexts must be
-- present in the active user session for an event to trigger this intent.
gcdviEvents :: Lens' GoogleCloudDialogflowV2Intent [Text]
gcdviEvents
  = lens _gcdviEvents (\ s a -> s{_gcdviEvents = a}) .
      _Default
      . _Coerce

-- | Optional. The collection of parameters associated with the intent.
gcdviParameters :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentParameter]
gcdviParameters
  = lens _gcdviParameters
      (\ s a -> s{_gcdviParameters = a})
      . _Default
      . _Coerce

-- | Required. The name of this intent.
gcdviDisplayName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviDisplayName
  = lens _gcdviDisplayName
      (\ s a -> s{_gcdviDisplayName = a})

-- | Optional. The list of context names required for this intent to be
-- triggered. Format: \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdviInputContextNames :: Lens' GoogleCloudDialogflowV2Intent [Text]
gcdviInputContextNames
  = lens _gcdviInputContextNames
      (\ s a -> s{_gcdviInputContextNames = a})
      . _Default
      . _Coerce

-- | Optional. The collection of rich messages corresponding to the
-- \`Response\` field in the Dialogflow console.
gcdviMessages :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentMessage]
gcdviMessages
  = lens _gcdviMessages
      (\ s a -> s{_gcdviMessages = a})
      . _Default
      . _Coerce

-- | Read-only after creation. The unique identifier of the parent intent in
-- the chain of followup intents. You can set this field when creating an
-- intent, for example with CreateIntent or BatchUpdateIntents, in order to
-- make this intent a followup intent. It identifies the parent followup
-- intent. Format: \`projects\/\/agent\/intents\/\`.
gcdviParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviParentFollowupIntentName
  = lens _gcdviParentFollowupIntentName
      (\ s a -> s{_gcdviParentFollowupIntentName = a})

-- | Optional. The collection of contexts that are activated when the intent
-- is matched. Context messages in this collection should not set the
-- parameters field. Setting the \`lifespan_count\` to 0 will reset the
-- context when the intent is matched. Format:
-- \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdviOutputContexts :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2Context]
gcdviOutputContexts
  = lens _gcdviOutputContexts
      (\ s a -> s{_gcdviOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. The collection of examples that the agent is trained on.
gcdviTrainingPhrases :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentTrainingPhrase]
gcdviTrainingPhrases
  = lens _gcdviTrainingPhrases
      (\ s a -> s{_gcdviTrainingPhrases = a})
      . _Default
      . _Coerce

-- | Read-only. Information about all followup intents that have this intent
-- as a direct or indirect parent. We populate this field only in the
-- output.
gcdviFollowupIntentInfo :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentFollowupIntentInfo]
gcdviFollowupIntentInfo
  = lens _gcdviFollowupIntentInfo
      (\ s a -> s{_gcdviFollowupIntentInfo = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether this is a fallback intent.
gcdviIsFallback :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviIsFallback
  = lens _gcdviIsFallback
      (\ s a -> s{_gcdviIsFallback = a})

-- | Optional. Indicates whether Machine Learning is disabled for the intent.
-- Note: If \`ml_diabled\` setting is set to true, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off.
gcdviMlDisabled :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviMlDisabled
  = lens _gcdviMlDisabled
      (\ s a -> s{_gcdviMlDisabled = a})

-- | Optional. Indicates whether to delete all contexts in the current
-- session when this intent is matched.
gcdviResetContexts :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviResetContexts
  = lens _gcdviResetContexts
      (\ s a -> s{_gcdviResetContexts = a})

instance FromJSON GoogleCloudDialogflowV2Intent where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Intent"
              (\ o ->
                 GoogleCloudDialogflowV2Intent' <$>
                   (o .:? "defaultResponsePlatforms" .!= mempty) <*>
                     (o .:? "webhookState")
                     <*> (o .:? "priority")
                     <*> (o .:? "action")
                     <*> (o .:? "rootFollowupIntentName")
                     <*> (o .:? "name")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "inputContextNames" .!= mempty)
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "parentFollowupIntentName")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "trainingPhrases" .!= mempty)
                     <*> (o .:? "followupIntentInfo" .!= mempty)
                     <*> (o .:? "isFallback")
                     <*> (o .:? "mlDisabled")
                     <*> (o .:? "resetContexts"))

instance ToJSON GoogleCloudDialogflowV2Intent where
        toJSON GoogleCloudDialogflowV2Intent'{..}
          = object
              (catMaybes
                 [("defaultResponsePlatforms" .=) <$>
                    _gcdviDefaultResponsePlatforms,
                  ("webhookState" .=) <$> _gcdviWebhookState,
                  ("priority" .=) <$> _gcdviPriority,
                  ("action" .=) <$> _gcdviAction,
                  ("rootFollowupIntentName" .=) <$>
                    _gcdviRootFollowupIntentName,
                  ("name" .=) <$> _gcdviName,
                  ("events" .=) <$> _gcdviEvents,
                  ("parameters" .=) <$> _gcdviParameters,
                  ("displayName" .=) <$> _gcdviDisplayName,
                  ("inputContextNames" .=) <$> _gcdviInputContextNames,
                  ("messages" .=) <$> _gcdviMessages,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdviParentFollowupIntentName,
                  ("outputContexts" .=) <$> _gcdviOutputContexts,
                  ("trainingPhrases" .=) <$> _gcdviTrainingPhrases,
                  ("followupIntentInfo" .=) <$>
                    _gcdviFollowupIntentInfo,
                  ("isFallback" .=) <$> _gcdviIsFallback,
                  ("mlDisabled" .=) <$> _gcdviMlDisabled,
                  ("resetContexts" .=) <$> _gcdviResetContexts])

-- | The button object that appears at the bottom of a card.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCardButton' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
    { _gcdvimbcbOpenURIAction :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction)
    , _gcdvimbcbTitle         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbOpenURIAction'
--
-- * 'gcdvimbcbTitle'
googleCloudDialogflowV2beta1IntentMessageBasicCardButton
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
googleCloudDialogflowV2beta1IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
    {_gcdvimbcbOpenURIAction = Nothing, _gcdvimbcbTitle = Nothing}

-- | Required. Action to take when a user taps on the button.
gcdvimbcbOpenURIAction :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton (Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction)
gcdvimbcbOpenURIAction
  = lens _gcdvimbcbOpenURIAction
      (\ s a -> s{_gcdvimbcbOpenURIAction = a})

-- | Required. The title of the button.
gcdvimbcbTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton (Maybe Text)
gcdvimbcbTitle
  = lens _gcdvimbcbTitle
      (\ s a -> s{_gcdvimbcbTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
                   <$> (o .:? "openUriAction") <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'{..}
          = object
              (catMaybes
                 [("openUriAction" .=) <$> _gcdvimbcbOpenURIAction,
                  ("title" .=) <$> _gcdvimbcbTitle])

-- | The request message for EntityTypes.BatchCreateEntities.
--
-- /See:/ 'googleCloudDialogflowV2BatchCreateEntitiesRequest' smart constructor.
data GoogleCloudDialogflowV2BatchCreateEntitiesRequest =
  GoogleCloudDialogflowV2BatchCreateEntitiesRequest'
    { _gcdvbcerLanguageCode :: !(Maybe Text)
    , _gcdvbcerEntities     :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchCreateEntitiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbcerLanguageCode'
--
-- * 'gcdvbcerEntities'
googleCloudDialogflowV2BatchCreateEntitiesRequest
    :: GoogleCloudDialogflowV2BatchCreateEntitiesRequest
googleCloudDialogflowV2BatchCreateEntitiesRequest =
  GoogleCloudDialogflowV2BatchCreateEntitiesRequest'
    {_gcdvbcerLanguageCode = Nothing, _gcdvbcerEntities = Nothing}

-- | Optional. The language of entity synonyms defined in \`entities\`. If
-- not specified, the agent\'s default language is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
gcdvbcerLanguageCode :: Lens' GoogleCloudDialogflowV2BatchCreateEntitiesRequest (Maybe Text)
gcdvbcerLanguageCode
  = lens _gcdvbcerLanguageCode
      (\ s a -> s{_gcdvbcerLanguageCode = a})

-- | Required. The entities to create.
gcdvbcerEntities :: Lens' GoogleCloudDialogflowV2BatchCreateEntitiesRequest [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvbcerEntities
  = lens _gcdvbcerEntities
      (\ s a -> s{_gcdvbcerEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchCreateEntitiesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchCreateEntitiesRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchCreateEntitiesRequest'
                   <$>
                   (o .:? "languageCode") <*>
                     (o .:? "entities" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchCreateEntitiesRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchCreateEntitiesRequest'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvbcerLanguageCode,
                  ("entities" .=) <$> _gcdvbcerEntities])

-- | The collection of suggestions.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSuggestions' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSuggestions =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
    { _gcdvimsSuggestions :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageSuggestion]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsSuggestions'
googleCloudDialogflowV2beta1IntentMessageSuggestions
    :: GoogleCloudDialogflowV2beta1IntentMessageSuggestions
googleCloudDialogflowV2beta1IntentMessageSuggestions =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
    {_gcdvimsSuggestions = Nothing}

-- | Required. The list of suggested replies.
gcdvimsSuggestions :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSuggestions [GoogleCloudDialogflowV2beta1IntentMessageSuggestion]
gcdvimsSuggestions
  = lens _gcdvimsSuggestions
      (\ s a -> s{_gcdvimsSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestions
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSuggestions"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
                   <$> (o .:? "suggestions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestions
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSuggestions'{..}
          = object
              (catMaybes
                 [("suggestions" .=) <$> _gcdvimsSuggestions])

-- | The request message for Intents.BatchDeleteIntents.
--
-- /See:/ 'googleCloudDialogflowV2BatchDeleteIntentsRequest' smart constructor.
newtype GoogleCloudDialogflowV2BatchDeleteIntentsRequest =
  GoogleCloudDialogflowV2BatchDeleteIntentsRequest'
    { _gcdvbdirIntents :: Maybe [GoogleCloudDialogflowV2Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchDeleteIntentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbdirIntents'
googleCloudDialogflowV2BatchDeleteIntentsRequest
    :: GoogleCloudDialogflowV2BatchDeleteIntentsRequest
googleCloudDialogflowV2BatchDeleteIntentsRequest =
  GoogleCloudDialogflowV2BatchDeleteIntentsRequest' {_gcdvbdirIntents = Nothing}

-- | Required. The collection of intents to delete. Only intent \`name\` must
-- be filled in.
gcdvbdirIntents :: Lens' GoogleCloudDialogflowV2BatchDeleteIntentsRequest [GoogleCloudDialogflowV2Intent]
gcdvbdirIntents
  = lens _gcdvbdirIntents
      (\ s a -> s{_gcdvbdirIntents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchDeleteIntentsRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchDeleteIntentsRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchDeleteIntentsRequest' <$>
                   (o .:? "intents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchDeleteIntentsRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchDeleteIntentsRequest'{..}
          = object
              (catMaybes [("intents" .=) <$> _gcdvbdirIntents])

-- | Represents the result of conversational query or event processing.
--
-- /See:/ 'googleCloudDialogflowV2QueryResult' smart constructor.
data GoogleCloudDialogflowV2QueryResult =
  GoogleCloudDialogflowV2QueryResult'
    { _gcdvqrLanguageCode                :: !(Maybe Text)
    , _gcdvqrAllRequiredParamsPresent    :: !(Maybe Bool)
    , _gcdvqrIntentDetectionConfidence   :: !(Maybe (Textual Double))
    , _gcdvqrFulfillmentMessages         :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gcdvqrSpeechRecognitionConfidence :: !(Maybe (Textual Double))
    , _gcdvqrAction                      :: !(Maybe Text)
    , _gcdvqrIntent                      :: !(Maybe GoogleCloudDialogflowV2Intent)
    , _gcdvqrQueryText                   :: !(Maybe Text)
    , _gcdvqrFulfillmentText             :: !(Maybe Text)
    , _gcdvqrParameters                  :: !(Maybe GoogleCloudDialogflowV2QueryResultParameters)
    , _gcdvqrWebhookPayload              :: !(Maybe GoogleCloudDialogflowV2QueryResultWebhookPayload)
    , _gcdvqrOutputContexts              :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdvqrWebhookSource               :: !(Maybe Text)
    , _gcdvqrDiagnosticInfo              :: !(Maybe GoogleCloudDialogflowV2QueryResultDiagnosticInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrLanguageCode'
--
-- * 'gcdvqrAllRequiredParamsPresent'
--
-- * 'gcdvqrIntentDetectionConfidence'
--
-- * 'gcdvqrFulfillmentMessages'
--
-- * 'gcdvqrSpeechRecognitionConfidence'
--
-- * 'gcdvqrAction'
--
-- * 'gcdvqrIntent'
--
-- * 'gcdvqrQueryText'
--
-- * 'gcdvqrFulfillmentText'
--
-- * 'gcdvqrParameters'
--
-- * 'gcdvqrWebhookPayload'
--
-- * 'gcdvqrOutputContexts'
--
-- * 'gcdvqrWebhookSource'
--
-- * 'gcdvqrDiagnosticInfo'
googleCloudDialogflowV2QueryResult
    :: GoogleCloudDialogflowV2QueryResult
googleCloudDialogflowV2QueryResult =
  GoogleCloudDialogflowV2QueryResult'
    { _gcdvqrLanguageCode = Nothing
    , _gcdvqrAllRequiredParamsPresent = Nothing
    , _gcdvqrIntentDetectionConfidence = Nothing
    , _gcdvqrFulfillmentMessages = Nothing
    , _gcdvqrSpeechRecognitionConfidence = Nothing
    , _gcdvqrAction = Nothing
    , _gcdvqrIntent = Nothing
    , _gcdvqrQueryText = Nothing
    , _gcdvqrFulfillmentText = Nothing
    , _gcdvqrParameters = Nothing
    , _gcdvqrWebhookPayload = Nothing
    , _gcdvqrOutputContexts = Nothing
    , _gcdvqrWebhookSource = Nothing
    , _gcdvqrDiagnosticInfo = Nothing
    }

-- | The language that was triggered during intent detection. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/reference\/language) for a list
-- of the currently supported language codes.
gcdvqrLanguageCode :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrLanguageCode
  = lens _gcdvqrLanguageCode
      (\ s a -> s{_gcdvqrLanguageCode = a})

-- | This field is set to: - \`false\` if the matched intent has required
-- parameters and not all of the required parameter values have been
-- collected. - \`true\` if all required parameter values have been
-- collected, or if the matched intent doesn\'t contain any required
-- parameters.
gcdvqrAllRequiredParamsPresent :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Bool)
gcdvqrAllRequiredParamsPresent
  = lens _gcdvqrAllRequiredParamsPresent
      (\ s a -> s{_gcdvqrAllRequiredParamsPresent = a})

-- | The intent detection confidence. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). If there are \`multiple
-- knowledge_answers\` messages, this value is set to the greatest
-- \`knowledgeAnswers.match_confidence\` value in the list.
gcdvqrIntentDetectionConfidence :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Double)
gcdvqrIntentDetectionConfidence
  = lens _gcdvqrIntentDetectionConfidence
      (\ s a -> s{_gcdvqrIntentDetectionConfidence = a})
      . mapping _Coerce

-- | The collection of rich messages to present to the user.
gcdvqrFulfillmentMessages :: Lens' GoogleCloudDialogflowV2QueryResult [GoogleCloudDialogflowV2IntentMessage]
gcdvqrFulfillmentMessages
  = lens _gcdvqrFulfillmentMessages
      (\ s a -> s{_gcdvqrFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | The Speech recognition confidence between 0.0 and 1.0. A higher number
-- indicates an estimated greater likelihood that the recognized words are
-- correct. The default of 0.0 is a sentinel value indicating that
-- confidence was not set. This field is not guaranteed to be accurate or
-- set. In particular this field isn\'t set for StreamingDetectIntent since
-- the streaming endpoint has separate confidence estimates per portion of
-- the audio in StreamingRecognitionResult.
gcdvqrSpeechRecognitionConfidence :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Double)
gcdvqrSpeechRecognitionConfidence
  = lens _gcdvqrSpeechRecognitionConfidence
      (\ s a -> s{_gcdvqrSpeechRecognitionConfidence = a})
      . mapping _Coerce

-- | The action name from the matched intent.
gcdvqrAction :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrAction
  = lens _gcdvqrAction (\ s a -> s{_gcdvqrAction = a})

-- | The intent that matched the conversational query. Some, not all fields
-- are filled in this message, including but not limited to: \`name\`,
-- \`display_name\` and \`webhook_state\`.
gcdvqrIntent :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2Intent)
gcdvqrIntent
  = lens _gcdvqrIntent (\ s a -> s{_gcdvqrIntent = a})

-- | The original conversational query text: - If natural language text was
-- provided as input, \`query_text\` contains a copy of the input. - If
-- natural language speech audio was provided as input, \`query_text\`
-- contains the speech recognition result. If speech recognizer produced
-- multiple alternatives, a particular one is picked. - If an event was
-- provided as input, \`query_text\` is not set.
gcdvqrQueryText :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrQueryText
  = lens _gcdvqrQueryText
      (\ s a -> s{_gcdvqrQueryText = a})

-- | The text to be pronounced to the user or shown on the screen. Note: This
-- is a legacy field, \`fulfillment_messages\` should be preferred.
gcdvqrFulfillmentText :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrFulfillmentText
  = lens _gcdvqrFulfillmentText
      (\ s a -> s{_gcdvqrFulfillmentText = a})

-- | The collection of extracted parameters.
gcdvqrParameters :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultParameters)
gcdvqrParameters
  = lens _gcdvqrParameters
      (\ s a -> s{_gcdvqrParameters = a})

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
gcdvqrWebhookPayload :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultWebhookPayload)
gcdvqrWebhookPayload
  = lens _gcdvqrWebhookPayload
      (\ s a -> s{_gcdvqrWebhookPayload = a})

-- | The collection of output contexts. If applicable,
-- \`output_contexts.parameters\` contains entries with name \`.original\`
-- containing the original parameter values before the query.
gcdvqrOutputContexts :: Lens' GoogleCloudDialogflowV2QueryResult [GoogleCloudDialogflowV2Context]
gcdvqrOutputContexts
  = lens _gcdvqrOutputContexts
      (\ s a -> s{_gcdvqrOutputContexts = a})
      . _Default
      . _Coerce

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`source\` field returned in the webhook response.
gcdvqrWebhookSource :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrWebhookSource
  = lens _gcdvqrWebhookSource
      (\ s a -> s{_gcdvqrWebhookSource = a})

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
gcdvqrDiagnosticInfo :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultDiagnosticInfo)
gcdvqrDiagnosticInfo
  = lens _gcdvqrDiagnosticInfo
      (\ s a -> s{_gcdvqrDiagnosticInfo = a})

instance FromJSON GoogleCloudDialogflowV2QueryResult
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2QueryResult"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResult' <$>
                   (o .:? "languageCode") <*>
                     (o .:? "allRequiredParamsPresent")
                     <*> (o .:? "intentDetectionConfidence")
                     <*> (o .:? "fulfillmentMessages" .!= mempty)
                     <*> (o .:? "speechRecognitionConfidence")
                     <*> (o .:? "action")
                     <*> (o .:? "intent")
                     <*> (o .:? "queryText")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "parameters")
                     <*> (o .:? "webhookPayload")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "webhookSource")
                     <*> (o .:? "diagnosticInfo"))

instance ToJSON GoogleCloudDialogflowV2QueryResult
         where
        toJSON GoogleCloudDialogflowV2QueryResult'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvqrLanguageCode,
                  ("allRequiredParamsPresent" .=) <$>
                    _gcdvqrAllRequiredParamsPresent,
                  ("intentDetectionConfidence" .=) <$>
                    _gcdvqrIntentDetectionConfidence,
                  ("fulfillmentMessages" .=) <$>
                    _gcdvqrFulfillmentMessages,
                  ("speechRecognitionConfidence" .=) <$>
                    _gcdvqrSpeechRecognitionConfidence,
                  ("action" .=) <$> _gcdvqrAction,
                  ("intent" .=) <$> _gcdvqrIntent,
                  ("queryText" .=) <$> _gcdvqrQueryText,
                  ("fulfillmentText" .=) <$> _gcdvqrFulfillmentText,
                  ("parameters" .=) <$> _gcdvqrParameters,
                  ("webhookPayload" .=) <$> _gcdvqrWebhookPayload,
                  ("outputContexts" .=) <$> _gcdvqrOutputContexts,
                  ("webhookSource" .=) <$> _gcdvqrWebhookSource,
                  ("diagnosticInfo" .=) <$> _gcdvqrDiagnosticInfo])

-- | The request message for Intents.BatchUpdateIntents.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateIntentsRequest' smart constructor.
data GoogleCloudDialogflowV2BatchUpdateIntentsRequest =
  GoogleCloudDialogflowV2BatchUpdateIntentsRequest'
    { _gcdvbuirLanguageCode      :: !(Maybe Text)
    , _gcdvbuirUpdateMask        :: !(Maybe GFieldMask)
    , _gcdvbuirIntentView        :: !(Maybe GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView)
    , _gcdvbuirIntentBatchURI    :: !(Maybe Text)
    , _gcdvbuirIntentBatchInline :: !(Maybe GoogleCloudDialogflowV2IntentBatch)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateIntentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuirLanguageCode'
--
-- * 'gcdvbuirUpdateMask'
--
-- * 'gcdvbuirIntentView'
--
-- * 'gcdvbuirIntentBatchURI'
--
-- * 'gcdvbuirIntentBatchInline'
googleCloudDialogflowV2BatchUpdateIntentsRequest
    :: GoogleCloudDialogflowV2BatchUpdateIntentsRequest
googleCloudDialogflowV2BatchUpdateIntentsRequest =
  GoogleCloudDialogflowV2BatchUpdateIntentsRequest'
    { _gcdvbuirLanguageCode = Nothing
    , _gcdvbuirUpdateMask = Nothing
    , _gcdvbuirIntentView = Nothing
    , _gcdvbuirIntentBatchURI = Nothing
    , _gcdvbuirIntentBatchInline = Nothing
    }

-- | Optional. The language of training phrases, parameters and rich messages
-- defined in \`intents\`. If not specified, the agent\'s default language
-- is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
gcdvbuirLanguageCode :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsRequest (Maybe Text)
gcdvbuirLanguageCode
  = lens _gcdvbuirLanguageCode
      (\ s a -> s{_gcdvbuirLanguageCode = a})

-- | Optional. The mask to control which fields get updated.
gcdvbuirUpdateMask :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsRequest (Maybe GFieldMask)
gcdvbuirUpdateMask
  = lens _gcdvbuirUpdateMask
      (\ s a -> s{_gcdvbuirUpdateMask = a})

-- | Optional. The resource view to apply to the returned intent.
gcdvbuirIntentView :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsRequest (Maybe GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView)
gcdvbuirIntentView
  = lens _gcdvbuirIntentView
      (\ s a -> s{_gcdvbuirIntentView = a})

-- | The URI to a Google Cloud Storage file containing intents to update or
-- create. The file format can either be a serialized proto (of IntentBatch
-- type) or JSON object. Note: The URI must start with \"gs:\/\/\".
gcdvbuirIntentBatchURI :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsRequest (Maybe Text)
gcdvbuirIntentBatchURI
  = lens _gcdvbuirIntentBatchURI
      (\ s a -> s{_gcdvbuirIntentBatchURI = a})

-- | The collection of intents to update or create.
gcdvbuirIntentBatchInline :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsRequest (Maybe GoogleCloudDialogflowV2IntentBatch)
gcdvbuirIntentBatchInline
  = lens _gcdvbuirIntentBatchInline
      (\ s a -> s{_gcdvbuirIntentBatchInline = a})

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateIntentsRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateIntentsRequest' <$>
                   (o .:? "languageCode") <*> (o .:? "updateMask") <*>
                     (o .:? "intentView")
                     <*> (o .:? "intentBatchUri")
                     <*> (o .:? "intentBatchInline"))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateIntentsRequest'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvbuirLanguageCode,
                  ("updateMask" .=) <$> _gcdvbuirUpdateMask,
                  ("intentView" .=) <$> _gcdvbuirIntentView,
                  ("intentBatchUri" .=) <$> _gcdvbuirIntentBatchURI,
                  ("intentBatchInline" .=) <$>
                    _gcdvbuirIntentBatchInline])

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'googleTypeLatLng' smart constructor.
data GoogleTypeLatLng =
  GoogleTypeLatLng'
    { _gtllLatitude  :: !(Maybe (Textual Double))
    , _gtllLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleTypeLatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtllLatitude'
--
-- * 'gtllLongitude'
googleTypeLatLng
    :: GoogleTypeLatLng
googleTypeLatLng =
  GoogleTypeLatLng' {_gtllLatitude = Nothing, _gtllLongitude = Nothing}

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
gtllLatitude :: Lens' GoogleTypeLatLng (Maybe Double)
gtllLatitude
  = lens _gtllLatitude (\ s a -> s{_gtllLatitude = a})
      . mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
gtllLongitude :: Lens' GoogleTypeLatLng (Maybe Double)
gtllLongitude
  = lens _gtllLongitude
      (\ s a -> s{_gtllLongitude = a})
      . mapping _Coerce

instance FromJSON GoogleTypeLatLng where
        parseJSON
          = withObject "GoogleTypeLatLng"
              (\ o ->
                 GoogleTypeLatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GoogleTypeLatLng where
        toJSON GoogleTypeLatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gtllLatitude,
                  ("longitude" .=) <$> _gtllLongitude])

-- | The response message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookResponse' smart constructor.
data GoogleCloudDialogflowV2beta1WebhookResponse =
  GoogleCloudDialogflowV2beta1WebhookResponse'
    { _gcdvwrFulfillmentMessages :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gcdvwrPayload             :: !(Maybe GoogleCloudDialogflowV2beta1WebhookResponsePayload)
    , _gcdvwrFulfillmentText     :: !(Maybe Text)
    , _gcdvwrSource              :: !(Maybe Text)
    , _gcdvwrEndInteraction      :: !(Maybe Bool)
    , _gcdvwrOutputContexts      :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gcdvwrFollowupEventInput  :: !(Maybe GoogleCloudDialogflowV2beta1EventInput)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrFulfillmentMessages'
--
-- * 'gcdvwrPayload'
--
-- * 'gcdvwrFulfillmentText'
--
-- * 'gcdvwrSource'
--
-- * 'gcdvwrEndInteraction'
--
-- * 'gcdvwrOutputContexts'
--
-- * 'gcdvwrFollowupEventInput'
googleCloudDialogflowV2beta1WebhookResponse
    :: GoogleCloudDialogflowV2beta1WebhookResponse
googleCloudDialogflowV2beta1WebhookResponse =
  GoogleCloudDialogflowV2beta1WebhookResponse'
    { _gcdvwrFulfillmentMessages = Nothing
    , _gcdvwrPayload = Nothing
    , _gcdvwrFulfillmentText = Nothing
    , _gcdvwrSource = Nothing
    , _gcdvwrEndInteraction = Nothing
    , _gcdvwrOutputContexts = Nothing
    , _gcdvwrFollowupEventInput = Nothing
    }

-- | Optional. The collection of rich messages to present to the user. This
-- value is passed directly to \`QueryResult.fulfillment_messages\`.
gcdvwrFulfillmentMessages :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse [GoogleCloudDialogflowV2beta1IntentMessage]
gcdvwrFulfillmentMessages
  = lens _gcdvwrFulfillmentMessages
      (\ s a -> s{_gcdvwrFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_payload\`. See the related
-- \`fulfillment_messages[i].payload field\`, which may be used as an
-- alternative to this field. This field can be used for Actions on Google
-- responses. It should have a structure similar to the JSON message shown
-- here. For more information, see [Actions on Google Webhook
-- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
--
-- > {
-- >   "google": {
-- >     "expectUserResponse": true,
-- >     "richResponse": {
-- >       "items": [
-- >         {
-- >           "simpleResponse": {
-- >             "textToSpeech": "this is a simple response"
-- >           }
-- >         }
-- >       ]
-- >     }
-- >   }
-- > }
gcdvwrPayload :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe GoogleCloudDialogflowV2beta1WebhookResponsePayload)
gcdvwrPayload
  = lens _gcdvwrPayload
      (\ s a -> s{_gcdvwrPayload = a})

-- | Optional. The text to be shown on the screen. This value is passed
-- directly to \`QueryResult.fulfillment_text\`.
gcdvwrFulfillmentText :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Text)
gcdvwrFulfillmentText
  = lens _gcdvwrFulfillmentText
      (\ s a -> s{_gcdvwrFulfillmentText = a})

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_source\`.
gcdvwrSource :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Text)
gcdvwrSource
  = lens _gcdvwrSource (\ s a -> s{_gcdvwrSource = a})

-- | Optional. Indicates that this intent ends an interaction. Some
-- integrations (e.g., Actions on Google or Dialogflow phone gateway) use
-- this information to close interaction with an end user. Default is
-- false.
gcdvwrEndInteraction :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Bool)
gcdvwrEndInteraction
  = lens _gcdvwrEndInteraction
      (\ s a -> s{_gcdvwrEndInteraction = a})

-- | Optional. The collection of output contexts. This value is passed
-- directly to \`QueryResult.output_contexts\`.
gcdvwrOutputContexts :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse [GoogleCloudDialogflowV2beta1Context]
gcdvwrOutputContexts
  = lens _gcdvwrOutputContexts
      (\ s a -> s{_gcdvwrOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. Makes the platform immediately invoke another \`DetectIntent\`
-- call internally with the specified event as input.
gcdvwrFollowupEventInput :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe GoogleCloudDialogflowV2beta1EventInput)
gcdvwrFollowupEventInput
  = lens _gcdvwrFollowupEventInput
      (\ s a -> s{_gcdvwrFollowupEventInput = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookResponse' <$>
                   (o .:? "fulfillmentMessages" .!= mempty) <*>
                     (o .:? "payload")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "source")
                     <*> (o .:? "endInteraction")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "followupEventInput"))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1WebhookResponse'{..}
          = object
              (catMaybes
                 [("fulfillmentMessages" .=) <$>
                    _gcdvwrFulfillmentMessages,
                  ("payload" .=) <$> _gcdvwrPayload,
                  ("fulfillmentText" .=) <$> _gcdvwrFulfillmentText,
                  ("source" .=) <$> _gcdvwrSource,
                  ("endInteraction" .=) <$> _gcdvwrEndInteraction,
                  ("outputContexts" .=) <$> _gcdvwrOutputContexts,
                  ("followupEventInput" .=) <$>
                    _gcdvwrFollowupEventInput])

-- | Optional. The collection of parameters associated with the event.
--
-- /See:/ 'googleCloudDialogflowV2beta1EventInputParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1EventInputParameters =
  GoogleCloudDialogflowV2beta1EventInputParameters'
    { _gcdveipAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1EventInputParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveipAddtional'
googleCloudDialogflowV2beta1EventInputParameters
    :: HashMap Text JSONValue -- ^ 'gcdveipAddtional'
    -> GoogleCloudDialogflowV2beta1EventInputParameters
googleCloudDialogflowV2beta1EventInputParameters pGcdveipAddtional_ =
  GoogleCloudDialogflowV2beta1EventInputParameters'
    {_gcdveipAddtional = _Coerce # pGcdveipAddtional_}

-- | Properties of the object.
gcdveipAddtional :: Lens' GoogleCloudDialogflowV2beta1EventInputParameters (HashMap Text JSONValue)
gcdveipAddtional
  = lens _gcdveipAddtional
      (\ s a -> s{_gcdveipAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1EventInputParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1EventInputParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EventInputParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1EventInputParameters
         where
        toJSON = toJSON . _gcdveipAddtional

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular for the Telephony Gateway this
-- field has the form:
--
-- > {
-- >  "telephony": {
-- >    "caller_id": "+18558363987"
-- >  }
-- > }
--
-- Note: The caller ID field (\`caller_id\`) will be redacted for Standard
-- Edition agents and populated with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Enterprise Edition
-- agents.
--
-- /See:/ 'googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
    { _gcdvodirpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirpAddtional'
googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
    :: HashMap Text JSONValue -- ^ 'gcdvodirpAddtional'
    -> GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload pGcdvodirpAddtional_ =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
    {_gcdvodirpAddtional = _Coerce # pGcdvodirpAddtional_}

-- | Properties of the object.
gcdvodirpAddtional :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload (HashMap Text JSONValue)
gcdvodirpAddtional
  = lens _gcdvodirpAddtional
      (\ s a -> s{_gcdvodirpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
         where
        toJSON = toJSON . _gcdvodirpAddtional

-- | The quick replies response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageQuickReplies' smart constructor.
data GoogleCloudDialogflowV2IntentMessageQuickReplies =
  GoogleCloudDialogflowV2IntentMessageQuickReplies'
    { _gcdvimqrTitle        :: !(Maybe Text)
    , _gcdvimqrQuickReplies :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageQuickReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimqrTitle'
--
-- * 'gcdvimqrQuickReplies'
googleCloudDialogflowV2IntentMessageQuickReplies
    :: GoogleCloudDialogflowV2IntentMessageQuickReplies
googleCloudDialogflowV2IntentMessageQuickReplies =
  GoogleCloudDialogflowV2IntentMessageQuickReplies'
    {_gcdvimqrTitle = Nothing, _gcdvimqrQuickReplies = Nothing}

-- | Optional. The title of the collection of quick replies.
gcdvimqrTitle :: Lens' GoogleCloudDialogflowV2IntentMessageQuickReplies (Maybe Text)
gcdvimqrTitle
  = lens _gcdvimqrTitle
      (\ s a -> s{_gcdvimqrTitle = a})

-- | Optional. The collection of quick replies.
gcdvimqrQuickReplies :: Lens' GoogleCloudDialogflowV2IntentMessageQuickReplies [Text]
gcdvimqrQuickReplies
  = lens _gcdvimqrQuickReplies
      (\ s a -> s{_gcdvimqrQuickReplies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageQuickReplies
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageQuickReplies"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageQuickReplies' <$>
                   (o .:? "title") <*>
                     (o .:? "quickReplies" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageQuickReplies
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageQuickReplies'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _gcdvimqrTitle,
                  ("quickReplies" .=) <$> _gcdvimqrQuickReplies])

-- | Represents the result of querying a Knowledge base.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeAnswers' smart constructor.
newtype GoogleCloudDialogflowV2beta1KnowledgeAnswers =
  GoogleCloudDialogflowV2beta1KnowledgeAnswers'
    { _gcdvkaAnswers :: Maybe [GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeAnswers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkaAnswers'
googleCloudDialogflowV2beta1KnowledgeAnswers
    :: GoogleCloudDialogflowV2beta1KnowledgeAnswers
googleCloudDialogflowV2beta1KnowledgeAnswers =
  GoogleCloudDialogflowV2beta1KnowledgeAnswers' {_gcdvkaAnswers = Nothing}

-- | A list of answers from Knowledge Connector.
gcdvkaAnswers :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswers [GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer]
gcdvkaAnswers
  = lens _gcdvkaAnswers
      (\ s a -> s{_gcdvkaAnswers = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswers
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeAnswers"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeAnswers' <$>
                   (o .:? "answers" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswers
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeAnswers'{..}
          = object
              (catMaybes [("answers" .=) <$> _gcdvkaAnswers])

-- | Optional. Contains information about a button.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCardButton' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageCardButton'
    { _gcdvimcbText     :: !(Maybe Text)
    , _gcdvimcbPostback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcbText'
--
-- * 'gcdvimcbPostback'
googleCloudDialogflowV2beta1IntentMessageCardButton
    :: GoogleCloudDialogflowV2beta1IntentMessageCardButton
googleCloudDialogflowV2beta1IntentMessageCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageCardButton'
    {_gcdvimcbText = Nothing, _gcdvimcbPostback = Nothing}

-- | Optional. The text to show on the button.
gcdvimcbText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCardButton (Maybe Text)
gcdvimcbText
  = lens _gcdvimcbText (\ s a -> s{_gcdvimcbText = a})

-- | Optional. The text to send back to the Dialogflow API or a URI to open.
gcdvimcbPostback :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCardButton (Maybe Text)
gcdvimcbPostback
  = lens _gcdvimcbPostback
      (\ s a -> s{_gcdvimcbPostback = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCardButton'
                   <$> (o .:? "text") <*> (o .:? "postback"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCardButton
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCardButton'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimcbText,
                  ("postback" .=) <$> _gcdvimcbPostback])

-- | Optional. The collection of parameters associated with this context.
-- Refer to [this
-- doc](https:\/\/dialogflow.com\/docs\/actions-and-parameters) for syntax.
--
-- /See:/ 'googleCloudDialogflowV2beta1ContextParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1ContextParameters =
  GoogleCloudDialogflowV2beta1ContextParameters'
    { _gcdvcpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1ContextParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvcpAddtional'
googleCloudDialogflowV2beta1ContextParameters
    :: HashMap Text JSONValue -- ^ 'gcdvcpAddtional'
    -> GoogleCloudDialogflowV2beta1ContextParameters
googleCloudDialogflowV2beta1ContextParameters pGcdvcpAddtional_ =
  GoogleCloudDialogflowV2beta1ContextParameters'
    {_gcdvcpAddtional = _Coerce # pGcdvcpAddtional_}

-- | Properties of the object.
gcdvcpAddtional :: Lens' GoogleCloudDialogflowV2beta1ContextParameters (HashMap Text JSONValue)
gcdvcpAddtional
  = lens _gcdvcpAddtional
      (\ s a -> s{_gcdvcpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1ContextParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1ContextParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1ContextParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1ContextParameters
         where
        toJSON = toJSON . _gcdvcpAddtional

-- | Optional. This field can be used to pass custom data into the webhook
-- associated with the agent. Arbitrary JSON objects are supported.
--
-- /See:/ 'googleCloudDialogflowV2QueryParametersPayload' smart constructor.
newtype GoogleCloudDialogflowV2QueryParametersPayload =
  GoogleCloudDialogflowV2QueryParametersPayload'
    { _gcdvqppAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryParametersPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqppAddtional'
googleCloudDialogflowV2QueryParametersPayload
    :: HashMap Text JSONValue -- ^ 'gcdvqppAddtional'
    -> GoogleCloudDialogflowV2QueryParametersPayload
googleCloudDialogflowV2QueryParametersPayload pGcdvqppAddtional_ =
  GoogleCloudDialogflowV2QueryParametersPayload'
    {_gcdvqppAddtional = _Coerce # pGcdvqppAddtional_}

-- | Properties of the object.
gcdvqppAddtional :: Lens' GoogleCloudDialogflowV2QueryParametersPayload (HashMap Text JSONValue)
gcdvqppAddtional
  = lens _gcdvqppAddtional
      (\ s a -> s{_gcdvqppAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryParametersPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryParametersPayload"
              (\ o ->
                 GoogleCloudDialogflowV2QueryParametersPayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryParametersPayload
         where
        toJSON = toJSON . _gcdvqppAddtional

-- | The card for presenting a list of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageListSelect' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageListSelect =
  GoogleCloudDialogflowV2beta1IntentMessageListSelect'
    { _gcdvimlsItems :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageListSelectItem])
    , _gcdvimlsTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageListSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsItems'
--
-- * 'gcdvimlsTitle'
googleCloudDialogflowV2beta1IntentMessageListSelect
    :: GoogleCloudDialogflowV2beta1IntentMessageListSelect
googleCloudDialogflowV2beta1IntentMessageListSelect =
  GoogleCloudDialogflowV2beta1IntentMessageListSelect'
    {_gcdvimlsItems = Nothing, _gcdvimlsTitle = Nothing}

-- | Required. List items.
gcdvimlsItems :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelect [GoogleCloudDialogflowV2beta1IntentMessageListSelectItem]
gcdvimlsItems
  = lens _gcdvimlsItems
      (\ s a -> s{_gcdvimlsItems = a})
      . _Default
      . _Coerce

-- | Optional. The overall title of the list.
gcdvimlsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelect (Maybe Text)
gcdvimlsTitle
  = lens _gcdvimlsTitle
      (\ s a -> s{_gcdvimlsTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageListSelect"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageListSelect'
                   <$> (o .:? "items" .!= mempty) <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelect
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageListSelect'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gcdvimlsItems,
                  ("title" .=) <$> _gcdvimlsTitle])

-- | Plays audio from a file in Telephony Gateway.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
    { _gcdvimtpaAudioURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtpaAudioURI'
googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
    {_gcdvimtpaAudioURI = Nothing}

-- | Required. URI to a Google Cloud Storage object containing the audio to
-- play, e.g., \"gs:\/\/bucket\/object\". The object must contain a single
-- channel (mono) of linear PCM audio (2 bytes \/ sample) at 8kHz. This
-- object must be readable by the
-- \`service-\'gcp-sa-dialogflow.iam.gserviceaccount.com\` service account
-- where is the number of the Telephony Gateway project (usually the same
-- as the Dialogflow agent project). If the Google Cloud Storage bucket is
-- in the Telephony Gateway project, this permission is added by default
-- when enabling the Dialogflow V2 API. For audio from other sources,
-- consider using the \`TelephonySynthesizeSpeech\` message with SSML.
gcdvimtpaAudioURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio (Maybe Text)
gcdvimtpaAudioURI
  = lens _gcdvimtpaAudioURI
      (\ s a -> s{_gcdvimtpaAudioURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
                   <$> (o .:? "audioUri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'{..}
          = object
              (catMaybes [("audioUri" .=) <$> _gcdvimtpaAudioURI])

-- | Represents a part of a training phrase.
--
-- /See:/ 'googleCloudDialogflowV2IntentTrainingPhrasePart' smart constructor.
data GoogleCloudDialogflowV2IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2IntentTrainingPhrasePart'
    { _gcdvitppText        :: !(Maybe Text)
    , _gcdvitppUserDefined :: !(Maybe Bool)
    , _gcdvitppEntityType  :: !(Maybe Text)
    , _gcdvitppAlias       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentTrainingPhrasePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitppText'
--
-- * 'gcdvitppUserDefined'
--
-- * 'gcdvitppEntityType'
--
-- * 'gcdvitppAlias'
googleCloudDialogflowV2IntentTrainingPhrasePart
    :: GoogleCloudDialogflowV2IntentTrainingPhrasePart
googleCloudDialogflowV2IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2IntentTrainingPhrasePart'
    { _gcdvitppText = Nothing
    , _gcdvitppUserDefined = Nothing
    , _gcdvitppEntityType = Nothing
    , _gcdvitppAlias = Nothing
    }

-- | Required. The text corresponding to the example, if there are no
-- annotations. For annotated examples, it is the text for one of the
-- example\'s parts.
gcdvitppText :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppText
  = lens _gcdvitppText (\ s a -> s{_gcdvitppText = a})

-- | Optional. Indicates whether the text was manually annotated by the
-- developer.
gcdvitppUserDefined :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Bool)
gcdvitppUserDefined
  = lens _gcdvitppUserDefined
      (\ s a -> s{_gcdvitppUserDefined = a})

-- | Optional. The entity type name prefixed with \`\'\`. This field is
-- required for the annotated part of the text and applies only to
-- examples.
gcdvitppEntityType :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppEntityType
  = lens _gcdvitppEntityType
      (\ s a -> s{_gcdvitppEntityType = a})

-- | Optional. The parameter name for the value extracted from the annotated
-- part of the example.
gcdvitppAlias :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppAlias
  = lens _gcdvitppAlias
      (\ s a -> s{_gcdvitppAlias = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentTrainingPhrasePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentTrainingPhrasePart"
              (\ o ->
                 GoogleCloudDialogflowV2IntentTrainingPhrasePart' <$>
                   (o .:? "text") <*> (o .:? "userDefined") <*>
                     (o .:? "entityType")
                     <*> (o .:? "alias"))

instance ToJSON
           GoogleCloudDialogflowV2IntentTrainingPhrasePart
         where
        toJSON
          GoogleCloudDialogflowV2IntentTrainingPhrasePart'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvitppText,
                  ("userDefined" .=) <$> _gcdvitppUserDefined,
                  ("entityType" .=) <$> _gcdvitppEntityType,
                  ("alias" .=) <$> _gcdvitppAlias])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'

instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_payload\`. See the related
-- \`fulfillment_messages[i].payload field\`, which may be used as an
-- alternative to this field. This field can be used for Actions on Google
-- responses. It should have a structure similar to the JSON message shown
-- here. For more information, see [Actions on Google Webhook
-- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
--
-- > {
-- >   "google": {
-- >     "expectUserResponse": true,
-- >     "richResponse": {
-- >       "items": [
-- >         {
-- >           "simpleResponse": {
-- >             "textToSpeech": "this is a simple response"
-- >           }
-- >         }
-- >       ]
-- >     }
-- >   }
-- > }
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookResponsePayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1WebhookResponsePayload =
  GoogleCloudDialogflowV2beta1WebhookResponsePayload'
    { _gcdvwrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookResponsePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrpAddtional'
googleCloudDialogflowV2beta1WebhookResponsePayload
    :: HashMap Text JSONValue -- ^ 'gcdvwrpAddtional'
    -> GoogleCloudDialogflowV2beta1WebhookResponsePayload
googleCloudDialogflowV2beta1WebhookResponsePayload pGcdvwrpAddtional_ =
  GoogleCloudDialogflowV2beta1WebhookResponsePayload'
    {_gcdvwrpAddtional = _Coerce # pGcdvwrpAddtional_}

-- | Properties of the object.
gcdvwrpAddtional :: Lens' GoogleCloudDialogflowV2beta1WebhookResponsePayload (HashMap Text JSONValue)
gcdvwrpAddtional
  = lens _gcdvwrpAddtional
      (\ s a -> s{_gcdvwrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookResponsePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookResponsePayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookResponsePayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookResponsePayload
         where
        toJSON = toJSON . _gcdvwrpAddtional

-- | The quick replies response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageQuickReplies' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageQuickReplies =
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
    { _gcdvimqrsTitle        :: !(Maybe Text)
    , _gcdvimqrsQuickReplies :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageQuickReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimqrsTitle'
--
-- * 'gcdvimqrsQuickReplies'
googleCloudDialogflowV2beta1IntentMessageQuickReplies
    :: GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
googleCloudDialogflowV2beta1IntentMessageQuickReplies =
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
    {_gcdvimqrsTitle = Nothing, _gcdvimqrsQuickReplies = Nothing}

-- | Optional. The title of the collection of quick replies.
gcdvimqrsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageQuickReplies (Maybe Text)
gcdvimqrsTitle
  = lens _gcdvimqrsTitle
      (\ s a -> s{_gcdvimqrsTitle = a})

-- | Optional. The collection of quick replies.
gcdvimqrsQuickReplies :: Lens' GoogleCloudDialogflowV2beta1IntentMessageQuickReplies [Text]
gcdvimqrsQuickReplies
  = lens _gcdvimqrsQuickReplies
      (\ s a -> s{_gcdvimqrsQuickReplies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageQuickReplies"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
                   <$>
                   (o .:? "title") <*>
                     (o .:? "quickReplies" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _gcdvimqrsTitle,
                  ("quickReplies" .=) <$> _gcdvimqrsQuickReplies])

-- | The suggestion chip message that allows the user to jump out to the app
-- or website associated with this agent.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageLinkOutSuggestion' smart constructor.
data GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
    { _gcdvimlosURI             :: !(Maybe Text)
    , _gcdvimlosDestinationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlosURI'
--
-- * 'gcdvimlosDestinationName'
googleCloudDialogflowV2IntentMessageLinkOutSuggestion
    :: GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
googleCloudDialogflowV2IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
    {_gcdvimlosURI = Nothing, _gcdvimlosDestinationName = Nothing}

-- | Required. The URI of the app or site to open when the user taps the
-- suggestion chip.
gcdvimlosURI :: Lens' GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion (Maybe Text)
gcdvimlosURI
  = lens _gcdvimlosURI (\ s a -> s{_gcdvimlosURI = a})

-- | Required. The name of the app or site this chip is linking to.
gcdvimlosDestinationName :: Lens' GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion (Maybe Text)
gcdvimlosDestinationName
  = lens _gcdvimlosDestinationName
      (\ s a -> s{_gcdvimlosDestinationName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
                   <$> (o .:? "uri") <*> (o .:? "destinationName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcdvimlosURI,
                  ("destinationName" .=) <$>
                    _gcdvimlosDestinationName])

-- | The request message for Agents.ImportAgent.
--
-- /See:/ 'googleCloudDialogflowV2ImportAgentRequest' smart constructor.
data GoogleCloudDialogflowV2ImportAgentRequest =
  GoogleCloudDialogflowV2ImportAgentRequest'
    { _gcdviarAgentURI     :: !(Maybe Text)
    , _gcdviarAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ImportAgentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdviarAgentURI'
--
-- * 'gcdviarAgentContent'
googleCloudDialogflowV2ImportAgentRequest
    :: GoogleCloudDialogflowV2ImportAgentRequest
googleCloudDialogflowV2ImportAgentRequest =
  GoogleCloudDialogflowV2ImportAgentRequest'
    {_gcdviarAgentURI = Nothing, _gcdviarAgentContent = Nothing}

-- | The URI to a Google Cloud Storage file containing the agent to import.
-- Note: The URI must start with \"gs:\/\/\".
gcdviarAgentURI :: Lens' GoogleCloudDialogflowV2ImportAgentRequest (Maybe Text)
gcdviarAgentURI
  = lens _gcdviarAgentURI
      (\ s a -> s{_gcdviarAgentURI = a})

-- | The agent to import. Example for how to import an agent via the command
-- line:
--
-- > curl \
-- >   'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:import\
-- >    -X POST \
-- >    -H 'Authorization: Bearer '$(gcloud auth application-default
-- >    print-access-token) \
-- >    -H 'Accept: application/json' \
-- >    -H 'Content-Type: application/json' \
-- >    --compressed \
-- >    --data-binary "{
-- >       'agentContent': '$(cat <agent zip file> | base64 -w 0)'
-- >    }"
gcdviarAgentContent :: Lens' GoogleCloudDialogflowV2ImportAgentRequest (Maybe ByteString)
gcdviarAgentContent
  = lens _gcdviarAgentContent
      (\ s a -> s{_gcdviarAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2ImportAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ImportAgentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2ImportAgentRequest' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2ImportAgentRequest
         where
        toJSON GoogleCloudDialogflowV2ImportAgentRequest'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdviarAgentURI,
                  ("agentContent" .=) <$> _gcdviarAgentContent])

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | The response message for EntityTypes.BatchUpdateEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse' smart constructor.
newtype GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
    { _gcdvbuetrEntityTypes :: Maybe [GoogleCloudDialogflowV2beta1EntityType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuetrEntityTypes'
googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    :: GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
    {_gcdvbuetrEntityTypes = Nothing}

-- | The collection of updated or created entity types.
gcdvbuetrEntityTypes :: Lens' GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse [GoogleCloudDialogflowV2beta1EntityType]
gcdvbuetrEntityTypes
  = lens _gcdvbuetrEntityTypes
      (\ s a -> s{_gcdvbuetrEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
                   <$> (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("entityTypes" .=) <$> _gcdvbuetrEntityTypes])

-- | Optional. The collection of parameters associated with this context.
-- Refer to [this
-- doc](https:\/\/dialogflow.com\/docs\/actions-and-parameters) for syntax.
--
-- /See:/ 'googleCloudDialogflowV2ContextParameters' smart constructor.
newtype GoogleCloudDialogflowV2ContextParameters =
  GoogleCloudDialogflowV2ContextParameters'
    { _gAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ContextParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAddtional'
googleCloudDialogflowV2ContextParameters
    :: HashMap Text JSONValue -- ^ 'gAddtional'
    -> GoogleCloudDialogflowV2ContextParameters
googleCloudDialogflowV2ContextParameters pGAddtional_ =
  GoogleCloudDialogflowV2ContextParameters'
    {_gAddtional = _Coerce # pGAddtional_}

-- | Properties of the object.
gAddtional :: Lens' GoogleCloudDialogflowV2ContextParameters (HashMap Text JSONValue)
gAddtional
  = lens _gAddtional (\ s a -> s{_gAddtional = a}) .
      _Coerce

instance FromJSON
           GoogleCloudDialogflowV2ContextParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ContextParameters"
              (\ o ->
                 GoogleCloudDialogflowV2ContextParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2ContextParameters
         where
        toJSON = toJSON . _gAddtional

-- | Optional. Contains information about a button.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCardButton' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCardButton =
  GoogleCloudDialogflowV2IntentMessageCardButton'
    { _gText     :: !(Maybe Text)
    , _gPostback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gText'
--
-- * 'gPostback'
googleCloudDialogflowV2IntentMessageCardButton
    :: GoogleCloudDialogflowV2IntentMessageCardButton
googleCloudDialogflowV2IntentMessageCardButton =
  GoogleCloudDialogflowV2IntentMessageCardButton'
    {_gText = Nothing, _gPostback = Nothing}

-- | Optional. The text to show on the button.
gText :: Lens' GoogleCloudDialogflowV2IntentMessageCardButton (Maybe Text)
gText = lens _gText (\ s a -> s{_gText = a})

-- | Optional. The text to send back to the Dialogflow API or a URI to open.
gPostback :: Lens' GoogleCloudDialogflowV2IntentMessageCardButton (Maybe Text)
gPostback
  = lens _gPostback (\ s a -> s{_gPostback = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCardButton' <$>
                   (o .:? "text") <*> (o .:? "postback"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCardButton
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCardButton'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gText,
                  ("postback" .=) <$> _gPostback])

-- | The card for presenting a list of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageListSelect' smart constructor.
data GoogleCloudDialogflowV2IntentMessageListSelect =
  GoogleCloudDialogflowV2IntentMessageListSelect'
    { _gooItems :: !(Maybe [GoogleCloudDialogflowV2IntentMessageListSelectItem])
    , _gooTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageListSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooItems'
--
-- * 'gooTitle'
googleCloudDialogflowV2IntentMessageListSelect
    :: GoogleCloudDialogflowV2IntentMessageListSelect
googleCloudDialogflowV2IntentMessageListSelect =
  GoogleCloudDialogflowV2IntentMessageListSelect'
    {_gooItems = Nothing, _gooTitle = Nothing}

-- | Required. List items.
gooItems :: Lens' GoogleCloudDialogflowV2IntentMessageListSelect [GoogleCloudDialogflowV2IntentMessageListSelectItem]
gooItems
  = lens _gooItems (\ s a -> s{_gooItems = a}) .
      _Default
      . _Coerce

-- | Optional. The overall title of the list.
gooTitle :: Lens' GoogleCloudDialogflowV2IntentMessageListSelect (Maybe Text)
gooTitle = lens _gooTitle (\ s a -> s{_gooTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageListSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageListSelect"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageListSelect' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageListSelect
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageListSelect'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gooItems,
                  ("title" .=) <$> _gooTitle])

-- | The card response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCard =
  GoogleCloudDialogflowV2beta1IntentMessageCard'
    { _gcdvimcButtons  :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageCardButton])
    , _gcdvimcImageURI :: !(Maybe Text)
    , _gcdvimcSubtitle :: !(Maybe Text)
    , _gcdvimcTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcButtons'
--
-- * 'gcdvimcImageURI'
--
-- * 'gcdvimcSubtitle'
--
-- * 'gcdvimcTitle'
googleCloudDialogflowV2beta1IntentMessageCard
    :: GoogleCloudDialogflowV2beta1IntentMessageCard
googleCloudDialogflowV2beta1IntentMessageCard =
  GoogleCloudDialogflowV2beta1IntentMessageCard'
    { _gcdvimcButtons = Nothing
    , _gcdvimcImageURI = Nothing
    , _gcdvimcSubtitle = Nothing
    , _gcdvimcTitle = Nothing
    }

-- | Optional. The collection of card buttons.
gcdvimcButtons :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard [GoogleCloudDialogflowV2beta1IntentMessageCardButton]
gcdvimcButtons
  = lens _gcdvimcButtons
      (\ s a -> s{_gcdvimcButtons = a})
      . _Default
      . _Coerce

-- | Optional. The public URI to an image file for the card.
gcdvimcImageURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcImageURI
  = lens _gcdvimcImageURI
      (\ s a -> s{_gcdvimcImageURI = a})

-- | Optional. The subtitle of the card.
gcdvimcSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcSubtitle
  = lens _gcdvimcSubtitle
      (\ s a -> s{_gcdvimcSubtitle = a})

-- | Optional. The title of the card.
gcdvimcTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcTitle
  = lens _gcdvimcTitle (\ s a -> s{_gcdvimcTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCard' <$>
                   (o .:? "buttons" .!= mempty) <*> (o .:? "imageUri")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCard'{..}
          = object
              (catMaybes
                 [("buttons" .=) <$> _gcdvimcButtons,
                  ("imageUri" .=) <$> _gcdvimcImageURI,
                  ("subtitle" .=) <$> _gcdvimcSubtitle,
                  ("title" .=) <$> _gcdvimcTitle])

-- | The request message for Agents.RestoreAgent.
--
-- /See:/ 'googleCloudDialogflowV2RestoreAgentRequest' smart constructor.
data GoogleCloudDialogflowV2RestoreAgentRequest =
  GoogleCloudDialogflowV2RestoreAgentRequest'
    { _gcdvrarAgentURI     :: !(Maybe Text)
    , _gcdvrarAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2RestoreAgentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvrarAgentURI'
--
-- * 'gcdvrarAgentContent'
googleCloudDialogflowV2RestoreAgentRequest
    :: GoogleCloudDialogflowV2RestoreAgentRequest
googleCloudDialogflowV2RestoreAgentRequest =
  GoogleCloudDialogflowV2RestoreAgentRequest'
    {_gcdvrarAgentURI = Nothing, _gcdvrarAgentContent = Nothing}

-- | The URI to a Google Cloud Storage file containing the agent to restore.
-- Note: The URI must start with \"gs:\/\/\".
gcdvrarAgentURI :: Lens' GoogleCloudDialogflowV2RestoreAgentRequest (Maybe Text)
gcdvrarAgentURI
  = lens _gcdvrarAgentURI
      (\ s a -> s{_gcdvrarAgentURI = a})

-- | The agent to restore. Example for how to restore an agent via the
-- command line:
--
-- > curl \
-- >   'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:restore\
-- >    -X POST \
-- >    -H 'Authorization: Bearer '$(gcloud auth application-default
-- >    print-access-token) \
-- >    -H 'Accept: application/json' \
-- >    -H 'Content-Type: application/json' \
-- >    --compressed \
-- >    --data-binary "{
-- >        'agentContent': '$(cat <agent zip file> | base64 -w 0)'
-- >    }"
gcdvrarAgentContent :: Lens' GoogleCloudDialogflowV2RestoreAgentRequest (Maybe ByteString)
gcdvrarAgentContent
  = lens _gcdvrarAgentContent
      (\ s a -> s{_gcdvrarAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2RestoreAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2RestoreAgentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2RestoreAgentRequest' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2RestoreAgentRequest
         where
        toJSON
          GoogleCloudDialogflowV2RestoreAgentRequest'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdvrarAgentURI,
                  ("agentContent" .=) <$> _gcdvrarAgentContent])

-- | The collection of suggestions.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSuggestions' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSuggestions =
  GoogleCloudDialogflowV2IntentMessageSuggestions'
    { _gSuggestions :: Maybe [GoogleCloudDialogflowV2IntentMessageSuggestion]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSuggestions'
googleCloudDialogflowV2IntentMessageSuggestions
    :: GoogleCloudDialogflowV2IntentMessageSuggestions
googleCloudDialogflowV2IntentMessageSuggestions =
  GoogleCloudDialogflowV2IntentMessageSuggestions' {_gSuggestions = Nothing}

-- | Required. The list of suggested replies.
gSuggestions :: Lens' GoogleCloudDialogflowV2IntentMessageSuggestions [GoogleCloudDialogflowV2IntentMessageSuggestion]
gSuggestions
  = lens _gSuggestions (\ s a -> s{_gSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSuggestions
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSuggestions"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSuggestions' <$>
                   (o .:? "suggestions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSuggestions
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSuggestions'{..}
          = object
              (catMaybes [("suggestions" .=) <$> _gSuggestions])

-- | Opens the given URI.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
    { _gcdvimbcbouaURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbouaURI'
googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
    {_gcdvimbcbouaURI = Nothing}

-- | Required. The HTTP or HTTPS scheme URI.
gcdvimbcbouaURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction (Maybe Text)
gcdvimbcbouaURI
  = lens _gcdvimbcbouaURI
      (\ s a -> s{_gcdvimbcbouaURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
                   <$> (o .:? "uri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'{..}
          = object
              (catMaybes [("uri" .=) <$> _gcdvimbcbouaURI])

-- | Represents the parameters of the conversational query.
--
-- /See:/ 'googleCloudDialogflowV2QueryParameters' smart constructor.
data GoogleCloudDialogflowV2QueryParameters =
  GoogleCloudDialogflowV2QueryParameters'
    { _gcdvqpContexts           :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdvqpPayload            :: !(Maybe GoogleCloudDialogflowV2QueryParametersPayload)
    , _gcdvqpGeoLocation        :: !(Maybe GoogleTypeLatLng)
    , _gcdvqpTimeZone           :: !(Maybe Text)
    , _gcdvqpSessionEntityTypes :: !(Maybe [GoogleCloudDialogflowV2SessionEntityType])
    , _gcdvqpResetContexts      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqpContexts'
--
-- * 'gcdvqpPayload'
--
-- * 'gcdvqpGeoLocation'
--
-- * 'gcdvqpTimeZone'
--
-- * 'gcdvqpSessionEntityTypes'
--
-- * 'gcdvqpResetContexts'
googleCloudDialogflowV2QueryParameters
    :: GoogleCloudDialogflowV2QueryParameters
googleCloudDialogflowV2QueryParameters =
  GoogleCloudDialogflowV2QueryParameters'
    { _gcdvqpContexts = Nothing
    , _gcdvqpPayload = Nothing
    , _gcdvqpGeoLocation = Nothing
    , _gcdvqpTimeZone = Nothing
    , _gcdvqpSessionEntityTypes = Nothing
    , _gcdvqpResetContexts = Nothing
    }

-- | Optional. The collection of contexts to be activated before this query
-- is executed.
gcdvqpContexts :: Lens' GoogleCloudDialogflowV2QueryParameters [GoogleCloudDialogflowV2Context]
gcdvqpContexts
  = lens _gcdvqpContexts
      (\ s a -> s{_gcdvqpContexts = a})
      . _Default
      . _Coerce

-- | Optional. This field can be used to pass custom data into the webhook
-- associated with the agent. Arbitrary JSON objects are supported.
gcdvqpPayload :: Lens' GoogleCloudDialogflowV2QueryParameters (Maybe GoogleCloudDialogflowV2QueryParametersPayload)
gcdvqpPayload
  = lens _gcdvqpPayload
      (\ s a -> s{_gcdvqpPayload = a})

-- | Optional. The geo location of this conversational query.
gcdvqpGeoLocation :: Lens' GoogleCloudDialogflowV2QueryParameters (Maybe GoogleTypeLatLng)
gcdvqpGeoLocation
  = lens _gcdvqpGeoLocation
      (\ s a -> s{_gcdvqpGeoLocation = a})

-- | Optional. The time zone of this conversational query from the [time zone
-- database](https:\/\/www.iana.org\/time-zones), e.g., America\/New_York,
-- Europe\/Paris. If not provided, the time zone specified in agent
-- settings is used.
gcdvqpTimeZone :: Lens' GoogleCloudDialogflowV2QueryParameters (Maybe Text)
gcdvqpTimeZone
  = lens _gcdvqpTimeZone
      (\ s a -> s{_gcdvqpTimeZone = a})

-- | Optional. Additional session entity types to replace or extend developer
-- entity types with. The entity synonyms apply to all languages and
-- persist for the session of this query.
gcdvqpSessionEntityTypes :: Lens' GoogleCloudDialogflowV2QueryParameters [GoogleCloudDialogflowV2SessionEntityType]
gcdvqpSessionEntityTypes
  = lens _gcdvqpSessionEntityTypes
      (\ s a -> s{_gcdvqpSessionEntityTypes = a})
      . _Default
      . _Coerce

-- | Optional. Specifies whether to delete all contexts in the current
-- session before the new ones are activated.
gcdvqpResetContexts :: Lens' GoogleCloudDialogflowV2QueryParameters (Maybe Bool)
gcdvqpResetContexts
  = lens _gcdvqpResetContexts
      (\ s a -> s{_gcdvqpResetContexts = a})

instance FromJSON
           GoogleCloudDialogflowV2QueryParameters
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2QueryParameters"
              (\ o ->
                 GoogleCloudDialogflowV2QueryParameters' <$>
                   (o .:? "contexts" .!= mempty) <*> (o .:? "payload")
                     <*> (o .:? "geoLocation")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "sessionEntityTypes" .!= mempty)
                     <*> (o .:? "resetContexts"))

instance ToJSON
           GoogleCloudDialogflowV2QueryParameters
         where
        toJSON GoogleCloudDialogflowV2QueryParameters'{..}
          = object
              (catMaybes
                 [("contexts" .=) <$> _gcdvqpContexts,
                  ("payload" .=) <$> _gcdvqpPayload,
                  ("geoLocation" .=) <$> _gcdvqpGeoLocation,
                  ("timeZone" .=) <$> _gcdvqpTimeZone,
                  ("sessionEntityTypes" .=) <$>
                    _gcdvqpSessionEntityTypes,
                  ("resetContexts" .=) <$> _gcdvqpResetContexts])

-- | The suggestion chip message that the user can tap to quickly post a
-- reply to the conversation.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSuggestion' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestion'
    { _gcdvimsTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsTitle'
googleCloudDialogflowV2beta1IntentMessageSuggestion
    :: GoogleCloudDialogflowV2beta1IntentMessageSuggestion
googleCloudDialogflowV2beta1IntentMessageSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestion' {_gcdvimsTitle = Nothing}

-- | Required. The text shown the in the suggestion chip.
gcdvimsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSuggestion (Maybe Text)
gcdvimsTitle
  = lens _gcdvimsTitle (\ s a -> s{_gcdvimsTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSuggestion'
                   <$> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSuggestion'{..}
          = object (catMaybes [("title" .=) <$> _gcdvimsTitle])

-- | Represents the contents of the original request that was passed to the
-- \`[Streaming]DetectIntent\` call.
--
-- /See:/ 'googleCloudDialogflowV2beta1OriginalDetectIntentRequest' smart constructor.
data GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
    { _gcdvodirPayload :: !(Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload)
    , _gcdvodirVersion :: !(Maybe Text)
    , _gcdvodirSource  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirPayload'
--
-- * 'gcdvodirVersion'
--
-- * 'gcdvodirSource'
googleCloudDialogflowV2beta1OriginalDetectIntentRequest
    :: GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
googleCloudDialogflowV2beta1OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
    { _gcdvodirPayload = Nothing
    , _gcdvodirVersion = Nothing
    , _gcdvodirSource = Nothing
    }

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular for the Telephony Gateway this
-- field has the form:
--
-- > {
-- >  "telephony": {
-- >    "caller_id": "+18558363987"
-- >  }
-- > }
--
-- Note: The caller ID field (\`caller_id\`) will be redacted for Standard
-- Edition agents and populated with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Enterprise Edition
-- agents.
gcdvodirPayload :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload)
gcdvodirPayload
  = lens _gcdvodirPayload
      (\ s a -> s{_gcdvodirPayload = a})

-- | Optional. The version of the protocol used for this request. This field
-- is AoG-specific.
gcdvodirVersion :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe Text)
gcdvodirVersion
  = lens _gcdvodirVersion
      (\ s a -> s{_gcdvodirVersion = a})

-- | The source of this request, e.g., \`google\`, \`facebook\`, \`slack\`.
-- It is set by Dialogflow-owned servers.
gcdvodirSource :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe Text)
gcdvodirSource
  = lens _gcdvodirSource
      (\ s a -> s{_gcdvodirSource = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
                   <$>
                   (o .:? "payload") <*> (o .:? "version") <*>
                     (o .:? "source"))

instance ToJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _gcdvodirPayload,
                  ("version" .=) <$> _gcdvodirVersion,
                  ("source" .=) <$> _gcdvodirSource])

-- | Optional. The collection of parameters associated with the event.
--
-- /See:/ 'googleCloudDialogflowV2EventInputParameters' smart constructor.
newtype GoogleCloudDialogflowV2EventInputParameters =
  GoogleCloudDialogflowV2EventInputParameters'
    { _gcdveipsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2EventInputParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveipsAddtional'
googleCloudDialogflowV2EventInputParameters
    :: HashMap Text JSONValue -- ^ 'gcdveipsAddtional'
    -> GoogleCloudDialogflowV2EventInputParameters
googleCloudDialogflowV2EventInputParameters pGcdveipsAddtional_ =
  GoogleCloudDialogflowV2EventInputParameters'
    {_gcdveipsAddtional = _Coerce # pGcdveipsAddtional_}

-- | Properties of the object.
gcdveipsAddtional :: Lens' GoogleCloudDialogflowV2EventInputParameters (HashMap Text JSONValue)
gcdveipsAddtional
  = lens _gcdveipsAddtional
      (\ s a -> s{_gcdveipsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2EventInputParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2EventInputParameters"
              (\ o ->
                 GoogleCloudDialogflowV2EventInputParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2EventInputParameters
         where
        toJSON = toJSON . _gcdveipsAddtional

-- | The message returned from the DetectIntent method.
--
-- /See:/ 'googleCloudDialogflowV2DetectIntentResponse' smart constructor.
data GoogleCloudDialogflowV2DetectIntentResponse =
  GoogleCloudDialogflowV2DetectIntentResponse'
    { _gcdvdirResponseId    :: !(Maybe Text)
    , _gcdvdirWebhookStatus :: !(Maybe GoogleRpcStatus)
    , _gcdvdirQueryResult   :: !(Maybe GoogleCloudDialogflowV2QueryResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2DetectIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvdirResponseId'
--
-- * 'gcdvdirWebhookStatus'
--
-- * 'gcdvdirQueryResult'
googleCloudDialogflowV2DetectIntentResponse
    :: GoogleCloudDialogflowV2DetectIntentResponse
googleCloudDialogflowV2DetectIntentResponse =
  GoogleCloudDialogflowV2DetectIntentResponse'
    { _gcdvdirResponseId = Nothing
    , _gcdvdirWebhookStatus = Nothing
    , _gcdvdirQueryResult = Nothing
    }

-- | The unique identifier of the response. It can be used to locate a
-- response in the training example set or for reporting issues.
gcdvdirResponseId :: Lens' GoogleCloudDialogflowV2DetectIntentResponse (Maybe Text)
gcdvdirResponseId
  = lens _gcdvdirResponseId
      (\ s a -> s{_gcdvdirResponseId = a})

-- | Specifies the status of the webhook request.
gcdvdirWebhookStatus :: Lens' GoogleCloudDialogflowV2DetectIntentResponse (Maybe GoogleRpcStatus)
gcdvdirWebhookStatus
  = lens _gcdvdirWebhookStatus
      (\ s a -> s{_gcdvdirWebhookStatus = a})

-- | The selected results of the conversational query or event processing.
-- See \`alternative_query_results\` for additional potential results.
gcdvdirQueryResult :: Lens' GoogleCloudDialogflowV2DetectIntentResponse (Maybe GoogleCloudDialogflowV2QueryResult)
gcdvdirQueryResult
  = lens _gcdvdirQueryResult
      (\ s a -> s{_gcdvdirQueryResult = a})

instance FromJSON
           GoogleCloudDialogflowV2DetectIntentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2DetectIntentResponse"
              (\ o ->
                 GoogleCloudDialogflowV2DetectIntentResponse' <$>
                   (o .:? "responseId") <*> (o .:? "webhookStatus") <*>
                     (o .:? "queryResult"))

instance ToJSON
           GoogleCloudDialogflowV2DetectIntentResponse
         where
        toJSON
          GoogleCloudDialogflowV2DetectIntentResponse'{..}
          = object
              (catMaybes
                 [("responseId" .=) <$> _gcdvdirResponseId,
                  ("webhookStatus" .=) <$> _gcdvdirWebhookStatus,
                  ("queryResult" .=) <$> _gcdvdirQueryResult])

-- | An item in the list.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageListSelectItem' smart constructor.
data GoogleCloudDialogflowV2IntentMessageListSelectItem =
  GoogleCloudDialogflowV2IntentMessageListSelectItem'
    { _gcdvimlsiImage       :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimlsiTitle       :: !(Maybe Text)
    , _gcdvimlsiDescription :: !(Maybe Text)
    , _gcdvimlsiInfo        :: !(Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageListSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsiImage'
--
-- * 'gcdvimlsiTitle'
--
-- * 'gcdvimlsiDescription'
--
-- * 'gcdvimlsiInfo'
googleCloudDialogflowV2IntentMessageListSelectItem
    :: GoogleCloudDialogflowV2IntentMessageListSelectItem
googleCloudDialogflowV2IntentMessageListSelectItem =
  GoogleCloudDialogflowV2IntentMessageListSelectItem'
    { _gcdvimlsiImage = Nothing
    , _gcdvimlsiTitle = Nothing
    , _gcdvimlsiDescription = Nothing
    , _gcdvimlsiInfo = Nothing
    }

-- | Optional. The image to display.
gcdvimlsiImage :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimlsiImage
  = lens _gcdvimlsiImage
      (\ s a -> s{_gcdvimlsiImage = a})

-- | Required. The title of the list item.
gcdvimlsiTitle :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe Text)
gcdvimlsiTitle
  = lens _gcdvimlsiTitle
      (\ s a -> s{_gcdvimlsiTitle = a})

-- | Optional. The main text describing the item.
gcdvimlsiDescription :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe Text)
gcdvimlsiDescription
  = lens _gcdvimlsiDescription
      (\ s a -> s{_gcdvimlsiDescription = a})

-- | Required. Additional information about this option.
gcdvimlsiInfo :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
gcdvimlsiInfo
  = lens _gcdvimlsiInfo
      (\ s a -> s{_gcdvimlsiInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageListSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageListSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageListSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageListSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageListSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimlsiImage,
                  ("title" .=) <$> _gcdvimlsiTitle,
                  ("description" .=) <$> _gcdvimlsiDescription,
                  ("info" .=) <$> _gcdvimlsiInfo])

-- | The result of sentiment analysis as configured by
-- \`sentiment_analysis_request_config\`.
--
-- /See:/ 'googleCloudDialogflowV2beta1SentimentAnalysisResult' smart constructor.
newtype GoogleCloudDialogflowV2beta1SentimentAnalysisResult =
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
    { _gcdvsarQueryTextSentiment :: Maybe GoogleCloudDialogflowV2beta1Sentiment
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1SentimentAnalysisResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvsarQueryTextSentiment'
googleCloudDialogflowV2beta1SentimentAnalysisResult
    :: GoogleCloudDialogflowV2beta1SentimentAnalysisResult
googleCloudDialogflowV2beta1SentimentAnalysisResult =
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
    {_gcdvsarQueryTextSentiment = Nothing}

-- | The sentiment analysis result for \`query_text\`.
gcdvsarQueryTextSentiment :: Lens' GoogleCloudDialogflowV2beta1SentimentAnalysisResult (Maybe GoogleCloudDialogflowV2beta1Sentiment)
gcdvsarQueryTextSentiment
  = lens _gcdvsarQueryTextSentiment
      (\ s a -> s{_gcdvsarQueryTextSentiment = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1SentimentAnalysisResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1SentimentAnalysisResult"
              (\ o ->
                 GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
                   <$> (o .:? "queryTextSentiment"))

instance ToJSON
           GoogleCloudDialogflowV2beta1SentimentAnalysisResult
         where
        toJSON
          GoogleCloudDialogflowV2beta1SentimentAnalysisResult'{..}
          = object
              (catMaybes
                 [("queryTextSentiment" .=) <$>
                    _gcdvsarQueryTextSentiment])

-- | This message is a wrapper around a collection of entity types.
--
-- /See:/ 'googleCloudDialogflowV2EntityTypeBatch' smart constructor.
newtype GoogleCloudDialogflowV2EntityTypeBatch =
  GoogleCloudDialogflowV2EntityTypeBatch'
    { _gcdvetbEntityTypes :: Maybe [GoogleCloudDialogflowV2EntityType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2EntityTypeBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetbEntityTypes'
googleCloudDialogflowV2EntityTypeBatch
    :: GoogleCloudDialogflowV2EntityTypeBatch
googleCloudDialogflowV2EntityTypeBatch =
  GoogleCloudDialogflowV2EntityTypeBatch' {_gcdvetbEntityTypes = Nothing}

-- | A collection of entity types.
gcdvetbEntityTypes :: Lens' GoogleCloudDialogflowV2EntityTypeBatch [GoogleCloudDialogflowV2EntityType]
gcdvetbEntityTypes
  = lens _gcdvetbEntityTypes
      (\ s a -> s{_gcdvetbEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2EntityTypeBatch
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2EntityTypeBatch"
              (\ o ->
                 GoogleCloudDialogflowV2EntityTypeBatch' <$>
                   (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2EntityTypeBatch
         where
        toJSON GoogleCloudDialogflowV2EntityTypeBatch'{..}
          = object
              (catMaybes
                 [("entityTypes" .=) <$> _gcdvetbEntityTypes])

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
--
-- /See:/ 'googleCloudDialogflowV2QueryResultDiagnosticInfo' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultDiagnosticInfo =
  GoogleCloudDialogflowV2QueryResultDiagnosticInfo'
    { _gcdvqrdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultDiagnosticInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrdiAddtional'
googleCloudDialogflowV2QueryResultDiagnosticInfo
    :: HashMap Text JSONValue -- ^ 'gcdvqrdiAddtional'
    -> GoogleCloudDialogflowV2QueryResultDiagnosticInfo
googleCloudDialogflowV2QueryResultDiagnosticInfo pGcdvqrdiAddtional_ =
  GoogleCloudDialogflowV2QueryResultDiagnosticInfo'
    {_gcdvqrdiAddtional = _Coerce # pGcdvqrdiAddtional_}

-- | Properties of the object.
gcdvqrdiAddtional :: Lens' GoogleCloudDialogflowV2QueryResultDiagnosticInfo (HashMap Text JSONValue)
gcdvqrdiAddtional
  = lens _gcdvqrdiAddtional
      (\ s a -> s{_gcdvqrdiAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultDiagnosticInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultDiagnosticInfo"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultDiagnosticInfo' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultDiagnosticInfo
         where
        toJSON = toJSON . _gcdvqrdiAddtional

-- | The text response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageText' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageText =
  GoogleCloudDialogflowV2IntentMessageText'
    { _gcdvimtText :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtText'
googleCloudDialogflowV2IntentMessageText
    :: GoogleCloudDialogflowV2IntentMessageText
googleCloudDialogflowV2IntentMessageText =
  GoogleCloudDialogflowV2IntentMessageText' {_gcdvimtText = Nothing}

-- | Optional. The collection of the agent\'s responses.
gcdvimtText :: Lens' GoogleCloudDialogflowV2IntentMessageText [Text]
gcdvimtText
  = lens _gcdvimtText (\ s a -> s{_gcdvimtText = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageText"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageText' <$>
                   (o .:? "text" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageText
         where
        toJSON GoogleCloudDialogflowV2IntentMessageText'{..}
          = object (catMaybes [("text" .=) <$> _gcdvimtText])

-- | The request to detect user\'s intent.
--
-- /See:/ 'googleCloudDialogflowV2DetectIntentRequest' smart constructor.
data GoogleCloudDialogflowV2DetectIntentRequest =
  GoogleCloudDialogflowV2DetectIntentRequest'
    { _gcdvdirQueryInput  :: !(Maybe GoogleCloudDialogflowV2QueryInput)
    , _gcdvdirInputAudio  :: !(Maybe Bytes)
    , _gcdvdirQueryParams :: !(Maybe GoogleCloudDialogflowV2QueryParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2DetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvdirQueryInput'
--
-- * 'gcdvdirInputAudio'
--
-- * 'gcdvdirQueryParams'
googleCloudDialogflowV2DetectIntentRequest
    :: GoogleCloudDialogflowV2DetectIntentRequest
googleCloudDialogflowV2DetectIntentRequest =
  GoogleCloudDialogflowV2DetectIntentRequest'
    { _gcdvdirQueryInput = Nothing
    , _gcdvdirInputAudio = Nothing
    , _gcdvdirQueryParams = Nothing
    }

-- | Required. The input specification. It can be set to: 1. an audio config
-- which instructs the speech recognizer how to process the speech audio,
-- 2. a conversational query in the form of text, or 3. an event that
-- specifies which intent to trigger.
gcdvdirQueryInput :: Lens' GoogleCloudDialogflowV2DetectIntentRequest (Maybe GoogleCloudDialogflowV2QueryInput)
gcdvdirQueryInput
  = lens _gcdvdirQueryInput
      (\ s a -> s{_gcdvdirQueryInput = a})

-- | Optional. The natural language speech audio to be processed. This field
-- should be populated iff \`query_input\` is set to an input audio config.
-- A single request can contain up to 1 minute of speech audio data.
gcdvdirInputAudio :: Lens' GoogleCloudDialogflowV2DetectIntentRequest (Maybe ByteString)
gcdvdirInputAudio
  = lens _gcdvdirInputAudio
      (\ s a -> s{_gcdvdirInputAudio = a})
      . mapping _Bytes

-- | Optional. The parameters of this query.
gcdvdirQueryParams :: Lens' GoogleCloudDialogflowV2DetectIntentRequest (Maybe GoogleCloudDialogflowV2QueryParameters)
gcdvdirQueryParams
  = lens _gcdvdirQueryParams
      (\ s a -> s{_gcdvdirQueryParams = a})

instance FromJSON
           GoogleCloudDialogflowV2DetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2DetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2DetectIntentRequest' <$>
                   (o .:? "queryInput") <*> (o .:? "inputAudio") <*>
                     (o .:? "queryParams"))

instance ToJSON
           GoogleCloudDialogflowV2DetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowV2DetectIntentRequest'{..}
          = object
              (catMaybes
                 [("queryInput" .=) <$> _gcdvdirQueryInput,
                  ("inputAudio" .=) <$> _gcdvdirInputAudio,
                  ("queryParams" .=) <$> _gcdvdirQueryParams])

-- | The collection of extracted parameters.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultParameters =
  GoogleCloudDialogflowV2beta1QueryResultParameters'
    { _gcdvqrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrpAddtional'
googleCloudDialogflowV2beta1QueryResultParameters
    :: HashMap Text JSONValue -- ^ 'gcdvqrpAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultParameters
googleCloudDialogflowV2beta1QueryResultParameters pGcdvqrpAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultParameters'
    {_gcdvqrpAddtional = _Coerce # pGcdvqrpAddtional_}

-- | Properties of the object.
gcdvqrpAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultParameters (HashMap Text JSONValue)
gcdvqrpAddtional
  = lens _gcdvqrpAddtional
      (\ s a -> s{_gcdvqrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultParameters
         where
        toJSON = toJSON . _gcdvqrpAddtional

-- | The basic card message. Useful for displaying information.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBasicCard =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
    { _gcdvimbccImage         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimbccButtons       :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton])
    , _gcdvimbccSubtitle      :: !(Maybe Text)
    , _gcdvimbccTitle         :: !(Maybe Text)
    , _gcdvimbccFormattedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccImage'
--
-- * 'gcdvimbccButtons'
--
-- * 'gcdvimbccSubtitle'
--
-- * 'gcdvimbccTitle'
--
-- * 'gcdvimbccFormattedText'
googleCloudDialogflowV2beta1IntentMessageBasicCard
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCard
googleCloudDialogflowV2beta1IntentMessageBasicCard =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
    { _gcdvimbccImage = Nothing
    , _gcdvimbccButtons = Nothing
    , _gcdvimbccSubtitle = Nothing
    , _gcdvimbccTitle = Nothing
    , _gcdvimbccFormattedText = Nothing
    }

-- | Optional. The image for the card.
gcdvimbccImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimbccImage
  = lens _gcdvimbccImage
      (\ s a -> s{_gcdvimbccImage = a})

-- | Optional. The collection of card buttons.
gcdvimbccButtons :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton]
gcdvimbccButtons
  = lens _gcdvimbccButtons
      (\ s a -> s{_gcdvimbccButtons = a})
      . _Default
      . _Coerce

-- | Optional. The subtitle of the card.
gcdvimbccSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccSubtitle
  = lens _gcdvimbccSubtitle
      (\ s a -> s{_gcdvimbccSubtitle = a})

-- | Optional. The title of the card.
gcdvimbccTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccTitle
  = lens _gcdvimbccTitle
      (\ s a -> s{_gcdvimbccTitle = a})

-- | Required, unless image is present. The body text of the card.
gcdvimbccFormattedText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccFormattedText
  = lens _gcdvimbccFormattedText
      (\ s a -> s{_gcdvimbccFormattedText = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
                   <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "subtitle")
                     <*> (o .:? "title")
                     <*> (o .:? "formattedText"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimbccImage,
                  ("buttons" .=) <$> _gcdvimbccButtons,
                  ("subtitle" .=) <$> _gcdvimbccSubtitle,
                  ("title" .=) <$> _gcdvimbccTitle,
                  ("formattedText" .=) <$> _gcdvimbccFormattedText])

-- | Represents an example that the agent is trained on.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentTrainingPhrase' smart constructor.
data GoogleCloudDialogflowV2beta1IntentTrainingPhrase =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase'
    { _gParts           :: !(Maybe [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart])
    , _gName            :: !(Maybe Text)
    , _gTimesAddedCount :: !(Maybe (Textual Int32))
    , _gType            :: !(Maybe GoogleCloudDialogflowV2beta1IntentTrainingPhraseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentTrainingPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gParts'
--
-- * 'gName'
--
-- * 'gTimesAddedCount'
--
-- * 'gType'
googleCloudDialogflowV2beta1IntentTrainingPhrase
    :: GoogleCloudDialogflowV2beta1IntentTrainingPhrase
googleCloudDialogflowV2beta1IntentTrainingPhrase =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase'
    { _gParts = Nothing
    , _gName = Nothing
    , _gTimesAddedCount = Nothing
    , _gType = Nothing
    }

-- | Required. The collection of training phrase parts (can be annotated).
-- Fields: \`entity_type\`, \`alias\` and \`user_defined\` should be
-- populated only for the annotated parts of the training phrase.
gParts :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart]
gParts
  = lens _gParts (\ s a -> s{_gParts = a}) . _Default .
      _Coerce

-- | Output only. The unique identifier of this training phrase.
gName :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Optional. Indicates how many times this example was added to the intent.
-- Each time a developer adds an existing sample by editing an intent or
-- training, this counter is increased.
gTimesAddedCount :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe Int32)
gTimesAddedCount
  = lens _gTimesAddedCount
      (\ s a -> s{_gTimesAddedCount = a})
      . mapping _Coerce

-- | Required. The type of the training phrase.
gType :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe GoogleCloudDialogflowV2beta1IntentTrainingPhraseType)
gType = lens _gType (\ s a -> s{_gType = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentTrainingPhrase"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentTrainingPhrase' <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "timesAddedCount")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrase
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentTrainingPhrase'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gParts, ("name" .=) <$> _gName,
                  ("timesAddedCount" .=) <$> _gTimesAddedCount,
                  ("type" .=) <$> _gType])

-- | An answer from Knowledge Connector.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeAnswersAnswer' smart constructor.
data GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer =
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
    { _gcdvkaaMatchConfidence      :: !(Maybe (Textual Double))
    , _gcdvkaaAnswer               :: !(Maybe Text)
    , _gcdvkaaSource               :: !(Maybe Text)
    , _gcdvkaaFaqQuestion          :: !(Maybe Text)
    , _gcdvkaaMatchConfidenceLevel :: !(Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkaaMatchConfidence'
--
-- * 'gcdvkaaAnswer'
--
-- * 'gcdvkaaSource'
--
-- * 'gcdvkaaFaqQuestion'
--
-- * 'gcdvkaaMatchConfidenceLevel'
googleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
googleCloudDialogflowV2beta1KnowledgeAnswersAnswer =
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
    { _gcdvkaaMatchConfidence = Nothing
    , _gcdvkaaAnswer = Nothing
    , _gcdvkaaSource = Nothing
    , _gcdvkaaFaqQuestion = Nothing
    , _gcdvkaaMatchConfidenceLevel = Nothing
    }

-- | The system\'s confidence score that this Knowledge answer is a good
-- match for this conversational query. The range is from 0.0 (completely
-- uncertain) to 1.0 (completely certain). Note: The confidence score is
-- likely to vary somewhat (possibly even for identical requests), as the
-- underlying model is under constant improvement. It may be deprecated in
-- the future. We recommend using \`match_confidence_level\` which should
-- be generally more stable.
gcdvkaaMatchConfidence :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Double)
gcdvkaaMatchConfidence
  = lens _gcdvkaaMatchConfidence
      (\ s a -> s{_gcdvkaaMatchConfidence = a})
      . mapping _Coerce

-- | The piece of text from the \`source\` knowledge base document that
-- answers this conversational query.
gcdvkaaAnswer :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaAnswer
  = lens _gcdvkaaAnswer
      (\ s a -> s{_gcdvkaaAnswer = a})

-- | Indicates which Knowledge Document this answer was extracted from.
-- Format: \`projects\/\/knowledgeBases\/\/documents\/\`.
gcdvkaaSource :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaSource
  = lens _gcdvkaaSource
      (\ s a -> s{_gcdvkaaSource = a})

-- | The corresponding FAQ question if the answer was extracted from a FAQ
-- Document, empty otherwise.
gcdvkaaFaqQuestion :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaFaqQuestion
  = lens _gcdvkaaFaqQuestion
      (\ s a -> s{_gcdvkaaFaqQuestion = a})

-- | The system\'s confidence level that this knowledge answer is a good
-- match for this conversational query. NOTE: The confidence level for a
-- given \`\` pair may change without notice, as it depends on models that
-- are constantly being improved. However, it will change less frequently
-- than the confidence score below, and should be preferred for referencing
-- the quality of an answer.
gcdvkaaMatchConfidenceLevel :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel)
gcdvkaaMatchConfidenceLevel
  = lens _gcdvkaaMatchConfidenceLevel
      (\ s a -> s{_gcdvkaaMatchConfidenceLevel = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
                   <$>
                   (o .:? "matchConfidence") <*> (o .:? "answer") <*>
                     (o .:? "source")
                     <*> (o .:? "faqQuestion")
                     <*> (o .:? "matchConfidenceLevel"))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'{..}
          = object
              (catMaybes
                 [("matchConfidence" .=) <$> _gcdvkaaMatchConfidence,
                  ("answer" .=) <$> _gcdvkaaAnswer,
                  ("source" .=) <$> _gcdvkaaSource,
                  ("faqQuestion" .=) <$> _gcdvkaaFaqQuestion,
                  ("matchConfidenceLevel" .=) <$>
                    _gcdvkaaMatchConfidenceLevel])

-- | Events allow for matching intents by event name instead of the natural
-- language input. For instance, input \`\` can trigger a personalized
-- welcome response. The parameter \`name\` may be used by the agent in the
-- response: \`\"Hello #welcome_event.name! What can I do for you
-- today?\"\`.
--
-- /See:/ 'googleCloudDialogflowV2beta1EventInput' smart constructor.
data GoogleCloudDialogflowV2beta1EventInput =
  GoogleCloudDialogflowV2beta1EventInput'
    { _gooLanguageCode :: !(Maybe Text)
    , _gooName         :: !(Maybe Text)
    , _gooParameters   :: !(Maybe GoogleCloudDialogflowV2beta1EventInputParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1EventInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLanguageCode'
--
-- * 'gooName'
--
-- * 'gooParameters'
googleCloudDialogflowV2beta1EventInput
    :: GoogleCloudDialogflowV2beta1EventInput
googleCloudDialogflowV2beta1EventInput =
  GoogleCloudDialogflowV2beta1EventInput'
    {_gooLanguageCode = Nothing, _gooName = Nothing, _gooParameters = Nothing}

-- | Required. The language of this query. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/languages) for a list of the
-- currently supported language codes. Note that queries in the same
-- session do not necessarily need to specify the same language.
gooLanguageCode :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe Text)
gooLanguageCode
  = lens _gooLanguageCode
      (\ s a -> s{_gooLanguageCode = a})

-- | Required. The unique identifier of the event.
gooName :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe Text)
gooName = lens _gooName (\ s a -> s{_gooName = a})

-- | Optional. The collection of parameters associated with the event.
gooParameters :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe GoogleCloudDialogflowV2beta1EventInputParameters)
gooParameters
  = lens _gooParameters
      (\ s a -> s{_gooParameters = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1EventInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1EventInput"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EventInput' <$>
                   (o .:? "languageCode") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON
           GoogleCloudDialogflowV2beta1EventInput
         where
        toJSON GoogleCloudDialogflowV2beta1EventInput'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gooLanguageCode,
                  ("name" .=) <$> _gooName,
                  ("parameters" .=) <$> _gooParameters])

-- | The request message for EntityTypes.BatchUpdateEntities.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateEntitiesRequest' smart constructor.
data GoogleCloudDialogflowV2BatchUpdateEntitiesRequest =
  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest'
    { _gcdvbuerLanguageCode :: !(Maybe Text)
    , _gcdvbuerUpdateMask   :: !(Maybe GFieldMask)
    , _gcdvbuerEntities     :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateEntitiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuerLanguageCode'
--
-- * 'gcdvbuerUpdateMask'
--
-- * 'gcdvbuerEntities'
googleCloudDialogflowV2BatchUpdateEntitiesRequest
    :: GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
googleCloudDialogflowV2BatchUpdateEntitiesRequest =
  GoogleCloudDialogflowV2BatchUpdateEntitiesRequest'
    { _gcdvbuerLanguageCode = Nothing
    , _gcdvbuerUpdateMask = Nothing
    , _gcdvbuerEntities = Nothing
    }

-- | Optional. The language of entity synonyms defined in \`entities\`. If
-- not specified, the agent\'s default language is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
gcdvbuerLanguageCode :: Lens' GoogleCloudDialogflowV2BatchUpdateEntitiesRequest (Maybe Text)
gcdvbuerLanguageCode
  = lens _gcdvbuerLanguageCode
      (\ s a -> s{_gcdvbuerLanguageCode = a})

-- | Optional. The mask to control which fields get updated.
gcdvbuerUpdateMask :: Lens' GoogleCloudDialogflowV2BatchUpdateEntitiesRequest (Maybe GFieldMask)
gcdvbuerUpdateMask
  = lens _gcdvbuerUpdateMask
      (\ s a -> s{_gcdvbuerUpdateMask = a})

-- | Required. The entities to update or create.
gcdvbuerEntities :: Lens' GoogleCloudDialogflowV2BatchUpdateEntitiesRequest [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvbuerEntities
  = lens _gcdvbuerEntities
      (\ s a -> s{_gcdvbuerEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateEntitiesRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateEntitiesRequest'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "updateMask") <*>
                     (o .:? "entities" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateEntitiesRequest'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvbuerLanguageCode,
                  ("updateMask" .=) <$> _gcdvbuerUpdateMask,
                  ("entities" .=) <$> _gcdvbuerEntities])

-- | Returns a response containing a custom, platform-specific payload. See
-- the Intent.Message.Platform type for a description of the structure that
-- may be required for your platform.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessagePayload' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessagePayload =
  GoogleCloudDialogflowV2IntentMessagePayload'
    { _gooAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessagePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAddtional'
googleCloudDialogflowV2IntentMessagePayload
    :: HashMap Text JSONValue -- ^ 'gooAddtional'
    -> GoogleCloudDialogflowV2IntentMessagePayload
googleCloudDialogflowV2IntentMessagePayload pGooAddtional_ =
  GoogleCloudDialogflowV2IntentMessagePayload'
    {_gooAddtional = _Coerce # pGooAddtional_}

-- | Properties of the object.
gooAddtional :: Lens' GoogleCloudDialogflowV2IntentMessagePayload (HashMap Text JSONValue)
gooAddtional
  = lens _gooAddtional (\ s a -> s{_gooAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessagePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessagePayload"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessagePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessagePayload
         where
        toJSON = toJSON . _gooAddtional

-- | Metadata in google::longrunning::Operation for Knowledge operations.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeOperationMetadata' smart constructor.
newtype GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata =
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
    { _gcdvkomState :: Maybe GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkomState'
googleCloudDialogflowV2beta1KnowledgeOperationMetadata
    :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
googleCloudDialogflowV2beta1KnowledgeOperationMetadata =
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
    {_gcdvkomState = Nothing}

-- | Required. The current state of this operation.
gcdvkomState :: Lens' GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata (Maybe GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState)
gcdvkomState
  = lens _gcdvkomState (\ s a -> s{_gcdvkomState = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
                   <$> (o .:? "state"))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'{..}
          = object (catMaybes [("state" .=) <$> _gcdvkomState])

-- | The request message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookRequest' smart constructor.
data GoogleCloudDialogflowV2beta1WebhookRequest =
  GoogleCloudDialogflowV2beta1WebhookRequest'
    { _gOriginalDetectIntentRequest :: !(Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest)
    , _gResponseId                  :: !(Maybe Text)
    , _gAlternativeQueryResults     :: !(Maybe [GoogleCloudDialogflowV2beta1QueryResult])
    , _gQueryResult                 :: !(Maybe GoogleCloudDialogflowV2beta1QueryResult)
    , _gSession                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gOriginalDetectIntentRequest'
--
-- * 'gResponseId'
--
-- * 'gAlternativeQueryResults'
--
-- * 'gQueryResult'
--
-- * 'gSession'
googleCloudDialogflowV2beta1WebhookRequest
    :: GoogleCloudDialogflowV2beta1WebhookRequest
googleCloudDialogflowV2beta1WebhookRequest =
  GoogleCloudDialogflowV2beta1WebhookRequest'
    { _gOriginalDetectIntentRequest = Nothing
    , _gResponseId = Nothing
    , _gAlternativeQueryResults = Nothing
    , _gQueryResult = Nothing
    , _gSession = Nothing
    }

-- | Optional. The contents of the original request that was passed to
-- \`[Streaming]DetectIntent\` call.
gOriginalDetectIntentRequest :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest)
gOriginalDetectIntentRequest
  = lens _gOriginalDetectIntentRequest
      (\ s a -> s{_gOriginalDetectIntentRequest = a})

-- | The unique identifier of the response. Contains the same value as
-- \`[Streaming]DetectIntentResponse.response_id\`.
gResponseId :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe Text)
gResponseId
  = lens _gResponseId (\ s a -> s{_gResponseId = a})

-- | Alternative query results from KnowledgeService.
gAlternativeQueryResults :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest [GoogleCloudDialogflowV2beta1QueryResult]
gAlternativeQueryResults
  = lens _gAlternativeQueryResults
      (\ s a -> s{_gAlternativeQueryResults = a})
      . _Default
      . _Coerce

-- | The result of the conversational query or event processing. Contains the
-- same value as \`[Streaming]DetectIntentResponse.query_result\`.
gQueryResult :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe GoogleCloudDialogflowV2beta1QueryResult)
gQueryResult
  = lens _gQueryResult (\ s a -> s{_gQueryResult = a})

-- | The unique identifier of detectIntent request session. Can be used to
-- identify end-user inside webhook implementation. Format:
-- \`projects\/\/agent\/sessions\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\`.
gSession :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe Text)
gSession = lens _gSession (\ s a -> s{_gSession = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookRequest"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookRequest' <$>
                   (o .:? "originalDetectIntentRequest") <*>
                     (o .:? "responseId")
                     <*> (o .:? "alternativeQueryResults" .!= mempty)
                     <*> (o .:? "queryResult")
                     <*> (o .:? "session"))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookRequest
         where
        toJSON
          GoogleCloudDialogflowV2beta1WebhookRequest'{..}
          = object
              (catMaybes
                 [("originalDetectIntentRequest" .=) <$>
                    _gOriginalDetectIntentRequest,
                  ("responseId" .=) <$> _gResponseId,
                  ("alternativeQueryResults" .=) <$>
                    _gAlternativeQueryResults,
                  ("queryResult" .=) <$> _gQueryResult,
                  ("session" .=) <$> _gSession])

-- | The text response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageText' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageText =
  GoogleCloudDialogflowV2beta1IntentMessageText'
    { _gooText :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooText'
googleCloudDialogflowV2beta1IntentMessageText
    :: GoogleCloudDialogflowV2beta1IntentMessageText
googleCloudDialogflowV2beta1IntentMessageText =
  GoogleCloudDialogflowV2beta1IntentMessageText' {_gooText = Nothing}

-- | Optional. The collection of the agent\'s responses.
gooText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageText [Text]
gooText
  = lens _gooText (\ s a -> s{_gooText = a}) . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageText"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageText' <$>
                   (o .:? "text" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageText
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageText'{..}
          = object (catMaybes [("text" .=) <$> _gooText])

-- | The collection of simple response candidates. This message in
-- \`QueryResult.fulfillment_messages\` and
-- \`WebhookResponse.fulfillment_messages\` should contain only one
-- \`SimpleResponse\`.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSimpleResponses' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2IntentMessageSimpleResponses'
    { _gSimpleResponses :: Maybe [GoogleCloudDialogflowV2IntentMessageSimpleResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSimpleResponses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSimpleResponses'
googleCloudDialogflowV2IntentMessageSimpleResponses
    :: GoogleCloudDialogflowV2IntentMessageSimpleResponses
googleCloudDialogflowV2IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2IntentMessageSimpleResponses'
    {_gSimpleResponses = Nothing}

-- | Required. The list of simple responses.
gSimpleResponses :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponses [GoogleCloudDialogflowV2IntentMessageSimpleResponse]
gSimpleResponses
  = lens _gSimpleResponses
      (\ s a -> s{_gSimpleResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponses
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSimpleResponses"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSimpleResponses'
                   <$> (o .:? "simpleResponses" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponses
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSimpleResponses'{..}
          = object
              (catMaybes
                 [("simpleResponses" .=) <$> _gSimpleResponses])

-- | Represents a single followup intent in the chain.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentFollowupIntentInfo' smart constructor.
data GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
    { _gFollowupIntentName       :: !(Maybe Text)
    , _gParentFollowupIntentName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gFollowupIntentName'
--
-- * 'gParentFollowupIntentName'
googleCloudDialogflowV2beta1IntentFollowupIntentInfo
    :: GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
googleCloudDialogflowV2beta1IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
    {_gFollowupIntentName = Nothing, _gParentFollowupIntentName = Nothing}

-- | The unique identifier of the followup intent. Format:
-- \`projects\/\/agent\/intents\/\`.
gFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo (Maybe Text)
gFollowupIntentName
  = lens _gFollowupIntentName
      (\ s a -> s{_gFollowupIntentName = a})

-- | The unique identifier of the followup intent\'s parent. Format:
-- \`projects\/\/agent\/intents\/\`.
gParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo (Maybe Text)
gParentFollowupIntentName
  = lens _gParentFollowupIntentName
      (\ s a -> s{_gParentFollowupIntentName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
                   <$>
                   (o .:? "followupIntentName") <*>
                     (o .:? "parentFollowupIntentName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'{..}
          = object
              (catMaybes
                 [("followupIntentName" .=) <$> _gFollowupIntentName,
                  ("parentFollowupIntentName" .=) <$>
                    _gParentFollowupIntentName])

-- | The collection of extracted parameters.
--
-- /See:/ 'googleCloudDialogflowV2QueryResultParameters' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultParameters =
  GoogleCloudDialogflowV2QueryResultParameters'
    { _gcdvqrpsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrpsAddtional'
googleCloudDialogflowV2QueryResultParameters
    :: HashMap Text JSONValue -- ^ 'gcdvqrpsAddtional'
    -> GoogleCloudDialogflowV2QueryResultParameters
googleCloudDialogflowV2QueryResultParameters pGcdvqrpsAddtional_ =
  GoogleCloudDialogflowV2QueryResultParameters'
    {_gcdvqrpsAddtional = _Coerce # pGcdvqrpsAddtional_}

-- | Properties of the object.
gcdvqrpsAddtional :: Lens' GoogleCloudDialogflowV2QueryResultParameters (HashMap Text JSONValue)
gcdvqrpsAddtional
  = lens _gcdvqrpsAddtional
      (\ s a -> s{_gcdvqrpsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultParameters"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultParameters
         where
        toJSON = toJSON . _gcdvqrpsAddtional

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultDiagnosticInfo' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo =
  GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
    { _gcdvqrdicAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrdicAddtional'
googleCloudDialogflowV2beta1QueryResultDiagnosticInfo
    :: HashMap Text JSONValue -- ^ 'gcdvqrdicAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
googleCloudDialogflowV2beta1QueryResultDiagnosticInfo pGcdvqrdicAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
    {_gcdvqrdicAddtional = _Coerce # pGcdvqrdicAddtional_}

-- | Properties of the object.
gcdvqrdicAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo (HashMap Text JSONValue)
gcdvqrdicAddtional
  = lens _gcdvqrdicAddtional
      (\ s a -> s{_gcdvqrdicAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
         where
        toJSON = toJSON . _gcdvqrdicAddtional

-- | The request message for EntityTypes.BatchDeleteEntities.
--
-- /See:/ 'googleCloudDialogflowV2BatchDeleteEntitiesRequest' smart constructor.
data GoogleCloudDialogflowV2BatchDeleteEntitiesRequest =
  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest'
    { _gcdvbderLanguageCode :: !(Maybe Text)
    , _gcdvbderEntityValues :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchDeleteEntitiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbderLanguageCode'
--
-- * 'gcdvbderEntityValues'
googleCloudDialogflowV2BatchDeleteEntitiesRequest
    :: GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
googleCloudDialogflowV2BatchDeleteEntitiesRequest =
  GoogleCloudDialogflowV2BatchDeleteEntitiesRequest'
    {_gcdvbderLanguageCode = Nothing, _gcdvbderEntityValues = Nothing}

-- | Optional. The language of entity synonyms defined in \`entities\`. If
-- not specified, the agent\'s default language is used. [More than a dozen
-- languages](https:\/\/dialogflow.com\/docs\/reference\/language) are
-- supported. Note: languages must be enabled in the agent, before they can
-- be used.
gcdvbderLanguageCode :: Lens' GoogleCloudDialogflowV2BatchDeleteEntitiesRequest (Maybe Text)
gcdvbderLanguageCode
  = lens _gcdvbderLanguageCode
      (\ s a -> s{_gcdvbderLanguageCode = a})

-- | Required. The canonical \`values\` of the entities to delete. Note that
-- these are not fully-qualified names, i.e. they don\'t start with
-- \`projects\/\`.
gcdvbderEntityValues :: Lens' GoogleCloudDialogflowV2BatchDeleteEntitiesRequest [Text]
gcdvbderEntityValues
  = lens _gcdvbderEntityValues
      (\ s a -> s{_gcdvbderEntityValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchDeleteEntitiesRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchDeleteEntitiesRequest'
                   <$>
                   (o .:? "languageCode") <*>
                     (o .:? "entityValues" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchDeleteEntitiesRequest'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvbderLanguageCode,
                  ("entityValues" .=) <$> _gcdvbderEntityValues])

-- | The response message for Intents.BatchUpdateIntents.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateIntentsResponse' smart constructor.
newtype GoogleCloudDialogflowV2BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2BatchUpdateIntentsResponse'
    { _gIntents :: Maybe [GoogleCloudDialogflowV2Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gIntents'
googleCloudDialogflowV2BatchUpdateIntentsResponse
    :: GoogleCloudDialogflowV2BatchUpdateIntentsResponse
googleCloudDialogflowV2BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2BatchUpdateIntentsResponse' {_gIntents = Nothing}

-- | The collection of updated or created intents.
gIntents :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsResponse [GoogleCloudDialogflowV2Intent]
gIntents
  = lens _gIntents (\ s a -> s{_gIntents = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateIntentsResponse'
                   <$> (o .:? "intents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateIntentsResponse'{..}
          = object (catMaybes [("intents" .=) <$> _gIntents])

-- | The response message for EntityTypes.ListEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2ListEntityTypesResponse' smart constructor.
data GoogleCloudDialogflowV2ListEntityTypesResponse =
  GoogleCloudDialogflowV2ListEntityTypesResponse'
    { _gcdvletrNextPageToken :: !(Maybe Text)
    , _gcdvletrEntityTypes   :: !(Maybe [GoogleCloudDialogflowV2EntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ListEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvletrNextPageToken'
--
-- * 'gcdvletrEntityTypes'
googleCloudDialogflowV2ListEntityTypesResponse
    :: GoogleCloudDialogflowV2ListEntityTypesResponse
googleCloudDialogflowV2ListEntityTypesResponse =
  GoogleCloudDialogflowV2ListEntityTypesResponse'
    {_gcdvletrNextPageToken = Nothing, _gcdvletrEntityTypes = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdvletrNextPageToken :: Lens' GoogleCloudDialogflowV2ListEntityTypesResponse (Maybe Text)
gcdvletrNextPageToken
  = lens _gcdvletrNextPageToken
      (\ s a -> s{_gcdvletrNextPageToken = a})

-- | The list of agent entity types. There will be a maximum number of items
-- returned based on the page_size field in the request.
gcdvletrEntityTypes :: Lens' GoogleCloudDialogflowV2ListEntityTypesResponse [GoogleCloudDialogflowV2EntityType]
gcdvletrEntityTypes
  = lens _gcdvletrEntityTypes
      (\ s a -> s{_gcdvletrEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2ListEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ListEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ListEntityTypesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2ListEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2ListEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdvletrNextPageToken,
                  ("entityTypes" .=) <$> _gcdvletrEntityTypes])

-- | Represents a conversational agent.
--
-- /See:/ 'googleCloudDialogflowV2Agent' smart constructor.
data GoogleCloudDialogflowV2Agent =
  GoogleCloudDialogflowV2Agent'
    { _gcdvaParent                  :: !(Maybe Text)
    , _gcdvaDefaultLanguageCode     :: !(Maybe Text)
    , _gcdvaEnableLogging           :: !(Maybe Bool)
    , _gcdvaClassificationThreshold :: !(Maybe (Textual Double))
    , _gcdvaAvatarURI               :: !(Maybe Text)
    , _gcdvaSupportedLanguageCodes  :: !(Maybe [Text])
    , _gcdvaDisplayName             :: !(Maybe Text)
    , _gcdvaMatchMode               :: !(Maybe GoogleCloudDialogflowV2AgentMatchMode)
    , _gcdvaTimeZone                :: !(Maybe Text)
    , _gcdvaDescription             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2Agent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvaParent'
--
-- * 'gcdvaDefaultLanguageCode'
--
-- * 'gcdvaEnableLogging'
--
-- * 'gcdvaClassificationThreshold'
--
-- * 'gcdvaAvatarURI'
--
-- * 'gcdvaSupportedLanguageCodes'
--
-- * 'gcdvaDisplayName'
--
-- * 'gcdvaMatchMode'
--
-- * 'gcdvaTimeZone'
--
-- * 'gcdvaDescription'
googleCloudDialogflowV2Agent
    :: GoogleCloudDialogflowV2Agent
googleCloudDialogflowV2Agent =
  GoogleCloudDialogflowV2Agent'
    { _gcdvaParent = Nothing
    , _gcdvaDefaultLanguageCode = Nothing
    , _gcdvaEnableLogging = Nothing
    , _gcdvaClassificationThreshold = Nothing
    , _gcdvaAvatarURI = Nothing
    , _gcdvaSupportedLanguageCodes = Nothing
    , _gcdvaDisplayName = Nothing
    , _gcdvaMatchMode = Nothing
    , _gcdvaTimeZone = Nothing
    , _gcdvaDescription = Nothing
    }

-- | Required. The project of this agent. Format: \`projects\/\`.
gcdvaParent :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaParent
  = lens _gcdvaParent (\ s a -> s{_gcdvaParent = a})

-- | Required. The default language of the agent as a language tag. See
-- [Language Support](https:\/\/dialogflow.com\/docs\/reference\/language)
-- for a list of the currently supported language codes. This field cannot
-- be set by the \`Update\` method.
gcdvaDefaultLanguageCode :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaDefaultLanguageCode
  = lens _gcdvaDefaultLanguageCode
      (\ s a -> s{_gcdvaDefaultLanguageCode = a})

-- | Optional. Determines whether this agent should log conversation queries.
gcdvaEnableLogging :: Lens' GoogleCloudDialogflowV2Agent (Maybe Bool)
gcdvaEnableLogging
  = lens _gcdvaEnableLogging
      (\ s a -> s{_gcdvaEnableLogging = a})

-- | Optional. To filter out false positive results and still get variety in
-- matched natural language inputs for your agent, you can tune the machine
-- learning classification threshold. If the returned score value is less
-- than the threshold value, then a fallback intent is be triggered or, if
-- there are no fallback intents defined, no intent will be triggered. The
-- score values range from 0.0 (completely uncertain) to 1.0 (completely
-- certain). If set to 0.0, the default of 0.3 is used.
gcdvaClassificationThreshold :: Lens' GoogleCloudDialogflowV2Agent (Maybe Double)
gcdvaClassificationThreshold
  = lens _gcdvaClassificationThreshold
      (\ s a -> s{_gcdvaClassificationThreshold = a})
      . mapping _Coerce

-- | Optional. The URI of the agent\'s avatar. Avatars are used throughout
-- the Dialogflow console and in the self-hosted [Web
-- Demo](https:\/\/dialogflow.com\/docs\/integrations\/web-demo)
-- integration.
gcdvaAvatarURI :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaAvatarURI
  = lens _gcdvaAvatarURI
      (\ s a -> s{_gcdvaAvatarURI = a})

-- | Optional. The list of all languages supported by this agent (except for
-- the \`default_language_code\`).
gcdvaSupportedLanguageCodes :: Lens' GoogleCloudDialogflowV2Agent [Text]
gcdvaSupportedLanguageCodes
  = lens _gcdvaSupportedLanguageCodes
      (\ s a -> s{_gcdvaSupportedLanguageCodes = a})
      . _Default
      . _Coerce

-- | Required. The name of this agent.
gcdvaDisplayName :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaDisplayName
  = lens _gcdvaDisplayName
      (\ s a -> s{_gcdvaDisplayName = a})

-- | Optional. Determines how intents are detected from user queries.
gcdvaMatchMode :: Lens' GoogleCloudDialogflowV2Agent (Maybe GoogleCloudDialogflowV2AgentMatchMode)
gcdvaMatchMode
  = lens _gcdvaMatchMode
      (\ s a -> s{_gcdvaMatchMode = a})

-- | Required. The time zone of this agent from the [time zone
-- database](https:\/\/www.iana.org\/time-zones), e.g., America\/New_York,
-- Europe\/Paris.
gcdvaTimeZone :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaTimeZone
  = lens _gcdvaTimeZone
      (\ s a -> s{_gcdvaTimeZone = a})

-- | Optional. The description of this agent. The maximum length is 500
-- characters. If exceeded, the request is rejected.
gcdvaDescription :: Lens' GoogleCloudDialogflowV2Agent (Maybe Text)
gcdvaDescription
  = lens _gcdvaDescription
      (\ s a -> s{_gcdvaDescription = a})

instance FromJSON GoogleCloudDialogflowV2Agent where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Agent"
              (\ o ->
                 GoogleCloudDialogflowV2Agent' <$>
                   (o .:? "parent") <*> (o .:? "defaultLanguageCode")
                     <*> (o .:? "enableLogging")
                     <*> (o .:? "classificationThreshold")
                     <*> (o .:? "avatarUri")
                     <*> (o .:? "supportedLanguageCodes" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "matchMode")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudDialogflowV2Agent where
        toJSON GoogleCloudDialogflowV2Agent'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcdvaParent,
                  ("defaultLanguageCode" .=) <$>
                    _gcdvaDefaultLanguageCode,
                  ("enableLogging" .=) <$> _gcdvaEnableLogging,
                  ("classificationThreshold" .=) <$>
                    _gcdvaClassificationThreshold,
                  ("avatarUri" .=) <$> _gcdvaAvatarURI,
                  ("supportedLanguageCodes" .=) <$>
                    _gcdvaSupportedLanguageCodes,
                  ("displayName" .=) <$> _gcdvaDisplayName,
                  ("matchMode" .=) <$> _gcdvaMatchMode,
                  ("timeZone" .=) <$> _gcdvaTimeZone,
                  ("description" .=) <$> _gcdvaDescription])

-- | Corresponds to the \`Response\` field in the Dialogflow console.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessage' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessage =
  GoogleCloudDialogflowV2beta1IntentMessage'
    { _gcdvimCard                      :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageCard)
    , _gcdvimImage                     :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimPlatform                  :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessagePlatform)
    , _gcdvimLinkOutSuggestion         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion)
    , _gcdvimText                      :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageText)
    , _gcdvimCarouselSelect            :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect)
    , _gcdvimTelephonySynthesizeSpeech :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech)
    , _gcdvimSimpleResponses           :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses)
    , _gcdvimPayload                   :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessagePayload)
    , _gcdvimTelephonyTransferCall     :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall)
    , _gcdvimSuggestions               :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSuggestions)
    , _gcdvimListSelect                :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageListSelect)
    , _gcdvimTelephonyPlayAudio        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio)
    , _gcdvimBasicCard                 :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCard)
    , _gcdvimQuickReplies              :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageQuickReplies)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimCard'
--
-- * 'gcdvimImage'
--
-- * 'gcdvimPlatform'
--
-- * 'gcdvimLinkOutSuggestion'
--
-- * 'gcdvimText'
--
-- * 'gcdvimCarouselSelect'
--
-- * 'gcdvimTelephonySynthesizeSpeech'
--
-- * 'gcdvimSimpleResponses'
--
-- * 'gcdvimPayload'
--
-- * 'gcdvimTelephonyTransferCall'
--
-- * 'gcdvimSuggestions'
--
-- * 'gcdvimListSelect'
--
-- * 'gcdvimTelephonyPlayAudio'
--
-- * 'gcdvimBasicCard'
--
-- * 'gcdvimQuickReplies'
googleCloudDialogflowV2beta1IntentMessage
    :: GoogleCloudDialogflowV2beta1IntentMessage
googleCloudDialogflowV2beta1IntentMessage =
  GoogleCloudDialogflowV2beta1IntentMessage'
    { _gcdvimCard = Nothing
    , _gcdvimImage = Nothing
    , _gcdvimPlatform = Nothing
    , _gcdvimLinkOutSuggestion = Nothing
    , _gcdvimText = Nothing
    , _gcdvimCarouselSelect = Nothing
    , _gcdvimTelephonySynthesizeSpeech = Nothing
    , _gcdvimSimpleResponses = Nothing
    , _gcdvimPayload = Nothing
    , _gcdvimTelephonyTransferCall = Nothing
    , _gcdvimSuggestions = Nothing
    , _gcdvimListSelect = Nothing
    , _gcdvimTelephonyPlayAudio = Nothing
    , _gcdvimBasicCard = Nothing
    , _gcdvimQuickReplies = Nothing
    }

-- | Displays a card.
gcdvimCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageCard)
gcdvimCard
  = lens _gcdvimCard (\ s a -> s{_gcdvimCard = a})

-- | Displays an image.
gcdvimImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimImage
  = lens _gcdvimImage (\ s a -> s{_gcdvimImage = a})

-- | Optional. The platform that this message is intended for.
gcdvimPlatform :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessagePlatform)
gcdvimPlatform
  = lens _gcdvimPlatform
      (\ s a -> s{_gcdvimPlatform = a})

-- | Displays a link out suggestion chip for Actions on Google.
gcdvimLinkOutSuggestion :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion)
gcdvimLinkOutSuggestion
  = lens _gcdvimLinkOutSuggestion
      (\ s a -> s{_gcdvimLinkOutSuggestion = a})

-- | Returns a text response.
gcdvimText :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageText)
gcdvimText
  = lens _gcdvimText (\ s a -> s{_gcdvimText = a})

-- | Displays a carousel card for Actions on Google.
gcdvimCarouselSelect :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect)
gcdvimCarouselSelect
  = lens _gcdvimCarouselSelect
      (\ s a -> s{_gcdvimCarouselSelect = a})

-- | Synthesizes speech in Telephony Gateway.
gcdvimTelephonySynthesizeSpeech :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech)
gcdvimTelephonySynthesizeSpeech
  = lens _gcdvimTelephonySynthesizeSpeech
      (\ s a -> s{_gcdvimTelephonySynthesizeSpeech = a})

-- | Returns a voice or text-only response for Actions on Google.
gcdvimSimpleResponses :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses)
gcdvimSimpleResponses
  = lens _gcdvimSimpleResponses
      (\ s a -> s{_gcdvimSimpleResponses = a})

-- | Returns a response containing a custom, platform-specific payload. See
-- the Intent.Message.Platform type for a description of the structure that
-- may be required for your platform.
gcdvimPayload :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessagePayload)
gcdvimPayload
  = lens _gcdvimPayload
      (\ s a -> s{_gcdvimPayload = a})

-- | Transfers the call in Telephony Gateway.
gcdvimTelephonyTransferCall :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall)
gcdvimTelephonyTransferCall
  = lens _gcdvimTelephonyTransferCall
      (\ s a -> s{_gcdvimTelephonyTransferCall = a})

-- | Displays suggestion chips for Actions on Google.
gcdvimSuggestions :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageSuggestions)
gcdvimSuggestions
  = lens _gcdvimSuggestions
      (\ s a -> s{_gcdvimSuggestions = a})

-- | Displays a list card for Actions on Google.
gcdvimListSelect :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageListSelect)
gcdvimListSelect
  = lens _gcdvimListSelect
      (\ s a -> s{_gcdvimListSelect = a})

-- | Plays audio from a file in Telephony Gateway.
gcdvimTelephonyPlayAudio :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio)
gcdvimTelephonyPlayAudio
  = lens _gcdvimTelephonyPlayAudio
      (\ s a -> s{_gcdvimTelephonyPlayAudio = a})

-- | Displays a basic card for Actions on Google.
gcdvimBasicCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCard)
gcdvimBasicCard
  = lens _gcdvimBasicCard
      (\ s a -> s{_gcdvimBasicCard = a})

-- | Displays quick replies.
gcdvimQuickReplies :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageQuickReplies)
gcdvimQuickReplies
  = lens _gcdvimQuickReplies
      (\ s a -> s{_gcdvimQuickReplies = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessage"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessage' <$>
                   (o .:? "card") <*> (o .:? "image") <*>
                     (o .:? "platform")
                     <*> (o .:? "linkOutSuggestion")
                     <*> (o .:? "text")
                     <*> (o .:? "carouselSelect")
                     <*> (o .:? "telephonySynthesizeSpeech")
                     <*> (o .:? "simpleResponses")
                     <*> (o .:? "payload")
                     <*> (o .:? "telephonyTransferCall")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "listSelect")
                     <*> (o .:? "telephonyPlayAudio")
                     <*> (o .:? "basicCard")
                     <*> (o .:? "quickReplies"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessage
         where
        toJSON GoogleCloudDialogflowV2beta1IntentMessage'{..}
          = object
              (catMaybes
                 [("card" .=) <$> _gcdvimCard,
                  ("image" .=) <$> _gcdvimImage,
                  ("platform" .=) <$> _gcdvimPlatform,
                  ("linkOutSuggestion" .=) <$>
                    _gcdvimLinkOutSuggestion,
                  ("text" .=) <$> _gcdvimText,
                  ("carouselSelect" .=) <$> _gcdvimCarouselSelect,
                  ("telephonySynthesizeSpeech" .=) <$>
                    _gcdvimTelephonySynthesizeSpeech,
                  ("simpleResponses" .=) <$> _gcdvimSimpleResponses,
                  ("payload" .=) <$> _gcdvimPayload,
                  ("telephonyTransferCall" .=) <$>
                    _gcdvimTelephonyTransferCall,
                  ("suggestions" .=) <$> _gcdvimSuggestions,
                  ("listSelect" .=) <$> _gcdvimListSelect,
                  ("telephonyPlayAudio" .=) <$>
                    _gcdvimTelephonyPlayAudio,
                  ("basicCard" .=) <$> _gcdvimBasicCard,
                  ("quickReplies" .=) <$> _gcdvimQuickReplies])

-- | Additional info about the select item for when it is triggered in a
-- dialog.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSelectItemInfo' smart constructor.
data GoogleCloudDialogflowV2IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
    { _gcdvimsiiKey      :: !(Maybe Text)
    , _gcdvimsiiSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSelectItemInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsiiKey'
--
-- * 'gcdvimsiiSynonyms'
googleCloudDialogflowV2IntentMessageSelectItemInfo
    :: GoogleCloudDialogflowV2IntentMessageSelectItemInfo
googleCloudDialogflowV2IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
    {_gcdvimsiiKey = Nothing, _gcdvimsiiSynonyms = Nothing}

-- | Required. A unique key that will be sent back to the agent if this
-- response is given.
gcdvimsiiKey :: Lens' GoogleCloudDialogflowV2IntentMessageSelectItemInfo (Maybe Text)
gcdvimsiiKey
  = lens _gcdvimsiiKey (\ s a -> s{_gcdvimsiiKey = a})

-- | Optional. A list of synonyms that can also be used to trigger this item
-- in dialog.
gcdvimsiiSynonyms :: Lens' GoogleCloudDialogflowV2IntentMessageSelectItemInfo [Text]
gcdvimsiiSynonyms
  = lens _gcdvimsiiSynonyms
      (\ s a -> s{_gcdvimsiiSynonyms = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSelectItemInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSelectItemInfo"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
                   <$> (o .:? "key") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSelectItemInfo
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSelectItemInfo'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _gcdvimsiiKey,
                  ("synonyms" .=) <$> _gcdvimsiiSynonyms])

-- | The sentiment, such as positive\/negative feeling or association, for a
-- unit of analysis, such as the query text.
--
-- /See:/ 'googleCloudDialogflowV2beta1Sentiment' smart constructor.
data GoogleCloudDialogflowV2beta1Sentiment =
  GoogleCloudDialogflowV2beta1Sentiment'
    { _gcdvsScore     :: !(Maybe (Textual Double))
    , _gcdvsMagnitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1Sentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvsScore'
--
-- * 'gcdvsMagnitude'
googleCloudDialogflowV2beta1Sentiment
    :: GoogleCloudDialogflowV2beta1Sentiment
googleCloudDialogflowV2beta1Sentiment =
  GoogleCloudDialogflowV2beta1Sentiment'
    {_gcdvsScore = Nothing, _gcdvsMagnitude = Nothing}

-- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
-- sentiment).
gcdvsScore :: Lens' GoogleCloudDialogflowV2beta1Sentiment (Maybe Double)
gcdvsScore
  = lens _gcdvsScore (\ s a -> s{_gcdvsScore = a}) .
      mapping _Coerce

-- | A non-negative number in the [0, +inf) range, which represents the
-- absolute magnitude of sentiment, regardless of score (positive or
-- negative).
gcdvsMagnitude :: Lens' GoogleCloudDialogflowV2beta1Sentiment (Maybe Double)
gcdvsMagnitude
  = lens _gcdvsMagnitude
      (\ s a -> s{_gcdvsMagnitude = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1Sentiment
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Sentiment"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Sentiment' <$>
                   (o .:? "score") <*> (o .:? "magnitude"))

instance ToJSON GoogleCloudDialogflowV2beta1Sentiment
         where
        toJSON GoogleCloudDialogflowV2beta1Sentiment'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcdvsScore,
                  ("magnitude" .=) <$> _gcdvsMagnitude])

-- | The request message for EntityTypes.BatchDeleteEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2BatchDeleteEntityTypesRequest' smart constructor.
newtype GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest =
  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest'
    { _gcdvbdetrEntityTypeNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbdetrEntityTypeNames'
googleCloudDialogflowV2BatchDeleteEntityTypesRequest
    :: GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
googleCloudDialogflowV2BatchDeleteEntityTypesRequest =
  GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest'
    {_gcdvbdetrEntityTypeNames = Nothing}

-- | Required. The names entity types to delete. All names must point to the
-- same agent as \`parent\`.
gcdvbdetrEntityTypeNames :: Lens' GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest [Text]
gcdvbdetrEntityTypeNames
  = lens _gcdvbdetrEntityTypeNames
      (\ s a -> s{_gcdvbdetrEntityTypeNames = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest'
                   <$> (o .:? "entityTypeNames" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest'{..}
          = object
              (catMaybes
                 [("entityTypeNames" .=) <$>
                    _gcdvbdetrEntityTypeNames])

-- | Represents the query input. It can contain either: 1. An audio config
-- which instructs the speech recognizer how to process the speech audio.
-- 2. A conversational query in the form of text,. 3. An event that
-- specifies which intent to trigger.
--
-- /See:/ 'googleCloudDialogflowV2QueryInput' smart constructor.
data GoogleCloudDialogflowV2QueryInput =
  GoogleCloudDialogflowV2QueryInput'
    { _gcdvqiAudioConfig :: !(Maybe GoogleCloudDialogflowV2InputAudioConfig)
    , _gcdvqiEvent       :: !(Maybe GoogleCloudDialogflowV2EventInput)
    , _gcdvqiText        :: !(Maybe GoogleCloudDialogflowV2TextInput)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqiAudioConfig'
--
-- * 'gcdvqiEvent'
--
-- * 'gcdvqiText'
googleCloudDialogflowV2QueryInput
    :: GoogleCloudDialogflowV2QueryInput
googleCloudDialogflowV2QueryInput =
  GoogleCloudDialogflowV2QueryInput'
    { _gcdvqiAudioConfig = Nothing
    , _gcdvqiEvent = Nothing
    , _gcdvqiText = Nothing
    }

-- | Instructs the speech recognizer how to process the speech audio.
gcdvqiAudioConfig :: Lens' GoogleCloudDialogflowV2QueryInput (Maybe GoogleCloudDialogflowV2InputAudioConfig)
gcdvqiAudioConfig
  = lens _gcdvqiAudioConfig
      (\ s a -> s{_gcdvqiAudioConfig = a})

-- | The event to be processed.
gcdvqiEvent :: Lens' GoogleCloudDialogflowV2QueryInput (Maybe GoogleCloudDialogflowV2EventInput)
gcdvqiEvent
  = lens _gcdvqiEvent (\ s a -> s{_gcdvqiEvent = a})

-- | The natural language text to be processed.
gcdvqiText :: Lens' GoogleCloudDialogflowV2QueryInput (Maybe GoogleCloudDialogflowV2TextInput)
gcdvqiText
  = lens _gcdvqiText (\ s a -> s{_gcdvqiText = a})

instance FromJSON GoogleCloudDialogflowV2QueryInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2QueryInput"
              (\ o ->
                 GoogleCloudDialogflowV2QueryInput' <$>
                   (o .:? "audioConfig") <*> (o .:? "event") <*>
                     (o .:? "text"))

instance ToJSON GoogleCloudDialogflowV2QueryInput
         where
        toJSON GoogleCloudDialogflowV2QueryInput'{..}
          = object
              (catMaybes
                 [("audioConfig" .=) <$> _gcdvqiAudioConfig,
                  ("event" .=) <$> _gcdvqiEvent,
                  ("text" .=) <$> _gcdvqiText])

-- | The request message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV2ExportAgentRequest' smart constructor.
newtype GoogleCloudDialogflowV2ExportAgentRequest =
  GoogleCloudDialogflowV2ExportAgentRequest'
    { _gcdvearAgentURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ExportAgentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvearAgentURI'
googleCloudDialogflowV2ExportAgentRequest
    :: GoogleCloudDialogflowV2ExportAgentRequest
googleCloudDialogflowV2ExportAgentRequest =
  GoogleCloudDialogflowV2ExportAgentRequest' {_gcdvearAgentURI = Nothing}

-- | Optional. The [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/docs\/) URI to export the
-- agent to. The format of this URI must be \`gs:\/\/\/\`. If left
-- unspecified, the serialized agent is returned inline.
gcdvearAgentURI :: Lens' GoogleCloudDialogflowV2ExportAgentRequest (Maybe Text)
gcdvearAgentURI
  = lens _gcdvearAgentURI
      (\ s a -> s{_gcdvearAgentURI = a})

instance FromJSON
           GoogleCloudDialogflowV2ExportAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ExportAgentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2ExportAgentRequest' <$>
                   (o .:? "agentUri"))

instance ToJSON
           GoogleCloudDialogflowV2ExportAgentRequest
         where
        toJSON GoogleCloudDialogflowV2ExportAgentRequest'{..}
          = object
              (catMaybes [("agentUri" .=) <$> _gcdvearAgentURI])

-- | The card for presenting a carousel of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCarouselSelect' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
    { _gcdvimcsItems :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcsItems'
googleCloudDialogflowV2beta1IntentMessageCarouselSelect
    :: GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
googleCloudDialogflowV2beta1IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
    {_gcdvimcsItems = Nothing}

-- | Required. Carousel items.
gcdvimcsItems :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem]
gcdvimcsItems
  = lens _gcdvimcsItems
      (\ s a -> s{_gcdvimcsItems = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
                   <$> (o .:? "items" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'{..}
          = object
              (catMaybes [("items" .=) <$> _gcdvimcsItems])

-- | Represents a context.
--
-- /See:/ 'googleCloudDialogflowV2beta1Context' smart constructor.
data GoogleCloudDialogflowV2beta1Context =
  GoogleCloudDialogflowV2beta1Context'
    { _gcdvcLifespanCount :: !(Maybe (Textual Int32))
    , _gcdvcName          :: !(Maybe Text)
    , _gcdvcParameters    :: !(Maybe GoogleCloudDialogflowV2beta1ContextParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvcLifespanCount'
--
-- * 'gcdvcName'
--
-- * 'gcdvcParameters'
googleCloudDialogflowV2beta1Context
    :: GoogleCloudDialogflowV2beta1Context
googleCloudDialogflowV2beta1Context =
  GoogleCloudDialogflowV2beta1Context'
    { _gcdvcLifespanCount = Nothing
    , _gcdvcName = Nothing
    , _gcdvcParameters = Nothing
    }

-- | Optional. The number of conversational query requests after which the
-- context expires. If set to \`0\` (the default) the context expires
-- immediately. Contexts expire automatically after 10 minutes even if
-- there are no matching queries.
gcdvcLifespanCount :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe Int32)
gcdvcLifespanCount
  = lens _gcdvcLifespanCount
      (\ s a -> s{_gcdvcLifespanCount = a})
      . mapping _Coerce

-- | Required. The unique identifier of the context. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\/contexts\/\`.
-- The \`Context ID\` is always converted to lowercase, may only contain
-- characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. If \`User ID\` is not specified, we assume default \'-\'
-- user.
gcdvcName :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe Text)
gcdvcName
  = lens _gcdvcName (\ s a -> s{_gcdvcName = a})

-- | Optional. The collection of parameters associated with this context.
-- Refer to [this
-- doc](https:\/\/dialogflow.com\/docs\/actions-and-parameters) for syntax.
gcdvcParameters :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe GoogleCloudDialogflowV2beta1ContextParameters)
gcdvcParameters
  = lens _gcdvcParameters
      (\ s a -> s{_gcdvcParameters = a})

instance FromJSON GoogleCloudDialogflowV2beta1Context
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Context"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Context' <$>
                   (o .:? "lifespanCount") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2beta1Context
         where
        toJSON GoogleCloudDialogflowV2beta1Context'{..}
          = object
              (catMaybes
                 [("lifespanCount" .=) <$> _gcdvcLifespanCount,
                  ("name" .=) <$> _gcdvcName,
                  ("parameters" .=) <$> _gcdvcParameters])

-- | The request message for EntityTypes.BatchUpdateEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateEntityTypesRequest' smart constructor.
data GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest'
    { _gcdvbuetrLanguageCode          :: !(Maybe Text)
    , _gcdvbuetrUpdateMask            :: !(Maybe GFieldMask)
    , _gcdvbuetrEntityTypeBatchInline :: !(Maybe GoogleCloudDialogflowV2EntityTypeBatch)
    , _gcdvbuetrEntityTypeBatchURI    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuetrLanguageCode'
--
-- * 'gcdvbuetrUpdateMask'
--
-- * 'gcdvbuetrEntityTypeBatchInline'
--
-- * 'gcdvbuetrEntityTypeBatchURI'
googleCloudDialogflowV2BatchUpdateEntityTypesRequest
    :: GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
googleCloudDialogflowV2BatchUpdateEntityTypesRequest =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest'
    { _gcdvbuetrLanguageCode = Nothing
    , _gcdvbuetrUpdateMask = Nothing
    , _gcdvbuetrEntityTypeBatchInline = Nothing
    , _gcdvbuetrEntityTypeBatchURI = Nothing
    }

-- | Optional. The language of entity synonyms defined in \`entity_types\`.
-- If not specified, the agent\'s default language is used. [More than a
-- dozen languages](https:\/\/dialogflow.com\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent, before they
-- can be used.
gcdvbuetrLanguageCode :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest (Maybe Text)
gcdvbuetrLanguageCode
  = lens _gcdvbuetrLanguageCode
      (\ s a -> s{_gcdvbuetrLanguageCode = a})

-- | Optional. The mask to control which fields get updated.
gcdvbuetrUpdateMask :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest (Maybe GFieldMask)
gcdvbuetrUpdateMask
  = lens _gcdvbuetrUpdateMask
      (\ s a -> s{_gcdvbuetrUpdateMask = a})

-- | The collection of entity types to update or create.
gcdvbuetrEntityTypeBatchInline :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest (Maybe GoogleCloudDialogflowV2EntityTypeBatch)
gcdvbuetrEntityTypeBatchInline
  = lens _gcdvbuetrEntityTypeBatchInline
      (\ s a -> s{_gcdvbuetrEntityTypeBatchInline = a})

-- | The URI to a Google Cloud Storage file containing entity types to update
-- or create. The file format can either be a serialized proto (of
-- EntityBatch type) or a JSON object. Note: The URI must start with
-- \"gs:\/\/\".
gcdvbuetrEntityTypeBatchURI :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest (Maybe Text)
gcdvbuetrEntityTypeBatchURI
  = lens _gcdvbuetrEntityTypeBatchURI
      (\ s a -> s{_gcdvbuetrEntityTypeBatchURI = a})

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "updateMask") <*>
                     (o .:? "entityTypeBatchInline")
                     <*> (o .:? "entityTypeBatchUri"))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvbuetrLanguageCode,
                  ("updateMask" .=) <$> _gcdvbuetrUpdateMask,
                  ("entityTypeBatchInline" .=) <$>
                    _gcdvbuetrEntityTypeBatchInline,
                  ("entityTypeBatchUri" .=) <$>
                    _gcdvbuetrEntityTypeBatchURI])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunningOperationResponse' smart constructor.
newtype GoogleLongrunningOperationResponse =
  GoogleLongrunningOperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunningOperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunningOperationResponse
googleLongrunningOperationResponse pGlorAddtional_ =
  GoogleLongrunningOperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunningOperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunningOperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | Synthesizes speech and plays back the synthesized audio to the caller in
-- Telephony Gateway. Telephony Gateway takes the synthesizer settings from
-- \`DetectIntentResponse.output_audio_config\` which can either be set at
-- request-level or can come from the agent-level synthesizer config.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
    { _gcdvimtssText :: !(Maybe Text)
    , _gcdvimtssSsml :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtssText'
--
-- * 'gcdvimtssSsml'
googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
    {_gcdvimtssText = Nothing, _gcdvimtssSsml = Nothing}

-- | The raw text to be synthesized.
gcdvimtssText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech (Maybe Text)
gcdvimtssText
  = lens _gcdvimtssText
      (\ s a -> s{_gcdvimtssText = a})

-- | The SSML to be synthesized. For more information, see
-- [SSML](https:\/\/developers.google.com\/actions\/reference\/ssml).
gcdvimtssSsml :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech (Maybe Text)
gcdvimtssSsml
  = lens _gcdvimtssSsml
      (\ s a -> s{_gcdvimtssSsml = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
                   <$> (o .:? "text") <*> (o .:? "ssml"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimtssText,
                  ("ssml" .=) <$> _gcdvimtssSsml])

-- | An item in the list.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageListSelectItem' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageListSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
    { _gcdvimlsicImage       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimlsicTitle       :: !(Maybe Text)
    , _gcdvimlsicDescription :: !(Maybe Text)
    , _gcdvimlsicInfo        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageListSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsicImage'
--
-- * 'gcdvimlsicTitle'
--
-- * 'gcdvimlsicDescription'
--
-- * 'gcdvimlsicInfo'
googleCloudDialogflowV2beta1IntentMessageListSelectItem
    :: GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
googleCloudDialogflowV2beta1IntentMessageListSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
    { _gcdvimlsicImage = Nothing
    , _gcdvimlsicTitle = Nothing
    , _gcdvimlsicDescription = Nothing
    , _gcdvimlsicInfo = Nothing
    }

-- | Optional. The image to display.
gcdvimlsicImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimlsicImage
  = lens _gcdvimlsicImage
      (\ s a -> s{_gcdvimlsicImage = a})

-- | Required. The title of the list item.
gcdvimlsicTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe Text)
gcdvimlsicTitle
  = lens _gcdvimlsicTitle
      (\ s a -> s{_gcdvimlsicTitle = a})

-- | Optional. The main text describing the item.
gcdvimlsicDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe Text)
gcdvimlsicDescription
  = lens _gcdvimlsicDescription
      (\ s a -> s{_gcdvimlsicDescription = a})

-- | Required. Additional information about this option.
gcdvimlsicInfo :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
gcdvimlsicInfo
  = lens _gcdvimlsicInfo
      (\ s a -> s{_gcdvimlsicInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageListSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimlsicImage,
                  ("title" .=) <$> _gcdvimlsicTitle,
                  ("description" .=) <$> _gcdvimlsicDescription,
                  ("info" .=) <$> _gcdvimlsicInfo])

-- | The suggestion chip message that the user can tap to quickly post a
-- reply to the conversation.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSuggestion' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSuggestion =
  GoogleCloudDialogflowV2IntentMessageSuggestion'
    { _gcdvimscTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimscTitle'
googleCloudDialogflowV2IntentMessageSuggestion
    :: GoogleCloudDialogflowV2IntentMessageSuggestion
googleCloudDialogflowV2IntentMessageSuggestion =
  GoogleCloudDialogflowV2IntentMessageSuggestion' {_gcdvimscTitle = Nothing}

-- | Required. The text shown the in the suggestion chip.
gcdvimscTitle :: Lens' GoogleCloudDialogflowV2IntentMessageSuggestion (Maybe Text)
gcdvimscTitle
  = lens _gcdvimscTitle
      (\ s a -> s{_gcdvimscTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSuggestion' <$>
                   (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSuggestion'{..}
          = object
              (catMaybes [("title" .=) <$> _gcdvimscTitle])

-- | An **entity entry** for an associated entity type.
--
-- /See:/ 'googleCloudDialogflowV2beta1EntityTypeEntity' smart constructor.
data GoogleCloudDialogflowV2beta1EntityTypeEntity =
  GoogleCloudDialogflowV2beta1EntityTypeEntity'
    { _gcdveteValue    :: !(Maybe Text)
    , _gcdveteSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1EntityTypeEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveteValue'
--
-- * 'gcdveteSynonyms'
googleCloudDialogflowV2beta1EntityTypeEntity
    :: GoogleCloudDialogflowV2beta1EntityTypeEntity
googleCloudDialogflowV2beta1EntityTypeEntity =
  GoogleCloudDialogflowV2beta1EntityTypeEntity'
    {_gcdveteValue = Nothing, _gcdveteSynonyms = Nothing}

-- | Required. The primary value associated with this entity entry. For
-- example, if the entity type is *vegetable*, the value could be
-- *scallions*. For \`KIND_MAP\` entity types: * A canonical value to be
-- used in place of synonyms. For \`KIND_LIST\` entity types: * A string
-- that can contain references to other entity types (with or without
-- aliases).
gcdveteValue :: Lens' GoogleCloudDialogflowV2beta1EntityTypeEntity (Maybe Text)
gcdveteValue
  = lens _gcdveteValue (\ s a -> s{_gcdveteValue = a})

-- | Required. A collection of value synonyms. For example, if the entity
-- type is *vegetable*, and \`value\` is *scallions*, a synonym could be
-- *green onions*. For \`KIND_LIST\` entity types: * This collection must
-- contain exactly one synonym equal to \`value\`.
gcdveteSynonyms :: Lens' GoogleCloudDialogflowV2beta1EntityTypeEntity [Text]
gcdveteSynonyms
  = lens _gcdveteSynonyms
      (\ s a -> s{_gcdveteSynonyms = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1EntityTypeEntity
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1EntityTypeEntity"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EntityTypeEntity' <$>
                   (o .:? "value") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1EntityTypeEntity
         where
        toJSON
          GoogleCloudDialogflowV2beta1EntityTypeEntity'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdveteValue,
                  ("synonyms" .=) <$> _gcdveteSynonyms])

-- | Represents an entity type. Entity types serve as a tool for extracting
-- parameter values from natural language queries.
--
-- /See:/ 'googleCloudDialogflowV2EntityType' smart constructor.
data GoogleCloudDialogflowV2EntityType =
  GoogleCloudDialogflowV2EntityType'
    { _gcdvetEntities          :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    , _gcdvetKind              :: !(Maybe GoogleCloudDialogflowV2EntityTypeKind)
    , _gcdvetName              :: !(Maybe Text)
    , _gcdvetAutoExpansionMode :: !(Maybe GoogleCloudDialogflowV2EntityTypeAutoExpansionMode)
    , _gcdvetDisplayName       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2EntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetEntities'
--
-- * 'gcdvetKind'
--
-- * 'gcdvetName'
--
-- * 'gcdvetAutoExpansionMode'
--
-- * 'gcdvetDisplayName'
googleCloudDialogflowV2EntityType
    :: GoogleCloudDialogflowV2EntityType
googleCloudDialogflowV2EntityType =
  GoogleCloudDialogflowV2EntityType'
    { _gcdvetEntities = Nothing
    , _gcdvetKind = Nothing
    , _gcdvetName = Nothing
    , _gcdvetAutoExpansionMode = Nothing
    , _gcdvetDisplayName = Nothing
    }

-- | Optional. The collection of entity entries associated with the entity
-- type.
gcdvetEntities :: Lens' GoogleCloudDialogflowV2EntityType [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvetEntities
  = lens _gcdvetEntities
      (\ s a -> s{_gcdvetEntities = a})
      . _Default
      . _Coerce

-- | Required. Indicates the kind of entity type.
gcdvetKind :: Lens' GoogleCloudDialogflowV2EntityType (Maybe GoogleCloudDialogflowV2EntityTypeKind)
gcdvetKind
  = lens _gcdvetKind (\ s a -> s{_gcdvetKind = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
-- methods. Format: \`projects\/\/agent\/entityTypes\/\`.
gcdvetName :: Lens' GoogleCloudDialogflowV2EntityType (Maybe Text)
gcdvetName
  = lens _gcdvetName (\ s a -> s{_gcdvetName = a})

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
gcdvetAutoExpansionMode :: Lens' GoogleCloudDialogflowV2EntityType (Maybe GoogleCloudDialogflowV2EntityTypeAutoExpansionMode)
gcdvetAutoExpansionMode
  = lens _gcdvetAutoExpansionMode
      (\ s a -> s{_gcdvetAutoExpansionMode = a})

-- | Required. The name of the entity type.
gcdvetDisplayName :: Lens' GoogleCloudDialogflowV2EntityType (Maybe Text)
gcdvetDisplayName
  = lens _gcdvetDisplayName
      (\ s a -> s{_gcdvetDisplayName = a})

instance FromJSON GoogleCloudDialogflowV2EntityType
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2EntityType"
              (\ o ->
                 GoogleCloudDialogflowV2EntityType' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "name")
                     <*> (o .:? "autoExpansionMode")
                     <*> (o .:? "displayName"))

instance ToJSON GoogleCloudDialogflowV2EntityType
         where
        toJSON GoogleCloudDialogflowV2EntityType'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _gcdvetEntities,
                  ("kind" .=) <$> _gcdvetKind,
                  ("name" .=) <$> _gcdvetName,
                  ("autoExpansionMode" .=) <$>
                    _gcdvetAutoExpansionMode,
                  ("displayName" .=) <$> _gcdvetDisplayName])

-- | Represents the natural language text to be processed.
--
-- /See:/ 'googleCloudDialogflowV2TextInput' smart constructor.
data GoogleCloudDialogflowV2TextInput =
  GoogleCloudDialogflowV2TextInput'
    { _gcdvtiLanguageCode :: !(Maybe Text)
    , _gcdvtiText         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2TextInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvtiLanguageCode'
--
-- * 'gcdvtiText'
googleCloudDialogflowV2TextInput
    :: GoogleCloudDialogflowV2TextInput
googleCloudDialogflowV2TextInput =
  GoogleCloudDialogflowV2TextInput'
    {_gcdvtiLanguageCode = Nothing, _gcdvtiText = Nothing}

-- | Required. The language of this conversational query. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/languages) for a list of the
-- currently supported language codes. Note that queries in the same
-- session do not necessarily need to specify the same language.
gcdvtiLanguageCode :: Lens' GoogleCloudDialogflowV2TextInput (Maybe Text)
gcdvtiLanguageCode
  = lens _gcdvtiLanguageCode
      (\ s a -> s{_gcdvtiLanguageCode = a})

-- | Required. The UTF-8 encoded natural language text to be processed. Text
-- length must not exceed 256 characters.
gcdvtiText :: Lens' GoogleCloudDialogflowV2TextInput (Maybe Text)
gcdvtiText
  = lens _gcdvtiText (\ s a -> s{_gcdvtiText = a})

instance FromJSON GoogleCloudDialogflowV2TextInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2TextInput"
              (\ o ->
                 GoogleCloudDialogflowV2TextInput' <$>
                   (o .:? "languageCode") <*> (o .:? "text"))

instance ToJSON GoogleCloudDialogflowV2TextInput
         where
        toJSON GoogleCloudDialogflowV2TextInput'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvtiLanguageCode,
                  ("text" .=) <$> _gcdvtiText])

-- | Opens the given URI.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
    { _gcdvimbcbouriaURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbouriaURI'
googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
    :: GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
    {_gcdvimbcbouriaURI = Nothing}

-- | Required. The HTTP or HTTPS scheme URI.
gcdvimbcbouriaURI :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction (Maybe Text)
gcdvimbcbouriaURI
  = lens _gcdvimbcbouriaURI
      (\ s a -> s{_gcdvimbcbouriaURI = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
                   <$> (o .:? "uri"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'{..}
          = object
              (catMaybes [("uri" .=) <$> _gcdvimbcbouriaURI])

-- | The card response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCard =
  GoogleCloudDialogflowV2IntentMessageCard'
    { _gcdvimccButtons  :: !(Maybe [GoogleCloudDialogflowV2IntentMessageCardButton])
    , _gcdvimccImageURI :: !(Maybe Text)
    , _gcdvimccSubtitle :: !(Maybe Text)
    , _gcdvimccTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimccButtons'
--
-- * 'gcdvimccImageURI'
--
-- * 'gcdvimccSubtitle'
--
-- * 'gcdvimccTitle'
googleCloudDialogflowV2IntentMessageCard
    :: GoogleCloudDialogflowV2IntentMessageCard
googleCloudDialogflowV2IntentMessageCard =
  GoogleCloudDialogflowV2IntentMessageCard'
    { _gcdvimccButtons = Nothing
    , _gcdvimccImageURI = Nothing
    , _gcdvimccSubtitle = Nothing
    , _gcdvimccTitle = Nothing
    }

-- | Optional. The collection of card buttons.
gcdvimccButtons :: Lens' GoogleCloudDialogflowV2IntentMessageCard [GoogleCloudDialogflowV2IntentMessageCardButton]
gcdvimccButtons
  = lens _gcdvimccButtons
      (\ s a -> s{_gcdvimccButtons = a})
      . _Default
      . _Coerce

-- | Optional. The public URI to an image file for the card.
gcdvimccImageURI :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccImageURI
  = lens _gcdvimccImageURI
      (\ s a -> s{_gcdvimccImageURI = a})

-- | Optional. The subtitle of the card.
gcdvimccSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccSubtitle
  = lens _gcdvimccSubtitle
      (\ s a -> s{_gcdvimccSubtitle = a})

-- | Optional. The title of the card.
gcdvimccTitle :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccTitle
  = lens _gcdvimccTitle
      (\ s a -> s{_gcdvimccTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCard' <$>
                   (o .:? "buttons" .!= mempty) <*> (o .:? "imageUri")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCard
         where
        toJSON GoogleCloudDialogflowV2IntentMessageCard'{..}
          = object
              (catMaybes
                 [("buttons" .=) <$> _gcdvimccButtons,
                  ("imageUri" .=) <$> _gcdvimccImageURI,
                  ("subtitle" .=) <$> _gcdvimccSubtitle,
                  ("title" .=) <$> _gcdvimccTitle])

-- | Represents the contents of the original request that was passed to the
-- \`[Streaming]DetectIntent\` call.
--
-- /See:/ 'googleCloudDialogflowV2OriginalDetectIntentRequest' smart constructor.
data GoogleCloudDialogflowV2OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2OriginalDetectIntentRequest'
    { _gPayload :: !(Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload)
    , _gVersion :: !(Maybe Text)
    , _gSource  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2OriginalDetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPayload'
--
-- * 'gVersion'
--
-- * 'gSource'
googleCloudDialogflowV2OriginalDetectIntentRequest
    :: GoogleCloudDialogflowV2OriginalDetectIntentRequest
googleCloudDialogflowV2OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2OriginalDetectIntentRequest'
    {_gPayload = Nothing, _gVersion = Nothing, _gSource = Nothing}

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular for the Telephony Gateway this
-- field has the form:
--
-- > {
-- >  "telephony": {
-- >    "caller_id": "+18558363987"
-- >  }
-- > }
--
-- Note: The caller ID field (\`caller_id\`) will be redacted for Standard
-- Edition agents and populated with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Enterprise Edition
-- agents.
gPayload :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload)
gPayload = lens _gPayload (\ s a -> s{_gPayload = a})

-- | Optional. The version of the protocol used for this request. This field
-- is AoG-specific.
gVersion :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe Text)
gVersion = lens _gVersion (\ s a -> s{_gVersion = a})

-- | The source of this request, e.g., \`google\`, \`facebook\`, \`slack\`.
-- It is set by Dialogflow-owned servers.
gSource :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe Text)
gSource = lens _gSource (\ s a -> s{_gSource = a})

instance FromJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2OriginalDetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2OriginalDetectIntentRequest'
                   <$>
                   (o .:? "payload") <*> (o .:? "version") <*>
                     (o .:? "source"))

instance ToJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowV2OriginalDetectIntentRequest'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _gPayload,
                  ("version" .=) <$> _gVersion,
                  ("source" .=) <$> _gSource])

-- | The image response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageImage' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageImage =
  GoogleCloudDialogflowV2beta1IntentMessageImage'
    { _gcdvimiAccessibilityText :: !(Maybe Text)
    , _gcdvimiImageURI          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimiAccessibilityText'
--
-- * 'gcdvimiImageURI'
googleCloudDialogflowV2beta1IntentMessageImage
    :: GoogleCloudDialogflowV2beta1IntentMessageImage
googleCloudDialogflowV2beta1IntentMessageImage =
  GoogleCloudDialogflowV2beta1IntentMessageImage'
    {_gcdvimiAccessibilityText = Nothing, _gcdvimiImageURI = Nothing}

-- | A text description of the image to be used for accessibility, e.g.,
-- screen readers. Required if image_uri is set for CarouselSelect.
gcdvimiAccessibilityText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageImage (Maybe Text)
gcdvimiAccessibilityText
  = lens _gcdvimiAccessibilityText
      (\ s a -> s{_gcdvimiAccessibilityText = a})

-- | Optional. The public URI to an image file.
gcdvimiImageURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageImage (Maybe Text)
gcdvimiImageURI
  = lens _gcdvimiImageURI
      (\ s a -> s{_gcdvimiImageURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageImage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageImage"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageImage' <$>
                   (o .:? "accessibilityText") <*> (o .:? "imageUri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageImage
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageImage'{..}
          = object
              (catMaybes
                 [("accessibilityText" .=) <$>
                    _gcdvimiAccessibilityText,
                  ("imageUri" .=) <$> _gcdvimiImageURI])

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV2ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowV2ExportAgentResponse =
  GoogleCloudDialogflowV2ExportAgentResponse'
    { _gAgentURI     :: !(Maybe Text)
    , _gAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAgentURI'
--
-- * 'gAgentContent'
googleCloudDialogflowV2ExportAgentResponse
    :: GoogleCloudDialogflowV2ExportAgentResponse
googleCloudDialogflowV2ExportAgentResponse =
  GoogleCloudDialogflowV2ExportAgentResponse'
    {_gAgentURI = Nothing, _gAgentContent = Nothing}

-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in \`ExportAgentRequest\`.
gAgentURI :: Lens' GoogleCloudDialogflowV2ExportAgentResponse (Maybe Text)
gAgentURI
  = lens _gAgentURI (\ s a -> s{_gAgentURI = a})

-- | The exported agent. Example for how to export an agent to a zip file via
-- a command line:
--
-- > curl \
-- >   'https://dialogflow.googleapis.com/v2/projects/<project_name>/agent:export'\
-- >   -X POST \
-- >   -H 'Authorization: Bearer '$(gcloud auth application-default
-- >   print-access-token) \
-- >   -H 'Accept: application/json' \
-- >   -H 'Content-Type: application/json' \
-- >   --compressed \
-- >   --data-binary '{}' \
-- > | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \
-- > | base64 --decode > <agent zip file>
gAgentContent :: Lens' GoogleCloudDialogflowV2ExportAgentResponse (Maybe ByteString)
gAgentContent
  = lens _gAgentContent
      (\ s a -> s{_gAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ExportAgentResponse' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV2ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gAgentURI,
                  ("agentContent" .=) <$> _gAgentContent])

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_payload\`. See the related
-- \`fulfillment_messages[i].payload field\`, which may be used as an
-- alternative to this field. This field can be used for Actions on Google
-- responses. It should have a structure similar to the JSON message shown
-- here. For more information, see [Actions on Google Webhook
-- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
--
-- > {
-- >   "google": {
-- >     "expectUserResponse": true,
-- >     "richResponse": {
-- >       "items": [
-- >         {
-- >           "simpleResponse": {
-- >             "textToSpeech": "this is a simple response"
-- >           }
-- >         }
-- >       ]
-- >     }
-- >   }
-- > }
--
-- /See:/ 'googleCloudDialogflowV2WebhookResponsePayload' smart constructor.
newtype GoogleCloudDialogflowV2WebhookResponsePayload =
  GoogleCloudDialogflowV2WebhookResponsePayload'
    { _gcdvwrpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2WebhookResponsePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrpcAddtional'
googleCloudDialogflowV2WebhookResponsePayload
    :: HashMap Text JSONValue -- ^ 'gcdvwrpcAddtional'
    -> GoogleCloudDialogflowV2WebhookResponsePayload
googleCloudDialogflowV2WebhookResponsePayload pGcdvwrpcAddtional_ =
  GoogleCloudDialogflowV2WebhookResponsePayload'
    {_gcdvwrpcAddtional = _Coerce # pGcdvwrpcAddtional_}

-- | Properties of the object.
gcdvwrpcAddtional :: Lens' GoogleCloudDialogflowV2WebhookResponsePayload (HashMap Text JSONValue)
gcdvwrpcAddtional
  = lens _gcdvwrpcAddtional
      (\ s a -> s{_gcdvwrpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2WebhookResponsePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2WebhookResponsePayload"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookResponsePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2WebhookResponsePayload
         where
        toJSON = toJSON . _gcdvwrpcAddtional

-- | The suggestion chip message that allows the user to jump out to the app
-- or website associated with this agent.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
    { _gURI             :: !(Maybe Text)
    , _gDestinationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURI'
--
-- * 'gDestinationName'
googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    :: GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
    {_gURI = Nothing, _gDestinationName = Nothing}

-- | Required. The URI of the app or site to open when the user taps the
-- suggestion chip.
gURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion (Maybe Text)
gURI = lens _gURI (\ s a -> s{_gURI = a})

-- | Required. The name of the app or site this chip is linking to.
gDestinationName :: Lens' GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion (Maybe Text)
gDestinationName
  = lens _gDestinationName
      (\ s a -> s{_gDestinationName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
                   <$> (o .:? "uri") <*> (o .:? "destinationName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gURI,
                  ("destinationName" .=) <$> _gDestinationName])

-- | The response message for Intents.ListIntents.
--
-- /See:/ 'googleCloudDialogflowV2ListIntentsResponse' smart constructor.
data GoogleCloudDialogflowV2ListIntentsResponse =
  GoogleCloudDialogflowV2ListIntentsResponse'
    { _gcdvlirIntents       :: !(Maybe [GoogleCloudDialogflowV2Intent])
    , _gcdvlirNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ListIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvlirIntents'
--
-- * 'gcdvlirNextPageToken'
googleCloudDialogflowV2ListIntentsResponse
    :: GoogleCloudDialogflowV2ListIntentsResponse
googleCloudDialogflowV2ListIntentsResponse =
  GoogleCloudDialogflowV2ListIntentsResponse'
    {_gcdvlirIntents = Nothing, _gcdvlirNextPageToken = Nothing}

-- | The list of agent intents. There will be a maximum number of items
-- returned based on the page_size field in the request.
gcdvlirIntents :: Lens' GoogleCloudDialogflowV2ListIntentsResponse [GoogleCloudDialogflowV2Intent]
gcdvlirIntents
  = lens _gcdvlirIntents
      (\ s a -> s{_gcdvlirIntents = a})
      . _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdvlirNextPageToken :: Lens' GoogleCloudDialogflowV2ListIntentsResponse (Maybe Text)
gcdvlirNextPageToken
  = lens _gcdvlirNextPageToken
      (\ s a -> s{_gcdvlirNextPageToken = a})

instance FromJSON
           GoogleCloudDialogflowV2ListIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ListIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ListIntentsResponse' <$>
                   (o .:? "intents" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON
           GoogleCloudDialogflowV2ListIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2ListIntentsResponse'{..}
          = object
              (catMaybes
                 [("intents" .=) <$> _gcdvlirIntents,
                  ("nextPageToken" .=) <$> _gcdvlirNextPageToken])

-- | The response message for EntityTypes.BatchUpdateEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateEntityTypesResponse' smart constructor.
newtype GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
    { _gEntityTypes :: Maybe [GoogleCloudDialogflowV2EntityType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEntityTypes'
googleCloudDialogflowV2BatchUpdateEntityTypesResponse
    :: GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
googleCloudDialogflowV2BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
    {_gEntityTypes = Nothing}

-- | The collection of updated or created entity types.
gEntityTypes :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse [GoogleCloudDialogflowV2EntityType]
gEntityTypes
  = lens _gEntityTypes (\ s a -> s{_gEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
                   <$> (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'{..}
          = object
              (catMaybes [("entityTypes" .=) <$> _gEntityTypes])

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
--
-- /See:/ 'googleCloudDialogflowV2QueryResultWebhookPayload' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultWebhookPayload =
  GoogleCloudDialogflowV2QueryResultWebhookPayload'
    { _gcdvqrwpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultWebhookPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrwpAddtional'
googleCloudDialogflowV2QueryResultWebhookPayload
    :: HashMap Text JSONValue -- ^ 'gcdvqrwpAddtional'
    -> GoogleCloudDialogflowV2QueryResultWebhookPayload
googleCloudDialogflowV2QueryResultWebhookPayload pGcdvqrwpAddtional_ =
  GoogleCloudDialogflowV2QueryResultWebhookPayload'
    {_gcdvqrwpAddtional = _Coerce # pGcdvqrwpAddtional_}

-- | Properties of the object.
gcdvqrwpAddtional :: Lens' GoogleCloudDialogflowV2QueryResultWebhookPayload (HashMap Text JSONValue)
gcdvqrwpAddtional
  = lens _gcdvqrwpAddtional
      (\ s a -> s{_gcdvqrwpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultWebhookPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultWebhookPayload"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultWebhookPayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultWebhookPayload
         where
        toJSON = toJSON . _gcdvqrwpAddtional

-- | Represents intent parameters.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentParameter' smart constructor.
data GoogleCloudDialogflowV2beta1IntentParameter =
  GoogleCloudDialogflowV2beta1IntentParameter'
    { _gcdvipValue                 :: !(Maybe Text)
    , _gcdvipName                  :: !(Maybe Text)
    , _gcdvipPrompts               :: !(Maybe [Text])
    , _gcdvipMandatory             :: !(Maybe Bool)
    , _gcdvipDisplayName           :: !(Maybe Text)
    , _gcdvipDefaultValue          :: !(Maybe Text)
    , _gcdvipIsList                :: !(Maybe Bool)
    , _gcdvipEntityTypeDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvipValue'
--
-- * 'gcdvipName'
--
-- * 'gcdvipPrompts'
--
-- * 'gcdvipMandatory'
--
-- * 'gcdvipDisplayName'
--
-- * 'gcdvipDefaultValue'
--
-- * 'gcdvipIsList'
--
-- * 'gcdvipEntityTypeDisplayName'
googleCloudDialogflowV2beta1IntentParameter
    :: GoogleCloudDialogflowV2beta1IntentParameter
googleCloudDialogflowV2beta1IntentParameter =
  GoogleCloudDialogflowV2beta1IntentParameter'
    { _gcdvipValue = Nothing
    , _gcdvipName = Nothing
    , _gcdvipPrompts = Nothing
    , _gcdvipMandatory = Nothing
    , _gcdvipDisplayName = Nothing
    , _gcdvipDefaultValue = Nothing
    , _gcdvipIsList = Nothing
    , _gcdvipEntityTypeDisplayName = Nothing
    }

-- | Optional. The definition of the parameter value. It can be: - a constant
-- string, - a parameter value defined as \`$parameter_name\`, - an
-- original parameter value defined as \`$parameter_name.original\`, - a
-- parameter value from some context defined as
-- \`#context_name.parameter_name\`.
gcdvipValue :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipValue
  = lens _gcdvipValue (\ s a -> s{_gcdvipValue = a})

-- | The unique identifier of this parameter.
gcdvipName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipName
  = lens _gcdvipName (\ s a -> s{_gcdvipName = a})

-- | Optional. The collection of prompts that the agent can present to the
-- user in order to collect value for the parameter.
gcdvipPrompts :: Lens' GoogleCloudDialogflowV2beta1IntentParameter [Text]
gcdvipPrompts
  = lens _gcdvipPrompts
      (\ s a -> s{_gcdvipPrompts = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether the parameter is required. That is, whether
-- the intent cannot be completed without collecting the parameter value.
gcdvipMandatory :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Bool)
gcdvipMandatory
  = lens _gcdvipMandatory
      (\ s a -> s{_gcdvipMandatory = a})

-- | Required. The name of the parameter.
gcdvipDisplayName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipDisplayName
  = lens _gcdvipDisplayName
      (\ s a -> s{_gcdvipDisplayName = a})

-- | Optional. The default value to use when the \`value\` yields an empty
-- result. Default values can be extracted from contexts by using the
-- following syntax: \`#context_name.parameter_name\`.
gcdvipDefaultValue :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipDefaultValue
  = lens _gcdvipDefaultValue
      (\ s a -> s{_gcdvipDefaultValue = a})

-- | Optional. Indicates whether the parameter represents a list of values.
gcdvipIsList :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Bool)
gcdvipIsList
  = lens _gcdvipIsList (\ s a -> s{_gcdvipIsList = a})

-- | Optional. The name of the entity type, prefixed with \`\'\`, that
-- describes values of the parameter. If the parameter is required, this
-- must be provided.
gcdvipEntityTypeDisplayName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipEntityTypeDisplayName
  = lens _gcdvipEntityTypeDisplayName
      (\ s a -> s{_gcdvipEntityTypeDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentParameter
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentParameter"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentParameter' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "prompts" .!= mempty)
                     <*> (o .:? "mandatory")
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "isList")
                     <*> (o .:? "entityTypeDisplayName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentParameter
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdvipValue,
                  ("name" .=) <$> _gcdvipName,
                  ("prompts" .=) <$> _gcdvipPrompts,
                  ("mandatory" .=) <$> _gcdvipMandatory,
                  ("displayName" .=) <$> _gcdvipDisplayName,
                  ("defaultValue" .=) <$> _gcdvipDefaultValue,
                  ("isList" .=) <$> _gcdvipIsList,
                  ("entityTypeDisplayName" .=) <$>
                    _gcdvipEntityTypeDisplayName])

-- | Represents intent parameters.
--
-- /See:/ 'googleCloudDialogflowV2IntentParameter' smart constructor.
data GoogleCloudDialogflowV2IntentParameter =
  GoogleCloudDialogflowV2IntentParameter'
    { _gcdvipcValue                 :: !(Maybe Text)
    , _gcdvipcName                  :: !(Maybe Text)
    , _gcdvipcPrompts               :: !(Maybe [Text])
    , _gcdvipcMandatory             :: !(Maybe Bool)
    , _gcdvipcDisplayName           :: !(Maybe Text)
    , _gcdvipcDefaultValue          :: !(Maybe Text)
    , _gcdvipcIsList                :: !(Maybe Bool)
    , _gcdvipcEntityTypeDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvipcValue'
--
-- * 'gcdvipcName'
--
-- * 'gcdvipcPrompts'
--
-- * 'gcdvipcMandatory'
--
-- * 'gcdvipcDisplayName'
--
-- * 'gcdvipcDefaultValue'
--
-- * 'gcdvipcIsList'
--
-- * 'gcdvipcEntityTypeDisplayName'
googleCloudDialogflowV2IntentParameter
    :: GoogleCloudDialogflowV2IntentParameter
googleCloudDialogflowV2IntentParameter =
  GoogleCloudDialogflowV2IntentParameter'
    { _gcdvipcValue = Nothing
    , _gcdvipcName = Nothing
    , _gcdvipcPrompts = Nothing
    , _gcdvipcMandatory = Nothing
    , _gcdvipcDisplayName = Nothing
    , _gcdvipcDefaultValue = Nothing
    , _gcdvipcIsList = Nothing
    , _gcdvipcEntityTypeDisplayName = Nothing
    }

-- | Optional. The definition of the parameter value. It can be: - a constant
-- string, - a parameter value defined as \`$parameter_name\`, - an
-- original parameter value defined as \`$parameter_name.original\`, - a
-- parameter value from some context defined as
-- \`#context_name.parameter_name\`.
gcdvipcValue :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcValue
  = lens _gcdvipcValue (\ s a -> s{_gcdvipcValue = a})

-- | The unique identifier of this parameter.
gcdvipcName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcName
  = lens _gcdvipcName (\ s a -> s{_gcdvipcName = a})

-- | Optional. The collection of prompts that the agent can present to the
-- user in order to collect value for the parameter.
gcdvipcPrompts :: Lens' GoogleCloudDialogflowV2IntentParameter [Text]
gcdvipcPrompts
  = lens _gcdvipcPrompts
      (\ s a -> s{_gcdvipcPrompts = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether the parameter is required. That is, whether
-- the intent cannot be completed without collecting the parameter value.
gcdvipcMandatory :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Bool)
gcdvipcMandatory
  = lens _gcdvipcMandatory
      (\ s a -> s{_gcdvipcMandatory = a})

-- | Required. The name of the parameter.
gcdvipcDisplayName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcDisplayName
  = lens _gcdvipcDisplayName
      (\ s a -> s{_gcdvipcDisplayName = a})

-- | Optional. The default value to use when the \`value\` yields an empty
-- result. Default values can be extracted from contexts by using the
-- following syntax: \`#context_name.parameter_name\`.
gcdvipcDefaultValue :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcDefaultValue
  = lens _gcdvipcDefaultValue
      (\ s a -> s{_gcdvipcDefaultValue = a})

-- | Optional. Indicates whether the parameter represents a list of values.
gcdvipcIsList :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Bool)
gcdvipcIsList
  = lens _gcdvipcIsList
      (\ s a -> s{_gcdvipcIsList = a})

-- | Optional. The name of the entity type, prefixed with \`\'\`, that
-- describes values of the parameter. If the parameter is required, this
-- must be provided.
gcdvipcEntityTypeDisplayName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcEntityTypeDisplayName
  = lens _gcdvipcEntityTypeDisplayName
      (\ s a -> s{_gcdvipcEntityTypeDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentParameter
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2IntentParameter"
              (\ o ->
                 GoogleCloudDialogflowV2IntentParameter' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "prompts" .!= mempty)
                     <*> (o .:? "mandatory")
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "isList")
                     <*> (o .:? "entityTypeDisplayName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentParameter
         where
        toJSON GoogleCloudDialogflowV2IntentParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdvipcValue,
                  ("name" .=) <$> _gcdvipcName,
                  ("prompts" .=) <$> _gcdvipcPrompts,
                  ("mandatory" .=) <$> _gcdvipcMandatory,
                  ("displayName" .=) <$> _gcdvipcDisplayName,
                  ("defaultValue" .=) <$> _gcdvipcDefaultValue,
                  ("isList" .=) <$> _gcdvipcIsList,
                  ("entityTypeDisplayName" .=) <$>
                    _gcdvipcEntityTypeDisplayName])

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultWebhookPayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultWebhookPayload =
  GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
    { _gcdvqrwpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultWebhookPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrwpcAddtional'
googleCloudDialogflowV2beta1QueryResultWebhookPayload
    :: HashMap Text JSONValue -- ^ 'gcdvqrwpcAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
googleCloudDialogflowV2beta1QueryResultWebhookPayload pGcdvqrwpcAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
    {_gcdvqrwpcAddtional = _Coerce # pGcdvqrwpcAddtional_}

-- | Properties of the object.
gcdvqrwpcAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultWebhookPayload (HashMap Text JSONValue)
gcdvqrwpcAddtional
  = lens _gcdvqrwpcAddtional
      (\ s a -> s{_gcdvqrwpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultWebhookPayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
         where
        toJSON = toJSON . _gcdvqrwpcAddtional

-- | Represents a part of a training phrase.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentTrainingPhrasePart' smart constructor.
data GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
    { _gcdvitppcText        :: !(Maybe Text)
    , _gcdvitppcUserDefined :: !(Maybe Bool)
    , _gcdvitppcEntityType  :: !(Maybe Text)
    , _gcdvitppcAlias       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitppcText'
--
-- * 'gcdvitppcUserDefined'
--
-- * 'gcdvitppcEntityType'
--
-- * 'gcdvitppcAlias'
googleCloudDialogflowV2beta1IntentTrainingPhrasePart
    :: GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
googleCloudDialogflowV2beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
    { _gcdvitppcText = Nothing
    , _gcdvitppcUserDefined = Nothing
    , _gcdvitppcEntityType = Nothing
    , _gcdvitppcAlias = Nothing
    }

-- | Required. The text corresponding to the example, if there are no
-- annotations. For annotated examples, it is the text for one of the
-- example\'s parts.
gcdvitppcText :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcText
  = lens _gcdvitppcText
      (\ s a -> s{_gcdvitppcText = a})

-- | Optional. Indicates whether the text was manually annotated by the
-- developer.
gcdvitppcUserDefined :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Bool)
gcdvitppcUserDefined
  = lens _gcdvitppcUserDefined
      (\ s a -> s{_gcdvitppcUserDefined = a})

-- | Optional. The entity type name prefixed with \`\'\`. This field is
-- required for the annotated part of the text and applies only to
-- examples.
gcdvitppcEntityType :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcEntityType
  = lens _gcdvitppcEntityType
      (\ s a -> s{_gcdvitppcEntityType = a})

-- | Optional. The parameter name for the value extracted from the annotated
-- part of the example.
gcdvitppcAlias :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcAlias
  = lens _gcdvitppcAlias
      (\ s a -> s{_gcdvitppcAlias = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
                   <$>
                   (o .:? "text") <*> (o .:? "userDefined") <*>
                     (o .:? "entityType")
                     <*> (o .:? "alias"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvitppcText,
                  ("userDefined" .=) <$> _gcdvitppcUserDefined,
                  ("entityType" .=) <$> _gcdvitppcEntityType,
                  ("alias" .=) <$> _gcdvitppcAlias])

-- | The response message for Contexts.ListContexts.
--
-- /See:/ 'googleCloudDialogflowV2ListContextsResponse' smart constructor.
data GoogleCloudDialogflowV2ListContextsResponse =
  GoogleCloudDialogflowV2ListContextsResponse'
    { _gcdvlcrContexts      :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdvlcrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ListContextsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvlcrContexts'
--
-- * 'gcdvlcrNextPageToken'
googleCloudDialogflowV2ListContextsResponse
    :: GoogleCloudDialogflowV2ListContextsResponse
googleCloudDialogflowV2ListContextsResponse =
  GoogleCloudDialogflowV2ListContextsResponse'
    {_gcdvlcrContexts = Nothing, _gcdvlcrNextPageToken = Nothing}

-- | The list of contexts. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdvlcrContexts :: Lens' GoogleCloudDialogflowV2ListContextsResponse [GoogleCloudDialogflowV2Context]
gcdvlcrContexts
  = lens _gcdvlcrContexts
      (\ s a -> s{_gcdvlcrContexts = a})
      . _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdvlcrNextPageToken :: Lens' GoogleCloudDialogflowV2ListContextsResponse (Maybe Text)
gcdvlcrNextPageToken
  = lens _gcdvlcrNextPageToken
      (\ s a -> s{_gcdvlcrNextPageToken = a})

instance FromJSON
           GoogleCloudDialogflowV2ListContextsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ListContextsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ListContextsResponse' <$>
                   (o .:? "contexts" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON
           GoogleCloudDialogflowV2ListContextsResponse
         where
        toJSON
          GoogleCloudDialogflowV2ListContextsResponse'{..}
          = object
              (catMaybes
                 [("contexts" .=) <$> _gcdvlcrContexts,
                  ("nextPageToken" .=) <$> _gcdvlcrNextPageToken])

-- | Transfers the call in Telephony Gateway.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
    { _gcdvimttcPhoneNumber :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimttcPhoneNumber'
googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
    {_gcdvimttcPhoneNumber = Nothing}

-- | Required. The phone number to transfer the call to in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164). We currently only
-- allow transferring to US numbers (+1xxxyyyzzzz).
gcdvimttcPhoneNumber :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall (Maybe Text)
gcdvimttcPhoneNumber
  = lens _gcdvimttcPhoneNumber
      (\ s a -> s{_gcdvimttcPhoneNumber = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
                   <$> (o .:? "phoneNumber"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'{..}
          = object
              (catMaybes
                 [("phoneNumber" .=) <$> _gcdvimttcPhoneNumber])

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV2beta1ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowV2beta1ExportAgentResponse =
  GoogleCloudDialogflowV2beta1ExportAgentResponse'
    { _gooAgentURI     :: !(Maybe Text)
    , _gooAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAgentURI'
--
-- * 'gooAgentContent'
googleCloudDialogflowV2beta1ExportAgentResponse
    :: GoogleCloudDialogflowV2beta1ExportAgentResponse
googleCloudDialogflowV2beta1ExportAgentResponse =
  GoogleCloudDialogflowV2beta1ExportAgentResponse'
    {_gooAgentURI = Nothing, _gooAgentContent = Nothing}

-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in \`ExportAgentRequest\`.
gooAgentURI :: Lens' GoogleCloudDialogflowV2beta1ExportAgentResponse (Maybe Text)
gooAgentURI
  = lens _gooAgentURI (\ s a -> s{_gooAgentURI = a})

-- | The exported agent. Example for how to export an agent to a zip file via
-- a command line:
--
-- > curl \
-- >   'https://dialogflow.googleapis.com/v2beta1/projects/<project_name>/agent:export'\
-- >   -X POST \
-- >   -H 'Authorization: Bearer '$(gcloud auth application-default
-- >   print-access-token) \
-- >   -H 'Accept: application/json' \
-- >   -H 'Content-Type: application/json' \
-- >   --compressed \
-- >   --data-binary '{}' \
-- > | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \
-- > | base64 --decode > <agent zip file>
gooAgentContent :: Lens' GoogleCloudDialogflowV2beta1ExportAgentResponse (Maybe ByteString)
gooAgentContent
  = lens _gooAgentContent
      (\ s a -> s{_gooAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2beta1ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1ExportAgentResponse' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2beta1ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gooAgentURI,
                  ("agentContent" .=) <$> _gooAgentContent])

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular for the Telephony Gateway this
-- field has the form:
--
-- > {
-- >  "telephony": {
-- >    "caller_id": "+18558363987"
-- >  }
-- > }
--
-- Note: The caller ID field (\`caller_id\`) will be redacted for Standard
-- Edition agents and populated with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Enterprise Edition
-- agents.
--
-- /See:/ 'googleCloudDialogflowV2OriginalDetectIntentRequestPayload' smart constructor.
newtype GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload =
  GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
    { _gcdvodirpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirpcAddtional'
googleCloudDialogflowV2OriginalDetectIntentRequestPayload
    :: HashMap Text JSONValue -- ^ 'gcdvodirpcAddtional'
    -> GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
googleCloudDialogflowV2OriginalDetectIntentRequestPayload pGcdvodirpcAddtional_ =
  GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
    {_gcdvodirpcAddtional = _Coerce # pGcdvodirpcAddtional_}

-- | Properties of the object.
gcdvodirpcAddtional :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload (HashMap Text JSONValue)
gcdvodirpcAddtional
  = lens _gcdvodirpcAddtional
      (\ s a -> s{_gcdvodirpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload"
              (\ o ->
                 GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
         where
        toJSON = toJSON . _gcdvodirpcAddtional

-- | Represents a session entity type. Extends or replaces a developer entity
-- type at the user session level (we refer to the entity types defined at
-- the agent level as \"developer entity types\"). Note: session entity
-- types apply to all queries, regardless of the language.
--
-- /See:/ 'googleCloudDialogflowV2SessionEntityType' smart constructor.
data GoogleCloudDialogflowV2SessionEntityType =
  GoogleCloudDialogflowV2SessionEntityType'
    { _gcdvSetEntityOverrideMode :: !(Maybe GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode)
    , _gcdvSetEntities           :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    , _gcdvSetName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2SessionEntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvSetEntityOverrideMode'
--
-- * 'gcdvSetEntities'
--
-- * 'gcdvSetName'
googleCloudDialogflowV2SessionEntityType
    :: GoogleCloudDialogflowV2SessionEntityType
googleCloudDialogflowV2SessionEntityType =
  GoogleCloudDialogflowV2SessionEntityType'
    { _gcdvSetEntityOverrideMode = Nothing
    , _gcdvSetEntities = Nothing
    , _gcdvSetName = Nothing
    }

-- | Required. Indicates whether the additional data should override or
-- supplement the developer entity type definition.
gcdvSetEntityOverrideMode :: Lens' GoogleCloudDialogflowV2SessionEntityType (Maybe GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode)
gcdvSetEntityOverrideMode
  = lens _gcdvSetEntityOverrideMode
      (\ s a -> s{_gcdvSetEntityOverrideMode = a})

-- | Required. The collection of entities associated with this session entity
-- type.
gcdvSetEntities :: Lens' GoogleCloudDialogflowV2SessionEntityType [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvSetEntities
  = lens _gcdvSetEntities
      (\ s a -> s{_gcdvSetEntities = a})
      . _Default
      . _Coerce

-- | Required. The unique identifier of this session entity type. Format:
-- \`projects\/\/agent\/sessions\/\/entityTypes\/\`. \`\` must be the
-- display name of an existing entity type in the same agent that will be
-- overridden or supplemented.
gcdvSetName :: Lens' GoogleCloudDialogflowV2SessionEntityType (Maybe Text)
gcdvSetName
  = lens _gcdvSetName (\ s a -> s{_gcdvSetName = a})

instance FromJSON
           GoogleCloudDialogflowV2SessionEntityType
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2SessionEntityType"
              (\ o ->
                 GoogleCloudDialogflowV2SessionEntityType' <$>
                   (o .:? "entityOverrideMode") <*>
                     (o .:? "entities" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON
           GoogleCloudDialogflowV2SessionEntityType
         where
        toJSON GoogleCloudDialogflowV2SessionEntityType'{..}
          = object
              (catMaybes
                 [("entityOverrideMode" .=) <$>
                    _gcdvSetEntityOverrideMode,
                  ("entities" .=) <$> _gcdvSetEntities,
                  ("name" .=) <$> _gcdvSetName])

-- | An **entity entry** for an associated entity type.
--
-- /See:/ 'googleCloudDialogflowV2EntityTypeEntity' smart constructor.
data GoogleCloudDialogflowV2EntityTypeEntity =
  GoogleCloudDialogflowV2EntityTypeEntity'
    { _gValue    :: !(Maybe Text)
    , _gSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2EntityTypeEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue'
--
-- * 'gSynonyms'
googleCloudDialogflowV2EntityTypeEntity
    :: GoogleCloudDialogflowV2EntityTypeEntity
googleCloudDialogflowV2EntityTypeEntity =
  GoogleCloudDialogflowV2EntityTypeEntity'
    {_gValue = Nothing, _gSynonyms = Nothing}

-- | Required. The primary value associated with this entity entry. For
-- example, if the entity type is *vegetable*, the value could be
-- *scallions*. For \`KIND_MAP\` entity types: * A canonical value to be
-- used in place of synonyms. For \`KIND_LIST\` entity types: * A string
-- that can contain references to other entity types (with or without
-- aliases).
gValue :: Lens' GoogleCloudDialogflowV2EntityTypeEntity (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | Required. A collection of value synonyms. For example, if the entity
-- type is *vegetable*, and \`value\` is *scallions*, a synonym could be
-- *green onions*. For \`KIND_LIST\` entity types: * This collection must
-- contain exactly one synonym equal to \`value\`.
gSynonyms :: Lens' GoogleCloudDialogflowV2EntityTypeEntity [Text]
gSynonyms
  = lens _gSynonyms (\ s a -> s{_gSynonyms = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2EntityTypeEntity
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2EntityTypeEntity"
              (\ o ->
                 GoogleCloudDialogflowV2EntityTypeEntity' <$>
                   (o .:? "value") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2EntityTypeEntity
         where
        toJSON GoogleCloudDialogflowV2EntityTypeEntity'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gValue,
                  ("synonyms" .=) <$> _gSynonyms])

-- | Represents the result of conversational query or event processing.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResult' smart constructor.
data GoogleCloudDialogflowV2beta1QueryResult =
  GoogleCloudDialogflowV2beta1QueryResult'
    { _gLanguageCode                :: !(Maybe Text)
    , _gAllRequiredParamsPresent    :: !(Maybe Bool)
    , _gIntentDetectionConfidence   :: !(Maybe (Textual Double))
    , _gFulfillmentMessages         :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gKnowledgeAnswers            :: !(Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswers)
    , _gSpeechRecognitionConfidence :: !(Maybe (Textual Double))
    , _gAction                      :: !(Maybe Text)
    , _gIntent                      :: !(Maybe GoogleCloudDialogflowV2beta1Intent)
    , _gSentimentAnalysisResult     :: !(Maybe GoogleCloudDialogflowV2beta1SentimentAnalysisResult)
    , _gQueryText                   :: !(Maybe Text)
    , _gFulfillmentText             :: !(Maybe Text)
    , _gParameters                  :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultParameters)
    , _gWebhookPayload              :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultWebhookPayload)
    , _gOutputContexts              :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gWebhookSource               :: !(Maybe Text)
    , _gDiagnosticInfo              :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguageCode'
--
-- * 'gAllRequiredParamsPresent'
--
-- * 'gIntentDetectionConfidence'
--
-- * 'gFulfillmentMessages'
--
-- * 'gKnowledgeAnswers'
--
-- * 'gSpeechRecognitionConfidence'
--
-- * 'gAction'
--
-- * 'gIntent'
--
-- * 'gSentimentAnalysisResult'
--
-- * 'gQueryText'
--
-- * 'gFulfillmentText'
--
-- * 'gParameters'
--
-- * 'gWebhookPayload'
--
-- * 'gOutputContexts'
--
-- * 'gWebhookSource'
--
-- * 'gDiagnosticInfo'
googleCloudDialogflowV2beta1QueryResult
    :: GoogleCloudDialogflowV2beta1QueryResult
googleCloudDialogflowV2beta1QueryResult =
  GoogleCloudDialogflowV2beta1QueryResult'
    { _gLanguageCode = Nothing
    , _gAllRequiredParamsPresent = Nothing
    , _gIntentDetectionConfidence = Nothing
    , _gFulfillmentMessages = Nothing
    , _gKnowledgeAnswers = Nothing
    , _gSpeechRecognitionConfidence = Nothing
    , _gAction = Nothing
    , _gIntent = Nothing
    , _gSentimentAnalysisResult = Nothing
    , _gQueryText = Nothing
    , _gFulfillmentText = Nothing
    , _gParameters = Nothing
    , _gWebhookPayload = Nothing
    , _gOutputContexts = Nothing
    , _gWebhookSource = Nothing
    , _gDiagnosticInfo = Nothing
    }

-- | The language that was triggered during intent detection. See [Language
-- Support](https:\/\/dialogflow.com\/docs\/reference\/language) for a list
-- of the currently supported language codes.
gLanguageCode :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

-- | This field is set to: - \`false\` if the matched intent has required
-- parameters and not all of the required parameter values have been
-- collected. - \`true\` if all required parameter values have been
-- collected, or if the matched intent doesn\'t contain any required
-- parameters.
gAllRequiredParamsPresent :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Bool)
gAllRequiredParamsPresent
  = lens _gAllRequiredParamsPresent
      (\ s a -> s{_gAllRequiredParamsPresent = a})

-- | The intent detection confidence. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). If there are \`multiple
-- knowledge_answers\` messages, this value is set to the greatest
-- \`knowledgeAnswers.match_confidence\` value in the list.
gIntentDetectionConfidence :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Double)
gIntentDetectionConfidence
  = lens _gIntentDetectionConfidence
      (\ s a -> s{_gIntentDetectionConfidence = a})
      . mapping _Coerce

-- | The collection of rich messages to present to the user.
gFulfillmentMessages :: Lens' GoogleCloudDialogflowV2beta1QueryResult [GoogleCloudDialogflowV2beta1IntentMessage]
gFulfillmentMessages
  = lens _gFulfillmentMessages
      (\ s a -> s{_gFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | The result from Knowledge Connector (if any), ordered by decreasing
-- \`KnowledgeAnswers.match_confidence\`.
gKnowledgeAnswers :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswers)
gKnowledgeAnswers
  = lens _gKnowledgeAnswers
      (\ s a -> s{_gKnowledgeAnswers = a})

-- | The Speech recognition confidence between 0.0 and 1.0. A higher number
-- indicates an estimated greater likelihood that the recognized words are
-- correct. The default of 0.0 is a sentinel value indicating that
-- confidence was not set. This field is not guaranteed to be accurate or
-- set. In particular this field isn\'t set for StreamingDetectIntent since
-- the streaming endpoint has separate confidence estimates per portion of
-- the audio in StreamingRecognitionResult.
gSpeechRecognitionConfidence :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Double)
gSpeechRecognitionConfidence
  = lens _gSpeechRecognitionConfidence
      (\ s a -> s{_gSpeechRecognitionConfidence = a})
      . mapping _Coerce

-- | The action name from the matched intent.
gAction :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gAction = lens _gAction (\ s a -> s{_gAction = a})

-- | The intent that matched the conversational query. Some, not all fields
-- are filled in this message, including but not limited to: \`name\`,
-- \`display_name\` and \`webhook_state\`.
gIntent :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1Intent)
gIntent = lens _gIntent (\ s a -> s{_gIntent = a})

-- | The sentiment analysis result, which depends on the
-- \`sentiment_analysis_request_config\` specified in the request.
gSentimentAnalysisResult :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1SentimentAnalysisResult)
gSentimentAnalysisResult
  = lens _gSentimentAnalysisResult
      (\ s a -> s{_gSentimentAnalysisResult = a})

-- | The original conversational query text: - If natural language text was
-- provided as input, \`query_text\` contains a copy of the input. - If
-- natural language speech audio was provided as input, \`query_text\`
-- contains the speech recognition result. If speech recognizer produced
-- multiple alternatives, a particular one is picked. - If an event was
-- provided as input, \`query_text\` is not set.
gQueryText :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gQueryText
  = lens _gQueryText (\ s a -> s{_gQueryText = a})

-- | The text to be pronounced to the user or shown on the screen. Note: This
-- is a legacy field, \`fulfillment_messages\` should be preferred.
gFulfillmentText :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gFulfillmentText
  = lens _gFulfillmentText
      (\ s a -> s{_gFulfillmentText = a})

-- | The collection of extracted parameters.
gParameters :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultParameters)
gParameters
  = lens _gParameters (\ s a -> s{_gParameters = a})

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
gWebhookPayload :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultWebhookPayload)
gWebhookPayload
  = lens _gWebhookPayload
      (\ s a -> s{_gWebhookPayload = a})

-- | The collection of output contexts. If applicable,
-- \`output_contexts.parameters\` contains entries with name \`.original\`
-- containing the original parameter values before the query.
gOutputContexts :: Lens' GoogleCloudDialogflowV2beta1QueryResult [GoogleCloudDialogflowV2beta1Context]
gOutputContexts
  = lens _gOutputContexts
      (\ s a -> s{_gOutputContexts = a})
      . _Default
      . _Coerce

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`source\` field returned in the webhook response.
gWebhookSource :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gWebhookSource
  = lens _gWebhookSource
      (\ s a -> s{_gWebhookSource = a})

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
gDiagnosticInfo :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo)
gDiagnosticInfo
  = lens _gDiagnosticInfo
      (\ s a -> s{_gDiagnosticInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResult"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResult' <$>
                   (o .:? "languageCode") <*>
                     (o .:? "allRequiredParamsPresent")
                     <*> (o .:? "intentDetectionConfidence")
                     <*> (o .:? "fulfillmentMessages" .!= mempty)
                     <*> (o .:? "knowledgeAnswers")
                     <*> (o .:? "speechRecognitionConfidence")
                     <*> (o .:? "action")
                     <*> (o .:? "intent")
                     <*> (o .:? "sentimentAnalysisResult")
                     <*> (o .:? "queryText")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "parameters")
                     <*> (o .:? "webhookPayload")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "webhookSource")
                     <*> (o .:? "diagnosticInfo"))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResult
         where
        toJSON GoogleCloudDialogflowV2beta1QueryResult'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gLanguageCode,
                  ("allRequiredParamsPresent" .=) <$>
                    _gAllRequiredParamsPresent,
                  ("intentDetectionConfidence" .=) <$>
                    _gIntentDetectionConfidence,
                  ("fulfillmentMessages" .=) <$> _gFulfillmentMessages,
                  ("knowledgeAnswers" .=) <$> _gKnowledgeAnswers,
                  ("speechRecognitionConfidence" .=) <$>
                    _gSpeechRecognitionConfidence,
                  ("action" .=) <$> _gAction,
                  ("intent" .=) <$> _gIntent,
                  ("sentimentAnalysisResult" .=) <$>
                    _gSentimentAnalysisResult,
                  ("queryText" .=) <$> _gQueryText,
                  ("fulfillmentText" .=) <$> _gFulfillmentText,
                  ("parameters" .=) <$> _gParameters,
                  ("webhookPayload" .=) <$> _gWebhookPayload,
                  ("outputContexts" .=) <$> _gOutputContexts,
                  ("webhookSource" .=) <$> _gWebhookSource,
                  ("diagnosticInfo" .=) <$> _gDiagnosticInfo])

-- | The image response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageImage' smart constructor.
data GoogleCloudDialogflowV2IntentMessageImage =
  GoogleCloudDialogflowV2IntentMessageImage'
    { _gAccessibilityText :: !(Maybe Text)
    , _gImageURI          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAccessibilityText'
--
-- * 'gImageURI'
googleCloudDialogflowV2IntentMessageImage
    :: GoogleCloudDialogflowV2IntentMessageImage
googleCloudDialogflowV2IntentMessageImage =
  GoogleCloudDialogflowV2IntentMessageImage'
    {_gAccessibilityText = Nothing, _gImageURI = Nothing}

-- | Optional. A text description of the image to be used for accessibility,
-- e.g., screen readers.
gAccessibilityText :: Lens' GoogleCloudDialogflowV2IntentMessageImage (Maybe Text)
gAccessibilityText
  = lens _gAccessibilityText
      (\ s a -> s{_gAccessibilityText = a})

-- | Optional. The public URI to an image file.
gImageURI :: Lens' GoogleCloudDialogflowV2IntentMessageImage (Maybe Text)
gImageURI
  = lens _gImageURI (\ s a -> s{_gImageURI = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageImage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageImage"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageImage' <$>
                   (o .:? "accessibilityText") <*> (o .:? "imageUri"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageImage
         where
        toJSON GoogleCloudDialogflowV2IntentMessageImage'{..}
          = object
              (catMaybes
                 [("accessibilityText" .=) <$> _gAccessibilityText,
                  ("imageUri" .=) <$> _gImageURI])

-- | The response message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2WebhookResponse' smart constructor.
data GoogleCloudDialogflowV2WebhookResponse =
  GoogleCloudDialogflowV2WebhookResponse'
    { _gooFulfillmentMessages :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gooPayload             :: !(Maybe GoogleCloudDialogflowV2WebhookResponsePayload)
    , _gooFulfillmentText     :: !(Maybe Text)
    , _gooSource              :: !(Maybe Text)
    , _gooOutputContexts      :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gooFollowupEventInput  :: !(Maybe GoogleCloudDialogflowV2EventInput)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2WebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooFulfillmentMessages'
--
-- * 'gooPayload'
--
-- * 'gooFulfillmentText'
--
-- * 'gooSource'
--
-- * 'gooOutputContexts'
--
-- * 'gooFollowupEventInput'
googleCloudDialogflowV2WebhookResponse
    :: GoogleCloudDialogflowV2WebhookResponse
googleCloudDialogflowV2WebhookResponse =
  GoogleCloudDialogflowV2WebhookResponse'
    { _gooFulfillmentMessages = Nothing
    , _gooPayload = Nothing
    , _gooFulfillmentText = Nothing
    , _gooSource = Nothing
    , _gooOutputContexts = Nothing
    , _gooFollowupEventInput = Nothing
    }

-- | Optional. The collection of rich messages to present to the user. This
-- value is passed directly to \`QueryResult.fulfillment_messages\`.
gooFulfillmentMessages :: Lens' GoogleCloudDialogflowV2WebhookResponse [GoogleCloudDialogflowV2IntentMessage]
gooFulfillmentMessages
  = lens _gooFulfillmentMessages
      (\ s a -> s{_gooFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_payload\`. See the related
-- \`fulfillment_messages[i].payload field\`, which may be used as an
-- alternative to this field. This field can be used for Actions on Google
-- responses. It should have a structure similar to the JSON message shown
-- here. For more information, see [Actions on Google Webhook
-- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
--
-- > {
-- >   "google": {
-- >     "expectUserResponse": true,
-- >     "richResponse": {
-- >       "items": [
-- >         {
-- >           "simpleResponse": {
-- >             "textToSpeech": "this is a simple response"
-- >           }
-- >         }
-- >       ]
-- >     }
-- >   }
-- > }
gooPayload :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe GoogleCloudDialogflowV2WebhookResponsePayload)
gooPayload
  = lens _gooPayload (\ s a -> s{_gooPayload = a})

-- | Optional. The text to be shown on the screen. This value is passed
-- directly to \`QueryResult.fulfillment_text\`.
gooFulfillmentText :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe Text)
gooFulfillmentText
  = lens _gooFulfillmentText
      (\ s a -> s{_gooFulfillmentText = a})

-- | Optional. This value is passed directly to
-- \`QueryResult.webhook_source\`.
gooSource :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe Text)
gooSource
  = lens _gooSource (\ s a -> s{_gooSource = a})

-- | Optional. The collection of output contexts. This value is passed
-- directly to \`QueryResult.output_contexts\`.
gooOutputContexts :: Lens' GoogleCloudDialogflowV2WebhookResponse [GoogleCloudDialogflowV2Context]
gooOutputContexts
  = lens _gooOutputContexts
      (\ s a -> s{_gooOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. Makes the platform immediately invoke another \`DetectIntent\`
-- call internally with the specified event as input.
gooFollowupEventInput :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe GoogleCloudDialogflowV2EventInput)
gooFollowupEventInput
  = lens _gooFollowupEventInput
      (\ s a -> s{_gooFollowupEventInput = a})

instance FromJSON
           GoogleCloudDialogflowV2WebhookResponse
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2WebhookResponse"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookResponse' <$>
                   (o .:? "fulfillmentMessages" .!= mempty) <*>
                     (o .:? "payload")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "source")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "followupEventInput"))

instance ToJSON
           GoogleCloudDialogflowV2WebhookResponse
         where
        toJSON GoogleCloudDialogflowV2WebhookResponse'{..}
          = object
              (catMaybes
                 [("fulfillmentMessages" .=) <$>
                    _gooFulfillmentMessages,
                  ("payload" .=) <$> _gooPayload,
                  ("fulfillmentText" .=) <$> _gooFulfillmentText,
                  ("source" .=) <$> _gooSource,
                  ("outputContexts" .=) <$> _gooOutputContexts,
                  ("followupEventInput" .=) <$>
                    _gooFollowupEventInput])

-- | The request message for Agents.TrainAgent.
--
-- /See:/ 'googleCloudDialogflowV2TrainAgentRequest' smart constructor.
data GoogleCloudDialogflowV2TrainAgentRequest =
  GoogleCloudDialogflowV2TrainAgentRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2TrainAgentRequest' with the minimum fields required to make a request.
--
googleCloudDialogflowV2TrainAgentRequest
    :: GoogleCloudDialogflowV2TrainAgentRequest
googleCloudDialogflowV2TrainAgentRequest =
  GoogleCloudDialogflowV2TrainAgentRequest'

instance FromJSON
           GoogleCloudDialogflowV2TrainAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2TrainAgentRequest"
              (\ o ->
                 pure GoogleCloudDialogflowV2TrainAgentRequest')

instance ToJSON
           GoogleCloudDialogflowV2TrainAgentRequest
         where
        toJSON = const emptyObject

-- | This message is a wrapper around a collection of intents.
--
-- /See:/ 'googleCloudDialogflowV2IntentBatch' smart constructor.
newtype GoogleCloudDialogflowV2IntentBatch =
  GoogleCloudDialogflowV2IntentBatch'
    { _gcdvibIntents :: Maybe [GoogleCloudDialogflowV2Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvibIntents'
googleCloudDialogflowV2IntentBatch
    :: GoogleCloudDialogflowV2IntentBatch
googleCloudDialogflowV2IntentBatch =
  GoogleCloudDialogflowV2IntentBatch' {_gcdvibIntents = Nothing}

-- | A collection of intents.
gcdvibIntents :: Lens' GoogleCloudDialogflowV2IntentBatch [GoogleCloudDialogflowV2Intent]
gcdvibIntents
  = lens _gcdvibIntents
      (\ s a -> s{_gcdvibIntents = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudDialogflowV2IntentBatch
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2IntentBatch"
              (\ o ->
                 GoogleCloudDialogflowV2IntentBatch' <$>
                   (o .:? "intents" .!= mempty))

instance ToJSON GoogleCloudDialogflowV2IntentBatch
         where
        toJSON GoogleCloudDialogflowV2IntentBatch'{..}
          = object
              (catMaybes [("intents" .=) <$> _gcdvibIntents])

-- | Represents an entity type. Entity types serve as a tool for extracting
-- parameter values from natural language queries.
--
-- /See:/ 'googleCloudDialogflowV2beta1EntityType' smart constructor.
data GoogleCloudDialogflowV2beta1EntityType =
  GoogleCloudDialogflowV2beta1EntityType'
    { _gcdvetcEntities          :: !(Maybe [GoogleCloudDialogflowV2beta1EntityTypeEntity])
    , _gcdvetcKind              :: !(Maybe GoogleCloudDialogflowV2beta1EntityTypeKind)
    , _gcdvetcName              :: !(Maybe Text)
    , _gcdvetcAutoExpansionMode :: !(Maybe GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode)
    , _gcdvetcDisplayName       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1EntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetcEntities'
--
-- * 'gcdvetcKind'
--
-- * 'gcdvetcName'
--
-- * 'gcdvetcAutoExpansionMode'
--
-- * 'gcdvetcDisplayName'
googleCloudDialogflowV2beta1EntityType
    :: GoogleCloudDialogflowV2beta1EntityType
googleCloudDialogflowV2beta1EntityType =
  GoogleCloudDialogflowV2beta1EntityType'
    { _gcdvetcEntities = Nothing
    , _gcdvetcKind = Nothing
    , _gcdvetcName = Nothing
    , _gcdvetcAutoExpansionMode = Nothing
    , _gcdvetcDisplayName = Nothing
    }

-- | Optional. The collection of entity entries associated with the entity
-- type.
gcdvetcEntities :: Lens' GoogleCloudDialogflowV2beta1EntityType [GoogleCloudDialogflowV2beta1EntityTypeEntity]
gcdvetcEntities
  = lens _gcdvetcEntities
      (\ s a -> s{_gcdvetcEntities = a})
      . _Default
      . _Coerce

-- | Required. Indicates the kind of entity type.
gcdvetcKind :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe GoogleCloudDialogflowV2beta1EntityTypeKind)
gcdvetcKind
  = lens _gcdvetcKind (\ s a -> s{_gcdvetcKind = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
-- methods. Format: \`projects\/\/agent\/entityTypes\/\`.
gcdvetcName :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe Text)
gcdvetcName
  = lens _gcdvetcName (\ s a -> s{_gcdvetcName = a})

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
gcdvetcAutoExpansionMode :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode)
gcdvetcAutoExpansionMode
  = lens _gcdvetcAutoExpansionMode
      (\ s a -> s{_gcdvetcAutoExpansionMode = a})

-- | Required. The name of the entity type.
gcdvetcDisplayName :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe Text)
gcdvetcDisplayName
  = lens _gcdvetcDisplayName
      (\ s a -> s{_gcdvetcDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1EntityType
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1EntityType"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EntityType' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "name")
                     <*> (o .:? "autoExpansionMode")
                     <*> (o .:? "displayName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1EntityType
         where
        toJSON GoogleCloudDialogflowV2beta1EntityType'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _gcdvetcEntities,
                  ("kind" .=) <$> _gcdvetcKind,
                  ("name" .=) <$> _gcdvetcName,
                  ("autoExpansionMode" .=) <$>
                    _gcdvetcAutoExpansionMode,
                  ("displayName" .=) <$> _gcdvetcDisplayName])

-- | The response message for Agents.SearchAgents.
--
-- /See:/ 'googleCloudDialogflowV2SearchAgentsResponse' smart constructor.
data GoogleCloudDialogflowV2SearchAgentsResponse =
  GoogleCloudDialogflowV2SearchAgentsResponse'
    { _gcdvsarNextPageToken :: !(Maybe Text)
    , _gcdvsarAgents        :: !(Maybe [GoogleCloudDialogflowV2Agent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2SearchAgentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvsarNextPageToken'
--
-- * 'gcdvsarAgents'
googleCloudDialogflowV2SearchAgentsResponse
    :: GoogleCloudDialogflowV2SearchAgentsResponse
googleCloudDialogflowV2SearchAgentsResponse =
  GoogleCloudDialogflowV2SearchAgentsResponse'
    {_gcdvsarNextPageToken = Nothing, _gcdvsarAgents = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdvsarNextPageToken :: Lens' GoogleCloudDialogflowV2SearchAgentsResponse (Maybe Text)
gcdvsarNextPageToken
  = lens _gcdvsarNextPageToken
      (\ s a -> s{_gcdvsarNextPageToken = a})

-- | The list of agents. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdvsarAgents :: Lens' GoogleCloudDialogflowV2SearchAgentsResponse [GoogleCloudDialogflowV2Agent]
gcdvsarAgents
  = lens _gcdvsarAgents
      (\ s a -> s{_gcdvsarAgents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2SearchAgentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2SearchAgentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2SearchAgentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "agents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2SearchAgentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2SearchAgentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdvsarNextPageToken,
                  ("agents" .=) <$> _gcdvsarAgents])

-- | The response message for SessionEntityTypes.ListSessionEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2ListSessionEntityTypesResponse' smart constructor.
data GoogleCloudDialogflowV2ListSessionEntityTypesResponse =
  GoogleCloudDialogflowV2ListSessionEntityTypesResponse'
    { _gcdvlSetrNextPageToken      :: !(Maybe Text)
    , _gcdvlSetrSessionEntityTypes :: !(Maybe [GoogleCloudDialogflowV2SessionEntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2ListSessionEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvlSetrNextPageToken'
--
-- * 'gcdvlSetrSessionEntityTypes'
googleCloudDialogflowV2ListSessionEntityTypesResponse
    :: GoogleCloudDialogflowV2ListSessionEntityTypesResponse
googleCloudDialogflowV2ListSessionEntityTypesResponse =
  GoogleCloudDialogflowV2ListSessionEntityTypesResponse'
    {_gcdvlSetrNextPageToken = Nothing, _gcdvlSetrSessionEntityTypes = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdvlSetrNextPageToken :: Lens' GoogleCloudDialogflowV2ListSessionEntityTypesResponse (Maybe Text)
gcdvlSetrNextPageToken
  = lens _gcdvlSetrNextPageToken
      (\ s a -> s{_gcdvlSetrNextPageToken = a})

-- | The list of session entity types. There will be a maximum number of
-- items returned based on the page_size field in the request.
gcdvlSetrSessionEntityTypes :: Lens' GoogleCloudDialogflowV2ListSessionEntityTypesResponse [GoogleCloudDialogflowV2SessionEntityType]
gcdvlSetrSessionEntityTypes
  = lens _gcdvlSetrSessionEntityTypes
      (\ s a -> s{_gcdvlSetrSessionEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2ListSessionEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ListSessionEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ListSessionEntityTypesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sessionEntityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2ListSessionEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2ListSessionEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdvlSetrNextPageToken,
                  ("sessionEntityTypes" .=) <$>
                    _gcdvlSetrSessionEntityTypes])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe GoogleRpcStatus)
    , _gloResponse :: !(Maybe GoogleLongrunningOperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunningOperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunningOperation
    :: GoogleLongrunningOperation
googleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunningOperation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunningOperation (Maybe GoogleRpcStatus)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
gloName :: Lens' GoogleLongrunningOperation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunningOperation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | Corresponds to the \`Response\` field in the Dialogflow console.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessage' smart constructor.
data GoogleCloudDialogflowV2IntentMessage =
  GoogleCloudDialogflowV2IntentMessage'
    { _gcdvimcCard              :: !(Maybe GoogleCloudDialogflowV2IntentMessageCard)
    , _gcdvimcImage             :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimcPlatform          :: !(Maybe GoogleCloudDialogflowV2IntentMessagePlatform)
    , _gcdvimcLinkOutSuggestion :: !(Maybe GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion)
    , _gcdvimcText              :: !(Maybe GoogleCloudDialogflowV2IntentMessageText)
    , _gcdvimcCarouselSelect    :: !(Maybe GoogleCloudDialogflowV2IntentMessageCarouselSelect)
    , _gcdvimcSimpleResponses   :: !(Maybe GoogleCloudDialogflowV2IntentMessageSimpleResponses)
    , _gcdvimcPayload           :: !(Maybe GoogleCloudDialogflowV2IntentMessagePayload)
    , _gcdvimcSuggestions       :: !(Maybe GoogleCloudDialogflowV2IntentMessageSuggestions)
    , _gcdvimcListSelect        :: !(Maybe GoogleCloudDialogflowV2IntentMessageListSelect)
    , _gcdvimcBasicCard         :: !(Maybe GoogleCloudDialogflowV2IntentMessageBasicCard)
    , _gcdvimcQuickReplies      :: !(Maybe GoogleCloudDialogflowV2IntentMessageQuickReplies)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcCard'
--
-- * 'gcdvimcImage'
--
-- * 'gcdvimcPlatform'
--
-- * 'gcdvimcLinkOutSuggestion'
--
-- * 'gcdvimcText'
--
-- * 'gcdvimcCarouselSelect'
--
-- * 'gcdvimcSimpleResponses'
--
-- * 'gcdvimcPayload'
--
-- * 'gcdvimcSuggestions'
--
-- * 'gcdvimcListSelect'
--
-- * 'gcdvimcBasicCard'
--
-- * 'gcdvimcQuickReplies'
googleCloudDialogflowV2IntentMessage
    :: GoogleCloudDialogflowV2IntentMessage
googleCloudDialogflowV2IntentMessage =
  GoogleCloudDialogflowV2IntentMessage'
    { _gcdvimcCard = Nothing
    , _gcdvimcImage = Nothing
    , _gcdvimcPlatform = Nothing
    , _gcdvimcLinkOutSuggestion = Nothing
    , _gcdvimcText = Nothing
    , _gcdvimcCarouselSelect = Nothing
    , _gcdvimcSimpleResponses = Nothing
    , _gcdvimcPayload = Nothing
    , _gcdvimcSuggestions = Nothing
    , _gcdvimcListSelect = Nothing
    , _gcdvimcBasicCard = Nothing
    , _gcdvimcQuickReplies = Nothing
    }

-- | The card response.
gcdvimcCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageCard)
gcdvimcCard
  = lens _gcdvimcCard (\ s a -> s{_gcdvimcCard = a})

-- | The image response.
gcdvimcImage :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimcImage
  = lens _gcdvimcImage (\ s a -> s{_gcdvimcImage = a})

-- | Optional. The platform that this message is intended for.
gcdvimcPlatform :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessagePlatform)
gcdvimcPlatform
  = lens _gcdvimcPlatform
      (\ s a -> s{_gcdvimcPlatform = a})

-- | The link out suggestion chip for Actions on Google.
gcdvimcLinkOutSuggestion :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion)
gcdvimcLinkOutSuggestion
  = lens _gcdvimcLinkOutSuggestion
      (\ s a -> s{_gcdvimcLinkOutSuggestion = a})

-- | The text response.
gcdvimcText :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageText)
gcdvimcText
  = lens _gcdvimcText (\ s a -> s{_gcdvimcText = a})

-- | The carousel card response for Actions on Google.
gcdvimcCarouselSelect :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageCarouselSelect)
gcdvimcCarouselSelect
  = lens _gcdvimcCarouselSelect
      (\ s a -> s{_gcdvimcCarouselSelect = a})

-- | The voice and text-only responses for Actions on Google.
gcdvimcSimpleResponses :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageSimpleResponses)
gcdvimcSimpleResponses
  = lens _gcdvimcSimpleResponses
      (\ s a -> s{_gcdvimcSimpleResponses = a})

-- | Returns a response containing a custom, platform-specific payload. See
-- the Intent.Message.Platform type for a description of the structure that
-- may be required for your platform.
gcdvimcPayload :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessagePayload)
gcdvimcPayload
  = lens _gcdvimcPayload
      (\ s a -> s{_gcdvimcPayload = a})

-- | The suggestion chips for Actions on Google.
gcdvimcSuggestions :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageSuggestions)
gcdvimcSuggestions
  = lens _gcdvimcSuggestions
      (\ s a -> s{_gcdvimcSuggestions = a})

-- | The list card response for Actions on Google.
gcdvimcListSelect :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageListSelect)
gcdvimcListSelect
  = lens _gcdvimcListSelect
      (\ s a -> s{_gcdvimcListSelect = a})

-- | The basic card response for Actions on Google.
gcdvimcBasicCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageBasicCard)
gcdvimcBasicCard
  = lens _gcdvimcBasicCard
      (\ s a -> s{_gcdvimcBasicCard = a})

-- | The quick replies response.
gcdvimcQuickReplies :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageQuickReplies)
gcdvimcQuickReplies
  = lens _gcdvimcQuickReplies
      (\ s a -> s{_gcdvimcQuickReplies = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessage
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2IntentMessage"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessage' <$>
                   (o .:? "card") <*> (o .:? "image") <*>
                     (o .:? "platform")
                     <*> (o .:? "linkOutSuggestion")
                     <*> (o .:? "text")
                     <*> (o .:? "carouselSelect")
                     <*> (o .:? "simpleResponses")
                     <*> (o .:? "payload")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "listSelect")
                     <*> (o .:? "basicCard")
                     <*> (o .:? "quickReplies"))

instance ToJSON GoogleCloudDialogflowV2IntentMessage
         where
        toJSON GoogleCloudDialogflowV2IntentMessage'{..}
          = object
              (catMaybes
                 [("card" .=) <$> _gcdvimcCard,
                  ("image" .=) <$> _gcdvimcImage,
                  ("platform" .=) <$> _gcdvimcPlatform,
                  ("linkOutSuggestion" .=) <$>
                    _gcdvimcLinkOutSuggestion,
                  ("text" .=) <$> _gcdvimcText,
                  ("carouselSelect" .=) <$> _gcdvimcCarouselSelect,
                  ("simpleResponses" .=) <$> _gcdvimcSimpleResponses,
                  ("payload" .=) <$> _gcdvimcPayload,
                  ("suggestions" .=) <$> _gcdvimcSuggestions,
                  ("listSelect" .=) <$> _gcdvimcListSelect,
                  ("basicCard" .=) <$> _gcdvimcBasicCard,
                  ("quickReplies" .=) <$> _gcdvimcQuickReplies])

-- | The card for presenting a carousel of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCarouselSelect' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2IntentMessageCarouselSelect'
    { _gItems :: Maybe [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCarouselSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gItems'
googleCloudDialogflowV2IntentMessageCarouselSelect
    :: GoogleCloudDialogflowV2IntentMessageCarouselSelect
googleCloudDialogflowV2IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2IntentMessageCarouselSelect' {_gItems = Nothing}

-- | Required. Carousel items.
gItems :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelect [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem]
gItems
  = lens _gItems (\ s a -> s{_gItems = a}) . _Default .
      _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCarouselSelect"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCarouselSelect'
                   <$> (o .:? "items" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelect
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCarouselSelect'{..}
          = object (catMaybes [("items" .=) <$> _gItems])

-- | Additional info about the select item for when it is triggered in a
-- dialog.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSelectItemInfo' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
    { _gooKey      :: !(Maybe Text)
    , _gooSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooKey'
--
-- * 'gooSynonyms'
googleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    :: GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
googleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
    {_gooKey = Nothing, _gooSynonyms = Nothing}

-- | Required. A unique key that will be sent back to the agent if this
-- response is given.
gooKey :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo (Maybe Text)
gooKey = lens _gooKey (\ s a -> s{_gooKey = a})

-- | Optional. A list of synonyms that can also be used to trigger this item
-- in dialog.
gooSynonyms :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo [Text]
gooSynonyms
  = lens _gooSynonyms (\ s a -> s{_gooSynonyms = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
                   <$> (o .:? "key") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _gooKey,
                  ("synonyms" .=) <$> _gooSynonyms])

-- | Represents an intent. Intents convert a number of user expressions or
-- patterns into an action. An action is an extraction of a user command or
-- sentence semantics.
--
-- /See:/ 'googleCloudDialogflowV2beta1Intent' smart constructor.
data GoogleCloudDialogflowV2beta1Intent =
  GoogleCloudDialogflowV2beta1Intent'
    { _gcdvicDefaultResponsePlatforms :: !(Maybe [Text])
    , _gcdvicWebhookState             :: !(Maybe GoogleCloudDialogflowV2beta1IntentWebhookState)
    , _gcdvicMlEnabled                :: !(Maybe Bool)
    , _gcdvicPriority                 :: !(Maybe (Textual Int32))
    , _gcdvicAction                   :: !(Maybe Text)
    , _gcdvicRootFollowupIntentName   :: !(Maybe Text)
    , _gcdvicName                     :: !(Maybe Text)
    , _gcdvicEvents                   :: !(Maybe [Text])
    , _gcdvicParameters               :: !(Maybe [GoogleCloudDialogflowV2beta1IntentParameter])
    , _gcdvicDisplayName              :: !(Maybe Text)
    , _gcdvicInputContextNames        :: !(Maybe [Text])
    , _gcdvicEndInteraction           :: !(Maybe Bool)
    , _gcdvicMessages                 :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gcdvicParentFollowupIntentName :: !(Maybe Text)
    , _gcdvicOutputContexts           :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gcdvicTrainingPhrases          :: !(Maybe [GoogleCloudDialogflowV2beta1IntentTrainingPhrase])
    , _gcdvicFollowupIntentInfo       :: !(Maybe [GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo])
    , _gcdvicIsFallback               :: !(Maybe Bool)
    , _gcdvicMlDisabled               :: !(Maybe Bool)
    , _gcdvicResetContexts            :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2beta1Intent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvicDefaultResponsePlatforms'
--
-- * 'gcdvicWebhookState'
--
-- * 'gcdvicMlEnabled'
--
-- * 'gcdvicPriority'
--
-- * 'gcdvicAction'
--
-- * 'gcdvicRootFollowupIntentName'
--
-- * 'gcdvicName'
--
-- * 'gcdvicEvents'
--
-- * 'gcdvicParameters'
--
-- * 'gcdvicDisplayName'
--
-- * 'gcdvicInputContextNames'
--
-- * 'gcdvicEndInteraction'
--
-- * 'gcdvicMessages'
--
-- * 'gcdvicParentFollowupIntentName'
--
-- * 'gcdvicOutputContexts'
--
-- * 'gcdvicTrainingPhrases'
--
-- * 'gcdvicFollowupIntentInfo'
--
-- * 'gcdvicIsFallback'
--
-- * 'gcdvicMlDisabled'
--
-- * 'gcdvicResetContexts'
googleCloudDialogflowV2beta1Intent
    :: GoogleCloudDialogflowV2beta1Intent
googleCloudDialogflowV2beta1Intent =
  GoogleCloudDialogflowV2beta1Intent'
    { _gcdvicDefaultResponsePlatforms = Nothing
    , _gcdvicWebhookState = Nothing
    , _gcdvicMlEnabled = Nothing
    , _gcdvicPriority = Nothing
    , _gcdvicAction = Nothing
    , _gcdvicRootFollowupIntentName = Nothing
    , _gcdvicName = Nothing
    , _gcdvicEvents = Nothing
    , _gcdvicParameters = Nothing
    , _gcdvicDisplayName = Nothing
    , _gcdvicInputContextNames = Nothing
    , _gcdvicEndInteraction = Nothing
    , _gcdvicMessages = Nothing
    , _gcdvicParentFollowupIntentName = Nothing
    , _gcdvicOutputContexts = Nothing
    , _gcdvicTrainingPhrases = Nothing
    , _gcdvicFollowupIntentInfo = Nothing
    , _gcdvicIsFallback = Nothing
    , _gcdvicMlDisabled = Nothing
    , _gcdvicResetContexts = Nothing
    }

-- | Optional. The list of platforms for which the first response will be
-- taken from among the messages assigned to the DEFAULT_PLATFORM.
gcdvicDefaultResponsePlatforms :: Lens' GoogleCloudDialogflowV2beta1Intent [Text]
gcdvicDefaultResponsePlatforms
  = lens _gcdvicDefaultResponsePlatforms
      (\ s a -> s{_gcdvicDefaultResponsePlatforms = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether webhooks are enabled for the intent.
gcdvicWebhookState :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe GoogleCloudDialogflowV2beta1IntentWebhookState)
gcdvicWebhookState
  = lens _gcdvicWebhookState
      (\ s a -> s{_gcdvicWebhookState = a})

-- | Optional. Indicates whether Machine Learning is enabled for the intent.
-- Note: If \`ml_enabled\` setting is set to false, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off. DEPRECATED! Please use
-- \`ml_disabled\` field instead. NOTE: If both \`ml_enabled\` and
-- \`ml_disabled\` are either not set or false, then the default value is
-- determined as follows: - Before April 15th, 2018 the default is:
-- ml_enabled = false \/ ml_disabled = true. - After April 15th, 2018 the
-- default is: ml_enabled = true \/ ml_disabled = false.
gcdvicMlEnabled :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicMlEnabled
  = lens _gcdvicMlEnabled
      (\ s a -> s{_gcdvicMlEnabled = a})

-- | Optional. The priority of this intent. Higher numbers represent higher
-- priorities. If this is zero or unspecified, we use the default priority
-- 500000. Negative numbers mean that the intent is disabled.
gcdvicPriority :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Int32)
gcdvicPriority
  = lens _gcdvicPriority
      (\ s a -> s{_gcdvicPriority = a})
      . mapping _Coerce

-- | Optional. The name of the action associated with the intent. Note: The
-- action name must not contain whitespaces.
gcdvicAction :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicAction
  = lens _gcdvicAction (\ s a -> s{_gcdvicAction = a})

-- | Read-only. The unique identifier of the root intent in the chain of
-- followup intents. It identifies the correct followup intents chain for
-- this intent. We populate this field only in the output. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvicRootFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicRootFollowupIntentName
  = lens _gcdvicRootFollowupIntentName
      (\ s a -> s{_gcdvicRootFollowupIntentName = a})

-- | The unique identifier of this intent. Required for Intents.UpdateIntent
-- and Intents.BatchUpdateIntents methods. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvicName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicName
  = lens _gcdvicName (\ s a -> s{_gcdvicName = a})

-- | Optional. The collection of event names that trigger the intent. If the
-- collection of input contexts is not empty, all of the contexts must be
-- present in the active user session for an event to trigger this intent.
gcdvicEvents :: Lens' GoogleCloudDialogflowV2beta1Intent [Text]
gcdvicEvents
  = lens _gcdvicEvents (\ s a -> s{_gcdvicEvents = a})
      . _Default
      . _Coerce

-- | Optional. The collection of parameters associated with the intent.
gcdvicParameters :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentParameter]
gcdvicParameters
  = lens _gcdvicParameters
      (\ s a -> s{_gcdvicParameters = a})
      . _Default
      . _Coerce

-- | Required. The name of this intent.
gcdvicDisplayName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicDisplayName
  = lens _gcdvicDisplayName
      (\ s a -> s{_gcdvicDisplayName = a})

-- | Optional. The list of context names required for this intent to be
-- triggered. Format: \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdvicInputContextNames :: Lens' GoogleCloudDialogflowV2beta1Intent [Text]
gcdvicInputContextNames
  = lens _gcdvicInputContextNames
      (\ s a -> s{_gcdvicInputContextNames = a})
      . _Default
      . _Coerce

-- | Optional. Indicates that this intent ends an interaction. Some
-- integrations (e.g., Actions on Google or Dialogflow phone gateway) use
-- this information to close interaction with an end user. Default is
-- false.
gcdvicEndInteraction :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicEndInteraction
  = lens _gcdvicEndInteraction
      (\ s a -> s{_gcdvicEndInteraction = a})

-- | Optional. The collection of rich messages corresponding to the
-- \`Response\` field in the Dialogflow console.
gcdvicMessages :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentMessage]
gcdvicMessages
  = lens _gcdvicMessages
      (\ s a -> s{_gcdvicMessages = a})
      . _Default
      . _Coerce

-- | Read-only after creation. The unique identifier of the parent intent in
-- the chain of followup intents. You can set this field when creating an
-- intent, for example with CreateIntent or BatchUpdateIntents, in order to
-- make this intent a followup intent. It identifies the parent followup
-- intent. Format: \`projects\/\/agent\/intents\/\`.
gcdvicParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicParentFollowupIntentName
  = lens _gcdvicParentFollowupIntentName
      (\ s a -> s{_gcdvicParentFollowupIntentName = a})

-- | Optional. The collection of contexts that are activated when the intent
-- is matched. Context messages in this collection should not set the
-- parameters field. Setting the \`lifespan_count\` to 0 will reset the
-- context when the intent is matched. Format:
-- \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdvicOutputContexts :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1Context]
gcdvicOutputContexts
  = lens _gcdvicOutputContexts
      (\ s a -> s{_gcdvicOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. The collection of examples that the agent is trained on.
gcdvicTrainingPhrases :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentTrainingPhrase]
gcdvicTrainingPhrases
  = lens _gcdvicTrainingPhrases
      (\ s a -> s{_gcdvicTrainingPhrases = a})
      . _Default
      . _Coerce

-- | Read-only. Information about all followup intents that have this intent
-- as a direct or indirect parent. We populate this field only in the
-- output.
gcdvicFollowupIntentInfo :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo]
gcdvicFollowupIntentInfo
  = lens _gcdvicFollowupIntentInfo
      (\ s a -> s{_gcdvicFollowupIntentInfo = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether this is a fallback intent.
gcdvicIsFallback :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicIsFallback
  = lens _gcdvicIsFallback
      (\ s a -> s{_gcdvicIsFallback = a})

-- | Optional. Indicates whether Machine Learning is disabled for the intent.
-- Note: If \`ml_disabled\` setting is set to true, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off.
gcdvicMlDisabled :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicMlDisabled
  = lens _gcdvicMlDisabled
      (\ s a -> s{_gcdvicMlDisabled = a})

-- | Optional. Indicates whether to delete all contexts in the current
-- session when this intent is matched.
gcdvicResetContexts :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicResetContexts
  = lens _gcdvicResetContexts
      (\ s a -> s{_gcdvicResetContexts = a})

instance FromJSON GoogleCloudDialogflowV2beta1Intent
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Intent"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Intent' <$>
                   (o .:? "defaultResponsePlatforms" .!= mempty) <*>
                     (o .:? "webhookState")
                     <*> (o .:? "mlEnabled")
                     <*> (o .:? "priority")
                     <*> (o .:? "action")
                     <*> (o .:? "rootFollowupIntentName")
                     <*> (o .:? "name")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "inputContextNames" .!= mempty)
                     <*> (o .:? "endInteraction")
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "parentFollowupIntentName")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "trainingPhrases" .!= mempty)
                     <*> (o .:? "followupIntentInfo" .!= mempty)
                     <*> (o .:? "isFallback")
                     <*> (o .:? "mlDisabled")
                     <*> (o .:? "resetContexts"))

instance ToJSON GoogleCloudDialogflowV2beta1Intent
         where
        toJSON GoogleCloudDialogflowV2beta1Intent'{..}
          = object
              (catMaybes
                 [("defaultResponsePlatforms" .=) <$>
                    _gcdvicDefaultResponsePlatforms,
                  ("webhookState" .=) <$> _gcdvicWebhookState,
                  ("mlEnabled" .=) <$> _gcdvicMlEnabled,
                  ("priority" .=) <$> _gcdvicPriority,
                  ("action" .=) <$> _gcdvicAction,
                  ("rootFollowupIntentName" .=) <$>
                    _gcdvicRootFollowupIntentName,
                  ("name" .=) <$> _gcdvicName,
                  ("events" .=) <$> _gcdvicEvents,
                  ("parameters" .=) <$> _gcdvicParameters,
                  ("displayName" .=) <$> _gcdvicDisplayName,
                  ("inputContextNames" .=) <$>
                    _gcdvicInputContextNames,
                  ("endInteraction" .=) <$> _gcdvicEndInteraction,
                  ("messages" .=) <$> _gcdvicMessages,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdvicParentFollowupIntentName,
                  ("outputContexts" .=) <$> _gcdvicOutputContexts,
                  ("trainingPhrases" .=) <$> _gcdvicTrainingPhrases,
                  ("followupIntentInfo" .=) <$>
                    _gcdvicFollowupIntentInfo,
                  ("isFallback" .=) <$> _gcdvicIsFallback,
                  ("mlDisabled" .=) <$> _gcdvicMlDisabled,
                  ("resetContexts" .=) <$> _gcdvicResetContexts])

-- | Represents a context.
--
-- /See:/ 'googleCloudDialogflowV2Context' smart constructor.
data GoogleCloudDialogflowV2Context =
  GoogleCloudDialogflowV2Context'
    { _gcdvccLifespanCount :: !(Maybe (Textual Int32))
    , _gcdvccName          :: !(Maybe Text)
    , _gcdvccParameters    :: !(Maybe GoogleCloudDialogflowV2ContextParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvccLifespanCount'
--
-- * 'gcdvccName'
--
-- * 'gcdvccParameters'
googleCloudDialogflowV2Context
    :: GoogleCloudDialogflowV2Context
googleCloudDialogflowV2Context =
  GoogleCloudDialogflowV2Context'
    { _gcdvccLifespanCount = Nothing
    , _gcdvccName = Nothing
    , _gcdvccParameters = Nothing
    }

-- | Optional. The number of conversational query requests after which the
-- context expires. If set to \`0\` (the default) the context expires
-- immediately. Contexts expire automatically after 20 minutes even if
-- there are no matching queries.
gcdvccLifespanCount :: Lens' GoogleCloudDialogflowV2Context (Maybe Int32)
gcdvccLifespanCount
  = lens _gcdvccLifespanCount
      (\ s a -> s{_gcdvccLifespanCount = a})
      . mapping _Coerce

-- | Required. The unique identifier of the context. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`. The \`Context ID\` is
-- always converted to lowercase, may only contain characters in
-- [a-zA-Z0-9_-%] and may be at most 250 bytes long.
gcdvccName :: Lens' GoogleCloudDialogflowV2Context (Maybe Text)
gcdvccName
  = lens _gcdvccName (\ s a -> s{_gcdvccName = a})

-- | Optional. The collection of parameters associated with this context.
-- Refer to [this
-- doc](https:\/\/dialogflow.com\/docs\/actions-and-parameters) for syntax.
gcdvccParameters :: Lens' GoogleCloudDialogflowV2Context (Maybe GoogleCloudDialogflowV2ContextParameters)
gcdvccParameters
  = lens _gcdvccParameters
      (\ s a -> s{_gcdvccParameters = a})

instance FromJSON GoogleCloudDialogflowV2Context
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Context"
              (\ o ->
                 GoogleCloudDialogflowV2Context' <$>
                   (o .:? "lifespanCount") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2Context where
        toJSON GoogleCloudDialogflowV2Context'{..}
          = object
              (catMaybes
                 [("lifespanCount" .=) <$> _gcdvccLifespanCount,
                  ("name" .=) <$> _gcdvccName,
                  ("parameters" .=) <$> _gcdvccParameters])

-- | The button object that appears at the bottom of a card.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCardButton' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2IntentMessageBasicCardButton'
    { _gcdvimbcbcOpenURIAction :: !(Maybe GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction)
    , _gcdvimbcbcTitle         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbcOpenURIAction'
--
-- * 'gcdvimbcbcTitle'
googleCloudDialogflowV2IntentMessageBasicCardButton
    :: GoogleCloudDialogflowV2IntentMessageBasicCardButton
googleCloudDialogflowV2IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2IntentMessageBasicCardButton'
    {_gcdvimbcbcOpenURIAction = Nothing, _gcdvimbcbcTitle = Nothing}

-- | Required. Action to take when a user taps on the button.
gcdvimbcbcOpenURIAction :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButton (Maybe GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction)
gcdvimbcbcOpenURIAction
  = lens _gcdvimbcbcOpenURIAction
      (\ s a -> s{_gcdvimbcbcOpenURIAction = a})

-- | Required. The title of the button.
gcdvimbcbcTitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButton (Maybe Text)
gcdvimbcbcTitle
  = lens _gcdvimbcbcTitle
      (\ s a -> s{_gcdvimbcbcTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCardButton'
                   <$> (o .:? "openUriAction") <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButton
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCardButton'{..}
          = object
              (catMaybes
                 [("openUriAction" .=) <$> _gcdvimbcbcOpenURIAction,
                  ("title" .=) <$> _gcdvimbcbcTitle])
