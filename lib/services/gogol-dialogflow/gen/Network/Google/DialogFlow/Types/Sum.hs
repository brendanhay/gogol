{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DialogFlow.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DialogFlow.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Type of this Match.
data GoogleCloudDialogflowCxV3MatchMatchType
    = MatchTypeUnspecified
      -- ^ @MATCH_TYPE_UNSPECIFIED@
      -- Not specified. Should never be used.
    | Intent
      -- ^ @INTENT@
      -- The query was matched to an intent.
    | DirectIntent
      -- ^ @DIRECT_INTENT@
      -- The query directly triggered an intent.
    | ParameterFilling
      -- ^ @PARAMETER_FILLING@
      -- The query was used for parameter filling.
    | NoMatch
      -- ^ @NO_MATCH@
      -- No match was found for the query.
    | NoInput
      -- ^ @NO_INPUT@
      -- Indicates an empty query.
    | Event
      -- ^ @EVENT@
      -- The query directly triggered an event.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3MatchMatchType

instance FromHttpApiData GoogleCloudDialogflowCxV3MatchMatchType where
    parseQueryParam = \case
        "MATCH_TYPE_UNSPECIFIED" -> Right MatchTypeUnspecified
        "INTENT" -> Right Intent
        "DIRECT_INTENT" -> Right DirectIntent
        "PARAMETER_FILLING" -> Right ParameterFilling
        "NO_MATCH" -> Right NoMatch
        "NO_INPUT" -> Right NoInput
        "EVENT" -> Right Event
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3MatchMatchType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3MatchMatchType where
    toQueryParam = \case
        MatchTypeUnspecified -> "MATCH_TYPE_UNSPECIFIED"
        Intent -> "INTENT"
        DirectIntent -> "DIRECT_INTENT"
        ParameterFilling -> "PARAMETER_FILLING"
        NoMatch -> "NO_MATCH"
        NoInput -> "NO_INPUT"
        Event -> "EVENT"

instance FromJSON GoogleCloudDialogflowCxV3MatchMatchType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3MatchMatchType"

instance ToJSON GoogleCloudDialogflowCxV3MatchMatchType where
    toJSON = toJSONText

-- | Specifies whether response should include all fields or just the
-- metadata.
data ProjectsLocationsAgentsTestCasesListView
    = TestCaseViewUnspecified
      -- ^ @TEST_CASE_VIEW_UNSPECIFIED@
      -- The default \/ unset value. The API will default to the BASIC view.
    | Basic
      -- ^ @BASIC@
      -- Include basic metadata about the test case, but not the conversation
      -- turns. This is the default value.
    | Full
      -- ^ @FULL@
      -- Include everything.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsAgentsTestCasesListView

instance FromHttpApiData ProjectsLocationsAgentsTestCasesListView where
    parseQueryParam = \case
        "TEST_CASE_VIEW_UNSPECIFIED" -> Right TestCaseViewUnspecified
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse ProjectsLocationsAgentsTestCasesListView from: " <> x)

instance ToHttpApiData ProjectsLocationsAgentsTestCasesListView where
    toQueryParam = \case
        TestCaseViewUnspecified -> "TEST_CASE_VIEW_UNSPECIFIED"
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON ProjectsLocationsAgentsTestCasesListView where
    parseJSON = parseJSONText "ProjectsLocationsAgentsTestCasesListView"

instance ToJSON ProjectsLocationsAgentsTestCasesListView where
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
      -- \@-prefixed entity type names as substrings. Template mode has been
      -- deprecated. Example mode is the only supported way to create new
      -- training phrases. If you have existing training phrases that you\'ve
      -- created in template mode, those will continue to work.
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

-- | Required. Orientation of the card.
data GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation
    = CardOrientationUnspecified
      -- ^ @CARD_ORIENTATION_UNSPECIFIED@
      -- Not specified.
    | Horizontal
      -- ^ @HORIZONTAL@
      -- Horizontal layout.
    | Vertical
      -- ^ @VERTICAL@
      -- Vertical layout.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation where
    parseQueryParam = \case
        "CARD_ORIENTATION_UNSPECIFIED" -> Right CardOrientationUnspecified
        "HORIZONTAL" -> Right Horizontal
        "VERTICAL" -> Right Vertical
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation where
    toQueryParam = \case
        CardOrientationUnspecified -> "CARD_ORIENTATION_UNSPECIFIED"
        Horizontal -> "HORIZONTAL"
        Vertical -> "VERTICAL"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation where
    toJSON = toJSONText

-- | The result of this continuous test run, i.e. whether all the tests in
-- this continuous test run pass or not.
data GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult
    = AggregatedTestResultUnspecified
      -- ^ @AGGREGATED_TEST_RESULT_UNSPECIFIED@
      -- Not specified. Should never be used.
    | Passed
      -- ^ @PASSED@
      -- All the tests passed.
    | Failed
      -- ^ @FAILED@
      -- At least one test did not pass.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult where
    parseQueryParam = \case
        "AGGREGATED_TEST_RESULT_UNSPECIFIED" -> Right AggregatedTestResultUnspecified
        "PASSED" -> Right Passed
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult where
    toQueryParam = \case
        AggregatedTestResultUnspecified -> "AGGREGATED_TEST_RESULT_UNSPECIFIED"
        Passed -> "PASSED"
        Failed -> "FAILED"

instance FromJSON GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult"

instance ToJSON GoogleCloudDialogflowCxV3beta1ContinuousTestResultResult where
    toJSON = toJSONText

-- | Required for cards with vertical orientation. The height of the media
-- within a rich card with a vertical layout. For a standalone card with
-- horizontal layout, height is not customizable, and this field is
-- ignored.
data GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight
    = HeightUnspecified
      -- ^ @HEIGHT_UNSPECIFIED@
      -- Not specified.
    | Short
      -- ^ @SHORT@
      -- 112 DP.
    | Medium
      -- ^ @MEDIUM@
      -- 168 DP.
    | Tall
      -- ^ @TALL@
      -- 264 DP. Not available for rich card carousels when the card width is set
      -- to small.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight where
    parseQueryParam = \case
        "HEIGHT_UNSPECIFIED" -> Right HeightUnspecified
        "SHORT" -> Right Short
        "MEDIUM" -> Right Medium
        "TALL" -> Right Tall
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight where
    toQueryParam = \case
        HeightUnspecified -> "HEIGHT_UNSPECIFIED"
        Short -> "SHORT"
        Medium -> "MEDIUM"
        Tall -> "TALL"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight where
    toJSON = toJSONText

-- | Optional. Defines text alignment for all cells in this column.
data GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment
    = HorizontalAlignmentUnspecified
      -- ^ @HORIZONTAL_ALIGNMENT_UNSPECIFIED@
      -- Text is aligned to the leading edge of the column.
    | Leading
      -- ^ @LEADING@
      -- Text is aligned to the leading edge of the column.
    | Center
      -- ^ @CENTER@
      -- Text is centered in the column.
    | Trailing
      -- ^ @TRAILING@
      -- Text is aligned to the trailing edge of the column.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGNMENT_UNSPECIFIED" -> Right HorizontalAlignmentUnspecified
        "LEADING" -> Right Leading
        "CENTER" -> Right Center
        "TRAILING" -> Right Trailing
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment where
    toQueryParam = \case
        HorizontalAlignmentUnspecified -> "HORIZONTAL_ALIGNMENT_UNSPECIFIED"
        Leading -> "LEADING"
        Center -> "CENTER"
        Trailing -> "TRAILING"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment where
    toJSON = toJSONText

-- | Required. Indicates the kind of entity type.
data GoogleCloudDialogflowCxV3EntityTypeKind
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
    | KindRegexp
      -- ^ @KIND_REGEXP@
      -- Regexp entity types allow to specify regular expressions in entries
      -- values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3EntityTypeKind

instance FromHttpApiData GoogleCloudDialogflowCxV3EntityTypeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right KindUnspecified
        "KIND_MAP" -> Right KindMap
        "KIND_LIST" -> Right KindList
        "KIND_REGEXP" -> Right KindRegexp
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3EntityTypeKind from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3EntityTypeKind where
    toQueryParam = \case
        KindUnspecified -> "KIND_UNSPECIFIED"
        KindMap -> "KIND_MAP"
        KindList -> "KIND_LIST"
        KindRegexp -> "KIND_REGEXP"

instance FromJSON GoogleCloudDialogflowCxV3EntityTypeKind where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3EntityTypeKind"

instance ToJSON GoogleCloudDialogflowCxV3EntityTypeKind where
    toJSON = toJSONText

-- | Indicates NLU model training mode.
data GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode
    = ModelTrainingModeUnspecified
      -- ^ @MODEL_TRAINING_MODE_UNSPECIFIED@
      -- Not specified. \`MODEL_TRAINING_MODE_AUTOMATIC\` will be used.
    | ModelTrainingModeAutomatic
      -- ^ @MODEL_TRAINING_MODE_AUTOMATIC@
      -- NLU model training is automatically triggered when a flow gets modified.
      -- User can also manually trigger model training in this mode.
    | ModelTrainingModeManual
      -- ^ @MODEL_TRAINING_MODE_MANUAL@
      -- User needs to manually trigger NLU model training. Best for large flows
      -- whose models take long time to train.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode

instance FromHttpApiData GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode where
    parseQueryParam = \case
        "MODEL_TRAINING_MODE_UNSPECIFIED" -> Right ModelTrainingModeUnspecified
        "MODEL_TRAINING_MODE_AUTOMATIC" -> Right ModelTrainingModeAutomatic
        "MODEL_TRAINING_MODE_MANUAL" -> Right ModelTrainingModeManual
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode where
    toQueryParam = \case
        ModelTrainingModeUnspecified -> "MODEL_TRAINING_MODE_UNSPECIFIED"
        ModelTrainingModeAutomatic -> "MODEL_TRAINING_MODE_AUTOMATIC"
        ModelTrainingModeManual -> "MODEL_TRAINING_MODE_MANUAL"

instance FromJSON GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode"

instance ToJSON GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode where
    toJSON = toJSONText

-- | Indicates whether the entity type can be automatically expanded.
data GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode
    = AutoExpansionModeUnspecified
      -- ^ @AUTO_EXPANSION_MODE_UNSPECIFIED@
      -- Auto expansion disabled for the entity.
    | AutoExpansionModeDefault
      -- ^ @AUTO_EXPANSION_MODE_DEFAULT@
      -- Allows an agent to recognize values that have not been explicitly listed
      -- in the entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode

instance FromHttpApiData GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode where
    parseQueryParam = \case
        "AUTO_EXPANSION_MODE_UNSPECIFIED" -> Right AutoExpansionModeUnspecified
        "AUTO_EXPANSION_MODE_DEFAULT" -> Right AutoExpansionModeDefault
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode where
    toQueryParam = \case
        AutoExpansionModeUnspecified -> "AUTO_EXPANSION_MODE_UNSPECIFIED"
        AutoExpansionModeDefault -> "AUTO_EXPANSION_MODE_DEFAULT"

instance FromJSON GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode"

instance ToJSON GoogleCloudDialogflowCxV3EntityTypeAutoExpansionMode where
    toJSON = toJSONText

-- | Required if orientation is horizontal. Image preview alignment for
-- standalone cards with horizontal layout.
data GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment
    = ThumbnailImageAlignmentUnspecified
      -- ^ @THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED@
      -- Not specified.
    | Left'
      -- ^ @LEFT@
      -- Thumbnail preview is left-aligned.
    | Right'
      -- ^ @RIGHT@
      -- Thumbnail preview is right-aligned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment where
    parseQueryParam = \case
        "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED" -> Right ThumbnailImageAlignmentUnspecified
        "LEFT" -> Right Left'
        "RIGHT" -> Right Right'
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment where
    toQueryParam = \case
        ThumbnailImageAlignmentUnspecified -> "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED"
        Left' -> "LEFT"
        Right' -> "RIGHT"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment where
    toJSON = toJSONText

-- | Required. Audio encoding of the synthesized audio content.
data GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding
    = OutputAudioEncodingUnspecified
      -- ^ @OUTPUT_AUDIO_ENCODING_UNSPECIFIED@
      -- Not specified.
    | OutputAudioEncodingLinear16
      -- ^ @OUTPUT_AUDIO_ENCODING_LINEAR_16@
      -- Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio
      -- content returned as LINEAR16 also contains a WAV header.
    | OutputAudioEncodingMP3
      -- ^ @OUTPUT_AUDIO_ENCODING_MP3@
      -- MP3 audio at 32kbps.
    | OutputAudioEncodingMP364Kbps
      -- ^ @OUTPUT_AUDIO_ENCODING_MP3_64_KBPS@
      -- MP3 audio at 64kbps.
    | OutputAudioEncodingOggOpus
      -- ^ @OUTPUT_AUDIO_ENCODING_OGG_OPUS@
      -- Opus encoded audio wrapped in an ogg container. The result will be a
      -- file which can be played natively on Android, and in browsers (at least
      -- Chrome and Firefox). The quality of the encoding is considerably higher
      -- than MP3 while using approximately the same bitrate.
    | OutputAudioEncodingMulaw
      -- ^ @OUTPUT_AUDIO_ENCODING_MULAW@
      -- 8-bit samples that compand 14-bit audio samples using G.711
      -- PCMU\/mu-law.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding

instance FromHttpApiData GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding where
    parseQueryParam = \case
        "OUTPUT_AUDIO_ENCODING_UNSPECIFIED" -> Right OutputAudioEncodingUnspecified
        "OUTPUT_AUDIO_ENCODING_LINEAR_16" -> Right OutputAudioEncodingLinear16
        "OUTPUT_AUDIO_ENCODING_MP3" -> Right OutputAudioEncodingMP3
        "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS" -> Right OutputAudioEncodingMP364Kbps
        "OUTPUT_AUDIO_ENCODING_OGG_OPUS" -> Right OutputAudioEncodingOggOpus
        "OUTPUT_AUDIO_ENCODING_MULAW" -> Right OutputAudioEncodingMulaw
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding where
    toQueryParam = \case
        OutputAudioEncodingUnspecified -> "OUTPUT_AUDIO_ENCODING_UNSPECIFIED"
        OutputAudioEncodingLinear16 -> "OUTPUT_AUDIO_ENCODING_LINEAR_16"
        OutputAudioEncodingMP3 -> "OUTPUT_AUDIO_ENCODING_MP3"
        OutputAudioEncodingMP364Kbps -> "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"
        OutputAudioEncodingOggOpus -> "OUTPUT_AUDIO_ENCODING_OGG_OPUS"
        OutputAudioEncodingMulaw -> "OUTPUT_AUDIO_ENCODING_MULAW"

instance FromJSON GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding"

instance ToJSON GoogleCloudDialogflowCxV3OutputAudioConfigAudioEncoding where
    toJSON = toJSONText

-- | Optional. Which variant of the Speech model to use.
data GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant
    = SpeechModelVariantUnspecified
      -- ^ @SPEECH_MODEL_VARIANT_UNSPECIFIED@
      -- No model variant specified. In this case Dialogflow defaults to
      -- USE_BEST_AVAILABLE.
    | UseBestAvailable
      -- ^ @USE_BEST_AVAILABLE@
      -- Use the best available variant of the Speech model that the caller is
      -- eligible for. Please see the [Dialogflow
      -- docs](https:\/\/cloud.google.com\/dialogflow\/docs\/data-logging) for
      -- how to make your project eligible for enhanced models.
    | UseStandard
      -- ^ @USE_STANDARD@
      -- Use standard model variant even if an enhanced model is available. See
      -- the [Cloud Speech
      -- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/enhanced-models)
      -- for details about enhanced models.
    | UseEnhanced
      -- ^ @USE_ENHANCED@
      -- Use an enhanced model variant: * If an enhanced variant does not exist
      -- for the given model and request language, Dialogflow falls back to the
      -- standard variant. The [Cloud Speech
      -- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/enhanced-models)
      -- describes which models have enhanced variants. * If the API caller
      -- isn\'t eligible for enhanced models, Dialogflow returns an error. Please
      -- see the [Dialogflow
      -- docs](https:\/\/cloud.google.com\/dialogflow\/docs\/data-logging) for
      -- how to make your project eligible.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant where
    parseQueryParam = \case
        "SPEECH_MODEL_VARIANT_UNSPECIFIED" -> Right SpeechModelVariantUnspecified
        "USE_BEST_AVAILABLE" -> Right UseBestAvailable
        "USE_STANDARD" -> Right UseStandard
        "USE_ENHANCED" -> Right UseEnhanced
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant where
    toQueryParam = \case
        SpeechModelVariantUnspecified -> "SPEECH_MODEL_VARIANT_UNSPECIFIED"
        UseBestAvailable -> "USE_BEST_AVAILABLE"
        UseStandard -> "USE_STANDARD"
        UseEnhanced -> "USE_ENHANCED"

instance FromJSON GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant"

instance ToJSON GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant where
    toJSON = toJSONText

-- | Output only. The role of the participant.
data GoogleCloudDialogflowV2beta1MessageParticipantRole
    = RoleUnspecified
      -- ^ @ROLE_UNSPECIFIED@
      -- Participant role not set.
    | HumanAgent
      -- ^ @HUMAN_AGENT@
      -- Participant is a human agent.
    | AutomatedAgent
      -- ^ @AUTOMATED_AGENT@
      -- Participant is an automated agent, such as a Dialogflow agent.
    | EndUser
      -- ^ @END_USER@
      -- Participant is an end user that has called or chatted with Dialogflow
      -- services.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1MessageParticipantRole

instance FromHttpApiData GoogleCloudDialogflowV2beta1MessageParticipantRole where
    parseQueryParam = \case
        "ROLE_UNSPECIFIED" -> Right RoleUnspecified
        "HUMAN_AGENT" -> Right HumanAgent
        "AUTOMATED_AGENT" -> Right AutomatedAgent
        "END_USER" -> Right EndUser
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1MessageParticipantRole from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1MessageParticipantRole where
    toQueryParam = \case
        RoleUnspecified -> "ROLE_UNSPECIFIED"
        HumanAgent -> "HUMAN_AGENT"
        AutomatedAgent -> "AUTOMATED_AGENT"
        EndUser -> "END_USER"

instance FromJSON GoogleCloudDialogflowV2beta1MessageParticipantRole where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1MessageParticipantRole"

instance ToJSON GoogleCloudDialogflowV2beta1MessageParticipantRole where
    toJSON = toJSONText

-- | The system\'s confidence level that this knowledge answer is a good
-- match for this conversational query. NOTE: The confidence level for a
-- given \`\` pair may change without notice, as it depends on models that
-- are constantly being improved. However, it will change less frequently
-- than the confidence score below, and should be preferred for referencing
-- the quality of an answer.
data GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel
    = GCDVKAAMCLMatchConfidenceLevelUnspecified
      -- ^ @MATCH_CONFIDENCE_LEVEL_UNSPECIFIED@
      -- Not specified.
    | GCDVKAAMCLLow
      -- ^ @LOW@
      -- Indicates that the confidence is low.
    | GCDVKAAMCLMedium
      -- ^ @MEDIUM@
      -- Indicates our confidence is medium.
    | GCDVKAAMCLHigh
      -- ^ @HIGH@
      -- Indicates our confidence is high.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel

instance FromHttpApiData GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    parseQueryParam = \case
        "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" -> Right GCDVKAAMCLMatchConfidenceLevelUnspecified
        "LOW" -> Right GCDVKAAMCLLow
        "MEDIUM" -> Right GCDVKAAMCLMedium
        "HIGH" -> Right GCDVKAAMCLHigh
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    toQueryParam = \case
        GCDVKAAMCLMatchConfidenceLevelUnspecified -> "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED"
        GCDVKAAMCLLow -> "LOW"
        GCDVKAAMCLMedium -> "MEDIUM"
        GCDVKAAMCLHigh -> "HIGH"

instance FromJSON GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel"

instance ToJSON GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel where
    toJSON = toJSONText

-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
data GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode
    = EntityOverrideModeUnspecified
      -- ^ @ENTITY_OVERRIDE_MODE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | EntityOverrideModeOverride
      -- ^ @ENTITY_OVERRIDE_MODE_OVERRIDE@
      -- The collection of session entities overrides the collection of entities
      -- in the corresponding custom entity type.
    | EntityOverrideModeSupplement
      -- ^ @ENTITY_OVERRIDE_MODE_SUPPLEMENT@
      -- The collection of session entities extends the collection of entities in
      -- the corresponding custom entity type. Note: Even in this override mode
      -- calls to \`ListSessionEntityTypes\`, \`GetSessionEntityType\`,
      -- \`CreateSessionEntityType\` and \`UpdateSessionEntityType\` only return
      -- the additional entities added in this session entity type. If you want
      -- to get the supplemented list, please call EntityTypes.GetEntityType on
      -- the custom entity type and merge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode

instance FromHttpApiData GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode where
    parseQueryParam = \case
        "ENTITY_OVERRIDE_MODE_UNSPECIFIED" -> Right EntityOverrideModeUnspecified
        "ENTITY_OVERRIDE_MODE_OVERRIDE" -> Right EntityOverrideModeOverride
        "ENTITY_OVERRIDE_MODE_SUPPLEMENT" -> Right EntityOverrideModeSupplement
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode where
    toQueryParam = \case
        EntityOverrideModeUnspecified -> "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
        EntityOverrideModeOverride -> "ENTITY_OVERRIDE_MODE_OVERRIDE"
        EntityOverrideModeSupplement -> "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

instance FromJSON GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode"

instance ToJSON GoogleCloudDialogflowCxV3SessionEntityTypeEntityOverrideMode where
    toJSON = toJSONText

-- | Optional. Settings for displaying the image. Applies to every image in
-- items.
data GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions
    = ImageDisplayOptionsUnspecified
      -- ^ @IMAGE_DISPLAY_OPTIONS_UNSPECIFIED@
      -- Fill the gaps between the image and the image container with gray bars.
    | Gray
      -- ^ @GRAY@
      -- Fill the gaps between the image and the image container with gray bars.
    | White
      -- ^ @WHITE@
      -- Fill the gaps between the image and the image container with white bars.
    | Cropped
      -- ^ @CROPPED@
      -- Image is scaled such that the image width and height match or exceed the
      -- container dimensions. This may crop the top and bottom of the image if
      -- the scaled image height is greater than the container height, or crop
      -- the left and right of the image if the scaled image width is greater
      -- than the container width. This is similar to \"Zoom Mode\" on a
      -- widescreen TV when playing a 4:3 video.
    | BlurredBackgRound
      -- ^ @BLURRED_BACKGROUND@
      -- Pad the gaps between image and image frame with a blurred copy of the
      -- same image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions where
    parseQueryParam = \case
        "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED" -> Right ImageDisplayOptionsUnspecified
        "GRAY" -> Right Gray
        "WHITE" -> Right White
        "CROPPED" -> Right Cropped
        "BLURRED_BACKGROUND" -> Right BlurredBackgRound
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions where
    toQueryParam = \case
        ImageDisplayOptionsUnspecified -> "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"
        Gray -> "GRAY"
        White -> "WHITE"
        Cropped -> "CROPPED"
        BlurredBackgRound -> "BLURRED_BACKGROUND"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions where
    toJSON = toJSONText

-- | Optional. Specifies the type of viewer that is used when opening the
-- URL. Defaults to opening via web browser.
data GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint
    = URLTypeHintUnspecified
      -- ^ @URL_TYPE_HINT_UNSPECIFIED@
      -- Unspecified
    | AmpAction
      -- ^ @AMP_ACTION@
      -- Url would be an amp action
    | AmpContent
      -- ^ @AMP_CONTENT@
      -- URL that points directly to AMP content, or to a canonical URL which
      -- refers to AMP content via .
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    parseQueryParam = \case
        "URL_TYPE_HINT_UNSPECIFIED" -> Right URLTypeHintUnspecified
        "AMP_ACTION" -> Right AmpAction
        "AMP_CONTENT" -> Right AmpContent
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    toQueryParam = \case
        URLTypeHintUnspecified -> "URL_TYPE_HINT_UNSPECIFIED"
        AmpAction -> "AMP_ACTION"
        AmpContent -> "AMP_CONTENT"

instance FromJSON GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint"

instance ToJSON GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    toJSON = toJSONText

-- | Optional. What type of media is the content (ie \"audio\").
data GoogleCloudDialogflowV2IntentMessageMediaContentMediaType
    = ResponseMediaTypeUnspecified
      -- ^ @RESPONSE_MEDIA_TYPE_UNSPECIFIED@
      -- Unspecified.
    | Audio
      -- ^ @AUDIO@
      -- Response media type is audio.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessageMediaContentMediaType

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessageMediaContentMediaType where
    parseQueryParam = \case
        "RESPONSE_MEDIA_TYPE_UNSPECIFIED" -> Right ResponseMediaTypeUnspecified
        "AUDIO" -> Right Audio
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessageMediaContentMediaType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessageMediaContentMediaType where
    toQueryParam = \case
        ResponseMediaTypeUnspecified -> "RESPONSE_MEDIA_TYPE_UNSPECIFIED"
        Audio -> "AUDIO"

instance FromJSON GoogleCloudDialogflowV2IntentMessageMediaContentMediaType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessageMediaContentMediaType"

instance ToJSON GoogleCloudDialogflowV2IntentMessageMediaContentMediaType where
    toJSON = toJSONText

-- | Required. Audio encoding of the audio content to process.
data GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding
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

instance Hashable GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding where
    parseQueryParam = \case
        "AUDIO_ENCODING_UNSPECIFIED" -> Right AudioEncodingUnspecified
        "AUDIO_ENCODING_LINEAR_16" -> Right AudioEncodingLinear16
        "AUDIO_ENCODING_FLAC" -> Right AudioEncodingFlac
        "AUDIO_ENCODING_MULAW" -> Right AudioEncodingMulaw
        "AUDIO_ENCODING_AMR" -> Right AudioEncodingAmr
        "AUDIO_ENCODING_AMR_WB" -> Right AudioEncodingAmrWb
        "AUDIO_ENCODING_OGG_OPUS" -> Right AudioEncodingOggOpus
        "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" -> Right AudioEncodingSpeexWithHeaderByte
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding where
    toQueryParam = \case
        AudioEncodingUnspecified -> "AUDIO_ENCODING_UNSPECIFIED"
        AudioEncodingLinear16 -> "AUDIO_ENCODING_LINEAR_16"
        AudioEncodingFlac -> "AUDIO_ENCODING_FLAC"
        AudioEncodingMulaw -> "AUDIO_ENCODING_MULAW"
        AudioEncodingAmr -> "AUDIO_ENCODING_AMR"
        AudioEncodingAmrWb -> "AUDIO_ENCODING_AMR_WB"
        AudioEncodingOggOpus -> "AUDIO_ENCODING_OGG_OPUS"
        AudioEncodingSpeexWithHeaderByte -> "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"

instance FromJSON GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding"

instance ToJSON GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding where
    toJSON = toJSONText

-- | Ratio-based metric type. Only one of type or count_type is specified in
-- each Metric.
data GoogleCloudDialogflowCxV3ExperimentResultMetricType
    = MetricUnspecified
      -- ^ @METRIC_UNSPECIFIED@
      -- Metric unspecified.
    | ContainedSessionNoCallbackRate
      -- ^ @CONTAINED_SESSION_NO_CALLBACK_RATE@
      -- Percentage of contained sessions without user calling back in 24 hours.
    | LiveAgentHandoffRate
      -- ^ @LIVE_AGENT_HANDOFF_RATE@
      -- Percentage of sessions that were handed to a human agent.
    | CallbackSessionRate
      -- ^ @CALLBACK_SESSION_RATE@
      -- Percentage of sessions with the same user calling back.
    | AbandonedSessionRate
      -- ^ @ABANDONED_SESSION_RATE@
      -- Percentage of sessions where user hung up.
    | SessionEndRate
      -- ^ @SESSION_END_RATE@
      -- Percentage of sessions reached Dialogflow \'END_PAGE\' or
      -- \'END_SESSION\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ExperimentResultMetricType

instance FromHttpApiData GoogleCloudDialogflowCxV3ExperimentResultMetricType where
    parseQueryParam = \case
        "METRIC_UNSPECIFIED" -> Right MetricUnspecified
        "CONTAINED_SESSION_NO_CALLBACK_RATE" -> Right ContainedSessionNoCallbackRate
        "LIVE_AGENT_HANDOFF_RATE" -> Right LiveAgentHandoffRate
        "CALLBACK_SESSION_RATE" -> Right CallbackSessionRate
        "ABANDONED_SESSION_RATE" -> Right AbandonedSessionRate
        "SESSION_END_RATE" -> Right SessionEndRate
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ExperimentResultMetricType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ExperimentResultMetricType where
    toQueryParam = \case
        MetricUnspecified -> "METRIC_UNSPECIFIED"
        ContainedSessionNoCallbackRate -> "CONTAINED_SESSION_NO_CALLBACK_RATE"
        LiveAgentHandoffRate -> "LIVE_AGENT_HANDOFF_RATE"
        CallbackSessionRate -> "CALLBACK_SESSION_RATE"
        AbandonedSessionRate -> "ABANDONED_SESSION_RATE"
        SessionEndRate -> "SESSION_END_RATE"

instance FromJSON GoogleCloudDialogflowCxV3ExperimentResultMetricType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ExperimentResultMetricType"

instance ToJSON GoogleCloudDialogflowCxV3ExperimentResultMetricType where
    toJSON = toJSONText

-- | Required. Output only. The current state of this operation.
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

data GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem
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
      -- Google Assistant See [Dialogflow webhook
      -- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
    | Telephony
      -- ^ @TELEPHONY@
      -- Telephony Gateway.
    | GoogleHangouts
      -- ^ @GOOGLE_HANGOUTS@
      -- Google Hangouts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem where
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
        "TELEPHONY" -> Right Telephony
        "GOOGLE_HANGOUTS" -> Right GoogleHangouts
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem where
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
        Telephony -> "TELEPHONY"
        GoogleHangouts -> "GOOGLE_HANGOUTS"

instance FromJSON GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem"

instance ToJSON GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem where
    toJSON = toJSONText

-- | Whether the test case passed in the agent environment.
data GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult
    = GCDCVTCRTRTestResultUnspecified
      -- ^ @TEST_RESULT_UNSPECIFIED@
      -- Not specified. Should never be used.
    | GCDCVTCRTRPassed
      -- ^ @PASSED@
      -- The test passed.
    | GCDCVTCRTRFailed
      -- ^ @FAILED@
      -- The test did not pass.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult where
    parseQueryParam = \case
        "TEST_RESULT_UNSPECIFIED" -> Right GCDCVTCRTRTestResultUnspecified
        "PASSED" -> Right GCDCVTCRTRPassed
        "FAILED" -> Right GCDCVTCRTRFailed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult where
    toQueryParam = \case
        GCDCVTCRTRTestResultUnspecified -> "TEST_RESULT_UNSPECIFIED"
        GCDCVTCRTRPassed -> "PASSED"
        GCDCVTCRTRFailed -> "FAILED"

instance FromJSON GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult"

instance ToJSON GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult where
    toJSON = toJSONText

-- | Count-based metric type. Only one of type or count_type is specified in
-- each Metric.
data GoogleCloudDialogflowCxV3ExperimentResultMetricCountType
    = CountTypeUnspecified
      -- ^ @COUNT_TYPE_UNSPECIFIED@
      -- Count type unspecified.
    | TotalNoMatchCount
      -- ^ @TOTAL_NO_MATCH_COUNT@
      -- Total number of occurrences of a \'NO_MATCH\'.
    | TotalTurnCount
      -- ^ @TOTAL_TURN_COUNT@
      -- Total number of turn counts.
    | AverageTurnCount
      -- ^ @AVERAGE_TURN_COUNT@
      -- Average turn count in a session.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ExperimentResultMetricCountType

instance FromHttpApiData GoogleCloudDialogflowCxV3ExperimentResultMetricCountType where
    parseQueryParam = \case
        "COUNT_TYPE_UNSPECIFIED" -> Right CountTypeUnspecified
        "TOTAL_NO_MATCH_COUNT" -> Right TotalNoMatchCount
        "TOTAL_TURN_COUNT" -> Right TotalTurnCount
        "AVERAGE_TURN_COUNT" -> Right AverageTurnCount
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ExperimentResultMetricCountType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ExperimentResultMetricCountType where
    toQueryParam = \case
        CountTypeUnspecified -> "COUNT_TYPE_UNSPECIFIED"
        TotalNoMatchCount -> "TOTAL_NO_MATCH_COUNT"
        TotalTurnCount -> "TOTAL_TURN_COUNT"
        AverageTurnCount -> "AVERAGE_TURN_COUNT"

instance FromJSON GoogleCloudDialogflowCxV3ExperimentResultMetricCountType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ExperimentResultMetricCountType"

instance ToJSON GoogleCloudDialogflowCxV3ExperimentResultMetricCountType where
    toJSON = toJSONText

-- | Required. Audio encoding of the audio content to process.
data GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding
    = GCDCVIACAEAudioEncodingUnspecified
      -- ^ @AUDIO_ENCODING_UNSPECIFIED@
      -- Not specified.
    | GCDCVIACAEAudioEncodingLinear16
      -- ^ @AUDIO_ENCODING_LINEAR_16@
      -- Uncompressed 16-bit signed little-endian samples (Linear PCM).
    | GCDCVIACAEAudioEncodingFlac
      -- ^ @AUDIO_ENCODING_FLAC@
      -- [\`FLAC\`](https:\/\/xiph.org\/flac\/documentation.html) (Free Lossless
      -- Audio Codec) is the recommended encoding because it is lossless
      -- (therefore recognition is not compromised) and requires only about half
      -- the bandwidth of \`LINEAR16\`. \`FLAC\` stream encoding supports 16-bit
      -- and 24-bit samples, however, not all fields in \`STREAMINFO\` are
      -- supported.
    | GCDCVIACAEAudioEncodingMulaw
      -- ^ @AUDIO_ENCODING_MULAW@
      -- 8-bit samples that compand 14-bit audio samples using G.711
      -- PCMU\/mu-law.
    | GCDCVIACAEAudioEncodingAmr
      -- ^ @AUDIO_ENCODING_AMR@
      -- Adaptive Multi-Rate Narrowband codec. \`sample_rate_hertz\` must be
      -- 8000.
    | GCDCVIACAEAudioEncodingAmrWb
      -- ^ @AUDIO_ENCODING_AMR_WB@
      -- Adaptive Multi-Rate Wideband codec. \`sample_rate_hertz\` must be 16000.
    | GCDCVIACAEAudioEncodingOggOpus
      -- ^ @AUDIO_ENCODING_OGG_OPUS@
      -- Opus encoded audio frames in Ogg container
      -- ([OggOpus](https:\/\/wiki.xiph.org\/OggOpus)). \`sample_rate_hertz\`
      -- must be 16000.
    | GCDCVIACAEAudioEncodingSpeexWithHeaderByte
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

instance Hashable GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding

instance FromHttpApiData GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding where
    parseQueryParam = \case
        "AUDIO_ENCODING_UNSPECIFIED" -> Right GCDCVIACAEAudioEncodingUnspecified
        "AUDIO_ENCODING_LINEAR_16" -> Right GCDCVIACAEAudioEncodingLinear16
        "AUDIO_ENCODING_FLAC" -> Right GCDCVIACAEAudioEncodingFlac
        "AUDIO_ENCODING_MULAW" -> Right GCDCVIACAEAudioEncodingMulaw
        "AUDIO_ENCODING_AMR" -> Right GCDCVIACAEAudioEncodingAmr
        "AUDIO_ENCODING_AMR_WB" -> Right GCDCVIACAEAudioEncodingAmrWb
        "AUDIO_ENCODING_OGG_OPUS" -> Right GCDCVIACAEAudioEncodingOggOpus
        "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" -> Right GCDCVIACAEAudioEncodingSpeexWithHeaderByte
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding where
    toQueryParam = \case
        GCDCVIACAEAudioEncodingUnspecified -> "AUDIO_ENCODING_UNSPECIFIED"
        GCDCVIACAEAudioEncodingLinear16 -> "AUDIO_ENCODING_LINEAR_16"
        GCDCVIACAEAudioEncodingFlac -> "AUDIO_ENCODING_FLAC"
        GCDCVIACAEAudioEncodingMulaw -> "AUDIO_ENCODING_MULAW"
        GCDCVIACAEAudioEncodingAmr -> "AUDIO_ENCODING_AMR"
        GCDCVIACAEAudioEncodingAmrWb -> "AUDIO_ENCODING_AMR_WB"
        GCDCVIACAEAudioEncodingOggOpus -> "AUDIO_ENCODING_OGG_OPUS"
        GCDCVIACAEAudioEncodingSpeexWithHeaderByte -> "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"

instance FromJSON GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding"

instance ToJSON GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding where
    toJSON = toJSONText

-- | Required. Output only. The current state of this operation.
data GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState
    = GCDCVGKOMSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | GCDCVGKOMSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | GCDCVGKOMSRunning
      -- ^ @RUNNING@
      -- The operation is currently running.
    | GCDCVGKOMSDone
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCDCVGKOMSStateUnspecified
        "PENDING" -> Right GCDCVGKOMSPending
        "RUNNING" -> Right GCDCVGKOMSRunning
        "DONE" -> Right GCDCVGKOMSDone
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState where
    toQueryParam = \case
        GCDCVGKOMSStateUnspecified -> "STATE_UNSPECIFIED"
        GCDCVGKOMSPending -> "PENDING"
        GCDCVGKOMSRunning -> "RUNNING"
        GCDCVGKOMSDone -> "DONE"

instance FromJSON GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState"

instance ToJSON GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadataState where
    toJSON = toJSONText

-- | Output only. The current state of this operation.
data GoogleCloudDialogflowV2KnowledgeOperationMetadataState
    = GCDVKOMSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | GCDVKOMSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | GCDVKOMSRunning
      -- ^ @RUNNING@
      -- The operation is currently running.
    | GCDVKOMSDone
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2KnowledgeOperationMetadataState

instance FromHttpApiData GoogleCloudDialogflowV2KnowledgeOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCDVKOMSStateUnspecified
        "PENDING" -> Right GCDVKOMSPending
        "RUNNING" -> Right GCDVKOMSRunning
        "DONE" -> Right GCDVKOMSDone
        x -> Left ("Unable to parse GoogleCloudDialogflowV2KnowledgeOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2KnowledgeOperationMetadataState where
    toQueryParam = \case
        GCDVKOMSStateUnspecified -> "STATE_UNSPECIFIED"
        GCDVKOMSPending -> "PENDING"
        GCDVKOMSRunning -> "RUNNING"
        GCDVKOMSDone -> "DONE"

instance FromJSON GoogleCloudDialogflowV2KnowledgeOperationMetadataState where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2KnowledgeOperationMetadataState"

instance ToJSON GoogleCloudDialogflowV2KnowledgeOperationMetadataState where
    toJSON = toJSONText

-- | Output only. The role of the participant.
data GoogleCloudDialogflowV2MessageParticipantRole
    = GCDVMPRRoleUnspecified
      -- ^ @ROLE_UNSPECIFIED@
      -- Participant role not set.
    | GCDVMPRHumanAgent
      -- ^ @HUMAN_AGENT@
      -- Participant is a human agent.
    | GCDVMPRAutomatedAgent
      -- ^ @AUTOMATED_AGENT@
      -- Participant is an automated agent, such as a Dialogflow agent.
    | GCDVMPREndUser
      -- ^ @END_USER@
      -- Participant is an end user that has called or chatted with Dialogflow
      -- services.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2MessageParticipantRole

instance FromHttpApiData GoogleCloudDialogflowV2MessageParticipantRole where
    parseQueryParam = \case
        "ROLE_UNSPECIFIED" -> Right GCDVMPRRoleUnspecified
        "HUMAN_AGENT" -> Right GCDVMPRHumanAgent
        "AUTOMATED_AGENT" -> Right GCDVMPRAutomatedAgent
        "END_USER" -> Right GCDVMPREndUser
        x -> Left ("Unable to parse GoogleCloudDialogflowV2MessageParticipantRole from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2MessageParticipantRole where
    toQueryParam = \case
        GCDVMPRRoleUnspecified -> "ROLE_UNSPECIFIED"
        GCDVMPRHumanAgent -> "HUMAN_AGENT"
        GCDVMPRAutomatedAgent -> "AUTOMATED_AGENT"
        GCDVMPREndUser -> "END_USER"

instance FromJSON GoogleCloudDialogflowV2MessageParticipantRole where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2MessageParticipantRole"

instance ToJSON GoogleCloudDialogflowV2MessageParticipantRole where
    toJSON = toJSONText

-- | Optional. Settings for displaying the image. Applies to every image in
-- items.
data GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions
    = GCDVIMBCCIDOImageDisplayOptionsUnspecified
      -- ^ @IMAGE_DISPLAY_OPTIONS_UNSPECIFIED@
      -- Fill the gaps between the image and the image container with gray bars.
    | GCDVIMBCCIDOGray
      -- ^ @GRAY@
      -- Fill the gaps between the image and the image container with gray bars.
    | GCDVIMBCCIDOWhite
      -- ^ @WHITE@
      -- Fill the gaps between the image and the image container with white bars.
    | GCDVIMBCCIDOCropped
      -- ^ @CROPPED@
      -- Image is scaled such that the image width and height match or exceed the
      -- container dimensions. This may crop the top and bottom of the image if
      -- the scaled image height is greater than the container height, or crop
      -- the left and right of the image if the scaled image width is greater
      -- than the container width. This is similar to \"Zoom Mode\" on a
      -- widescreen TV when playing a 4:3 video.
    | GCDVIMBCCIDOBlurredBackgRound
      -- ^ @BLURRED_BACKGROUND@
      -- Pad the gaps between image and image frame with a blurred copy of the
      -- same image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions where
    parseQueryParam = \case
        "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED" -> Right GCDVIMBCCIDOImageDisplayOptionsUnspecified
        "GRAY" -> Right GCDVIMBCCIDOGray
        "WHITE" -> Right GCDVIMBCCIDOWhite
        "CROPPED" -> Right GCDVIMBCCIDOCropped
        "BLURRED_BACKGROUND" -> Right GCDVIMBCCIDOBlurredBackgRound
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions where
    toQueryParam = \case
        GCDVIMBCCIDOImageDisplayOptionsUnspecified -> "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"
        GCDVIMBCCIDOGray -> "GRAY"
        GCDVIMBCCIDOWhite -> "WHITE"
        GCDVIMBCCIDOCropped -> "CROPPED"
        GCDVIMBCCIDOBlurredBackgRound -> "BLURRED_BACKGROUND"

instance FromJSON GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions"

instance ToJSON GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions where
    toJSON = toJSONText

-- | The type of the resources where the message is found.
data GoogleCloudDialogflowCxV3ValidationMessageResourceType
    = GCDCVVMRTResourceTypeUnspecified
      -- ^ @RESOURCE_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GCDCVVMRTAgent
      -- ^ @AGENT@
      -- Agent.
    | GCDCVVMRTIntent
      -- ^ @INTENT@
      -- Intent.
    | GCDCVVMRTIntentTrainingPhrase
      -- ^ @INTENT_TRAINING_PHRASE@
      -- Intent training phrase.
    | GCDCVVMRTIntentParameter
      -- ^ @INTENT_PARAMETER@
      -- Intent parameter.
    | GCDCVVMRTIntents
      -- ^ @INTENTS@
      -- Multiple intents.
    | GCDCVVMRTIntentTrainingPhrases
      -- ^ @INTENT_TRAINING_PHRASES@
      -- Multiple training phrases.
    | GCDCVVMRTEntityType
      -- ^ @ENTITY_TYPE@
      -- Entity type.
    | GCDCVVMRTEntityTypes
      -- ^ @ENTITY_TYPES@
      -- Multiple entity types.
    | GCDCVVMRTWebhook
      -- ^ @WEBHOOK@
      -- Webhook.
    | GCDCVVMRTFlow
      -- ^ @FLOW@
      -- Flow.
    | GCDCVVMRTPage
      -- ^ @PAGE@
      -- Page.
    | GCDCVVMRTPages
      -- ^ @PAGES@
      -- Multiple pages.
    | GCDCVVMRTTransitionRouteGroup
      -- ^ @TRANSITION_ROUTE_GROUP@
      -- Transition route group.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ValidationMessageResourceType

instance FromHttpApiData GoogleCloudDialogflowCxV3ValidationMessageResourceType where
    parseQueryParam = \case
        "RESOURCE_TYPE_UNSPECIFIED" -> Right GCDCVVMRTResourceTypeUnspecified
        "AGENT" -> Right GCDCVVMRTAgent
        "INTENT" -> Right GCDCVVMRTIntent
        "INTENT_TRAINING_PHRASE" -> Right GCDCVVMRTIntentTrainingPhrase
        "INTENT_PARAMETER" -> Right GCDCVVMRTIntentParameter
        "INTENTS" -> Right GCDCVVMRTIntents
        "INTENT_TRAINING_PHRASES" -> Right GCDCVVMRTIntentTrainingPhrases
        "ENTITY_TYPE" -> Right GCDCVVMRTEntityType
        "ENTITY_TYPES" -> Right GCDCVVMRTEntityTypes
        "WEBHOOK" -> Right GCDCVVMRTWebhook
        "FLOW" -> Right GCDCVVMRTFlow
        "PAGE" -> Right GCDCVVMRTPage
        "PAGES" -> Right GCDCVVMRTPages
        "TRANSITION_ROUTE_GROUP" -> Right GCDCVVMRTTransitionRouteGroup
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ValidationMessageResourceType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ValidationMessageResourceType where
    toQueryParam = \case
        GCDCVVMRTResourceTypeUnspecified -> "RESOURCE_TYPE_UNSPECIFIED"
        GCDCVVMRTAgent -> "AGENT"
        GCDCVVMRTIntent -> "INTENT"
        GCDCVVMRTIntentTrainingPhrase -> "INTENT_TRAINING_PHRASE"
        GCDCVVMRTIntentParameter -> "INTENT_PARAMETER"
        GCDCVVMRTIntents -> "INTENTS"
        GCDCVVMRTIntentTrainingPhrases -> "INTENT_TRAINING_PHRASES"
        GCDCVVMRTEntityType -> "ENTITY_TYPE"
        GCDCVVMRTEntityTypes -> "ENTITY_TYPES"
        GCDCVVMRTWebhook -> "WEBHOOK"
        GCDCVVMRTFlow -> "FLOW"
        GCDCVVMRTPage -> "PAGE"
        GCDCVVMRTPages -> "PAGES"
        GCDCVVMRTTransitionRouteGroup -> "TRANSITION_ROUTE_GROUP"

instance FromJSON GoogleCloudDialogflowCxV3ValidationMessageResourceType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ValidationMessageResourceType"

instance ToJSON GoogleCloudDialogflowCxV3ValidationMessageResourceType where
    toJSON = toJSONText

-- | Optional. Which variant of the Speech model to use.
data GoogleCloudDialogflowCxV3InputAudioConfigModelVariant
    = GCDCVIACMVSpeechModelVariantUnspecified
      -- ^ @SPEECH_MODEL_VARIANT_UNSPECIFIED@
      -- No model variant specified. In this case Dialogflow defaults to
      -- USE_BEST_AVAILABLE.
    | GCDCVIACMVUseBestAvailable
      -- ^ @USE_BEST_AVAILABLE@
      -- Use the best available variant of the Speech model that the caller is
      -- eligible for. Please see the [Dialogflow
      -- docs](https:\/\/cloud.google.com\/dialogflow\/docs\/data-logging) for
      -- how to make your project eligible for enhanced models.
    | GCDCVIACMVUseStandard
      -- ^ @USE_STANDARD@
      -- Use standard model variant even if an enhanced model is available. See
      -- the [Cloud Speech
      -- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/enhanced-models)
      -- for details about enhanced models.
    | GCDCVIACMVUseEnhanced
      -- ^ @USE_ENHANCED@
      -- Use an enhanced model variant: * If an enhanced variant does not exist
      -- for the given model and request language, Dialogflow falls back to the
      -- standard variant. The [Cloud Speech
      -- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/enhanced-models)
      -- describes which models have enhanced variants. * If the API caller
      -- isn\'t eligible for enhanced models, Dialogflow returns an error. Please
      -- see the [Dialogflow
      -- docs](https:\/\/cloud.google.com\/dialogflow\/docs\/data-logging) for
      -- how to make your project eligible.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3InputAudioConfigModelVariant

instance FromHttpApiData GoogleCloudDialogflowCxV3InputAudioConfigModelVariant where
    parseQueryParam = \case
        "SPEECH_MODEL_VARIANT_UNSPECIFIED" -> Right GCDCVIACMVSpeechModelVariantUnspecified
        "USE_BEST_AVAILABLE" -> Right GCDCVIACMVUseBestAvailable
        "USE_STANDARD" -> Right GCDCVIACMVUseStandard
        "USE_ENHANCED" -> Right GCDCVIACMVUseEnhanced
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3InputAudioConfigModelVariant from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3InputAudioConfigModelVariant where
    toQueryParam = \case
        GCDCVIACMVSpeechModelVariantUnspecified -> "SPEECH_MODEL_VARIANT_UNSPECIFIED"
        GCDCVIACMVUseBestAvailable -> "USE_BEST_AVAILABLE"
        GCDCVIACMVUseStandard -> "USE_STANDARD"
        GCDCVIACMVUseEnhanced -> "USE_ENHANCED"

instance FromJSON GoogleCloudDialogflowCxV3InputAudioConfigModelVariant where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3InputAudioConfigModelVariant"

instance ToJSON GoogleCloudDialogflowCxV3InputAudioConfigModelVariant where
    toJSON = toJSONText

-- | Optional. The platform that this message is intended for.
data GoogleCloudDialogflowV2IntentMessagePlatform
    = GCDVIMPPlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Default platform.
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
      -- Google Assistant See [Dialogflow webhook
      -- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
    | GCDVIMPGoogleHangouts
      -- ^ @GOOGLE_HANGOUTS@
      -- Google Hangouts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessagePlatform

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessagePlatform where
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
        "GOOGLE_HANGOUTS" -> Right GCDVIMPGoogleHangouts
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessagePlatform from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessagePlatform where
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
        GCDVIMPGoogleHangouts -> "GOOGLE_HANGOUTS"

instance FromJSON GoogleCloudDialogflowV2IntentMessagePlatform where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessagePlatform"

instance ToJSON GoogleCloudDialogflowV2IntentMessagePlatform where
    toJSON = toJSONText

-- | Required. Output only. The current state of this operation.
data GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState
    = GCDVGKOMSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | GCDVGKOMSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | GCDVGKOMSRunning
      -- ^ @RUNNING@
      -- The operation is currently running.
    | GCDVGKOMSDone
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState

instance FromHttpApiData GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCDVGKOMSStateUnspecified
        "PENDING" -> Right GCDVGKOMSPending
        "RUNNING" -> Right GCDVGKOMSRunning
        "DONE" -> Right GCDVGKOMSDone
        x -> Left ("Unable to parse GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState where
    toQueryParam = \case
        GCDVGKOMSStateUnspecified -> "STATE_UNSPECIFIED"
        GCDVGKOMSPending -> "PENDING"
        GCDVGKOMSRunning -> "RUNNING"
        GCDVGKOMSDone -> "DONE"

instance FromJSON GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState where
    parseJSON = parseJSONText "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState"

instance ToJSON GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadataState where
    toJSON = toJSONText

-- | Always present for WebhookRequest. Required for WebhookResponse. The
-- state of the parameter. This field can be set to INVALID by the webhook
-- to invalidate the parameter; other values set by the webhook will be
-- ignored.
data GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState
    = ParameterStateUnspecified
      -- ^ @PARAMETER_STATE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | Empty
      -- ^ @EMPTY@
      -- Indicates that the parameter does not have a value.
    | Invalid
      -- ^ @INVALID@
      -- Indicates that the parameter value is invalid. This field can be used by
      -- the webhook to invalidate the parameter and ask the server to collect it
      -- from the user again.
    | Filled
      -- ^ @FILLED@
      -- Indicates that the parameter has a value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState

instance FromHttpApiData GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState where
    parseQueryParam = \case
        "PARAMETER_STATE_UNSPECIFIED" -> Right ParameterStateUnspecified
        "EMPTY" -> Right Empty
        "INVALID" -> Right Invalid
        "FILLED" -> Right Filled
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState where
    toQueryParam = \case
        ParameterStateUnspecified -> "PARAMETER_STATE_UNSPECIFIED"
        Empty -> "EMPTY"
        Invalid -> "INVALID"
        Filled -> "FILLED"

instance FromJSON GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState"

instance ToJSON GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfoState where
    toJSON = toJSONText

-- | Required. The width of the cards in the carousel.
data GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth
    = GCDVIMRCCCWCardWidthUnspecified
      -- ^ @CARD_WIDTH_UNSPECIFIED@
      -- Not specified.
    | GCDVIMRCCCWSmall
      -- ^ @SMALL@
      -- 120 DP. Note that tall media cannot be used.
    | GCDVIMRCCCWMedium
      -- ^ @MEDIUM@
      -- 232 DP.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth where
    parseQueryParam = \case
        "CARD_WIDTH_UNSPECIFIED" -> Right GCDVIMRCCCWCardWidthUnspecified
        "SMALL" -> Right GCDVIMRCCCWSmall
        "MEDIUM" -> Right GCDVIMRCCCWMedium
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth where
    toQueryParam = \case
        GCDVIMRCCCWCardWidthUnspecified -> "CARD_WIDTH_UNSPECIFIED"
        GCDVIMRCCCWSmall -> "SMALL"
        GCDVIMRCCCWMedium -> "MEDIUM"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth where
    toJSON = toJSONText

-- | Strategy that defines how we do redaction.
data GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy
    = RedactionStrategyUnspecified
      -- ^ @REDACTION_STRATEGY_UNSPECIFIED@
      -- Do not redact.
    | RedactWithService
      -- ^ @REDACT_WITH_SERVICE@
      -- Call redaction service to clean up the data to be persisted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy

instance FromHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy where
    parseQueryParam = \case
        "REDACTION_STRATEGY_UNSPECIFIED" -> Right RedactionStrategyUnspecified
        "REDACT_WITH_SERVICE" -> Right RedactWithService
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy where
    toQueryParam = \case
        RedactionStrategyUnspecified -> "REDACTION_STRATEGY_UNSPECIFIED"
        RedactWithService -> "REDACT_WITH_SERVICE"

instance FromJSON GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy"

instance ToJSON GoogleCloudDialogflowCxV3SecuritySettingsRedactionStrategy where
    toJSON = toJSONText

-- | Indicates the type of NLU model.
data GoogleCloudDialogflowCxV3NluSettingsModelType
    = ModelTypeUnspecified
      -- ^ @MODEL_TYPE_UNSPECIFIED@
      -- Not specified. \`MODEL_TYPE_STANDARD\` will be used.
    | ModelTypeStandard
      -- ^ @MODEL_TYPE_STANDARD@
      -- Use standard NLU model.
    | ModelTypeAdvanced
      -- ^ @MODEL_TYPE_ADVANCED@
      -- Use advanced NLU model.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3NluSettingsModelType

instance FromHttpApiData GoogleCloudDialogflowCxV3NluSettingsModelType where
    parseQueryParam = \case
        "MODEL_TYPE_UNSPECIFIED" -> Right ModelTypeUnspecified
        "MODEL_TYPE_STANDARD" -> Right ModelTypeStandard
        "MODEL_TYPE_ADVANCED" -> Right ModelTypeAdvanced
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3NluSettingsModelType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3NluSettingsModelType where
    toQueryParam = \case
        ModelTypeUnspecified -> "MODEL_TYPE_UNSPECIFIED"
        ModelTypeStandard -> "MODEL_TYPE_STANDARD"
        ModelTypeAdvanced -> "MODEL_TYPE_ADVANCED"

instance FromJSON GoogleCloudDialogflowCxV3NluSettingsModelType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3NluSettingsModelType"

instance ToJSON GoogleCloudDialogflowCxV3NluSettingsModelType where
    toJSON = toJSONText

data GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem
    = PurgeDataTypeUnspecified
      -- ^ @PURGE_DATA_TYPE_UNSPECIFIED@
      -- Unspecified. Do not use.
    | DialogflowHistory
      -- ^ @DIALOGFLOW_HISTORY@
      -- Dialogflow history. This does not include Cloud logging, which is owned
      -- by the user - not Dialogflow.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem

instance FromHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem where
    parseQueryParam = \case
        "PURGE_DATA_TYPE_UNSPECIFIED" -> Right PurgeDataTypeUnspecified
        "DIALOGFLOW_HISTORY" -> Right DialogflowHistory
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem where
    toQueryParam = \case
        PurgeDataTypeUnspecified -> "PURGE_DATA_TYPE_UNSPECIFIED"
        DialogflowHistory -> "DIALOGFLOW_HISTORY"

instance FromJSON GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem"

instance ToJSON GoogleCloudDialogflowCxV3SecuritySettingsPurgeDataTypesItem where
    toJSON = toJSONText

-- | The type of diff.
data GoogleCloudDialogflowCxV3TestRunDifferenceType
    = GCDCVTRDTDiffTypeUnspecified
      -- ^ @DIFF_TYPE_UNSPECIFIED@
      -- Should never be used.
    | GCDCVTRDTIntent
      -- ^ @INTENT@
      -- The intent.
    | GCDCVTRDTPage
      -- ^ @PAGE@
      -- The page.
    | GCDCVTRDTParameters
      -- ^ @PARAMETERS@
      -- The parameters.
    | GCDCVTRDTUtterance
      -- ^ @UTTERANCE@
      -- The message utterance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3TestRunDifferenceType

instance FromHttpApiData GoogleCloudDialogflowCxV3TestRunDifferenceType where
    parseQueryParam = \case
        "DIFF_TYPE_UNSPECIFIED" -> Right GCDCVTRDTDiffTypeUnspecified
        "INTENT" -> Right GCDCVTRDTIntent
        "PAGE" -> Right GCDCVTRDTPage
        "PARAMETERS" -> Right GCDCVTRDTParameters
        "UTTERANCE" -> Right GCDCVTRDTUtterance
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3TestRunDifferenceType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3TestRunDifferenceType where
    toQueryParam = \case
        GCDCVTRDTDiffTypeUnspecified -> "DIFF_TYPE_UNSPECIFIED"
        GCDCVTRDTIntent -> "INTENT"
        GCDCVTRDTPage -> "PAGE"
        GCDCVTRDTParameters -> "PARAMETERS"
        GCDCVTRDTUtterance -> "UTTERANCE"

instance FromJSON GoogleCloudDialogflowCxV3TestRunDifferenceType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3TestRunDifferenceType"

instance ToJSON GoogleCloudDialogflowCxV3TestRunDifferenceType where
    toJSON = toJSONText

-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
data GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode
    = GCDVSETEOMEntityOverrideModeUnspecified
      -- ^ @ENTITY_OVERRIDE_MODE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GCDVSETEOMEntityOverrideModeOverride
      -- ^ @ENTITY_OVERRIDE_MODE_OVERRIDE@
      -- The collection of session entities overrides the collection of entities
      -- in the corresponding custom entity type.
    | GCDVSETEOMEntityOverrideModeSupplement
      -- ^ @ENTITY_OVERRIDE_MODE_SUPPLEMENT@
      -- The collection of session entities extends the collection of entities in
      -- the corresponding custom entity type. Note: Even in this override mode
      -- calls to \`ListSessionEntityTypes\`, \`GetSessionEntityType\`,
      -- \`CreateSessionEntityType\` and \`UpdateSessionEntityType\` only return
      -- the additional entities added in this session entity type. If you want
      -- to get the supplemented list, please call EntityTypes.GetEntityType on
      -- the custom entity type and merge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode

instance FromHttpApiData GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode where
    parseQueryParam = \case
        "ENTITY_OVERRIDE_MODE_UNSPECIFIED" -> Right GCDVSETEOMEntityOverrideModeUnspecified
        "ENTITY_OVERRIDE_MODE_OVERRIDE" -> Right GCDVSETEOMEntityOverrideModeOverride
        "ENTITY_OVERRIDE_MODE_SUPPLEMENT" -> Right GCDVSETEOMEntityOverrideModeSupplement
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode where
    toQueryParam = \case
        GCDVSETEOMEntityOverrideModeUnspecified -> "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
        GCDVSETEOMEntityOverrideModeOverride -> "ENTITY_OVERRIDE_MODE_OVERRIDE"
        GCDVSETEOMEntityOverrideModeSupplement -> "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

instance FromJSON GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode"

instance ToJSON GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode where
    toJSON = toJSONText

-- | Required. The type of the event that this notification refers to.
data GoogleCloudDialogflowV2beta1ConversationEventType
    = GCDVCETTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Type not set.
    | GCDVCETConversationStarted
      -- ^ @CONVERSATION_STARTED@
      -- A new conversation has been opened. This is fired when a telephone call
      -- is answered, or a conversation is created via the API.
    | GCDVCETConversationFinished
      -- ^ @CONVERSATION_FINISHED@
      -- An existing conversation has closed. This is fired when a telephone call
      -- is terminated, or a conversation is closed via the API.
    | GCDVCETNewMessage
      -- ^ @NEW_MESSAGE@
      -- An existing conversation has received a new message, either from API or
      -- telephony. It is configured in
      -- ConversationProfile.new_message_event_notification_config
    | GCDVCETUnrecoverableError
      -- ^ @UNRECOVERABLE_ERROR@
      -- Unrecoverable error during a telephone call. In general non-recoverable
      -- errors only occur if something was misconfigured in the
      -- ConversationProfile corresponding to the call. After a non-recoverable
      -- error, Dialogflow may stop responding. We don\'t fire this event: * in
      -- an API call because we can directly return the error, or, * when we can
      -- recover from an error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1ConversationEventType

instance FromHttpApiData GoogleCloudDialogflowV2beta1ConversationEventType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right GCDVCETTypeUnspecified
        "CONVERSATION_STARTED" -> Right GCDVCETConversationStarted
        "CONVERSATION_FINISHED" -> Right GCDVCETConversationFinished
        "NEW_MESSAGE" -> Right GCDVCETNewMessage
        "UNRECOVERABLE_ERROR" -> Right GCDVCETUnrecoverableError
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1ConversationEventType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1ConversationEventType where
    toQueryParam = \case
        GCDVCETTypeUnspecified -> "TYPE_UNSPECIFIED"
        GCDVCETConversationStarted -> "CONVERSATION_STARTED"
        GCDVCETConversationFinished -> "CONVERSATION_FINISHED"
        GCDVCETNewMessage -> "NEW_MESSAGE"
        GCDVCETUnrecoverableError -> "UNRECOVERABLE_ERROR"

instance FromJSON GoogleCloudDialogflowV2beta1ConversationEventType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1ConversationEventType"

instance ToJSON GoogleCloudDialogflowV2beta1ConversationEventType where
    toJSON = toJSONText

-- | Flow import mode. If not specified, \`KEEP\` is assumed.
data GoogleCloudDialogflowCxV3ImportFlowRequestImportOption
    = ImportOptionUnspecified
      -- ^ @IMPORT_OPTION_UNSPECIFIED@
      -- Unspecified. Treated as \`KEEP\`.
    | Keep
      -- ^ @KEEP@
      -- Always respect settings in exported flow content. It may cause a import
      -- failure if some settings (e.g. custom NLU) are not supported in the
      -- agent to import into.
    | Fallback
      -- ^ @FALLBACK@
      -- Fallback to default settings if some settings are not supported in the
      -- agent to import into. E.g. Standard NLU will be used if custom NLU is
      -- not available.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ImportFlowRequestImportOption

instance FromHttpApiData GoogleCloudDialogflowCxV3ImportFlowRequestImportOption where
    parseQueryParam = \case
        "IMPORT_OPTION_UNSPECIFIED" -> Right ImportOptionUnspecified
        "KEEP" -> Right Keep
        "FALLBACK" -> Right Fallback
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ImportFlowRequestImportOption from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ImportFlowRequestImportOption where
    toQueryParam = \case
        ImportOptionUnspecified -> "IMPORT_OPTION_UNSPECIFIED"
        Keep -> "KEEP"
        Fallback -> "FALLBACK"

instance FromJSON GoogleCloudDialogflowCxV3ImportFlowRequestImportOption where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ImportFlowRequestImportOption"

instance ToJSON GoogleCloudDialogflowCxV3ImportFlowRequestImportOption where
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
      -- \@-prefixed entity type names as substrings. Template mode has been
      -- deprecated. Example mode is the only supported way to create new
      -- training phrases. If you have existing training phrases that you\'ve
      -- created in template mode, those will continue to work.
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

-- | The result of this continuous test run, i.e. whether all the tests in
-- this continuous test run pass or not.
data GoogleCloudDialogflowCxV3ContinuousTestResultResult
    = GCDCVCTRRAggregatedTestResultUnspecified
      -- ^ @AGGREGATED_TEST_RESULT_UNSPECIFIED@
      -- Not specified. Should never be used.
    | GCDCVCTRRPassed
      -- ^ @PASSED@
      -- All the tests passed.
    | GCDCVCTRRFailed
      -- ^ @FAILED@
      -- At least one test did not pass.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ContinuousTestResultResult

instance FromHttpApiData GoogleCloudDialogflowCxV3ContinuousTestResultResult where
    parseQueryParam = \case
        "AGGREGATED_TEST_RESULT_UNSPECIFIED" -> Right GCDCVCTRRAggregatedTestResultUnspecified
        "PASSED" -> Right GCDCVCTRRPassed
        "FAILED" -> Right GCDCVCTRRFailed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ContinuousTestResultResult from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ContinuousTestResultResult where
    toQueryParam = \case
        GCDCVCTRRAggregatedTestResultUnspecified -> "AGGREGATED_TEST_RESULT_UNSPECIFIED"
        GCDCVCTRRPassed -> "PASSED"
        GCDCVCTRRFailed -> "FAILED"

instance FromJSON GoogleCloudDialogflowCxV3ContinuousTestResultResult where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ContinuousTestResultResult"

instance ToJSON GoogleCloudDialogflowCxV3ContinuousTestResultResult where
    toJSON = toJSONText

-- | The type of the event that this notification refers to.
data GoogleCloudDialogflowV2ConversationEventType
    = GTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Type not set.
    | GConversationStarted
      -- ^ @CONVERSATION_STARTED@
      -- A new conversation has been opened. This is fired when a telephone call
      -- is answered, or a conversation is created via the API.
    | GConversationFinished
      -- ^ @CONVERSATION_FINISHED@
      -- An existing conversation has closed. This is fired when a telephone call
      -- is terminated, or a conversation is closed via the API.
    | GHumanInterventionNeeded
      -- ^ @HUMAN_INTERVENTION_NEEDED@
      -- An existing conversation has received notification from Dialogflow that
      -- human intervention is required.
    | GNewMessage
      -- ^ @NEW_MESSAGE@
      -- An existing conversation has received a new message, either from API or
      -- telephony. It is configured in
      -- ConversationProfile.new_message_event_notification_config
    | GUnrecoverableError
      -- ^ @UNRECOVERABLE_ERROR@
      -- Unrecoverable error during a telephone call. In general non-recoverable
      -- errors only occur if something was misconfigured in the
      -- ConversationProfile corresponding to the call. After a non-recoverable
      -- error, Dialogflow may stop responding. We don\'t fire this event: * in
      -- an API call because we can directly return the error, or, * when we can
      -- recover from an error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2ConversationEventType

instance FromHttpApiData GoogleCloudDialogflowV2ConversationEventType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right GTypeUnspecified
        "CONVERSATION_STARTED" -> Right GConversationStarted
        "CONVERSATION_FINISHED" -> Right GConversationFinished
        "HUMAN_INTERVENTION_NEEDED" -> Right GHumanInterventionNeeded
        "NEW_MESSAGE" -> Right GNewMessage
        "UNRECOVERABLE_ERROR" -> Right GUnrecoverableError
        x -> Left ("Unable to parse GoogleCloudDialogflowV2ConversationEventType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2ConversationEventType where
    toQueryParam = \case
        GTypeUnspecified -> "TYPE_UNSPECIFIED"
        GConversationStarted -> "CONVERSATION_STARTED"
        GConversationFinished -> "CONVERSATION_FINISHED"
        GHumanInterventionNeeded -> "HUMAN_INTERVENTION_NEEDED"
        GNewMessage -> "NEW_MESSAGE"
        GUnrecoverableError -> "UNRECOVERABLE_ERROR"

instance FromJSON GoogleCloudDialogflowV2ConversationEventType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2ConversationEventType"

instance ToJSON GoogleCloudDialogflowV2ConversationEventType where
    toJSON = toJSONText

-- | Agent restore mode. If not specified, \`KEEP\` is assumed.
data GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption
    = GCDCVRARRORestoreOptionUnspecified
      -- ^ @RESTORE_OPTION_UNSPECIFIED@
      -- Unspecified. Treated as KEEP.
    | GCDCVRARROKeep
      -- ^ @KEEP@
      -- Always respect the settings from the exported agent file. It may cause a
      -- restoration failure if some settings (e.g. model type) are not supported
      -- in the target agent.
    | GCDCVRARROFallback
      -- ^ @FALLBACK@
      -- Fallback to default settings if some settings are not supported in the
      -- target agent.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption

instance FromHttpApiData GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption where
    parseQueryParam = \case
        "RESTORE_OPTION_UNSPECIFIED" -> Right GCDCVRARRORestoreOptionUnspecified
        "KEEP" -> Right GCDCVRARROKeep
        "FALLBACK" -> Right GCDCVRARROFallback
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption where
    toQueryParam = \case
        GCDCVRARRORestoreOptionUnspecified -> "RESTORE_OPTION_UNSPECIFIED"
        GCDCVRARROKeep -> "KEEP"
        GCDCVRARROFallback -> "FALLBACK"

instance FromJSON GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption"

instance ToJSON GoogleCloudDialogflowCxV3RestoreAgentRequestRestoreOption where
    toJSON = toJSONText

-- | Indicates the severity of the message.
data GoogleCloudDialogflowCxV3ValidationMessageSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unspecified.
    | Info
      -- ^ @INFO@
      -- The agent doesn\'t follow Dialogflow best practices.
    | Warning
      -- ^ @WARNING@
      -- The agent may not behave as expected.
    | Error'
      -- ^ @ERROR@
      -- The agent may experience failures.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ValidationMessageSeverity

instance FromHttpApiData GoogleCloudDialogflowCxV3ValidationMessageSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ValidationMessageSeverity from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ValidationMessageSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON GoogleCloudDialogflowCxV3ValidationMessageSeverity where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ValidationMessageSeverity"

instance ToJSON GoogleCloudDialogflowCxV3ValidationMessageSeverity where
    toJSON = toJSONText

-- | Response type.
data GoogleCloudDialogflowCxV3DetectIntentResponseResponseType
    = ResponseTypeUnspecified
      -- ^ @RESPONSE_TYPE_UNSPECIFIED@
      -- Not specified. This should never happen.
    | Partial
      -- ^ @PARTIAL@
      -- Partial response. e.g. Aggregated responses in a Fulfillment that
      -- enables \`return_partial_response\` can be returned as partial response.
      -- WARNING: partial response is not eligible for barge-in.
    | Final
      -- ^ @FINAL@
      -- Final response.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3DetectIntentResponseResponseType

instance FromHttpApiData GoogleCloudDialogflowCxV3DetectIntentResponseResponseType where
    parseQueryParam = \case
        "RESPONSE_TYPE_UNSPECIFIED" -> Right ResponseTypeUnspecified
        "PARTIAL" -> Right Partial
        "FINAL" -> Right Final
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3DetectIntentResponseResponseType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3DetectIntentResponseResponseType where
    toQueryParam = \case
        ResponseTypeUnspecified -> "RESPONSE_TYPE_UNSPECIFIED"
        Partial -> "PARTIAL"
        Final -> "FINAL"

instance FromJSON GoogleCloudDialogflowCxV3DetectIntentResponseResponseType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3DetectIntentResponseResponseType"

instance ToJSON GoogleCloudDialogflowCxV3DetectIntentResponseResponseType where
    toJSON = toJSONText

-- | The type of diff.
data GoogleCloudDialogflowCxV3beta1TestRunDifferenceType
    = GDiffTypeUnspecified
      -- ^ @DIFF_TYPE_UNSPECIFIED@
      -- Should never be used.
    | GIntent
      -- ^ @INTENT@
      -- The intent.
    | GPage
      -- ^ @PAGE@
      -- The page.
    | GParameters
      -- ^ @PARAMETERS@
      -- The parameters.
    | GUtterance
      -- ^ @UTTERANCE@
      -- The message utterance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1TestRunDifferenceType

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1TestRunDifferenceType where
    parseQueryParam = \case
        "DIFF_TYPE_UNSPECIFIED" -> Right GDiffTypeUnspecified
        "INTENT" -> Right GIntent
        "PAGE" -> Right GPage
        "PARAMETERS" -> Right GParameters
        "UTTERANCE" -> Right GUtterance
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1TestRunDifferenceType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1TestRunDifferenceType where
    toQueryParam = \case
        GDiffTypeUnspecified -> "DIFF_TYPE_UNSPECIFIED"
        GIntent -> "INTENT"
        GPage -> "PAGE"
        GParameters -> "PARAMETERS"
        GUtterance -> "UTTERANCE"

instance FromJSON GoogleCloudDialogflowCxV3beta1TestRunDifferenceType where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1TestRunDifferenceType"

instance ToJSON GoogleCloudDialogflowCxV3beta1TestRunDifferenceType where
    toJSON = toJSONText

-- | Optional. Defines text alignment for all cells in this column.
data GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment
    = GCDVIMCPHAHorizontalAlignmentUnspecified
      -- ^ @HORIZONTAL_ALIGNMENT_UNSPECIFIED@
      -- Text is aligned to the leading edge of the column.
    | GCDVIMCPHALeading
      -- ^ @LEADING@
      -- Text is aligned to the leading edge of the column.
    | GCDVIMCPHACenter
      -- ^ @CENTER@
      -- Text is centered in the column.
    | GCDVIMCPHATrailing
      -- ^ @TRAILING@
      -- Text is aligned to the trailing edge of the column.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment

instance FromHttpApiData GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGNMENT_UNSPECIFIED" -> Right GCDVIMCPHAHorizontalAlignmentUnspecified
        "LEADING" -> Right GCDVIMCPHALeading
        "CENTER" -> Right GCDVIMCPHACenter
        "TRAILING" -> Right GCDVIMCPHATrailing
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment where
    toQueryParam = \case
        GCDVIMCPHAHorizontalAlignmentUnspecified -> "HORIZONTAL_ALIGNMENT_UNSPECIFIED"
        GCDVIMCPHALeading -> "LEADING"
        GCDVIMCPHACenter -> "CENTER"
        GCDVIMCPHATrailing -> "TRAILING"

instance FromJSON GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment"

instance ToJSON GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment where
    toJSON = toJSONText

-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
data GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode
    = GEntityOverrideModeUnspecified
      -- ^ @ENTITY_OVERRIDE_MODE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GEntityOverrideModeOverride
      -- ^ @ENTITY_OVERRIDE_MODE_OVERRIDE@
      -- The collection of session entities overrides the collection of entities
      -- in the corresponding custom entity type.
    | GEntityOverrideModeSupplement
      -- ^ @ENTITY_OVERRIDE_MODE_SUPPLEMENT@
      -- The collection of session entities extends the collection of entities in
      -- the corresponding custom entity type. Note: Even in this override mode
      -- calls to \`ListSessionEntityTypes\`, \`GetSessionEntityType\`,
      -- \`CreateSessionEntityType\` and \`UpdateSessionEntityType\` only return
      -- the additional entities added in this session entity type. If you want
      -- to get the supplemented list, please call EntityTypes.GetEntityType on
      -- the custom entity type and merge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode

instance FromHttpApiData GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    parseQueryParam = \case
        "ENTITY_OVERRIDE_MODE_UNSPECIFIED" -> Right GEntityOverrideModeUnspecified
        "ENTITY_OVERRIDE_MODE_OVERRIDE" -> Right GEntityOverrideModeOverride
        "ENTITY_OVERRIDE_MODE_SUPPLEMENT" -> Right GEntityOverrideModeSupplement
        x -> Left ("Unable to parse GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    toQueryParam = \case
        GEntityOverrideModeUnspecified -> "ENTITY_OVERRIDE_MODE_UNSPECIFIED"
        GEntityOverrideModeOverride -> "ENTITY_OVERRIDE_MODE_OVERRIDE"
        GEntityOverrideModeSupplement -> "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

instance FromJSON GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode"

instance ToJSON GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode where
    toJSON = toJSONText

-- | Always present for WebhookRequest. Required for WebhookResponse. The
-- state of the parameter. This field can be set to INVALID by the webhook
-- to invalidate the parameter; other values set by the webhook will be
-- ignored.
data GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState
    = GCDCVPIFIPISParameterStateUnspecified
      -- ^ @PARAMETER_STATE_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GCDCVPIFIPISEmpty
      -- ^ @EMPTY@
      -- Indicates that the parameter does not have a value.
    | GCDCVPIFIPISInvalid
      -- ^ @INVALID@
      -- Indicates that the parameter value is invalid. This field can be used by
      -- the webhook to invalidate the parameter and ask the server to collect it
      -- from the user again.
    | GCDCVPIFIPISFilled
      -- ^ @FILLED@
      -- Indicates that the parameter has a value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState where
    parseQueryParam = \case
        "PARAMETER_STATE_UNSPECIFIED" -> Right GCDCVPIFIPISParameterStateUnspecified
        "EMPTY" -> Right GCDCVPIFIPISEmpty
        "INVALID" -> Right GCDCVPIFIPISInvalid
        "FILLED" -> Right GCDCVPIFIPISFilled
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState where
    toQueryParam = \case
        GCDCVPIFIPISParameterStateUnspecified -> "PARAMETER_STATE_UNSPECIFIED"
        GCDCVPIFIPISEmpty -> "EMPTY"
        GCDCVPIFIPISInvalid -> "INVALID"
        GCDCVPIFIPISFilled -> "FILLED"

instance FromJSON GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState"

instance ToJSON GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState where
    toJSON = toJSONText

-- | The current state of the experiment. Transition triggered by
-- Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by
-- Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
data GoogleCloudDialogflowCxV3ExperimentState
    = GCDCVESStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | GCDCVESDraft
      -- ^ @DRAFT@
      -- The experiment is created but not started yet.
    | GCDCVESRunning
      -- ^ @RUNNING@
      -- The experiment is running.
    | GCDCVESDone
      -- ^ @DONE@
      -- The experiment is done.
    | GCDCVESRolloutFailed
      -- ^ @ROLLOUT_FAILED@
      -- The experiment with auto-rollout enabled has failed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ExperimentState

instance FromHttpApiData GoogleCloudDialogflowCxV3ExperimentState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCDCVESStateUnspecified
        "DRAFT" -> Right GCDCVESDraft
        "RUNNING" -> Right GCDCVESRunning
        "DONE" -> Right GCDCVESDone
        "ROLLOUT_FAILED" -> Right GCDCVESRolloutFailed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ExperimentState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ExperimentState where
    toQueryParam = \case
        GCDCVESStateUnspecified -> "STATE_UNSPECIFIED"
        GCDCVESDraft -> "DRAFT"
        GCDCVESRunning -> "RUNNING"
        GCDCVESDone -> "DONE"
        GCDCVESRolloutFailed -> "ROLLOUT_FAILED"

instance FromJSON GoogleCloudDialogflowCxV3ExperimentState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ExperimentState"

instance ToJSON GoogleCloudDialogflowCxV3ExperimentState where
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

-- | Merge behavior for \`messages\`.
data GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior
    = MergeBehaviorUnspecified
      -- ^ @MERGE_BEHAVIOR_UNSPECIFIED@
      -- Not specified. \`APPEND\` will be used.
    | Append
      -- ^ @APPEND@
      -- \`messages\` will be appended to the list of messages waiting to be sent
      -- to the user.
    | Replace
      -- ^ @REPLACE@
      -- \`messages\` will replace the list of messages waiting to be sent to the
      -- user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior

instance FromHttpApiData GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior where
    parseQueryParam = \case
        "MERGE_BEHAVIOR_UNSPECIFIED" -> Right MergeBehaviorUnspecified
        "APPEND" -> Right Append
        "REPLACE" -> Right Replace
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior where
    toQueryParam = \case
        MergeBehaviorUnspecified -> "MERGE_BEHAVIOR_UNSPECIFIED"
        Append -> "APPEND"
        Replace -> "REPLACE"

instance FromJSON GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior"

instance ToJSON GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior where
    toJSON = toJSONText

-- | Optional. The platform that this message is intended for.
data GoogleCloudDialogflowV2beta1IntentMessagePlatform
    = GPlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Not specified.
    | GFacebook
      -- ^ @FACEBOOK@
      -- Facebook.
    | GSlack
      -- ^ @SLACK@
      -- Slack.
    | GTelegram
      -- ^ @TELEGRAM@
      -- Telegram.
    | GKik
      -- ^ @KIK@
      -- Kik.
    | GSkype
      -- ^ @SKYPE@
      -- Skype.
    | GLine
      -- ^ @LINE@
      -- Line.
    | GViber
      -- ^ @VIBER@
      -- Viber.
    | GActionsOnGoogle
      -- ^ @ACTIONS_ON_GOOGLE@
      -- Google Assistant See [Dialogflow webhook
      -- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
    | GTelephony
      -- ^ @TELEPHONY@
      -- Telephony Gateway.
    | GGoogleHangouts
      -- ^ @GOOGLE_HANGOUTS@
      -- Google Hangouts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessagePlatform

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    parseQueryParam = \case
        "PLATFORM_UNSPECIFIED" -> Right GPlatformUnspecified
        "FACEBOOK" -> Right GFacebook
        "SLACK" -> Right GSlack
        "TELEGRAM" -> Right GTelegram
        "KIK" -> Right GKik
        "SKYPE" -> Right GSkype
        "LINE" -> Right GLine
        "VIBER" -> Right GViber
        "ACTIONS_ON_GOOGLE" -> Right GActionsOnGoogle
        "TELEPHONY" -> Right GTelephony
        "GOOGLE_HANGOUTS" -> Right GGoogleHangouts
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessagePlatform from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    toQueryParam = \case
        GPlatformUnspecified -> "PLATFORM_UNSPECIFIED"
        GFacebook -> "FACEBOOK"
        GSlack -> "SLACK"
        GTelegram -> "TELEGRAM"
        GKik -> "KIK"
        GSkype -> "SKYPE"
        GLine -> "LINE"
        GViber -> "VIBER"
        GActionsOnGoogle -> "ACTIONS_ON_GOOGLE"
        GTelephony -> "TELEPHONY"
        GGoogleHangouts -> "GOOGLE_HANGOUTS"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessagePlatform"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessagePlatform where
    toJSON = toJSONText

-- | Required. Indicates the kind of entity type.
data GoogleCloudDialogflowV2EntityTypeKind
    = GCDVETKKindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GCDVETKKindMap
      -- ^ @KIND_MAP@
      -- Map entity types allow mapping of a group of synonyms to a reference
      -- value.
    | GCDVETKKindList
      -- ^ @KIND_LIST@
      -- List entity types contain a set of entries that do not map to reference
      -- values. However, list entity types can contain references to other
      -- entity types (with or without aliases).
    | GCDVETKKindRegexp
      -- ^ @KIND_REGEXP@
      -- Regexp entity types allow to specify regular expressions in entries
      -- values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2EntityTypeKind

instance FromHttpApiData GoogleCloudDialogflowV2EntityTypeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right GCDVETKKindUnspecified
        "KIND_MAP" -> Right GCDVETKKindMap
        "KIND_LIST" -> Right GCDVETKKindList
        "KIND_REGEXP" -> Right GCDVETKKindRegexp
        x -> Left ("Unable to parse GoogleCloudDialogflowV2EntityTypeKind from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2EntityTypeKind where
    toQueryParam = \case
        GCDVETKKindUnspecified -> "KIND_UNSPECIFIED"
        GCDVETKKindMap -> "KIND_MAP"
        GCDVETKKindList -> "KIND_LIST"
        GCDVETKKindRegexp -> "KIND_REGEXP"

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

-- | Whether the test case passed in the agent environment.
data GoogleCloudDialogflowCxV3TestCaseResultTestResult
    = GTestResultUnspecified
      -- ^ @TEST_RESULT_UNSPECIFIED@
      -- Not specified. Should never be used.
    | GPassed
      -- ^ @PASSED@
      -- The test passed.
    | GFailed
      -- ^ @FAILED@
      -- The test did not pass.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3TestCaseResultTestResult

instance FromHttpApiData GoogleCloudDialogflowCxV3TestCaseResultTestResult where
    parseQueryParam = \case
        "TEST_RESULT_UNSPECIFIED" -> Right GTestResultUnspecified
        "PASSED" -> Right GPassed
        "FAILED" -> Right GFailed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3TestCaseResultTestResult from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3TestCaseResultTestResult where
    toQueryParam = \case
        GTestResultUnspecified -> "TEST_RESULT_UNSPECIFIED"
        GPassed -> "PASSED"
        GFailed -> "FAILED"

instance FromJSON GoogleCloudDialogflowCxV3TestCaseResultTestResult where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3TestCaseResultTestResult"

instance ToJSON GoogleCloudDialogflowCxV3TestCaseResultTestResult where
    toJSON = toJSONText

-- | Defines the data for which Dialogflow applies redaction. Dialogflow does
-- not redact data that it does not have access to – for example, Cloud
-- logging.
data GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope
    = RedactionScopeUnspecified
      -- ^ @REDACTION_SCOPE_UNSPECIFIED@
      -- Don\'t redact any kind of data.
    | RedactDiskStorage
      -- ^ @REDACT_DISK_STORAGE@
      -- On data to be written to disk or similar devices that are capable of
      -- holding data even if power is disconnected. This includes data that are
      -- temporarily saved on disk.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope

instance FromHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope where
    parseQueryParam = \case
        "REDACTION_SCOPE_UNSPECIFIED" -> Right RedactionScopeUnspecified
        "REDACT_DISK_STORAGE" -> Right RedactDiskStorage
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope where
    toQueryParam = \case
        RedactionScopeUnspecified -> "REDACTION_SCOPE_UNSPECIFIED"
        RedactDiskStorage -> "REDACT_DISK_STORAGE"

instance FromJSON GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope"

instance ToJSON GoogleCloudDialogflowCxV3SecuritySettingsRedactionScope where
    toJSON = toJSONText

-- | Required. Output only. The current state of this operation.
data GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState
    = GStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | GPending
      -- ^ @PENDING@
      -- The operation has been created.
    | GRunning
      -- ^ @RUNNING@
      -- The operation is currently running.
    | GDone
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState

instance FromHttpApiData GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GStateUnspecified
        "PENDING" -> Right GPending
        "RUNNING" -> Right GRunning
        "DONE" -> Right GDone
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState where
    toQueryParam = \case
        GStateUnspecified -> "STATE_UNSPECIFIED"
        GPending -> "PENDING"
        GRunning -> "RUNNING"
        GDone -> "DONE"

instance FromJSON GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState"

instance ToJSON GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadataState where
    toJSON = toJSONText

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
data GoogleCloudDialogflowV2EntityTypeAutoExpansionMode
    = GCDVETAEMAutoExpansionModeUnspecified
      -- ^ @AUTO_EXPANSION_MODE_UNSPECIFIED@
      -- Auto expansion disabled for the entity.
    | GCDVETAEMAutoExpansionModeDefault
      -- ^ @AUTO_EXPANSION_MODE_DEFAULT@
      -- Allows an agent to recognize values that have not been explicitly listed
      -- in the entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2EntityTypeAutoExpansionMode

instance FromHttpApiData GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    parseQueryParam = \case
        "AUTO_EXPANSION_MODE_UNSPECIFIED" -> Right GCDVETAEMAutoExpansionModeUnspecified
        "AUTO_EXPANSION_MODE_DEFAULT" -> Right GCDVETAEMAutoExpansionModeDefault
        x -> Left ("Unable to parse GoogleCloudDialogflowV2EntityTypeAutoExpansionMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    toQueryParam = \case
        GCDVETAEMAutoExpansionModeUnspecified -> "AUTO_EXPANSION_MODE_UNSPECIFIED"
        GCDVETAEMAutoExpansionModeDefault -> "AUTO_EXPANSION_MODE_DEFAULT"

instance FromJSON GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2EntityTypeAutoExpansionMode"

instance ToJSON GoogleCloudDialogflowV2EntityTypeAutoExpansionMode where
    toJSON = toJSONText

-- | Optional. The preferred gender of the voice. If not set, the service
-- will choose a voice based on the other parameters such as language_code
-- and name. Note that this is only a preference, not requirement. If a
-- voice of the appropriate gender is not available, the synthesizer
-- substitutes a voice with a different gender rather than failing the
-- request.
data GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender
    = SsmlVoiceGenderUnspecified
      -- ^ @SSML_VOICE_GENDER_UNSPECIFIED@
      -- An unspecified gender, which means that the client doesn\'t care which
      -- gender the selected voice will have.
    | SsmlVoiceGenderMale
      -- ^ @SSML_VOICE_GENDER_MALE@
      -- A male voice.
    | SsmlVoiceGenderFemale
      -- ^ @SSML_VOICE_GENDER_FEMALE@
      -- A female voice.
    | SsmlVoiceGenderNeutral
      -- ^ @SSML_VOICE_GENDER_NEUTRAL@
      -- A gender-neutral voice.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender

instance FromHttpApiData GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender where
    parseQueryParam = \case
        "SSML_VOICE_GENDER_UNSPECIFIED" -> Right SsmlVoiceGenderUnspecified
        "SSML_VOICE_GENDER_MALE" -> Right SsmlVoiceGenderMale
        "SSML_VOICE_GENDER_FEMALE" -> Right SsmlVoiceGenderFemale
        "SSML_VOICE_GENDER_NEUTRAL" -> Right SsmlVoiceGenderNeutral
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender where
    toQueryParam = \case
        SsmlVoiceGenderUnspecified -> "SSML_VOICE_GENDER_UNSPECIFIED"
        SsmlVoiceGenderMale -> "SSML_VOICE_GENDER_MALE"
        SsmlVoiceGenderFemale -> "SSML_VOICE_GENDER_FEMALE"
        SsmlVoiceGenderNeutral -> "SSML_VOICE_GENDER_NEUTRAL"

instance FromJSON GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender"

instance ToJSON GoogleCloudDialogflowCxV3VoiceSelectionParamsSsmlGender where
    toJSON = toJSONText

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
data GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode
    = GAutoExpansionModeUnspecified
      -- ^ @AUTO_EXPANSION_MODE_UNSPECIFIED@
      -- Auto expansion disabled for the entity.
    | GAutoExpansionModeDefault
      -- ^ @AUTO_EXPANSION_MODE_DEFAULT@
      -- Allows an agent to recognize values that have not been explicitly listed
      -- in the entity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode

instance FromHttpApiData GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    parseQueryParam = \case
        "AUTO_EXPANSION_MODE_UNSPECIFIED" -> Right GAutoExpansionModeUnspecified
        "AUTO_EXPANSION_MODE_DEFAULT" -> Right GAutoExpansionModeDefault
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    toQueryParam = \case
        GAutoExpansionModeUnspecified -> "AUTO_EXPANSION_MODE_UNSPECIFIED"
        GAutoExpansionModeDefault -> "AUTO_EXPANSION_MODE_DEFAULT"

instance FromJSON GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode"

instance ToJSON GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode where
    toJSON = toJSONText

-- | The data format of the exported test cases. If not specified, \`BLOB\`
-- is assumed.
data GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat
    = DataFormatUnspecified
      -- ^ @DATA_FORMAT_UNSPECIFIED@
      -- Unspecified format.
    | Blob
      -- ^ @BLOB@
      -- Raw bytes.
    | JSON
      -- ^ @JSON@
      -- JSON format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat

instance FromHttpApiData GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat where
    parseQueryParam = \case
        "DATA_FORMAT_UNSPECIFIED" -> Right DataFormatUnspecified
        "BLOB" -> Right Blob
        "JSON" -> Right JSON
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat where
    toQueryParam = \case
        DataFormatUnspecified -> "DATA_FORMAT_UNSPECIFIED"
        Blob -> "BLOB"
        JSON -> "JSON"

instance FromJSON GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat"

instance ToJSON GoogleCloudDialogflowCxV3ExportTestCasesRequestDataFormat where
    toJSON = toJSONText

-- | Optional. What type of media is the content (ie \"audio\").
data GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType
    = GCDVIMMCMTResponseMediaTypeUnspecified
      -- ^ @RESPONSE_MEDIA_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GCDVIMMCMTAudio
      -- ^ @AUDIO@
      -- Response media type is audio.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType where
    parseQueryParam = \case
        "RESPONSE_MEDIA_TYPE_UNSPECIFIED" -> Right GCDVIMMCMTResponseMediaTypeUnspecified
        "AUDIO" -> Right GCDVIMMCMTAudio
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType where
    toQueryParam = \case
        GCDVIMMCMTResponseMediaTypeUnspecified -> "RESPONSE_MEDIA_TYPE_UNSPECIFIED"
        GCDVIMMCMTAudio -> "AUDIO"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType where
    toJSON = toJSONText

data GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem
    = GCDVIDRPIPlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Default platform.
    | GCDVIDRPIFacebook
      -- ^ @FACEBOOK@
      -- Facebook.
    | GCDVIDRPISlack
      -- ^ @SLACK@
      -- Slack.
    | GCDVIDRPITelegram
      -- ^ @TELEGRAM@
      -- Telegram.
    | GCDVIDRPIKik
      -- ^ @KIK@
      -- Kik.
    | GCDVIDRPISkype
      -- ^ @SKYPE@
      -- Skype.
    | GCDVIDRPILine
      -- ^ @LINE@
      -- Line.
    | GCDVIDRPIViber
      -- ^ @VIBER@
      -- Viber.
    | GCDVIDRPIActionsOnGoogle
      -- ^ @ACTIONS_ON_GOOGLE@
      -- Google Assistant See [Dialogflow webhook
      -- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
    | GCDVIDRPIGoogleHangouts
      -- ^ @GOOGLE_HANGOUTS@
      -- Google Hangouts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem

instance FromHttpApiData GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem where
    parseQueryParam = \case
        "PLATFORM_UNSPECIFIED" -> Right GCDVIDRPIPlatformUnspecified
        "FACEBOOK" -> Right GCDVIDRPIFacebook
        "SLACK" -> Right GCDVIDRPISlack
        "TELEGRAM" -> Right GCDVIDRPITelegram
        "KIK" -> Right GCDVIDRPIKik
        "SKYPE" -> Right GCDVIDRPISkype
        "LINE" -> Right GCDVIDRPILine
        "VIBER" -> Right GCDVIDRPIViber
        "ACTIONS_ON_GOOGLE" -> Right GCDVIDRPIActionsOnGoogle
        "GOOGLE_HANGOUTS" -> Right GCDVIDRPIGoogleHangouts
        x -> Left ("Unable to parse GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem where
    toQueryParam = \case
        GCDVIDRPIPlatformUnspecified -> "PLATFORM_UNSPECIFIED"
        GCDVIDRPIFacebook -> "FACEBOOK"
        GCDVIDRPISlack -> "SLACK"
        GCDVIDRPITelegram -> "TELEGRAM"
        GCDVIDRPIKik -> "KIK"
        GCDVIDRPISkype -> "SKYPE"
        GCDVIDRPILine -> "LINE"
        GCDVIDRPIViber -> "VIBER"
        GCDVIDRPIActionsOnGoogle -> "ACTIONS_ON_GOOGLE"
        GCDVIDRPIGoogleHangouts -> "GOOGLE_HANGOUTS"

instance FromJSON GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem"

instance ToJSON GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem where
    toJSON = toJSONText

-- | Required. Indicates the kind of entity type.
data GoogleCloudDialogflowV2beta1EntityTypeKind
    = GKindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Not specified. This value should be never used.
    | GKindMap
      -- ^ @KIND_MAP@
      -- Map entity types allow mapping of a group of synonyms to a reference
      -- value.
    | GKindList
      -- ^ @KIND_LIST@
      -- List entity types contain a set of entries that do not map to reference
      -- values. However, list entity types can contain references to other
      -- entity types (with or without aliases).
    | GKindRegexp
      -- ^ @KIND_REGEXP@
      -- Regexp entity types allow to specify regular expressions in entries
      -- values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1EntityTypeKind

instance FromHttpApiData GoogleCloudDialogflowV2beta1EntityTypeKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right GKindUnspecified
        "KIND_MAP" -> Right GKindMap
        "KIND_LIST" -> Right GKindList
        "KIND_REGEXP" -> Right GKindRegexp
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1EntityTypeKind from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1EntityTypeKind where
    toQueryParam = \case
        GKindUnspecified -> "KIND_UNSPECIFIED"
        GKindMap -> "KIND_MAP"
        GKindList -> "KIND_LIST"
        GKindRegexp -> "KIND_REGEXP"

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

-- | The resource view to apply to the returned intent.
data ProjectsLocationsAgentsIntentsListIntentView
    = IntentViewUnspecified
      -- ^ @INTENT_VIEW_UNSPECIFIED@
      -- Not specified. Treated as INTENT_VIEW_FULL.
    | IntentViewPartial
      -- ^ @INTENT_VIEW_PARTIAL@
      -- Training phrases field is not populated in the response.
    | IntentViewFull
      -- ^ @INTENT_VIEW_FULL@
      -- All fields are populated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsAgentsIntentsListIntentView

instance FromHttpApiData ProjectsLocationsAgentsIntentsListIntentView where
    parseQueryParam = \case
        "INTENT_VIEW_UNSPECIFIED" -> Right IntentViewUnspecified
        "INTENT_VIEW_PARTIAL" -> Right IntentViewPartial
        "INTENT_VIEW_FULL" -> Right IntentViewFull
        x -> Left ("Unable to parse ProjectsLocationsAgentsIntentsListIntentView from: " <> x)

instance ToHttpApiData ProjectsLocationsAgentsIntentsListIntentView where
    toQueryParam = \case
        IntentViewUnspecified -> "INTENT_VIEW_UNSPECIFIED"
        IntentViewPartial -> "INTENT_VIEW_PARTIAL"
        IntentViewFull -> "INTENT_VIEW_FULL"

instance FromJSON ProjectsLocationsAgentsIntentsListIntentView where
    parseJSON = parseJSONText "ProjectsLocationsAgentsIntentsListIntentView"

instance ToJSON ProjectsLocationsAgentsIntentsListIntentView where
    toJSON = toJSONText

-- | Optional. Specifies the type of viewer that is used when opening the
-- URL. Defaults to opening via web browser.
data GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint
    = GCDVIMBCCBCCIOUAUTHURLTypeHintUnspecified
      -- ^ @URL_TYPE_HINT_UNSPECIFIED@
      -- Unspecified
    | GCDVIMBCCBCCIOUAUTHAmpAction
      -- ^ @AMP_ACTION@
      -- Url would be an amp action
    | GCDVIMBCCBCCIOUAUTHAmpContent
      -- ^ @AMP_CONTENT@
      -- URL that points directly to AMP content, or to a canonical URL which
      -- refers to AMP content via .
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint

instance FromHttpApiData GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    parseQueryParam = \case
        "URL_TYPE_HINT_UNSPECIFIED" -> Right GCDVIMBCCBCCIOUAUTHURLTypeHintUnspecified
        "AMP_ACTION" -> Right GCDVIMBCCBCCIOUAUTHAmpAction
        "AMP_CONTENT" -> Right GCDVIMBCCBCCIOUAUTHAmpContent
        x -> Left ("Unable to parse GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    toQueryParam = \case
        GCDVIMBCCBCCIOUAUTHURLTypeHintUnspecified -> "URL_TYPE_HINT_UNSPECIFIED"
        GCDVIMBCCBCCIOUAUTHAmpAction -> "AMP_ACTION"
        GCDVIMBCCBCCIOUAUTHAmpContent -> "AMP_CONTENT"

instance FromJSON GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    parseJSON = parseJSONText "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint"

instance ToJSON GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint where
    toJSON = toJSONText

-- | Output only. The state of this version. This field is read-only and
-- cannot be set by create and update methods.
data GoogleCloudDialogflowCxV3VersionState
    = GCDCVVSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not specified. This value is not used.
    | GCDCVVSRunning
      -- ^ @RUNNING@
      -- Version is not ready to serve (e.g. training is running).
    | GCDCVVSSucceeded
      -- ^ @SUCCEEDED@
      -- Training has succeeded and this version is ready to serve.
    | GCDCVVSFailed
      -- ^ @FAILED@
      -- Version training failed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3VersionState

instance FromHttpApiData GoogleCloudDialogflowCxV3VersionState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCDCVVSStateUnspecified
        "RUNNING" -> Right GCDCVVSRunning
        "SUCCEEDED" -> Right GCDCVVSSucceeded
        "FAILED" -> Right GCDCVVSFailed
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3VersionState from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3VersionState where
    toQueryParam = \case
        GCDCVVSStateUnspecified -> "STATE_UNSPECIFIED"
        GCDCVVSRunning -> "RUNNING"
        GCDCVVSSucceeded -> "SUCCEEDED"
        GCDCVVSFailed -> "FAILED"

instance FromJSON GoogleCloudDialogflowCxV3VersionState where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3VersionState"

instance ToJSON GoogleCloudDialogflowCxV3VersionState where
    toJSON = toJSONText

-- | Required. The type of coverage requested.
data ProjectsLocationsAgentsTestCasesCalculateCoverageType
    = PLATCCCTCoverageTypeUnspecified
      -- ^ @COVERAGE_TYPE_UNSPECIFIED@
      -- Should never be used.
    | PLATCCCTIntent
      -- ^ @INTENT@
      -- Intent coverage.
    | PLATCCCTPageTransition
      -- ^ @PAGE_TRANSITION@
      -- Page transition coverage.
    | PLATCCCTTransitionRouteGroup
      -- ^ @TRANSITION_ROUTE_GROUP@
      -- Transition route group coverage.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsAgentsTestCasesCalculateCoverageType

instance FromHttpApiData ProjectsLocationsAgentsTestCasesCalculateCoverageType where
    parseQueryParam = \case
        "COVERAGE_TYPE_UNSPECIFIED" -> Right PLATCCCTCoverageTypeUnspecified
        "INTENT" -> Right PLATCCCTIntent
        "PAGE_TRANSITION" -> Right PLATCCCTPageTransition
        "TRANSITION_ROUTE_GROUP" -> Right PLATCCCTTransitionRouteGroup
        x -> Left ("Unable to parse ProjectsLocationsAgentsTestCasesCalculateCoverageType from: " <> x)

instance ToHttpApiData ProjectsLocationsAgentsTestCasesCalculateCoverageType where
    toQueryParam = \case
        PLATCCCTCoverageTypeUnspecified -> "COVERAGE_TYPE_UNSPECIFIED"
        PLATCCCTIntent -> "INTENT"
        PLATCCCTPageTransition -> "PAGE_TRANSITION"
        PLATCCCTTransitionRouteGroup -> "TRANSITION_ROUTE_GROUP"

instance FromJSON ProjectsLocationsAgentsTestCasesCalculateCoverageType where
    parseJSON = parseJSONText "ProjectsLocationsAgentsTestCasesCalculateCoverageType"

instance ToJSON ProjectsLocationsAgentsTestCasesCalculateCoverageType where
    toJSON = toJSONText

-- | Merge behavior for \`messages\`.
data GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior
    = GCDCVWRFRMBMergeBehaviorUnspecified
      -- ^ @MERGE_BEHAVIOR_UNSPECIFIED@
      -- Not specified. \`APPEND\` will be used.
    | GCDCVWRFRMBAppend
      -- ^ @APPEND@
      -- \`messages\` will be appended to the list of messages waiting to be sent
      -- to the user.
    | GCDCVWRFRMBReplace
      -- ^ @REPLACE@
      -- \`messages\` will replace the list of messages waiting to be sent to the
      -- user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior

instance FromHttpApiData GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior where
    parseQueryParam = \case
        "MERGE_BEHAVIOR_UNSPECIFIED" -> Right GCDCVWRFRMBMergeBehaviorUnspecified
        "APPEND" -> Right GCDCVWRFRMBAppend
        "REPLACE" -> Right GCDCVWRFRMBReplace
        x -> Left ("Unable to parse GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior from: " <> x)

instance ToHttpApiData GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior where
    toQueryParam = \case
        GCDCVWRFRMBMergeBehaviorUnspecified -> "MERGE_BEHAVIOR_UNSPECIFIED"
        GCDCVWRFRMBAppend -> "APPEND"
        GCDCVWRFRMBReplace -> "REPLACE"

instance FromJSON GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior where
    parseJSON = parseJSONText "GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior"

instance ToJSON GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponseMergeBehavior where
    toJSON = toJSONText
