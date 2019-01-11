{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DialogFlow.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DialogFlow.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Optional. The resource view to apply to the returned intent.
data GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView
    = IntentViewUnspecified
      -- ^ @INTENT_VIEW_UNSPECIFIED@
      -- Training phrases field is not populated in the response.
    | IntentViewFull
      -- ^ @INTENT_VIEW_FULL@
      -- All fields are populated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView

instance FromHttpApiData GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView where
    parseQueryParam = \case
        "INTENT_VIEW_UNSPECIFIED" -> Right IntentViewUnspecified
        "INTENT_VIEW_FULL" -> Right IntentViewFull
        x -> Left ("Unable to parse GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView where
    toQueryParam = \case
        IntentViewUnspecified -> "INTENT_VIEW_UNSPECIFIED"
        IntentViewFull -> "INTENT_VIEW_FULL"

instance FromJSON GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView"

instance ToJSON GoogleCloudDialogflowV2BatchUpdateIntentsRequestIntentView where
    toJSON = toJSONText

-- | Required. The type of the training phrase.
data GoogleCloudDialogflowV2beta1IntentTrainingPhraseType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Not specified. This value should never be used.
    | Example
      -- ^ @EXAMPLE@
      -- Examples do not contain \@-prefixed entity type names, but example parts
      -- can be annotated with entity types.
    | Template
      -- ^ @TEMPLATE@
      -- Templates are not annotated with entity types, but they can contain
      -- \@-prefixed entity type names as substrings.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentTrainingPhraseType

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentTrainingPhraseType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "EXAMPLE" -> Right Example
        "TEMPLATE" -> Right Template
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentTrainingPhraseType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentTrainingPhraseType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Example -> "EXAMPLE"
        Template -> "TEMPLATE"

instance FromJSON GoogleCloudDialogflowV2beta1IntentTrainingPhraseType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentTrainingPhraseType"

instance ToJSON GoogleCloudDialogflowV2beta1IntentTrainingPhraseType where
    toJSON = toJSONText

-- | The system\'s confidence level that this knowledge answer is a good
-- match for this conversational query. NOTE: The confidence level for a
-- given \`\` pair may change without notice, as it depends on models that
-- are constantly being improved. However, it will change less frequently
-- than the confidence score below, and should be preferred for referencing
-- the quality of an answer.
data GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel
    = MatchConfidenceLevelUnspecified
      -- ^ @MATCH_CONFIDENCE_LEVEL_UNSPECIFIED@
      -- Not specified.
    | Low
      -- ^ @LOW@
      -- Indicates that the confidence is low.
    | Medium
      -- ^ @MEDIUM@
      -- Indicates our confidence is medium.
    | High
      -- ^ @HIGH@
      -- Indicates our confidence is high.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel

instance FromHttpApiData GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    parseQueryParam = \case
        "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" -> Right MatchConfidenceLevelUnspecified
        "LOW" -> Right Low
        "MEDIUM" -> Right Medium
        "HIGH" -> Right High
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    toQueryParam = \case
        MatchConfidenceLevelUnspecified -> "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED"
        Low -> "LOW"
        Medium -> "MEDIUM"
        High -> "HIGH"

instance FromJSON GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel"

instance ToJSON GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    toJSON = toJSONText

-- | Required. The current state of this operation.
data GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | Pending
      -- ^ @PENDING@
      -- The operation has been created.
    | Running
      -- ^ @RUNNING@
      -- The operation is currently running.
    | Done
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState

instance FromHttpApiData GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"

instance FromJSON GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState"

instance ToJSON GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState where
    toJSON = toJSONText

-- | Optional. The platform that this message is intended for.
data GoogleCloudDialogflowV2IntentMessagePlatform
    = PlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Not specified.
    | Facebook
      -- ^ @FACEBOOK@
      -- Facebook.
    | Slack
      -- ^ @SLACK@
      -- Slack.
    | Telegram
      -- ^ @TELEGRAM@
      -- Telegram.
    | Kik
      -- ^ @KIK@
      -- Kik.
    | Skype
      -- ^ @SKYPE@
      -- Skype.
    | Line
      -- ^ @LINE@
      -- Line.
    | Viber
      -- ^ @VIBER@
      -- Viber.
    | ActionsOnGoogle
      -- ^ @ACTIONS_ON_GOOGLE@
      -- Actions on Google. When using Actions on Google, you can choose one of
      -- the specific Intent.Message types that mention support for Actions on
      -- Google, or you can use the advanced Intent.Message.payload field. The
      -- payload field provides access to AoG features not available in the
      -- specific message types. If using the Intent.Message.payload field, it
      -- should have a structure similar to the JSON message shown here. For more
      -- information, see [Actions on Google Webhook
      -- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
      --
      -- > {
      -- >   "expectUserResponse": true,
      -- >   "isSsml": false,
      -- >   "noInputPrompts": [],
      -- >   "richResponse": {
      -- >     "items": [
      -- >       {
      -- >         "simpleResponse": {
      -- >           "displayText": "hi",
      -- >           "textToSpeech": "hello"
      -- >         }
      -- >       }
      -- >     ],
      -- >     "suggestions": [
      -- >       {
      -- >         "title": "Say this"
      -- >       },
      -- >       {
      -- >         "title": "or this"
      -- >       }
      -- >     ]
      -- >   },
      -- >   "systemIntent": {
      -- >     "data": {
      -- >       "@type": "type.googleapis.com/google.actions.v2.OptionValueSpec",
      -- >       "listSelect": {
      -- >         "items": [
      -- >           {
      -- >             "optionInfo": {
      -- >               "key": "key1",
      -- >               "synonyms": [
      -- >                 "key one"
      -- >               ]
      -- >             },
      -- >             "title": "must not be empty, but unique"
      -- >           },
      -- >           {
      -- >             "optionInfo": {
      -- >               "key": "key2",
      -- >               "synonyms": [
      -- >                 "key two"
      -- >               ]
      -- >             },
      -- >             "title": "must not be empty, but unique"
      -- >           }
      -- >         ]
      -- >       }
      -- >     },
      -- >     "intent": "actions.intent.OPTION"
      -- >   }
      -- > }
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessagePlatform

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessagePlatform where
    parseQueryParam = \case
        "PLATFORM_UNSPECIFIED" -> Right PlatformUnspecified
        "FACEBOOK" -> Right Facebook
        "SLACK" -> Right Slack
        "TELEGRAM" -> Right Telegram
        "KIK" -> Right Kik
        "SKYPE" -> Right Skype
        "LINE" -> Right Line
        "VIBER" -> Right Viber
        "ACTIONS_ON_GOOGLE" -> Right ActionsOnGoogle
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessagePlatform from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessagePlatform where
    toQueryParam = \case
        PlatformUnspecified -> "PLATFORM_UNSPECIFIED"
        Facebook -> "FACEBOOK"
        Slack -> "SLACK"
        Telegram -> "TELEGRAM"
        Kik -> "KIK"
        Skype -> "SKYPE"
        Line -> "LINE"
        Viber -> "VIBER"
        ActionsOnGoogle -> "ACTIONS_ON_GOOGLE"

instance FromJSON GoogleCloudDialogflowV2IntentMessagePlatform where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessagePlatform"

instance ToJSON GoogleCloudDialogflowV2IntentMessagePlatform where
    toJSON = toJSONText

-- | Required. The type of the training phrase.
data GoogleCloudDialogflowV2IntentTrainingPhraseType
    = GCDVITPTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Not specified. This value should never be used.
    | GCDVITPTExample
      -- ^ @EXAMPLE@
      -- Examples do not contain \@-prefixed entity type names, but example parts
      -- can be annotated with entity types.
    | GCDVITPTTemplate
      -- ^ @TEMPLATE@
      -- Templates are not annotated with entity types, but they can contain
      -- \@-prefixed entity type names as substrings.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentTrainingPhraseType

instance FromHttpApiData GoogleCloudDialogflowV2IntentTrainingPhraseType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right GCDVITPTTypeUnspecified
        "EXAMPLE" -> Right GCDVITPTExample
        "TEMPLATE" -> Right GCDVITPTTemplate
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentTrainingPhraseType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentTrainingPhraseType where
    toQueryParam = \case
        GCDVITPTTypeUnspecified -> "TYPE_UNSPECIFIED"
        GCDVITPTExample -> "EXAMPLE"
        GCDVITPTTemplate -> "TEMPLATE"

instance FromJSON GoogleCloudDialogflowV2IntentTrainingPhraseType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentTrainingPhraseType"

instance ToJSON GoogleCloudDialogflowV2IntentTrainingPhraseType where
    toJSON = toJSONText

-- | Optional. Determines how intents are detected from user queries.
data GoogleCloudDialogflowV2AgentMatchMode
    = MatchModeUnspecified
      -- ^ @MATCH_MODE_UNSPECIFIED@
      -- Not specified.
    | MatchModeHybrid
      -- ^ @MATCH_MODE_HYBRID@
      -- Best for agents with a small number of examples in intents and\/or wide
      -- use of templates syntax and composite entities.
    | MatchModeMlOnly
      -- ^ @MATCH_MODE_ML_ONLY@
      -- Can be used for agents with a large number of examples in intents,
      -- especially the ones using \@sys.any or very large developer entities.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2AgentMatchMode

instance FromHttpApiData GoogleCloudDialogflowV2AgentMatchMode where
    parseQueryParam = \case
        "MATCH_MODE_UNSPECIFIED" -> Right MatchModeUnspecified
        "MATCH_MODE_HYBRID" -> Right MatchModeHybrid
        "MATCH_MODE_ML_ONLY" -> Right MatchModeMlOnly
        x -> Left ("Unable to parse GoogleCloudDialogflowV2AgentMatchMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2AgentMatchMode where
    toQueryParam = \case
        MatchModeUnspecified -> "MATCH_MODE_UNSPECIFIED"
        MatchModeHybrid -> "MATCH_MODE_HYBRID"
        MatchModeMlOnly -> "MATCH_MODE_ML_ONLY"

instance FromJSON GoogleCloudDialogflowV2AgentMatchMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2AgentMatchMode"

instance ToJSON GoogleCloudDialogflowV2AgentMatchMode where
    toJSON = toJSONText

-- | Required. Indicates whether the additional data should override or
-- supplement the developer entity type definition.
data GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode
    = EntityOverrideModeUnspecified
      -- ^ @ENTITY_OVERRIDE_MODE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | EntityOverrideModeOverride
      -- ^ @ENTITY_OVERRIDE_MODE_OVERRIDE@
      -- The collection of session entities overrides the collection of entities
      -- in the corresponding developer entity type.
    | EntityOverrideModeSupplement
      -- ^ @ENTITY_OVERRIDE_MODE_SUPPLEMENT@
      -- The collection of session entities extends the collection of entities in
      -- the corresponding developer entity type. Note: Even in this override
      -- mode calls to \`ListSessionEntityTypes\`, \`GetSessionEntityType\`,
      -- \`CreateSessionEntityType\` and \`UpdateSessionEntityType\` only return
      -- the additional entities added in this session entity type. If you want
      -- to get the supplemented list, please call EntityTypes.GetEntityType on
      -- the developer entity type and merge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode

instance FromHttpApiData GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    parseQueryParam = \case
        "ENTITY_OVERRIDE_MODE_UNSPECIFIED" -> Right EntityOverrideModeUnspecified
        "ENTITY_OVERRIDE_MODE_OVERRIDE" -> Right EntityOverrideModeOverride
        "ENTITY_OVERRIDE_MODE_SUPPLEMENT" -> Right EntityOverrideModeSupplement
        x -> Left ("Unable to parse GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    toQueryParam = \case
        EntityOverrideModeUnspecified -> "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
        EntityOverrideModeOverride -> "ENTITY_OVERRIDE_MODE_OVERRIDE"
        EntityOverrideModeSupplement -> "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

instance FromJSON GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode"

instance ToJSON GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
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

-- | Optional. The platform that this message is intended for.
data GoogleCloudDialogflowV2beta1IntentMessagePlatform
    = GCDVIMPPlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Not specified.
    | GCDVIMPFacebook
      -- ^ @FACEBOOK@
      -- Facebook.
    | GCDVIMPSlack
      -- ^ @SLACK@
      -- Slack.
    | GCDVIMPTelegram
      -- ^ @TELEGRAM@
      -- Telegram.
    | GCDVIMPKik
      -- ^ @KIK@
      -- Kik.
    | GCDVIMPSkype
      -- ^ @SKYPE@
      -- Skype.
    | GCDVIMPLine
      -- ^ @LINE@
      -- Line.
    | GCDVIMPViber
      -- ^ @VIBER@
      -- Viber.
    | GCDVIMPActionsOnGoogle
      -- ^ @ACTIONS_ON_GOOGLE@
      -- Actions on Google. When using Actions on Google, you can choose one of
      -- the specific Intent.Message types that mention support for Actions on
      -- Google, or you can use the advanced Intent.Message.payload field. The
      -- payload field provides access to AoG features not available in the
      -- specific message types. If using the Intent.Message.payload field, it
      -- should have a structure similar to the JSON message shown here. For more
      -- information, see [Actions on Google Webhook
      -- Format](https:\/\/developers.google.com\/actions\/dialogflow\/webhook)
      --
      -- > {
      -- >   "expectUserResponse": true,
      -- >   "isSsml": false,
      -- >   "noInputPrompts": [],
      -- >   "richResponse": {
      -- >     "items": [
      -- >       {
      -- >         "simpleResponse": {
      -- >           "displayText": "hi",
      -- >           "textToSpeech": "hello"
      -- >         }
      -- >       }
      -- >     ],
      -- >     "suggestions": [
      -- >       {
      -- >         "title": "Say this"
      -- >       },
      -- >       {
      -- >         "title": "or this"
      -- >       }
      -- >     ]
      -- >   },
      -- >   "systemIntent": {
      -- >     "data": {
      -- >       "@type": "type.googleapis.com/google.actions.v2.OptionValueSpec",
      -- >       "listSelect": {
      -- >         "items": [
      -- >           {
      -- >             "optionInfo": {
      -- >               "key": "key1",
      -- >               "synonyms": [
      -- >                 "key one"
      -- >               ]
      -- >             },
      -- >             "title": "must not be empty, but unique"
      -- >           },
      -- >           {
      -- >             "optionInfo": {
      -- >               "key": "key2",
      -- >               "synonyms": [
      -- >                 "key two"
      -- >               ]
      -- >             },
      -- >             "title": "must not be empty, but unique"
      -- >           }
      -- >         ]
      -- >       }
      -- >     },
      -- >     "intent": "actions.intent.OPTION"
      -- >   }
      -- > }
    | GCDVIMPTelephony
      -- ^ @TELEPHONY@
      -- Telephony Gateway.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessagePlatform

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    parseQueryParam = \case
        "PLATFORM_UNSPECIFIED" -> Right GCDVIMPPlatformUnspecified
        "FACEBOOK" -> Right GCDVIMPFacebook
        "SLACK" -> Right GCDVIMPSlack
        "TELEGRAM" -> Right GCDVIMPTelegram
        "KIK" -> Right GCDVIMPKik
        "SKYPE" -> Right GCDVIMPSkype
        "LINE" -> Right GCDVIMPLine
        "VIBER" -> Right GCDVIMPViber
        "ACTIONS_ON_GOOGLE" -> Right GCDVIMPActionsOnGoogle
        "TELEPHONY" -> Right GCDVIMPTelephony
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessagePlatform from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    toQueryParam = \case
        GCDVIMPPlatformUnspecified -> "PLATFORM_UNSPECIFIED"
        GCDVIMPFacebook -> "FACEBOOK"
        GCDVIMPSlack -> "SLACK"
        GCDVIMPTelegram -> "TELEGRAM"
        GCDVIMPKik -> "KIK"
        GCDVIMPSkype -> "SKYPE"
        GCDVIMPLine -> "LINE"
        GCDVIMPViber -> "VIBER"
        GCDVIMPActionsOnGoogle -> "ACTIONS_ON_GOOGLE"
        GCDVIMPTelephony -> "TELEPHONY"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessagePlatform"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    toJSON = toJSONText

-- | Required. Indicates the kind of entity type.
data GoogleCloudDialogflowV2EntityTypeKind
    = KindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | KindMap
      -- ^ @KIND_MAP@
      -- Map entity types allow mapping of a group of synonyms to a canonical
      -- value.
    | KindList
      -- ^ @KIND_LIST@
      -- List entity types contain a set of entries that do not map to canonical
      -- values. However, list entity types can contain references to other
      -- entity types (with or without aliases).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2EntityTypeKind

instance FromHttpApiData GoogleCloudDialogflowV2EntityTypeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right KindUnspecified
        "KIND_MAP" -> Right KindMap
        "KIND_LIST" -> Right KindList
        x -> Left ("Unable to parse GoogleCloudDialogflowV2EntityTypeKind from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2EntityTypeKind where
    toQueryParam = \case
        KindUnspecified -> "KIND_UNSPECIFIED"
        KindMap -> "KIND_MAP"
        KindList -> "KIND_LIST"

instance FromJSON GoogleCloudDialogflowV2EntityTypeKind where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2EntityTypeKind"

instance ToJSON GoogleCloudDialogflowV2EntityTypeKind where
    toJSON = toJSONText

-- | Optional. Indicates whether webhooks are enabled for the intent.
data GoogleCloudDialogflowV2beta1IntentWebhookState
    = WebhookStateUnspecified
      -- ^ @WEBHOOK_STATE_UNSPECIFIED@
      -- Webhook is disabled in the agent and in the intent.
    | WebhookStateEnabled
      -- ^ @WEBHOOK_STATE_ENABLED@
      -- Webhook is enabled in the agent and in the intent.
    | WebhookStateEnabledForSlotFilling
      -- ^ @WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING@
      -- Webhook is enabled in the agent and in the intent. Also, each slot
      -- filling prompt is forwarded to the webhook.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentWebhookState

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentWebhookState where
    parseQueryParam = \case
        "WEBHOOK_STATE_UNSPECIFIED" -> Right WebhookStateUnspecified
        "WEBHOOK_STATE_ENABLED" -> Right WebhookStateEnabled
        "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" -> Right WebhookStateEnabledForSlotFilling
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentWebhookState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentWebhookState where
    toQueryParam = \case
        WebhookStateUnspecified -> "WEBHOOK_STATE_UNSPECIFIED"
        WebhookStateEnabled -> "WEBHOOK_STATE_ENABLED"
        WebhookStateEnabledForSlotFilling -> "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"

instance FromJSON GoogleCloudDialogflowV2beta1IntentWebhookState where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentWebhookState"

instance ToJSON GoogleCloudDialogflowV2beta1IntentWebhookState where
    toJSON = toJSONText

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
data GoogleCloudDialogflowV2EntityTypeAutoExpansionMode
    = AutoExpansionModeUnspecified
      -- ^ @AUTO_EXPANSION_MODE_UNSPECIFIED@
      -- Auto expansion disabled for the entity.
    | AutoExpansionModeDefault
      -- ^ @AUTO_EXPANSION_MODE_DEFAULT@
      -- Allows an agent to recognize values that have not been explicitly listed
      -- in the entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2EntityTypeAutoExpansionMode

instance FromHttpApiData GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    parseQueryParam = \case
        "AUTO_EXPANSION_MODE_UNSPECIFIED" -> Right AutoExpansionModeUnspecified
        "AUTO_EXPANSION_MODE_DEFAULT" -> Right AutoExpansionModeDefault
        x -> Left ("Unable to parse GoogleCloudDialogflowV2EntityTypeAutoExpansionMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    toQueryParam = \case
        AutoExpansionModeUnspecified -> "AUTO_EXPANSION_MODE_UNSPECIFIED"
        AutoExpansionModeDefault -> "AUTO_EXPANSION_MODE_DEFAULT"

instance FromJSON GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2EntityTypeAutoExpansionMode"

instance ToJSON GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    toJSON = toJSONText

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
data GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode
    = GCDVETAEMAutoExpansionModeUnspecified
      -- ^ @AUTO_EXPANSION_MODE_UNSPECIFIED@
      -- Auto expansion disabled for the entity.
    | GCDVETAEMAutoExpansionModeDefault
      -- ^ @AUTO_EXPANSION_MODE_DEFAULT@
      -- Allows an agent to recognize values that have not been explicitly listed
      -- in the entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode

instance FromHttpApiData GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    parseQueryParam = \case
        "AUTO_EXPANSION_MODE_UNSPECIFIED" -> Right GCDVETAEMAutoExpansionModeUnspecified
        "AUTO_EXPANSION_MODE_DEFAULT" -> Right GCDVETAEMAutoExpansionModeDefault
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    toQueryParam = \case
        GCDVETAEMAutoExpansionModeUnspecified -> "AUTO_EXPANSION_MODE_UNSPECIFIED"
        GCDVETAEMAutoExpansionModeDefault -> "AUTO_EXPANSION_MODE_DEFAULT"

instance FromJSON GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode"

instance ToJSON GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    toJSON = toJSONText

-- | Required. Indicates the kind of entity type.
data GoogleCloudDialogflowV2beta1EntityTypeKind
    = GCDVETKKindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GCDVETKKindMap
      -- ^ @KIND_MAP@
      -- Map entity types allow mapping of a group of synonyms to a canonical
      -- value.
    | GCDVETKKindList
      -- ^ @KIND_LIST@
      -- List entity types contain a set of entries that do not map to canonical
      -- values. However, list entity types can contain references to other
      -- entity types (with or without aliases).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1EntityTypeKind

instance FromHttpApiData GoogleCloudDialogflowV2beta1EntityTypeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right GCDVETKKindUnspecified
        "KIND_MAP" -> Right GCDVETKKindMap
        "KIND_LIST" -> Right GCDVETKKindList
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1EntityTypeKind from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1EntityTypeKind where
    toQueryParam = \case
        GCDVETKKindUnspecified -> "KIND_UNSPECIFIED"
        GCDVETKKindMap -> "KIND_MAP"
        GCDVETKKindList -> "KIND_LIST"

instance FromJSON GoogleCloudDialogflowV2beta1EntityTypeKind where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1EntityTypeKind"

instance ToJSON GoogleCloudDialogflowV2beta1EntityTypeKind where
    toJSON = toJSONText

-- | Optional. Indicates whether webhooks are enabled for the intent.
data GoogleCloudDialogflowV2IntentWebhookState
    = GCDVIWSWebhookStateUnspecified
      -- ^ @WEBHOOK_STATE_UNSPECIFIED@
      -- Webhook is disabled in the agent and in the intent.
    | GCDVIWSWebhookStateEnabled
      -- ^ @WEBHOOK_STATE_ENABLED@
      -- Webhook is enabled in the agent and in the intent.
    | GCDVIWSWebhookStateEnabledForSlotFilling
      -- ^ @WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING@
      -- Webhook is enabled in the agent and in the intent. Also, each slot
      -- filling prompt is forwarded to the webhook.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentWebhookState

instance FromHttpApiData GoogleCloudDialogflowV2IntentWebhookState where
    parseQueryParam = \case
        "WEBHOOK_STATE_UNSPECIFIED" -> Right GCDVIWSWebhookStateUnspecified
        "WEBHOOK_STATE_ENABLED" -> Right GCDVIWSWebhookStateEnabled
        "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING" -> Right GCDVIWSWebhookStateEnabledForSlotFilling
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentWebhookState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentWebhookState where
    toQueryParam = \case
        GCDVIWSWebhookStateUnspecified -> "WEBHOOK_STATE_UNSPECIFIED"
        GCDVIWSWebhookStateEnabled -> "WEBHOOK_STATE_ENABLED"
        GCDVIWSWebhookStateEnabledForSlotFilling -> "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"

instance FromJSON GoogleCloudDialogflowV2IntentWebhookState where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentWebhookState"

instance ToJSON GoogleCloudDialogflowV2IntentWebhookState where
    toJSON = toJSONText

-- | Required. Audio encoding of the audio content to process.
data GoogleCloudDialogflowV2InputAudioConfigAudioEncoding
    = AudioEncodingUnspecified
      -- ^ @AUDIO_ENCODING_UNSPECIFIED@
      -- Not specified.
    | AudioEncodingLinear16
      -- ^ @AUDIO_ENCODING_LINEAR_16@
      -- Uncompressed 16-bit signed little-endian samples (Linear PCM).
    | AudioEncodingFlac
      -- ^ @AUDIO_ENCODING_FLAC@
      -- [\`FLAC\`](https:\/\/xiph.org\/flac\/documentation.html) (Free Lossless
      -- Audio Codec) is the recommended encoding because it is lossless
      -- (therefore recognition is not compromised) and requires only about half
      -- the bandwidth of \`LINEAR16\`. \`FLAC\` stream encoding supports 16-bit
      -- and 24-bit samples, however, not all fields in \`STREAMINFO\` are
      -- supported.
    | AudioEncodingMulaw
      -- ^ @AUDIO_ENCODING_MULAW@
      -- 8-bit samples that compand 14-bit audio samples using G.711
      -- PCMU\/mu-law.
    | AudioEncodingAmr
      -- ^ @AUDIO_ENCODING_AMR@
      -- Adaptive Multi-Rate Narrowband codec. \`sample_rate_hertz\` must be
      -- 8000.
    | AudioEncodingAmrWb
      -- ^ @AUDIO_ENCODING_AMR_WB@
      -- Adaptive Multi-Rate Wideband codec. \`sample_rate_hertz\` must be 16000.
    | AudioEncodingOggOpus
      -- ^ @AUDIO_ENCODING_OGG_OPUS@
      -- Opus encoded audio frames in Ogg container
      -- ([OggOpus](https:\/\/wiki.xiph.org\/OggOpus)). \`sample_rate_hertz\`
      -- must be 16000.
    | AudioEncodingSpeexWithHeaderByte
      -- ^ @AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE@
      -- Although the use of lossy encodings is not recommended, if a very low
      -- bitrate encoding is required, \`OGG_OPUS\` is highly preferred over
      -- Speex encoding. The [Speex](https:\/\/speex.org\/) encoding supported by
      -- Dialogflow API has a header byte in each block, as in MIME type
      -- \`audio\/x-speex-with-header-byte\`. It is a variant of the RTP Speex
      -- encoding defined in [RFC 5574](https:\/\/tools.ietf.org\/html\/rfc5574).
      -- The stream is a sequence of blocks, one block per RTP packet. Each block
      -- starts with a byte containing the length of the block, in bytes,
      -- followed by one or more frames of Speex data, padded to an integral
      -- number of bytes (octets) as specified in RFC 5574. In other words, each
      -- RTP header is replaced with a single byte containing the block length.
      -- Only Speex wideband is supported. \`sample_rate_hertz\` must be 16000.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2InputAudioConfigAudioEncoding

instance FromHttpApiData GoogleCloudDialogflowV2InputAudioConfigAudioEncoding where
    parseQueryParam = \case
        "AUDIO_ENCODING_UNSPECIFIED" -> Right AudioEncodingUnspecified
        "AUDIO_ENCODING_LINEAR_16" -> Right AudioEncodingLinear16
        "AUDIO_ENCODING_FLAC" -> Right AudioEncodingFlac
        "AUDIO_ENCODING_MULAW" -> Right AudioEncodingMulaw
        "AUDIO_ENCODING_AMR" -> Right AudioEncodingAmr
        "AUDIO_ENCODING_AMR_WB" -> Right AudioEncodingAmrWb
        "AUDIO_ENCODING_OGG_OPUS" -> Right AudioEncodingOggOpus
        "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" -> Right AudioEncodingSpeexWithHeaderByte
        x -> Left ("Unable to parse GoogleCloudDialogflowV2InputAudioConfigAudioEncoding from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2InputAudioConfigAudioEncoding where
    toQueryParam = \case
        AudioEncodingUnspecified -> "AUDIO_ENCODING_UNSPECIFIED"
        AudioEncodingLinear16 -> "AUDIO_ENCODING_LINEAR_16"
        AudioEncodingFlac -> "AUDIO_ENCODING_FLAC"
        AudioEncodingMulaw -> "AUDIO_ENCODING_MULAW"
        AudioEncodingAmr -> "AUDIO_ENCODING_AMR"
        AudioEncodingAmrWb -> "AUDIO_ENCODING_AMR_WB"
        AudioEncodingOggOpus -> "AUDIO_ENCODING_OGG_OPUS"
        AudioEncodingSpeexWithHeaderByte -> "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"

instance FromJSON GoogleCloudDialogflowV2InputAudioConfigAudioEncoding where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2InputAudioConfigAudioEncoding"

instance ToJSON GoogleCloudDialogflowV2InputAudioConfigAudioEncoding where
    toJSON = toJSONText
