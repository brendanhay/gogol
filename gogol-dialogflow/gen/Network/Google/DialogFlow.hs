{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DialogFlow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds conversational interfaces (for example, chatbots, and
-- voice-powered apps and devices).
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference>
module Network.Google.DialogFlow
    (
    -- * Service Configuration
      dialogFlowService

    -- * OAuth Scopes
    , dialogFlowScope
    , cloudPlatformScope

    -- * API Declaration
    , DialogFlowAPI

    -- * Resources

    -- ** dialogflow.projects.agent.entityTypes.batchDelete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchDelete

    -- ** dialogflow.projects.agent.entityTypes.batchUpdate
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchUpdate

    -- ** dialogflow.projects.agent.entityTypes.create
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Create

    -- ** dialogflow.projects.agent.entityTypes.delete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Delete

    -- ** dialogflow.projects.agent.entityTypes.entities.batchCreate
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchCreate

    -- ** dialogflow.projects.agent.entityTypes.entities.batchDelete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchDelete

    -- ** dialogflow.projects.agent.entityTypes.entities.batchUpdate
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchUpdate

    -- ** dialogflow.projects.agent.entityTypes.get
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Get

    -- ** dialogflow.projects.agent.entityTypes.list
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.List

    -- ** dialogflow.projects.agent.entityTypes.patch
    , module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Patch

    -- ** dialogflow.projects.agent.export
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Export

    -- ** dialogflow.projects.agent.import
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Import

    -- ** dialogflow.projects.agent.intents.batchDelete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchDelete

    -- ** dialogflow.projects.agent.intents.batchUpdate
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchUpdate

    -- ** dialogflow.projects.agent.intents.create
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Create

    -- ** dialogflow.projects.agent.intents.delete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Delete

    -- ** dialogflow.projects.agent.intents.get
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Get

    -- ** dialogflow.projects.agent.intents.list
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.List

    -- ** dialogflow.projects.agent.intents.patch
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Patch

    -- ** dialogflow.projects.agent.restore
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Restore

    -- ** dialogflow.projects.agent.search
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Search

    -- ** dialogflow.projects.agent.sessions.contexts.create
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Create

    -- ** dialogflow.projects.agent.sessions.contexts.delete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Delete

    -- ** dialogflow.projects.agent.sessions.contexts.get
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Get

    -- ** dialogflow.projects.agent.sessions.contexts.list
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.List

    -- ** dialogflow.projects.agent.sessions.contexts.patch
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Patch

    -- ** dialogflow.projects.agent.sessions.deleteContexts
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DeleteContexts

    -- ** dialogflow.projects.agent.sessions.detectIntent
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DetectIntent

    -- ** dialogflow.projects.agent.sessions.entityTypes.create
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Create

    -- ** dialogflow.projects.agent.sessions.entityTypes.delete
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Delete

    -- ** dialogflow.projects.agent.sessions.entityTypes.get
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Get

    -- ** dialogflow.projects.agent.sessions.entityTypes.list
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.List

    -- ** dialogflow.projects.agent.sessions.entityTypes.patch
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Patch

    -- ** dialogflow.projects.agent.train
    , module Network.Google.Resource.DialogFlow.Projects.Agent.Train

    -- ** dialogflow.projects.getAgent
    , module Network.Google.Resource.DialogFlow.Projects.GetAgent

    -- ** dialogflow.projects.operations.get
    , module Network.Google.Resource.DialogFlow.Projects.Operations.Get

    -- * Types

    -- ** GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleCloudDialogflowV2IntentFollowupIntentInfo
    , GoogleCloudDialogflowV2IntentFollowupIntentInfo
    , googleCloudDialogflowV2IntentFollowupIntentInfo
    , gcdvifiiFollowupIntentName
    , gcdvifiiParentFollowupIntentName

    -- ** GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView
    , GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView (..)

    -- ** GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
    , GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
    , googleCloudDialogflowV2beta1IntentMessageSimpleResponses
    , gcdvimsrSimpleResponses

    -- ** GoogleCloudDialogflowV2beta1IntentTrainingPhraseType
    , GoogleCloudDialogflowV2beta1IntentTrainingPhraseType (..)

    -- ** GoogleCloudDialogflowV2InputAudioConfig
    , GoogleCloudDialogflowV2InputAudioConfig
    , googleCloudDialogflowV2InputAudioConfig
    , gcdviacLanguageCode
    , gcdviacPhraseHints
    , gcdviacSampleRateHertz
    , gcdviacAudioEncoding

    -- ** GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    , GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    , googleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    , gcdvbuirIntents

    -- ** GoogleCloudDialogflowV2beta1IntentMessagePayload
    , GoogleCloudDialogflowV2beta1IntentMessagePayload
    , googleCloudDialogflowV2beta1IntentMessagePayload
    , gcdvimpAddtional

    -- ** GoogleCloudDialogflowV2WebhookRequest
    , GoogleCloudDialogflowV2WebhookRequest
    , googleCloudDialogflowV2WebhookRequest
    , gcdvwrOriginalDetectIntentRequest
    , gcdvwrResponseId
    , gcdvwrQueryResult
    , gcdvwrSession

    -- ** GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
    , GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
    , googleCloudDialogflowV2IntentMessageCarouselSelectItem
    , gcdvimcsiImage
    , gcdvimcsiTitle
    , gcdvimcsiDescription
    , gcdvimcsiInfo

    -- ** GoogleCloudDialogflowV2EventInput
    , GoogleCloudDialogflowV2EventInput
    , googleCloudDialogflowV2EventInput
    , gcdveiLanguageCode
    , gcdveiName
    , gcdveiParameters

    -- ** GoogleCloudDialogflowV2IntentMessageSimpleResponse
    , GoogleCloudDialogflowV2IntentMessageSimpleResponse
    , googleCloudDialogflowV2IntentMessageSimpleResponse
    , gcdvimsrDisplayText
    , gcdvimsrSsml
    , gcdvimsrTextToSpeech

    -- ** GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- ** GoogleCloudDialogflowV2IntentTrainingPhrase
    , GoogleCloudDialogflowV2IntentTrainingPhrase
    , googleCloudDialogflowV2IntentTrainingPhrase
    , gcdvitpParts
    , gcdvitpName
    , gcdvitpTimesAddedCount
    , gcdvitpType

    -- ** GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    , GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    , googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    , gImage
    , gTitle
    , gDescription
    , gInfo

    -- ** GoogleCloudDialogflowV2IntentMessageBasicCard
    , GoogleCloudDialogflowV2IntentMessageBasicCard
    , googleCloudDialogflowV2IntentMessageBasicCard
    , gcdvimbcImage
    , gcdvimbcButtons
    , gcdvimbcSubtitle
    , gcdvimbcTitle
    , gcdvimbcFormattedText

    -- ** GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
    , GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
    , googleCloudDialogflowV2beta1IntentMessageSimpleResponse
    , gDisplayText
    , gSsml
    , gTextToSpeech

    -- ** GoogleCloudDialogflowV2Intent
    , GoogleCloudDialogflowV2Intent
    , googleCloudDialogflowV2Intent
    , gcdviDefaultResponsePlatforms
    , gcdviWebhookState
    , gcdviPriority
    , gcdviAction
    , gcdviRootFollowupIntentName
    , gcdviName
    , gcdviEvents
    , gcdviParameters
    , gcdviDisplayName
    , gcdviInputContextNames
    , gcdviMessages
    , gcdviParentFollowupIntentName
    , gcdviOutputContexts
    , gcdviTrainingPhrases
    , gcdviFollowupIntentInfo
    , gcdviIsFallback
    , gcdviMlDisabled
    , gcdviResetContexts

    -- ** GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
    , GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
    , googleCloudDialogflowV2beta1IntentMessageBasicCardButton
    , gcdvimbcbOpenURIAction
    , gcdvimbcbTitle

    -- ** GoogleCloudDialogflowV2BatchCreateEntitiesRequest
    , GoogleCloudDialogflowV2BatchCreateEntitiesRequest
    , googleCloudDialogflowV2BatchCreateEntitiesRequest
    , gcdvbcerLanguageCode
    , gcdvbcerEntities

    -- ** GoogleCloudDialogflowV2beta1IntentMessageSuggestions
    , GoogleCloudDialogflowV2beta1IntentMessageSuggestions
    , googleCloudDialogflowV2beta1IntentMessageSuggestions
    , gcdvimsSuggestions

    -- ** GoogleCloudDialogflowV2BatchDeleteIntentsRequest
    , GoogleCloudDialogflowV2BatchDeleteIntentsRequest
    , googleCloudDialogflowV2BatchDeleteIntentsRequest
    , gcdvbdirIntents

    -- ** GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel
    , GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel (..)

    -- ** GoogleCloudDialogflowV2QueryResult
    , GoogleCloudDialogflowV2QueryResult
    , googleCloudDialogflowV2QueryResult
    , gcdvqrLanguageCode
    , gcdvqrAllRequiredParamsPresent
    , gcdvqrIntentDetectionConfidence
    , gcdvqrFulfillmentMessages
    , gcdvqrSpeechRecognitionConfidence
    , gcdvqrAction
    , gcdvqrIntent
    , gcdvqrQueryText
    , gcdvqrFulfillmentText
    , gcdvqrParameters
    , gcdvqrWebhookPayload
    , gcdvqrOutputContexts
    , gcdvqrWebhookSource
    , gcdvqrDiagnosticInfo

    -- ** GoogleCloudDialogflowV2BatchUpdateIntentsRequest
    , GoogleCloudDialogflowV2BatchUpdateIntentsRequest
    , googleCloudDialogflowV2BatchUpdateIntentsRequest
    , gcdvbuirLanguageCode
    , gcdvbuirUpdateMask
    , gcdvbuirIntentView
    , gcdvbuirIntentBatchURI
    , gcdvbuirIntentBatchInline

    -- ** GoogleTypeLatLng
    , GoogleTypeLatLng
    , googleTypeLatLng
    , gtllLatitude
    , gtllLongitude

    -- ** GoogleCloudDialogflowV2beta1WebhookResponse
    , GoogleCloudDialogflowV2beta1WebhookResponse
    , googleCloudDialogflowV2beta1WebhookResponse
    , gcdvwrFulfillmentMessages
    , gcdvwrPayload
    , gcdvwrFulfillmentText
    , gcdvwrSource
    , gcdvwrEndInteraction
    , gcdvwrOutputContexts
    , gcdvwrFollowupEventInput

    -- ** GoogleCloudDialogflowV2beta1EventInputParameters
    , GoogleCloudDialogflowV2beta1EventInputParameters
    , googleCloudDialogflowV2beta1EventInputParameters
    , gcdveipAddtional

    -- ** GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
    , GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
    , googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
    , gcdvodirpAddtional

    -- ** GoogleCloudDialogflowV2IntentMessageQuickReplies
    , GoogleCloudDialogflowV2IntentMessageQuickReplies
    , googleCloudDialogflowV2IntentMessageQuickReplies
    , gcdvimqrTitle
    , gcdvimqrQuickReplies

    -- ** GoogleCloudDialogflowV2beta1KnowledgeAnswers
    , GoogleCloudDialogflowV2beta1KnowledgeAnswers
    , googleCloudDialogflowV2beta1KnowledgeAnswers
    , gcdvkaAnswers

    -- ** GoogleCloudDialogflowV2beta1IntentMessageCardButton
    , GoogleCloudDialogflowV2beta1IntentMessageCardButton
    , googleCloudDialogflowV2beta1IntentMessageCardButton
    , gcdvimcbText
    , gcdvimcbPostback

    -- ** GoogleCloudDialogflowV2beta1ContextParameters
    , GoogleCloudDialogflowV2beta1ContextParameters
    , googleCloudDialogflowV2beta1ContextParameters
    , gcdvcpAddtional

    -- ** GoogleCloudDialogflowV2QueryParametersPayload
    , GoogleCloudDialogflowV2QueryParametersPayload
    , googleCloudDialogflowV2QueryParametersPayload
    , gcdvqppAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentMessageListSelect
    , GoogleCloudDialogflowV2beta1IntentMessageListSelect
    , googleCloudDialogflowV2beta1IntentMessageListSelect
    , gcdvimlsItems
    , gcdvimlsTitle

    -- ** GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    , GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    , googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    , gcdvimtpaAudioURI

    -- ** GoogleCloudDialogflowV2IntentTrainingPhrasePart
    , GoogleCloudDialogflowV2IntentTrainingPhrasePart
    , googleCloudDialogflowV2IntentTrainingPhrasePart
    , gcdvitppText
    , gcdvitppUserDefined
    , gcdvitppEntityType
    , gcdvitppAlias

    -- ** GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState
    , GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState (..)

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- ** GoogleCloudDialogflowV2beta1WebhookResponsePayload
    , GoogleCloudDialogflowV2beta1WebhookResponsePayload
    , googleCloudDialogflowV2beta1WebhookResponsePayload
    , gcdvwrpAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
    , GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
    , googleCloudDialogflowV2beta1IntentMessageQuickReplies
    , gcdvimqrsTitle
    , gcdvimqrsQuickReplies

    -- ** GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
    , GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
    , googleCloudDialogflowV2IntentMessageLinkOutSuggestion
    , gcdvimlosURI
    , gcdvimlosDestinationName

    -- ** GoogleCloudDialogflowV2ImportAgentRequest
    , GoogleCloudDialogflowV2ImportAgentRequest
    , googleCloudDialogflowV2ImportAgentRequest
    , gcdviarAgentURI
    , gcdviarAgentContent

    -- ** GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- ** GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    , GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    , googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    , gcdvbuetrEntityTypes

    -- ** GoogleCloudDialogflowV2ContextParameters
    , GoogleCloudDialogflowV2ContextParameters
    , googleCloudDialogflowV2ContextParameters
    , gAddtional

    -- ** GoogleCloudDialogflowV2IntentMessageCardButton
    , GoogleCloudDialogflowV2IntentMessageCardButton
    , googleCloudDialogflowV2IntentMessageCardButton
    , gText
    , gPostback

    -- ** GoogleCloudDialogflowV2IntentMessageListSelect
    , GoogleCloudDialogflowV2IntentMessageListSelect
    , googleCloudDialogflowV2IntentMessageListSelect
    , gooItems
    , gooTitle

    -- ** GoogleCloudDialogflowV2beta1IntentMessageCard
    , GoogleCloudDialogflowV2beta1IntentMessageCard
    , googleCloudDialogflowV2beta1IntentMessageCard
    , gcdvimcButtons
    , gcdvimcImageURI
    , gcdvimcSubtitle
    , gcdvimcTitle

    -- ** GoogleCloudDialogflowV2RestoreAgentRequest
    , GoogleCloudDialogflowV2RestoreAgentRequest
    , googleCloudDialogflowV2RestoreAgentRequest
    , gcdvrarAgentURI
    , gcdvrarAgentContent

    -- ** GoogleCloudDialogflowV2IntentMessageSuggestions
    , GoogleCloudDialogflowV2IntentMessageSuggestions
    , googleCloudDialogflowV2IntentMessageSuggestions
    , gSuggestions

    -- ** GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
    , GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
    , googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
    , gcdvimbcbouaURI

    -- ** GoogleCloudDialogflowV2QueryParameters
    , GoogleCloudDialogflowV2QueryParameters
    , googleCloudDialogflowV2QueryParameters
    , gcdvqpContexts
    , gcdvqpPayload
    , gcdvqpGeoLocation
    , gcdvqpTimeZone
    , gcdvqpSessionEntityTypes
    , gcdvqpResetContexts

    -- ** GoogleCloudDialogflowV2beta1IntentMessageSuggestion
    , GoogleCloudDialogflowV2beta1IntentMessageSuggestion
    , googleCloudDialogflowV2beta1IntentMessageSuggestion
    , gcdvimsTitle

    -- ** GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
    , GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
    , googleCloudDialogflowV2beta1OriginalDetectIntentRequest
    , gcdvodirPayload
    , gcdvodirVersion
    , gcdvodirSource

    -- ** GoogleCloudDialogflowV2EventInputParameters
    , GoogleCloudDialogflowV2EventInputParameters
    , googleCloudDialogflowV2EventInputParameters
    , gcdveipsAddtional

    -- ** GoogleCloudDialogflowV2IntentMessagePlatform
    , GoogleCloudDialogflowV2IntentMessagePlatform (..)

    -- ** GoogleCloudDialogflowV2DetectIntentResponse
    , GoogleCloudDialogflowV2DetectIntentResponse
    , googleCloudDialogflowV2DetectIntentResponse
    , gcdvdirResponseId
    , gcdvdirWebhookStatus
    , gcdvdirQueryResult

    -- ** GoogleCloudDialogflowV2IntentMessageListSelectItem
    , GoogleCloudDialogflowV2IntentMessageListSelectItem
    , googleCloudDialogflowV2IntentMessageListSelectItem
    , gcdvimlsiImage
    , gcdvimlsiTitle
    , gcdvimlsiDescription
    , gcdvimlsiInfo

    -- ** GoogleCloudDialogflowV2beta1SentimentAnalysisResult
    , GoogleCloudDialogflowV2beta1SentimentAnalysisResult
    , googleCloudDialogflowV2beta1SentimentAnalysisResult
    , gcdvsarQueryTextSentiment

    -- ** GoogleCloudDialogflowV2EntityTypeBatch
    , GoogleCloudDialogflowV2EntityTypeBatch
    , googleCloudDialogflowV2EntityTypeBatch
    , gcdvetbEntityTypes

    -- ** GoogleCloudDialogflowV2QueryResultDiagnosticInfo
    , GoogleCloudDialogflowV2QueryResultDiagnosticInfo
    , googleCloudDialogflowV2QueryResultDiagnosticInfo
    , gcdvqrdiAddtional

    -- ** GoogleCloudDialogflowV2IntentMessageText
    , GoogleCloudDialogflowV2IntentMessageText
    , googleCloudDialogflowV2IntentMessageText
    , gcdvimtText

    -- ** GoogleCloudDialogflowV2DetectIntentRequest
    , GoogleCloudDialogflowV2DetectIntentRequest
    , googleCloudDialogflowV2DetectIntentRequest
    , gcdvdirQueryInput
    , gcdvdirInputAudio
    , gcdvdirQueryParams

    -- ** GoogleCloudDialogflowV2beta1QueryResultParameters
    , GoogleCloudDialogflowV2beta1QueryResultParameters
    , googleCloudDialogflowV2beta1QueryResultParameters
    , gcdvqrpAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentMessageBasicCard
    , GoogleCloudDialogflowV2beta1IntentMessageBasicCard
    , googleCloudDialogflowV2beta1IntentMessageBasicCard
    , gcdvimbccImage
    , gcdvimbccButtons
    , gcdvimbccSubtitle
    , gcdvimbccTitle
    , gcdvimbccFormattedText

    -- ** GoogleCloudDialogflowV2beta1IntentTrainingPhrase
    , GoogleCloudDialogflowV2beta1IntentTrainingPhrase
    , googleCloudDialogflowV2beta1IntentTrainingPhrase
    , gParts
    , gName
    , gTimesAddedCount
    , gType

    -- ** GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    , GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    , googleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    , gcdvkaaMatchConfidence
    , gcdvkaaAnswer
    , gcdvkaaSource
    , gcdvkaaFaqQuestion
    , gcdvkaaMatchConfidenceLevel

    -- ** GoogleCloudDialogflowV2beta1EventInput
    , GoogleCloudDialogflowV2beta1EventInput
    , googleCloudDialogflowV2beta1EventInput
    , gooLanguageCode
    , gooName
    , gooParameters

    -- ** GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
    , GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
    , googleCloudDialogflowV2BatchUpdateEntitiesRequest
    , gcdvbuerLanguageCode
    , gcdvbuerUpdateMask
    , gcdvbuerEntities

    -- ** GoogleCloudDialogflowV2IntentMessagePayload
    , GoogleCloudDialogflowV2IntentMessagePayload
    , googleCloudDialogflowV2IntentMessagePayload
    , gooAddtional

    -- ** GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
    , GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
    , googleCloudDialogflowV2beta1KnowledgeOperationMetadata
    , gcdvkomState

    -- ** GoogleCloudDialogflowV2beta1WebhookRequest
    , GoogleCloudDialogflowV2beta1WebhookRequest
    , googleCloudDialogflowV2beta1WebhookRequest
    , gOriginalDetectIntentRequest
    , gResponseId
    , gAlternativeQueryResults
    , gQueryResult
    , gSession

    -- ** GoogleCloudDialogflowV2IntentTrainingPhraseType
    , GoogleCloudDialogflowV2IntentTrainingPhraseType (..)

    -- ** GoogleCloudDialogflowV2beta1IntentMessageText
    , GoogleCloudDialogflowV2beta1IntentMessageText
    , googleCloudDialogflowV2beta1IntentMessageText
    , gooText

    -- ** GoogleCloudDialogflowV2IntentMessageSimpleResponses
    , GoogleCloudDialogflowV2IntentMessageSimpleResponses
    , googleCloudDialogflowV2IntentMessageSimpleResponses
    , gSimpleResponses

    -- ** GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
    , GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
    , googleCloudDialogflowV2beta1IntentFollowupIntentInfo
    , gFollowupIntentName
    , gParentFollowupIntentName

    -- ** GoogleCloudDialogflowV2QueryResultParameters
    , GoogleCloudDialogflowV2QueryResultParameters
    , googleCloudDialogflowV2QueryResultParameters
    , gcdvqrpsAddtional

    -- ** GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
    , GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
    , googleCloudDialogflowV2beta1QueryResultDiagnosticInfo
    , gcdvqrdicAddtional

    -- ** GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
    , GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
    , googleCloudDialogflowV2BatchDeleteEntitiesRequest
    , gcdvbderLanguageCode
    , gcdvbderEntityValues

    -- ** GoogleCloudDialogflowV2AgentMatchMode
    , GoogleCloudDialogflowV2AgentMatchMode (..)

    -- ** GoogleCloudDialogflowV2BatchUpdateIntentsResponse
    , GoogleCloudDialogflowV2BatchUpdateIntentsResponse
    , googleCloudDialogflowV2BatchUpdateIntentsResponse
    , gIntents

    -- ** GoogleCloudDialogflowV2ListEntityTypesResponse
    , GoogleCloudDialogflowV2ListEntityTypesResponse
    , googleCloudDialogflowV2ListEntityTypesResponse
    , gcdvletrNextPageToken
    , gcdvletrEntityTypes

    -- ** GoogleCloudDialogflowV2Agent
    , GoogleCloudDialogflowV2Agent
    , googleCloudDialogflowV2Agent
    , gcdvaParent
    , gcdvaDefaultLanguageCode
    , gcdvaEnableLogging
    , gcdvaClassificationThreshold
    , gcdvaAvatarURI
    , gcdvaSupportedLanguageCodes
    , gcdvaDisplayName
    , gcdvaMatchMode
    , gcdvaTimeZone
    , gcdvaDescription

    -- ** GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode
    , GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode (..)

    -- ** GoogleCloudDialogflowV2beta1IntentMessage
    , GoogleCloudDialogflowV2beta1IntentMessage
    , googleCloudDialogflowV2beta1IntentMessage
    , gcdvimCard
    , gcdvimImage
    , gcdvimPlatform
    , gcdvimLinkOutSuggestion
    , gcdvimText
    , gcdvimCarouselSelect
    , gcdvimTelephonySynthesizeSpeech
    , gcdvimSimpleResponses
    , gcdvimPayload
    , gcdvimTelephonyTransferCall
    , gcdvimSuggestions
    , gcdvimListSelect
    , gcdvimTelephonyPlayAudio
    , gcdvimBasicCard
    , gcdvimQuickReplies

    -- ** GoogleCloudDialogflowV2IntentMessageSelectItemInfo
    , GoogleCloudDialogflowV2IntentMessageSelectItemInfo
    , googleCloudDialogflowV2IntentMessageSelectItemInfo
    , gcdvimsiiKey
    , gcdvimsiiSynonyms

    -- ** GoogleCloudDialogflowV2beta1Sentiment
    , GoogleCloudDialogflowV2beta1Sentiment
    , googleCloudDialogflowV2beta1Sentiment
    , gcdvsScore
    , gcdvsMagnitude

    -- ** GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
    , GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
    , googleCloudDialogflowV2BatchDeleteEntityTypesRequest
    , gcdvbdetrEntityTypeNames

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudDialogflowV2QueryInput
    , GoogleCloudDialogflowV2QueryInput
    , googleCloudDialogflowV2QueryInput
    , gcdvqiAudioConfig
    , gcdvqiEvent
    , gcdvqiText

    -- ** GoogleCloudDialogflowV2ExportAgentRequest
    , GoogleCloudDialogflowV2ExportAgentRequest
    , googleCloudDialogflowV2ExportAgentRequest
    , gcdvearAgentURI

    -- ** GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
    , GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
    , googleCloudDialogflowV2beta1IntentMessageCarouselSelect
    , gcdvimcsItems

    -- ** GoogleCloudDialogflowV2beta1Context
    , GoogleCloudDialogflowV2beta1Context
    , googleCloudDialogflowV2beta1Context
    , gcdvcLifespanCount
    , gcdvcName
    , gcdvcParameters

    -- ** GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
    , GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
    , googleCloudDialogflowV2BatchUpdateEntityTypesRequest
    , gcdvbuetrLanguageCode
    , gcdvbuetrUpdateMask
    , gcdvbuetrEntityTypeBatchInline
    , gcdvbuetrEntityTypeBatchURI

    -- ** GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    , GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    , googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    , gcdvimtssText
    , gcdvimtssSsml

    -- ** GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
    , GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
    , googleCloudDialogflowV2beta1IntentMessageListSelectItem
    , gcdvimlsicImage
    , gcdvimlsicTitle
    , gcdvimlsicDescription
    , gcdvimlsicInfo

    -- ** GoogleCloudDialogflowV2IntentMessageSuggestion
    , GoogleCloudDialogflowV2IntentMessageSuggestion
    , googleCloudDialogflowV2IntentMessageSuggestion
    , gcdvimscTitle

    -- ** GoogleCloudDialogflowV2beta1EntityTypeEntity
    , GoogleCloudDialogflowV2beta1EntityTypeEntity
    , googleCloudDialogflowV2beta1EntityTypeEntity
    , gcdveteValue
    , gcdveteSynonyms

    -- ** GoogleCloudDialogflowV2EntityType
    , GoogleCloudDialogflowV2EntityType
    , googleCloudDialogflowV2EntityType
    , gcdvetEntities
    , gcdvetKind
    , gcdvetName
    , gcdvetAutoExpansionMode
    , gcdvetDisplayName

    -- ** GoogleCloudDialogflowV2beta1IntentMessagePlatform
    , GoogleCloudDialogflowV2beta1IntentMessagePlatform (..)

    -- ** GoogleCloudDialogflowV2EntityTypeKind
    , GoogleCloudDialogflowV2EntityTypeKind (..)

    -- ** GoogleCloudDialogflowV2TextInput
    , GoogleCloudDialogflowV2TextInput
    , googleCloudDialogflowV2TextInput
    , gcdvtiLanguageCode
    , gcdvtiText

    -- ** GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
    , GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
    , googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
    , gcdvimbcbouriaURI

    -- ** GoogleCloudDialogflowV2IntentMessageCard
    , GoogleCloudDialogflowV2IntentMessageCard
    , googleCloudDialogflowV2IntentMessageCard
    , gcdvimccButtons
    , gcdvimccImageURI
    , gcdvimccSubtitle
    , gcdvimccTitle

    -- ** GoogleCloudDialogflowV2OriginalDetectIntentRequest
    , GoogleCloudDialogflowV2OriginalDetectIntentRequest
    , googleCloudDialogflowV2OriginalDetectIntentRequest
    , gPayload
    , gVersion
    , gSource

    -- ** GoogleCloudDialogflowV2beta1IntentWebhookState
    , GoogleCloudDialogflowV2beta1IntentWebhookState (..)

    -- ** GoogleCloudDialogflowV2beta1IntentMessageImage
    , GoogleCloudDialogflowV2beta1IntentMessageImage
    , googleCloudDialogflowV2beta1IntentMessageImage
    , gcdvimiAccessibilityText
    , gcdvimiImageURI

    -- ** GoogleCloudDialogflowV2ExportAgentResponse
    , GoogleCloudDialogflowV2ExportAgentResponse
    , googleCloudDialogflowV2ExportAgentResponse
    , gAgentURI
    , gAgentContent

    -- ** GoogleCloudDialogflowV2WebhookResponsePayload
    , GoogleCloudDialogflowV2WebhookResponsePayload
    , googleCloudDialogflowV2WebhookResponsePayload
    , gcdvwrpcAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    , GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    , googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    , gURI
    , gDestinationName

    -- ** GoogleCloudDialogflowV2ListIntentsResponse
    , GoogleCloudDialogflowV2ListIntentsResponse
    , googleCloudDialogflowV2ListIntentsResponse
    , gcdvlirIntents
    , gcdvlirNextPageToken

    -- ** GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
    , GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
    , googleCloudDialogflowV2BatchUpdateEntityTypesResponse
    , gEntityTypes

    -- ** GoogleCloudDialogflowV2QueryResultWebhookPayload
    , GoogleCloudDialogflowV2QueryResultWebhookPayload
    , googleCloudDialogflowV2QueryResultWebhookPayload
    , gcdvqrwpAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentParameter
    , GoogleCloudDialogflowV2beta1IntentParameter
    , googleCloudDialogflowV2beta1IntentParameter
    , gcdvipValue
    , gcdvipName
    , gcdvipPrompts
    , gcdvipMandatory
    , gcdvipDisplayName
    , gcdvipDefaultValue
    , gcdvipIsList
    , gcdvipEntityTypeDisplayName

    -- ** GoogleCloudDialogflowV2EntityTypeAutoExpansionMode
    , GoogleCloudDialogflowV2EntityTypeAutoExpansionMode (..)

    -- ** GoogleCloudDialogflowV2IntentParameter
    , GoogleCloudDialogflowV2IntentParameter
    , googleCloudDialogflowV2IntentParameter
    , gcdvipcValue
    , gcdvipcName
    , gcdvipcPrompts
    , gcdvipcMandatory
    , gcdvipcDisplayName
    , gcdvipcDefaultValue
    , gcdvipcIsList
    , gcdvipcEntityTypeDisplayName

    -- ** GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
    , GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
    , googleCloudDialogflowV2beta1QueryResultWebhookPayload
    , gcdvqrwpcAddtional

    -- ** GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
    , GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
    , googleCloudDialogflowV2beta1IntentTrainingPhrasePart
    , gcdvitppcText
    , gcdvitppcUserDefined
    , gcdvitppcEntityType
    , gcdvitppcAlias

    -- ** GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode
    , GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode (..)

    -- ** GoogleCloudDialogflowV2ListContextsResponse
    , GoogleCloudDialogflowV2ListContextsResponse
    , googleCloudDialogflowV2ListContextsResponse
    , gcdvlcrContexts
    , gcdvlcrNextPageToken

    -- ** GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    , GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    , googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    , gcdvimttcPhoneNumber

    -- ** GoogleCloudDialogflowV2beta1ExportAgentResponse
    , GoogleCloudDialogflowV2beta1ExportAgentResponse
    , googleCloudDialogflowV2beta1ExportAgentResponse
    , gooAgentURI
    , gooAgentContent

    -- ** GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
    , GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
    , googleCloudDialogflowV2OriginalDetectIntentRequestPayload
    , gcdvodirpcAddtional

    -- ** GoogleCloudDialogflowV2SessionEntityType
    , GoogleCloudDialogflowV2SessionEntityType
    , googleCloudDialogflowV2SessionEntityType
    , gcdvSetEntityOverrideMode
    , gcdvSetEntities
    , gcdvSetName

    -- ** GoogleCloudDialogflowV2beta1EntityTypeKind
    , GoogleCloudDialogflowV2beta1EntityTypeKind (..)

    -- ** GoogleCloudDialogflowV2EntityTypeEntity
    , GoogleCloudDialogflowV2EntityTypeEntity
    , googleCloudDialogflowV2EntityTypeEntity
    , gValue
    , gSynonyms

    -- ** GoogleCloudDialogflowV2IntentWebhookState
    , GoogleCloudDialogflowV2IntentWebhookState (..)

    -- ** GoogleCloudDialogflowV2beta1QueryResult
    , GoogleCloudDialogflowV2beta1QueryResult
    , googleCloudDialogflowV2beta1QueryResult
    , gLanguageCode
    , gAllRequiredParamsPresent
    , gIntentDetectionConfidence
    , gFulfillmentMessages
    , gKnowledgeAnswers
    , gSpeechRecognitionConfidence
    , gAction
    , gIntent
    , gSentimentAnalysisResult
    , gQueryText
    , gFulfillmentText
    , gParameters
    , gWebhookPayload
    , gOutputContexts
    , gWebhookSource
    , gDiagnosticInfo

    -- ** GoogleCloudDialogflowV2IntentMessageImage
    , GoogleCloudDialogflowV2IntentMessageImage
    , googleCloudDialogflowV2IntentMessageImage
    , gAccessibilityText
    , gImageURI

    -- ** GoogleCloudDialogflowV2WebhookResponse
    , GoogleCloudDialogflowV2WebhookResponse
    , googleCloudDialogflowV2WebhookResponse
    , gooFulfillmentMessages
    , gooPayload
    , gooFulfillmentText
    , gooSource
    , gooOutputContexts
    , gooFollowupEventInput

    -- ** GoogleCloudDialogflowV2TrainAgentRequest
    , GoogleCloudDialogflowV2TrainAgentRequest
    , googleCloudDialogflowV2TrainAgentRequest

    -- ** GoogleCloudDialogflowV2IntentBatch
    , GoogleCloudDialogflowV2IntentBatch
    , googleCloudDialogflowV2IntentBatch
    , gcdvibIntents

    -- ** GoogleCloudDialogflowV2beta1EntityType
    , GoogleCloudDialogflowV2beta1EntityType
    , googleCloudDialogflowV2beta1EntityType
    , gcdvetcEntities
    , gcdvetcKind
    , gcdvetcName
    , gcdvetcAutoExpansionMode
    , gcdvetcDisplayName

    -- ** GoogleCloudDialogflowV2SearchAgentsResponse
    , GoogleCloudDialogflowV2SearchAgentsResponse
    , googleCloudDialogflowV2SearchAgentsResponse
    , gcdvsarNextPageToken
    , gcdvsarAgents

    -- ** GoogleCloudDialogflowV2ListSessionEntityTypesResponse
    , GoogleCloudDialogflowV2ListSessionEntityTypesResponse
    , googleCloudDialogflowV2ListSessionEntityTypesResponse
    , gcdvlSetrNextPageToken
    , gcdvlSetrSessionEntityTypes

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleCloudDialogflowV2IntentMessage
    , GoogleCloudDialogflowV2IntentMessage
    , googleCloudDialogflowV2IntentMessage
    , gcdvimcCard
    , gcdvimcImage
    , gcdvimcPlatform
    , gcdvimcLinkOutSuggestion
    , gcdvimcText
    , gcdvimcCarouselSelect
    , gcdvimcSimpleResponses
    , gcdvimcPayload
    , gcdvimcSuggestions
    , gcdvimcListSelect
    , gcdvimcBasicCard
    , gcdvimcQuickReplies

    -- ** GoogleCloudDialogflowV2IntentMessageCarouselSelect
    , GoogleCloudDialogflowV2IntentMessageCarouselSelect
    , googleCloudDialogflowV2IntentMessageCarouselSelect
    , gItems

    -- ** GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    , GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    , googleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    , gooKey
    , gooSynonyms

    -- ** GoogleCloudDialogflowV2beta1Intent
    , GoogleCloudDialogflowV2beta1Intent
    , googleCloudDialogflowV2beta1Intent
    , gcdvicDefaultResponsePlatforms
    , gcdvicWebhookState
    , gcdvicMlEnabled
    , gcdvicPriority
    , gcdvicAction
    , gcdvicRootFollowupIntentName
    , gcdvicName
    , gcdvicEvents
    , gcdvicParameters
    , gcdvicDisplayName
    , gcdvicInputContextNames
    , gcdvicEndInteraction
    , gcdvicMessages
    , gcdvicParentFollowupIntentName
    , gcdvicOutputContexts
    , gcdvicTrainingPhrases
    , gcdvicFollowupIntentInfo
    , gcdvicIsFallback
    , gcdvicMlDisabled
    , gcdvicResetContexts

    -- ** GoogleCloudDialogflowV2Context
    , GoogleCloudDialogflowV2Context
    , googleCloudDialogflowV2Context
    , gcdvccLifespanCount
    , gcdvccName
    , gcdvccParameters

    -- ** GoogleCloudDialogflowV2InputAudioConfigAudioEncoding
    , GoogleCloudDialogflowV2InputAudioConfigAudioEncoding (..)

    -- ** GoogleCloudDialogflowV2IntentMessageBasicCardButton
    , GoogleCloudDialogflowV2IntentMessageBasicCardButton
    , googleCloudDialogflowV2IntentMessageBasicCardButton
    , gcdvimbcbcOpenURIAction
    , gcdvimbcbcTitle
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchDelete
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.BatchUpdate
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Create
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Delete
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchCreate
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchDelete
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Entities.BatchUpdate
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Get
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.List
import           Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Patch
import           Network.Google.Resource.DialogFlow.Projects.Agent.Export
import           Network.Google.Resource.DialogFlow.Projects.Agent.Import
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchDelete
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.BatchUpdate
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Create
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Delete
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Get
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.List
import           Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Patch
import           Network.Google.Resource.DialogFlow.Projects.Agent.Restore
import           Network.Google.Resource.DialogFlow.Projects.Agent.Search
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Create
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Delete
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Get
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.List
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.Contexts.Patch
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DeleteContexts
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.DetectIntent
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Create
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Delete
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Get
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.List
import           Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Patch
import           Network.Google.Resource.DialogFlow.Projects.Agent.Train
import           Network.Google.Resource.DialogFlow.Projects.GetAgent
import           Network.Google.Resource.DialogFlow.Projects.Operations.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Dialogflow API service.
type DialogFlowAPI =
     ProjectsAgentIntentsListResource :<|>
       ProjectsAgentIntentsPatchResource
       :<|> ProjectsAgentIntentsGetResource
       :<|> ProjectsAgentIntentsCreateResource
       :<|> ProjectsAgentIntentsBatchUpdateResource
       :<|> ProjectsAgentIntentsBatchDeleteResource
       :<|> ProjectsAgentIntentsDeleteResource
       :<|>
       ProjectsAgentEntityTypesEntitiesBatchUpdateResource
       :<|>
       ProjectsAgentEntityTypesEntitiesBatchDeleteResource
       :<|>
       ProjectsAgentEntityTypesEntitiesBatchCreateResource
       :<|> ProjectsAgentEntityTypesListResource
       :<|> ProjectsAgentEntityTypesPatchResource
       :<|> ProjectsAgentEntityTypesGetResource
       :<|> ProjectsAgentEntityTypesCreateResource
       :<|> ProjectsAgentEntityTypesBatchUpdateResource
       :<|> ProjectsAgentEntityTypesBatchDeleteResource
       :<|> ProjectsAgentEntityTypesDeleteResource
       :<|> ProjectsAgentSessionsContextsListResource
       :<|> ProjectsAgentSessionsContextsPatchResource
       :<|> ProjectsAgentSessionsContextsGetResource
       :<|> ProjectsAgentSessionsContextsCreateResource
       :<|> ProjectsAgentSessionsContextsDeleteResource
       :<|> ProjectsAgentSessionsEntityTypesListResource
       :<|> ProjectsAgentSessionsEntityTypesPatchResource
       :<|> ProjectsAgentSessionsEntityTypesGetResource
       :<|> ProjectsAgentSessionsEntityTypesCreateResource
       :<|> ProjectsAgentSessionsEntityTypesDeleteResource
       :<|> ProjectsAgentSessionsDetectIntentResource
       :<|> ProjectsAgentSessionsDeleteContextsResource
       :<|> ProjectsAgentExportResource
       :<|> ProjectsAgentRestoreResource
       :<|> ProjectsAgentImportResource
       :<|> ProjectsAgentTrainResource
       :<|> ProjectsAgentSearchResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsGetAgentResource
