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
-- Module      : Gogol.DialogFlow.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DialogFlow.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3AnswerFeedback_Rating
    GoogleCloudDialogflowCxV3AnswerFeedback_Rating
      ( GoogleCloudDialogflowCxV3AnswerFeedback_Rating_RATINGUNSPECIFIED,
        GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSUP,
        GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSDOWN,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
    GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
      ( GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_ATTRIBUTETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Numerical,
        GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Freshness,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType
    GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType
      ( GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_INTERPOLATIONTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_Linear,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ContinuousTestResult_Result
    GoogleCloudDialogflowCxV3ContinuousTestResult_Result
      ( GoogleCloudDialogflowCxV3ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED,
        GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Passed,
        GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
    GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
      ( GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_PUBLICWEB,
        GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Unstructured,
        GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Structured,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
    GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
      ( GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_GROUNDINGDECISIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_ACCEPTEDBYGROUNDING,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_REJECTEDBYGROUNDING,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
    GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
      ( GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_GROUNDINGSCOREBUCKETUNSPECIFIED,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYLOW,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Low,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Medium,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_High,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYHIGH,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
    GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
      ( GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHUNSPECIFIED,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHNONE,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHQUERY,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHRESPONSE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
    GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
      ( GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_SAFETYDECISIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_ACCEPTEDBYSAFETYCHECK,
        GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_REJECTEDBYSAFETYCHECK,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3Deployment_State
    GoogleCloudDialogflowCxV3Deployment_State
      ( GoogleCloudDialogflowCxV3Deployment_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowCxV3Deployment_State_Running,
        GoogleCloudDialogflowCxV3Deployment_State_Succeeded,
        GoogleCloudDialogflowCxV3Deployment_State_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
    GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
      ( GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_RESPONSETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Partial,
        GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Final,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode
    GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode
      ( GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
        GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3EntityType_Kind
    GoogleCloudDialogflowCxV3EntityType_Kind
      ( GoogleCloudDialogflowCxV3EntityType_Kind_KINDUNSPECIFIED,
        GoogleCloudDialogflowCxV3EntityType_Kind_KINDMAP,
        GoogleCloudDialogflowCxV3EntityType_Kind_KINDLIST,
        GoogleCloudDialogflowCxV3EntityType_Kind_KINDREGEXP,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3Experiment_State
    GoogleCloudDialogflowCxV3Experiment_State
      ( GoogleCloudDialogflowCxV3Experiment_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowCxV3Experiment_State_Draft,
        GoogleCloudDialogflowCxV3Experiment_State_Running,
        GoogleCloudDialogflowCxV3Experiment_State_Done,
        GoogleCloudDialogflowCxV3Experiment_State_ROLLOUTFAILED,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
    GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
      ( GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_COUNTTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALNOMATCHCOUNT,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALTURNCOUNT,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_AVERAGETURNCOUNT,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
    GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
      ( GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_METRICUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CONTAINEDSESSIONNOCALLBACKRATE,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_LIVEAGENTHANDOFFRATE,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CALLBACKSESSIONRATE,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_ABANDONEDSESSIONRATE,
        GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_SESSIONENDRATE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
    GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
      ( GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_Blob,
        GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_JSONPACKAGE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
    GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
      ( GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_Blob,
        GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_JSONPACKAGE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
    GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
      ( GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Blob,
        GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Json,
        GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Csv,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
    GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
      ( GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Blob,
        GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Json,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
    GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
      ( GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYUNSPECIFIED,
        GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYCREATENEW,
        GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYREPLACE,
        GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYKEEP,
        GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYMERGE,
        GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYTHROWERROR,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
    GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
      ( GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_MERGEOPTIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Replace,
        GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Merge,
        GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Rename,
        GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_REPORTCONFLICT,
        GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Keep,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
    GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
      ( GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_IMPORTOPTIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Keep,
        GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Fallback,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
    GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
      ( GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_MERGEOPTIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Reject,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Replace,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Merge,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Rename,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_REPORTCONFLICT,
        GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Keep,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
    GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
      ( GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE,
        GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
    GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
      ( GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED,
        GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEBESTAVAILABLE,
        GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USESTANDARD,
        GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEENHANCED,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3Match_MatchType
    GoogleCloudDialogflowCxV3Match_MatchType
      ( GoogleCloudDialogflowCxV3Match_MatchType_MATCHTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3Match_MatchType_Intent,
        GoogleCloudDialogflowCxV3Match_MatchType_DIRECTINTENT,
        GoogleCloudDialogflowCxV3Match_MatchType_PARAMETERFILLING,
        GoogleCloudDialogflowCxV3Match_MatchType_NOMATCH,
        GoogleCloudDialogflowCxV3Match_MatchType_NOINPUT,
        GoogleCloudDialogflowCxV3Match_MatchType_Event,
        GoogleCloudDialogflowCxV3Match_MatchType_KNOWLEDGECONNECTOR,
        GoogleCloudDialogflowCxV3Match_MatchType_Playbook,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
    GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
      ( GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEUNSPECIFIED,
        GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEAUTOMATIC,
        GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEMANUAL,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3NluSettings_ModelType
    GoogleCloudDialogflowCxV3NluSettings_ModelType
      ( GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPESTANDARD,
        GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEADVANCED,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
    GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
      ( GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGUNSPECIFIED,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_LINEAR_16,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_MP3,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMP364KBPS,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGOGGOPUS,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMULAW,
        GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGALAW,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
    GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
      ( GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED,
        GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Empty,
        GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Invalid,
        GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Filled,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
    GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
      ( GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_RESPONSETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_ENTRYPROMPT,
        GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_PARAMETERPROMPT,
        GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_HANDLERPROMPT,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
    GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
      ( GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_RESTOREOPTIONUNSPECIFIED,
        GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Keep,
        GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Fallback,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem
    GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem
      ( GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_PURGEDATATYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_DIALOGFLOWHISTORY,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope
    GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope
      ( GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTIONSCOPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTDISKSTORAGE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy
    GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy
      ( GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTIONSTRATEGYUNSPECIFIED,
        GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTWITHSERVICE,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy
    GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy
      ( GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_RETENTIONSTRATEGYUNSPECIFIED,
        GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_REMOVEAFTERCONVERSATION,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
    GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
      ( GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_AUDIOFORMATUNSPECIFIED,
        GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Mulaw,
        GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_MP3,
        GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Ogg,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
    GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
      ( GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
        GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
        GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3TestCaseResult_TestResult
    GoogleCloudDialogflowCxV3TestCaseResult_TestResult
      ( GoogleCloudDialogflowCxV3TestCaseResult_TestResult_TESTRESULTUNSPECIFIED,
        GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Passed,
        GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3TestRunDifference_Type
    GoogleCloudDialogflowCxV3TestRunDifference_Type
      ( GoogleCloudDialogflowCxV3TestRunDifference_Type_DIFFTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3TestRunDifference_Type_Intent,
        GoogleCloudDialogflowCxV3TestRunDifference_Type_Page,
        GoogleCloudDialogflowCxV3TestRunDifference_Type_Parameters,
        GoogleCloudDialogflowCxV3TestRunDifference_Type_Utterance,
        GoogleCloudDialogflowCxV3TestRunDifference_Type_Flow,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
    GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
      ( GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
        GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDINTENT,
        GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
    GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
      ( GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_RESOURCETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Agent,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intent,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASE,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTPARAMETER,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intents,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASES,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPE,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPES,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Webhook,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Flow,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Page,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Pages,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_TRANSITIONROUTEGROUP,
        GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_AGENTTRANSITIONROUTEGROUP,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3ValidationMessage_Severity
    GoogleCloudDialogflowCxV3ValidationMessage_Severity
      ( GoogleCloudDialogflowCxV3ValidationMessage_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudDialogflowCxV3ValidationMessage_Severity_Info,
        GoogleCloudDialogflowCxV3ValidationMessage_Severity_Warning,
        GoogleCloudDialogflowCxV3ValidationMessage_Severity_Error',
        ..
      ),

    -- * GoogleCloudDialogflowCxV3Version_State
    GoogleCloudDialogflowCxV3Version_State
      ( GoogleCloudDialogflowCxV3Version_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowCxV3Version_State_Running,
        GoogleCloudDialogflowCxV3Version_State_Succeeded,
        GoogleCloudDialogflowCxV3Version_State_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
    GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
      ( GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
        GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERMALE,
        GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERFEMALE,
        GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERNEUTRAL,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
    GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
      ( GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Post',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Get',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Head',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Put',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Delete',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Patch',
        GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Options,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
    GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
      ( GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_None,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_IDTOKEN,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
    GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
      ( GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Standard,
        GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Flexible,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
    GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
      ( GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED,
        GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Append,
        GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Replace,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
    GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
      ( GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Passed,
        GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
    GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
      ( GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_PUBLICWEB,
        GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Unstructured,
        GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Structured,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
    GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
      ( GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
    GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
      ( GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEBESTAVAILABLE,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USESTANDARD,
        GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEENHANCED,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
    GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
      ( GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Empty,
        GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Invalid,
        GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Filled,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
    GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
      ( GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_TESTRESULTUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Passed,
        GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
    GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
      ( GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_DIFFTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Intent,
        GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Page,
        GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Parameters,
        GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Utterance,
        GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Flow,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
    GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
      ( GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDINTENT,
        GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
      ( GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Post',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Get',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Head',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Put',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Delete',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Patch',
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Options,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
      ( GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_None,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_IDTOKEN,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
      ( GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Standard,
        GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Flexible,
        ..
      ),

    -- * GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
    GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
      ( GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED,
        GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Append,
        GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Replace,
        ..
      ),

    -- * GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
    GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
      ( GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED,
        GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL,
        GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL,
        ..
      ),

    -- * GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
    GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
      ( GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
    GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
      ( GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
        GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
        ..
      ),

    -- * GoogleCloudDialogflowV2ConversationEvent_Type
    GoogleCloudDialogflowV2ConversationEvent_Type
      ( GoogleCloudDialogflowV2ConversationEvent_Type_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONSTARTED,
        GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONFINISHED,
        GoogleCloudDialogflowV2ConversationEvent_Type_HUMANINTERVENTIONNEEDED,
        GoogleCloudDialogflowV2ConversationEvent_Type_NEWMESSAGE,
        GoogleCloudDialogflowV2ConversationEvent_Type_UNRECOVERABLEERROR,
        ..
      ),

    -- * GoogleCloudDialogflowV2ConversationModel_State
    GoogleCloudDialogflowV2ConversationModel_State
      ( GoogleCloudDialogflowV2ConversationModel_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowV2ConversationModel_State_Creating,
        GoogleCloudDialogflowV2ConversationModel_State_Undeployed,
        GoogleCloudDialogflowV2ConversationModel_State_Deploying,
        GoogleCloudDialogflowV2ConversationModel_State_Deployed,
        GoogleCloudDialogflowV2ConversationModel_State_Undeploying,
        GoogleCloudDialogflowV2ConversationModel_State_Deleting,
        GoogleCloudDialogflowV2ConversationModel_State_Failed,
        GoogleCloudDialogflowV2ConversationModel_State_Pending,
        ..
      ),

    -- * GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
    GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
      ( GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Initializing,
        GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Running,
        GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Cancelled,
        GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Succeeded,
        GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Failed,
        ..
      ),

    -- * GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
    GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
      ( GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Pending,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Succeeded,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Failed,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelled,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelling,
        GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Training,
        ..
      ),

    -- * GoogleCloudDialogflowV2EntityType_AutoExpansionMode
    GoogleCloudDialogflowV2EntityType_AutoExpansionMode
      ( GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
        GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
        ..
      ),

    -- * GoogleCloudDialogflowV2EntityType_Kind
    GoogleCloudDialogflowV2EntityType_Kind
      ( GoogleCloudDialogflowV2EntityType_Kind_KINDUNSPECIFIED,
        GoogleCloudDialogflowV2EntityType_Kind_KINDMAP,
        GoogleCloudDialogflowV2EntityType_Kind_KINDLIST,
        GoogleCloudDialogflowV2EntityType_Kind_KINDREGEXP,
        ..
      ),

    -- * GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
    GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
      ( GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Facebook,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Slack,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Telegram,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Kik,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Skype,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Line,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Viber,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE,
        GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS,
        ..
      ),

    -- * GoogleCloudDialogflowV2Intent_WebhookState
    GoogleCloudDialogflowV2Intent_WebhookState
      ( GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED,
        GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLED,
        GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentMessage_Platform
    GoogleCloudDialogflowV2IntentMessage_Platform
      ( GoogleCloudDialogflowV2IntentMessage_Platform_PLATFORMUNSPECIFIED,
        GoogleCloudDialogflowV2IntentMessage_Platform_Facebook,
        GoogleCloudDialogflowV2IntentMessage_Platform_Slack,
        GoogleCloudDialogflowV2IntentMessage_Platform_Telegram,
        GoogleCloudDialogflowV2IntentMessage_Platform_Kik,
        GoogleCloudDialogflowV2IntentMessage_Platform_Skype,
        GoogleCloudDialogflowV2IntentMessage_Platform_Line,
        GoogleCloudDialogflowV2IntentMessage_Platform_Viber,
        GoogleCloudDialogflowV2IntentMessage_Platform_ACTIONSONGOOGLE,
        GoogleCloudDialogflowV2IntentMessage_Platform_GOOGLEHANGOUTS,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
      ( GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_White,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
      ( GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION,
        GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
    GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
      ( GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Leading,
        GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Center,
        GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Trailing,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType
    GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType
      ( GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED,
        GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_Audio,
        ..
      ),

    -- * GoogleCloudDialogflowV2IntentTrainingPhrase_Type
    GoogleCloudDialogflowV2IntentTrainingPhrase_Type
      ( GoogleCloudDialogflowV2IntentTrainingPhrase_Type_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Example,
        GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Template,
        ..
      ),

    -- * GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
    GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
      ( GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Pending,
        GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Running,
        GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Done,
        ..
      ),

    -- * GoogleCloudDialogflowV2Message_ParticipantRole
    GoogleCloudDialogflowV2Message_ParticipantRole
      ( GoogleCloudDialogflowV2Message_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2Message_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2Message_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2Message_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
    GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
      ( GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
        GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
        GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
        ..
      ),

    -- * GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
    GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
      ( GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
    GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
      ( GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
        GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
        ..
      ),

    -- * GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
    GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
      ( GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED,
        GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL,
        GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
    GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
      ( GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
    GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
      ( GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
        GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1ConversationEvent_Type
    GoogleCloudDialogflowV2beta1ConversationEvent_Type
      ( GoogleCloudDialogflowV2beta1ConversationEvent_Type_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONSTARTED,
        GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONFINISHED,
        GoogleCloudDialogflowV2beta1ConversationEvent_Type_HUMANINTERVENTIONNEEDED,
        GoogleCloudDialogflowV2beta1ConversationEvent_Type_NEWMESSAGE,
        GoogleCloudDialogflowV2beta1ConversationEvent_Type_UNRECOVERABLEERROR,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode
    GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode
      ( GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1EntityType_Kind
    GoogleCloudDialogflowV2beta1EntityType_Kind
      ( GoogleCloudDialogflowV2beta1EntityType_Kind_KINDUNSPECIFIED,
        GoogleCloudDialogflowV2beta1EntityType_Kind_KINDMAP,
        GoogleCloudDialogflowV2beta1EntityType_Kind_KINDLIST,
        GoogleCloudDialogflowV2beta1EntityType_Kind_KINDREGEXP,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
    GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
      ( GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Facebook,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Slack,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telegram,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Kik,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Skype,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Line,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Viber,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telephony,
        GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1Intent_WebhookState
    GoogleCloudDialogflowV2beta1Intent_WebhookState
      ( GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLED,
        GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessage_Platform
    GoogleCloudDialogflowV2beta1IntentMessage_Platform
      ( GoogleCloudDialogflowV2beta1IntentMessage_Platform_PLATFORMUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Facebook,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Slack,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telegram,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Kik,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Skype,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Line,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Viber,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_ACTIONSONGOOGLE,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telephony,
        GoogleCloudDialogflowV2beta1IntentMessage_Platform_GOOGLEHANGOUTS,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
      ( GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_White,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
      ( GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION,
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
    GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
      ( GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Leading,
        GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Center,
        GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Trailing,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType
    GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType
      ( GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_Audio,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
    GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
      ( GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_HEIGHTUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Short,
        GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Medium,
        GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Tall,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
    GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
      ( GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_CARDWIDTHUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Small,
        GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Medium,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
    GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
      ( GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_CARDORIENTATIONUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Horizontal,
        GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Vertical,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
    GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
      ( GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_THUMBNAILIMAGEALIGNMENTUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Left',
        GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Right',
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
    GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
      ( GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Example,
        GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Template,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
    GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
      ( GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_MATCHCONFIDENCELEVELUNSPECIFIED,
        GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Low,
        GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Medium,
        GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_High,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
    GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
      ( GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Pending,
        GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Running,
        GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Done,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1Message_ParticipantRole
    GoogleCloudDialogflowV2beta1Message_ParticipantRole
      ( GoogleCloudDialogflowV2beta1Message_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1Message_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2beta1Message_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2beta1Message_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
    GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
      ( GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
        GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
    GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
      ( GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
        ..
      ),

    -- * GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
    GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
      ( GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
        GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
        ..
      ),

    -- * GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
    GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
      ( GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
        GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDINTENT,
        GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
        ..
      ),

    -- * ProjectsLocationsAgentsIntentsListIntentView
    ProjectsLocationsAgentsIntentsListIntentView
      ( ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWUNSPECIFIED,
        ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWPARTIAL,
        ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWFULL,
        ..
      ),

    -- * ProjectsLocationsAgentsTestCasesCalculateCoverageType
    ProjectsLocationsAgentsTestCasesCalculateCoverageType
      ( ProjectsLocationsAgentsTestCasesCalculateCoverageType_COVERAGETYPEUNSPECIFIED,
        ProjectsLocationsAgentsTestCasesCalculateCoverageType_Intent,
        ProjectsLocationsAgentsTestCasesCalculateCoverageType_PAGETRANSITION,
        ProjectsLocationsAgentsTestCasesCalculateCoverageType_TRANSITIONROUTEGROUP,
        ..
      ),

    -- * ProjectsLocationsAgentsTestCasesListView
    ProjectsLocationsAgentsTestCasesListView
      ( ProjectsLocationsAgentsTestCasesListView_TESTCASEVIEWUNSPECIFIED,
        ProjectsLocationsAgentsTestCasesListView_Basic,
        ProjectsLocationsAgentsTestCasesListView_Full,
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

-- | Optional. Rating from user for the specific Dialogflow response.
newtype GoogleCloudDialogflowCxV3AnswerFeedback_Rating = GoogleCloudDialogflowCxV3AnswerFeedback_Rating {fromGoogleCloudDialogflowCxV3AnswerFeedback_Rating :: Core.Text}
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

-- | Rating not specified.
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_RATINGUNSPECIFIED :: GoogleCloudDialogflowCxV3AnswerFeedback_Rating
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_RATINGUNSPECIFIED = GoogleCloudDialogflowCxV3AnswerFeedback_Rating "RATING_UNSPECIFIED"

-- | Thumbs up feedback from user.
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSUP :: GoogleCloudDialogflowCxV3AnswerFeedback_Rating
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSUP = GoogleCloudDialogflowCxV3AnswerFeedback_Rating "THUMBS_UP"

-- | Thumbs down feedback from user.
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSDOWN :: GoogleCloudDialogflowCxV3AnswerFeedback_Rating
pattern GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSDOWN = GoogleCloudDialogflowCxV3AnswerFeedback_Rating "THUMBS_DOWN"

{-# COMPLETE
  GoogleCloudDialogflowCxV3AnswerFeedback_Rating_RATINGUNSPECIFIED,
  GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSUP,
  GoogleCloudDialogflowCxV3AnswerFeedback_Rating_THUMBSDOWN,
  GoogleCloudDialogflowCxV3AnswerFeedback_Rating
  #-}

-- | Optional. The attribute type to be used to determine the boost amount. The attribute value can be derived from the field value of the specified field/name. In the case of numerical it is straightforward i.e. attribute/value = numerical/field/value. In the case of freshness however, attribute/value = (time.now() - datetime/field_value).
newtype GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType {fromGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType :: Core.Text}
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

-- | Unspecified AttributeType.
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_ATTRIBUTETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_ATTRIBUTETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType "ATTRIBUTE_TYPE_UNSPECIFIED"

-- | The value of the numerical field will be used to dynamically update the boost amount. In this case, the attribute/value (the x value) of the control point will be the actual value of the numerical field for which the boost/amount is specified.
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Numerical :: GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Numerical = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType "NUMERICAL"

-- | For the freshness use case the attribute value will be the duration between the current time and the date in the datetime field specified. The value must be formatted as an XSD @dayTimeDuration@ value (a restricted subset of an ISO 8601 duration value). The pattern for this is: @nDnM]@. E.g. @5D@, @3DT12H30M@, @T24H@.
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Freshness :: GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Freshness = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType "FRESHNESS"

{-# COMPLETE
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_ATTRIBUTETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Numerical,
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType_Freshness,
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_AttributeType
  #-}

-- | Optional. The interpolation type to be applied to connect the control points listed below.
newtype GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType {fromGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType :: Core.Text}
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

-- | Interpolation type is unspecified. In this case, it defaults to Linear.
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_INTERPOLATIONTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_INTERPOLATIONTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType "INTERPOLATION_TYPE_UNSPECIFIED"

-- | Piecewise linear interpolation will be applied.
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_Linear :: GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType
pattern GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_Linear = GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType "LINEAR"

{-# COMPLETE
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_INTERPOLATIONTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType_Linear,
  GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpec_InterpolationType
  #-}

-- | The result of this continuous test run, i.e. whether all the tests in this continuous test run pass or not.
newtype GoogleCloudDialogflowCxV3ContinuousTestResult_Result = GoogleCloudDialogflowCxV3ContinuousTestResult_Result {fromGoogleCloudDialogflowCxV3ContinuousTestResult_Result :: Core.Text}
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

-- | Not specified. Should never be used.
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED :: GoogleCloudDialogflowCxV3ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED = GoogleCloudDialogflowCxV3ContinuousTestResult_Result "AGGREGATED_TEST_RESULT_UNSPECIFIED"

-- | All the tests passed.
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Passed :: GoogleCloudDialogflowCxV3ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Passed = GoogleCloudDialogflowCxV3ContinuousTestResult_Result "PASSED"

-- | At least one test did not pass.
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Failed :: GoogleCloudDialogflowCxV3ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Failed = GoogleCloudDialogflowCxV3ContinuousTestResult_Result "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED,
  GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Passed,
  GoogleCloudDialogflowCxV3ContinuousTestResult_Result_Failed,
  GoogleCloudDialogflowCxV3ContinuousTestResult_Result
  #-}

-- | The type of the connected data store.
newtype GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType = GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType {fromGoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType :: Core.Text}
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

-- | Not specified. This value indicates that the data store type is not specified, so it will not be used during search.
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType "DATA_STORE_TYPE_UNSPECIFIED"

-- | A data store that contains public web content.
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_PUBLICWEB :: GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_PUBLICWEB = GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType "PUBLIC_WEB"

-- | A data store that contains unstructured private data.
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Unstructured :: GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Unstructured = GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType "UNSTRUCTURED"

-- | A data store that contains structured data (for example FAQ).
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Structured :: GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Structured = GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType "STRUCTURED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_PUBLICWEB,
  GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Unstructured,
  GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType_Structured,
  GoogleCloudDialogflowCxV3DataStoreConnection_DataStoreType
  #-}

-- | Represents the decision of the grounding check.
newtype GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision {fromGoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision :: Core.Text}
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

-- | Decision not specified.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_GROUNDINGDECISIONUNSPECIFIED :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_GROUNDINGDECISIONUNSPECIFIED = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision "GROUNDING_DECISION_UNSPECIFIED"

-- | Grounding have accepted the answer.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_ACCEPTEDBYGROUNDING :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_ACCEPTEDBYGROUNDING = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision "ACCEPTED_BY_GROUNDING"

-- | Grounding have rejected the answer.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_REJECTEDBYGROUNDING :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_REJECTEDBYGROUNDING = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision "REJECTED_BY_GROUNDING"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_GROUNDINGDECISIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_ACCEPTEDBYGROUNDING,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision_REJECTEDBYGROUNDING,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Decision
  #-}

-- | Grounding score bucket setting.
newtype GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score {fromGoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score :: Core.Text}
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

-- | Score not specified.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_GROUNDINGSCOREBUCKETUNSPECIFIED :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_GROUNDINGSCOREBUCKETUNSPECIFIED = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "GROUNDING_SCORE_BUCKET_UNSPECIFIED"

-- | We have very low confidence that the answer is grounded.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYLOW :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYLOW = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "VERY_LOW"

-- | We have low confidence that the answer is grounded.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Low :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Low = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "LOW"

-- | We have medium confidence that the answer is grounded.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Medium :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Medium = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "MEDIUM"

-- | We have high confidence that the answer is grounded.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_High :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_High = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "HIGH"

-- | We have very high confidence that the answer is grounded.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYHIGH :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYHIGH = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score "VERY_HIGH"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_GROUNDINGSCOREBUCKETUNSPECIFIED,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYLOW,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Low,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_Medium,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_High,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score_VERYHIGH,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals_Score
  #-}

-- | Specifies banned phrase match subject.
newtype GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch {fromGoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch :: Core.Text}
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

-- | No banned phrase check was executed.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHUNSPECIFIED :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHUNSPECIFIED = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch "BANNED_PHRASE_MATCH_UNSPECIFIED"

-- | All banned phrase checks led to no match.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHNONE :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHNONE = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch "BANNED_PHRASE_MATCH_NONE"

-- | A banned phrase matched the query.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHQUERY :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHQUERY = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch "BANNED_PHRASE_MATCH_QUERY"

-- | A banned phrase matched the response.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHRESPONSE :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHRESPONSE = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch "BANNED_PHRASE_MATCH_RESPONSE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHUNSPECIFIED,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHNONE,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHQUERY,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch_BANNEDPHRASEMATCHRESPONSE,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_BannedPhraseMatch
  #-}

-- | Safety decision.
newtype GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision {fromGoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision :: Core.Text}
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

-- | Decision not specified.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_SAFETYDECISIONUNSPECIFIED :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_SAFETYDECISIONUNSPECIFIED = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision "SAFETY_DECISION_UNSPECIFIED"

-- | No manual or automatic safety check fired.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_ACCEPTEDBYSAFETYCHECK :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_ACCEPTEDBYSAFETYCHECK = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision "ACCEPTED_BY_SAFETY_CHECK"

-- | One ore more safety checks fired.
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_REJECTEDBYSAFETYCHECK :: GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
pattern GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_REJECTEDBYSAFETYCHECK = GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision "REJECTED_BY_SAFETY_CHECK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_SAFETYDECISIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_ACCEPTEDBYSAFETYCHECK,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision_REJECTEDBYSAFETYCHECK,
  GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals_Decision
  #-}

-- | The current state of the deployment.
newtype GoogleCloudDialogflowCxV3Deployment_State = GoogleCloudDialogflowCxV3Deployment_State {fromGoogleCloudDialogflowCxV3Deployment_State :: Core.Text}
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

-- | State unspecified.
pattern GoogleCloudDialogflowCxV3Deployment_State_STATEUNSPECIFIED :: GoogleCloudDialogflowCxV3Deployment_State
pattern GoogleCloudDialogflowCxV3Deployment_State_STATEUNSPECIFIED = GoogleCloudDialogflowCxV3Deployment_State "STATE_UNSPECIFIED"

-- | The deployment is running.
pattern GoogleCloudDialogflowCxV3Deployment_State_Running :: GoogleCloudDialogflowCxV3Deployment_State
pattern GoogleCloudDialogflowCxV3Deployment_State_Running = GoogleCloudDialogflowCxV3Deployment_State "RUNNING"

-- | The deployment succeeded.
pattern GoogleCloudDialogflowCxV3Deployment_State_Succeeded :: GoogleCloudDialogflowCxV3Deployment_State
pattern GoogleCloudDialogflowCxV3Deployment_State_Succeeded = GoogleCloudDialogflowCxV3Deployment_State "SUCCEEDED"

-- | The deployment failed.
pattern GoogleCloudDialogflowCxV3Deployment_State_Failed :: GoogleCloudDialogflowCxV3Deployment_State
pattern GoogleCloudDialogflowCxV3Deployment_State_Failed = GoogleCloudDialogflowCxV3Deployment_State "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3Deployment_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowCxV3Deployment_State_Running,
  GoogleCloudDialogflowCxV3Deployment_State_Succeeded,
  GoogleCloudDialogflowCxV3Deployment_State_Failed,
  GoogleCloudDialogflowCxV3Deployment_State
  #-}

-- | Response type.
newtype GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType = GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType {fromGoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType :: Core.Text}
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

-- | Not specified. This should never happen.
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_RESPONSETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_RESPONSETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType "RESPONSE_TYPE_UNSPECIFIED"

-- | Partial response. e.g. Aggregated responses in a Fulfillment that enables @return_partial_response@ can be returned as partial response. WARNING: partial response is not eligible for barge-in.
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Partial :: GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Partial = GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType "PARTIAL"

-- | Final response.
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Final :: GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
pattern GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Final = GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType "FINAL"

{-# COMPLETE
  GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_RESPONSETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Partial,
  GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType_Final,
  GoogleCloudDialogflowCxV3DetectIntentResponse_ResponseType
  #-}

-- | Indicates whether the entity type can be automatically expanded.
newtype GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode = GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode {fromGoogleCloudDialogflowCxV3EntityType_AutoExpansionMode :: Core.Text}
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

-- | Auto expansion disabled for the entity.
pattern GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED :: GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED = GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_UNSPECIFIED"

-- | Allows an agent to recognize values that have not been explicitly listed in the entity.
pattern GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT :: GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT = GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_DEFAULT"

{-# COMPLETE
  GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
  GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
  GoogleCloudDialogflowCxV3EntityType_AutoExpansionMode
  #-}

-- | Required. Indicates the kind of entity type.
newtype GoogleCloudDialogflowCxV3EntityType_Kind = GoogleCloudDialogflowCxV3EntityType_Kind {fromGoogleCloudDialogflowCxV3EntityType_Kind :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDUNSPECIFIED :: GoogleCloudDialogflowCxV3EntityType_Kind
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDUNSPECIFIED = GoogleCloudDialogflowCxV3EntityType_Kind "KIND_UNSPECIFIED"

-- | Map entity types allow mapping of a group of synonyms to a canonical value.
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDMAP :: GoogleCloudDialogflowCxV3EntityType_Kind
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDMAP = GoogleCloudDialogflowCxV3EntityType_Kind "KIND_MAP"

-- | List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDLIST :: GoogleCloudDialogflowCxV3EntityType_Kind
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDLIST = GoogleCloudDialogflowCxV3EntityType_Kind "KIND_LIST"

-- | Regexp entity types allow to specify regular expressions in entries values.
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDREGEXP :: GoogleCloudDialogflowCxV3EntityType_Kind
pattern GoogleCloudDialogflowCxV3EntityType_Kind_KINDREGEXP = GoogleCloudDialogflowCxV3EntityType_Kind "KIND_REGEXP"

{-# COMPLETE
  GoogleCloudDialogflowCxV3EntityType_Kind_KINDUNSPECIFIED,
  GoogleCloudDialogflowCxV3EntityType_Kind_KINDMAP,
  GoogleCloudDialogflowCxV3EntityType_Kind_KINDLIST,
  GoogleCloudDialogflowCxV3EntityType_Kind_KINDREGEXP,
  GoogleCloudDialogflowCxV3EntityType_Kind
  #-}

-- | The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
newtype GoogleCloudDialogflowCxV3Experiment_State = GoogleCloudDialogflowCxV3Experiment_State {fromGoogleCloudDialogflowCxV3Experiment_State :: Core.Text}
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

-- | State unspecified.
pattern GoogleCloudDialogflowCxV3Experiment_State_STATEUNSPECIFIED :: GoogleCloudDialogflowCxV3Experiment_State
pattern GoogleCloudDialogflowCxV3Experiment_State_STATEUNSPECIFIED = GoogleCloudDialogflowCxV3Experiment_State "STATE_UNSPECIFIED"

-- | The experiment is created but not started yet.
pattern GoogleCloudDialogflowCxV3Experiment_State_Draft :: GoogleCloudDialogflowCxV3Experiment_State
pattern GoogleCloudDialogflowCxV3Experiment_State_Draft = GoogleCloudDialogflowCxV3Experiment_State "DRAFT"

-- | The experiment is running.
pattern GoogleCloudDialogflowCxV3Experiment_State_Running :: GoogleCloudDialogflowCxV3Experiment_State
pattern GoogleCloudDialogflowCxV3Experiment_State_Running = GoogleCloudDialogflowCxV3Experiment_State "RUNNING"

-- | The experiment is done.
pattern GoogleCloudDialogflowCxV3Experiment_State_Done :: GoogleCloudDialogflowCxV3Experiment_State
pattern GoogleCloudDialogflowCxV3Experiment_State_Done = GoogleCloudDialogflowCxV3Experiment_State "DONE"

-- | The experiment with auto-rollout enabled has failed.
pattern GoogleCloudDialogflowCxV3Experiment_State_ROLLOUTFAILED :: GoogleCloudDialogflowCxV3Experiment_State
pattern GoogleCloudDialogflowCxV3Experiment_State_ROLLOUTFAILED = GoogleCloudDialogflowCxV3Experiment_State "ROLLOUT_FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3Experiment_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowCxV3Experiment_State_Draft,
  GoogleCloudDialogflowCxV3Experiment_State_Running,
  GoogleCloudDialogflowCxV3Experiment_State_Done,
  GoogleCloudDialogflowCxV3Experiment_State_ROLLOUTFAILED,
  GoogleCloudDialogflowCxV3Experiment_State
  #-}

-- | Count-based metric type. Only one of type or count_type is specified in each Metric.
newtype GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType = GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType {fromGoogleCloudDialogflowCxV3ExperimentResultMetric_CountType :: Core.Text}
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

-- | Count type unspecified.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_COUNTTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_COUNTTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType "COUNT_TYPE_UNSPECIFIED"

-- | Total number of occurrences of a \'NO_MATCH\'.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALNOMATCHCOUNT :: GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALNOMATCHCOUNT = GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType "TOTAL_NO_MATCH_COUNT"

-- | Total number of turn counts.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALTURNCOUNT :: GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALTURNCOUNT = GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType "TOTAL_TURN_COUNT"

-- | Average turn count in a session.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_AVERAGETURNCOUNT :: GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_AVERAGETURNCOUNT = GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType "AVERAGE_TURN_COUNT"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_COUNTTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALNOMATCHCOUNT,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_TOTALTURNCOUNT,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType_AVERAGETURNCOUNT,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_CountType
  #-}

-- | Ratio-based metric type. Only one of type or count_type is specified in each Metric.
newtype GoogleCloudDialogflowCxV3ExperimentResultMetric_Type = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type {fromGoogleCloudDialogflowCxV3ExperimentResultMetric_Type :: Core.Text}
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

-- | Metric unspecified.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_METRICUNSPECIFIED :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_METRICUNSPECIFIED = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "METRIC_UNSPECIFIED"

-- | Percentage of contained sessions without user calling back in 24 hours.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CONTAINEDSESSIONNOCALLBACKRATE :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CONTAINEDSESSIONNOCALLBACKRATE = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "CONTAINED_SESSION_NO_CALLBACK_RATE"

-- | Percentage of sessions that were handed to a human agent.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_LIVEAGENTHANDOFFRATE :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_LIVEAGENTHANDOFFRATE = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "LIVE_AGENT_HANDOFF_RATE"

-- | Percentage of sessions with the same user calling back.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CALLBACKSESSIONRATE :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CALLBACKSESSIONRATE = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "CALLBACK_SESSION_RATE"

-- | Percentage of sessions where user hung up.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_ABANDONEDSESSIONRATE :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_ABANDONEDSESSIONRATE = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "ABANDONED_SESSION_RATE"

-- | Percentage of sessions reached Dialogflow \'END/PAGE\' or \'END/SESSION\'.
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_SESSIONENDRATE :: GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
pattern GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_SESSIONENDRATE = GoogleCloudDialogflowCxV3ExperimentResultMetric_Type "SESSION_END_RATE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_METRICUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CONTAINEDSESSIONNOCALLBACKRATE,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_LIVEAGENTHANDOFFRATE,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_CALLBACKSESSIONRATE,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_ABANDONEDSESSIONRATE,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type_SESSIONENDRATE,
  GoogleCloudDialogflowCxV3ExperimentResultMetric_Type
  #-}

-- | Optional. The data format of the exported agent. If not specified, @BLOB@ is assumed.
newtype GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat = GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat {fromGoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat :: Core.Text}
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

-- | Unspecified format.
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_DATAFORMATUNSPECIFIED = GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Agent content will be exported as raw bytes.
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_Blob :: GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_Blob = GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat "BLOB"

-- | Agent content will be exported in JSON Package format.
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_JSONPACKAGE :: GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_JSONPACKAGE = GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat "JSON_PACKAGE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_Blob,
  GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat_JSONPACKAGE,
  GoogleCloudDialogflowCxV3ExportAgentRequest_DataFormat
  #-}

-- | Optional. The data format of the exported entity types. If not specified, @BLOB@ is assumed.
newtype GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat = GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat {fromGoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat :: Core.Text}
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

-- | Unspecified format. Treated as @BLOB@.
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_DATAFORMATUNSPECIFIED = GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | EntityTypes will be exported as raw bytes.
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_Blob :: GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_Blob = GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat "BLOB"

-- | EntityTypes will be exported in JSON Package format.
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_JSONPACKAGE :: GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_JSONPACKAGE = GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat "JSON_PACKAGE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_Blob,
  GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat_JSONPACKAGE,
  GoogleCloudDialogflowCxV3ExportEntityTypesRequest_DataFormat
  #-}

-- | Optional. The data format of the exported intents. If not specified, @BLOB@ is assumed.
newtype GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat = GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat {fromGoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat :: Core.Text}
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

-- | Unspecified format. Treated as @BLOB@.
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_DATAFORMATUNSPECIFIED = GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Intents will be exported as raw bytes.
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Blob :: GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Blob = GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat "BLOB"

-- | Intents will be exported in JSON format.
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Json :: GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Json = GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat "JSON"

-- | Intents will be exported in CSV format.
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Csv :: GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Csv = GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat "CSV"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Blob,
  GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Json,
  GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat_Csv,
  GoogleCloudDialogflowCxV3ExportIntentsRequest_DataFormat
  #-}

-- | The data format of the exported test cases. If not specified, @BLOB@ is assumed.
newtype GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat = GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat {fromGoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat :: Core.Text}
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

-- | Unspecified format.
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_DATAFORMATUNSPECIFIED = GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Raw bytes.
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Blob :: GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Blob = GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat "BLOB"

-- | JSON format.
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Json :: GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
pattern GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Json = GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat "JSON"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Blob,
  GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat_Json,
  GoogleCloudDialogflowCxV3ExportTestCasesRequest_DataFormat
  #-}

-- | Optional. Import strategy for resource conflict resolution, applied globally throughout the flow. It will be applied for all display name conflicts in the imported content. If not specified, \'CREATE_NEW\' is assumed.
newtype GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy {fromGoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy :: Core.Text}
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

-- | Unspecified. Treated as \'CREATE_NEW\'.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYUNSPECIFIED :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYUNSPECIFIED = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_UNSPECIFIED"

-- | Create a new resource with a numeric suffix appended to the end of the existing display name.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYCREATENEW :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYCREATENEW = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_CREATE_NEW"

-- | Replace existing resource with incoming resource in the content to be imported.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYREPLACE :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYREPLACE = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_REPLACE"

-- | Keep existing resource and discard incoming resource in the content to be imported.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYKEEP :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYKEEP = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_KEEP"

-- | Combine existing and incoming resources when a conflict is encountered.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYMERGE :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYMERGE = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_MERGE"

-- | Throw error if a conflict is encountered.
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYTHROWERROR :: GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
pattern GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYTHROWERROR = GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy "IMPORT_STRATEGY_THROW_ERROR"

{-# COMPLETE
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYUNSPECIFIED,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYCREATENEW,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYREPLACE,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYKEEP,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYMERGE,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy_IMPORTSTRATEGYTHROWERROR,
  GoogleCloudDialogflowCxV3FlowImportStrategy_GlobalImportStrategy
  #-}

-- | Required. Merge option for importing entity types.
newtype GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption {fromGoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption :: Core.Text}
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

-- | Unspecified. If used, system uses REPORT_CONFLICT as default.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_MERGEOPTIONUNSPECIFIED :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_MERGEOPTIONUNSPECIFIED = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "MERGE_OPTION_UNSPECIFIED"

-- | Replace the original entity type in the agent with the new entity type when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Replace :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Replace = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "REPLACE"

-- | Merge the original entity type with the new entity type when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Merge :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Merge = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "MERGE"

-- | Create new entity types with new display names to differentiate them from the existing entity types when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Rename :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Rename = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "RENAME"

-- | Report conflict information if display names conflict is detected. Otherwise, import entity types.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_REPORTCONFLICT :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_REPORTCONFLICT = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "REPORT_CONFLICT"

-- | Keep the original entity type and discard the conflicting new entity type when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Keep :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Keep = GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption "KEEP"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_MERGEOPTIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Replace,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Merge,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Rename,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_REPORTCONFLICT,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption_Keep,
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest_MergeOption
  #-}

-- | Flow import mode. If not specified, @KEEP@ is assumed.
newtype GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption = GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption {fromGoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption :: Core.Text}
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

-- | Unspecified. Treated as @KEEP@.
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_IMPORTOPTIONUNSPECIFIED :: GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_IMPORTOPTIONUNSPECIFIED = GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption "IMPORT_OPTION_UNSPECIFIED"

-- | Always respect settings in exported flow content. It may cause a import failure if some settings (e.g. custom NLU) are not supported in the agent to import into.
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Keep :: GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Keep = GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption "KEEP"

-- | Fallback to default settings if some settings are not supported in the agent to import into. E.g. Standard NLU will be used if custom NLU is not available.
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Fallback :: GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
pattern GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Fallback = GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption "FALLBACK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_IMPORTOPTIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Keep,
  GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption_Fallback,
  GoogleCloudDialogflowCxV3ImportFlowRequest_ImportOption
  #-}

-- | Merge option for importing intents. If not specified, @REJECT@ is assumed.
newtype GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption {fromGoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption :: Core.Text}
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

-- | Unspecified. Should not be used.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_MERGEOPTIONUNSPECIFIED :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_MERGEOPTIONUNSPECIFIED = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "MERGE_OPTION_UNSPECIFIED"

-- | DEPRECATED: Please use REPORT_CONFLICT instead. Fail the request if there are intents whose display names conflict with the display names of intents in the agent.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Reject :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Reject = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "REJECT"

-- | Replace the original intent in the agent with the new intent when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Replace :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Replace = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "REPLACE"

-- | Merge the original intent with the new intent when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Merge :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Merge = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "MERGE"

-- | Create new intents with new display names to differentiate them from the existing intents when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Rename :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Rename = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "RENAME"

-- | Report conflict information if display names conflict is detected. Otherwise, import intents.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_REPORTCONFLICT :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_REPORTCONFLICT = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "REPORT_CONFLICT"

-- | Keep the original intent and discard the conflicting new intent when display name conflicts exist.
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Keep :: GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
pattern GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Keep = GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption "KEEP"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_MERGEOPTIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Reject,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Replace,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Merge,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Rename,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_REPORTCONFLICT,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption_Keep,
  GoogleCloudDialogflowCxV3ImportIntentsRequest_MergeOption
  #-}

-- | Required. Audio encoding of the audio content to process.
newtype GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding {fromGoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding :: Core.Text}
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
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_UNSPECIFIED"

-- | Uncompressed 16-bit signed little-endian samples (Linear PCM).
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16 :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16 = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_LINEAR_16"

-- | <https://xiph.org/flac/documentation.html FLAC> (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of @LINEAR16@. @FLAC@ stream encoding supports 16-bit and 24-bit samples, however, not all fields in @STREAMINFO@ are supported.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_FLAC"

-- | 8-bit samples that compand 14-bit audio samples using G.711 PCMU\/mu-law.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_MULAW"

-- | Adaptive Multi-Rate Narrowband codec. @sample_rate_hertz@ must be 8000.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_AMR"

-- | Adaptive Multi-Rate Wideband codec. @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_AMR_WB"

-- | Opus encoded audio frames in Ogg container (<https://wiki.xiph.org/OggOpus OggOpus>). @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_OGG_OPUS"

-- | Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, @OGG_OPUS@ is highly preferred over Speex encoding. The <https://speex.org/ Speex> encoding supported by Dialogflow API has a header byte in each block, as in MIME type @audio\/x-speex-with-header-byte@. It is a variant of the RTP Speex encoding defined in <https://tools.ietf.org/html/rfc5574 RFC 5574>. The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"

-- | 8-bit samples that compand 13-bit audio samples using G.711 PCMU\/a-law.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW :: GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW = GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding "AUDIO_ENCODING_ALAW"

{-# COMPLETE
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW,
  GoogleCloudDialogflowCxV3InputAudioConfig_AudioEncoding
  #-}

-- | Optional. Which variant of the Speech model to use.
newtype GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant = GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant {fromGoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant :: Core.Text}
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

-- | No model variant specified. In this case Dialogflow defaults to USE/BEST/AVAILABLE.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED :: GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED = GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant "SPEECH_MODEL_VARIANT_UNSPECIFIED"

-- | Use the best available variant of the Speech model that the caller is eligible for.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEBESTAVAILABLE :: GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEBESTAVAILABLE = GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant "USE_BEST_AVAILABLE"

-- | Use standard model variant even if an enhanced model is available. See the <https://cloud.google.com/speech-to-text/docs/enhanced-models Cloud Speech documentation> for details about enhanced models.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USESTANDARD :: GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USESTANDARD = GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant "USE_STANDARD"

-- | Use an enhanced model variant: * If an enhanced variant does not exist for the given model and request language, Dialogflow falls back to the standard variant. The <https://cloud.google.com/speech-to-text/docs/enhanced-models Cloud Speech documentation> describes which models have enhanced variants.
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEENHANCED :: GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEENHANCED = GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant "USE_ENHANCED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED,
  GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEBESTAVAILABLE,
  GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USESTANDARD,
  GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant_USEENHANCED,
  GoogleCloudDialogflowCxV3InputAudioConfig_ModelVariant
  #-}

-- | Type of this Match.
newtype GoogleCloudDialogflowCxV3Match_MatchType = GoogleCloudDialogflowCxV3Match_MatchType {fromGoogleCloudDialogflowCxV3Match_MatchType :: Core.Text}
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

-- | Not specified. Should never be used.
pattern GoogleCloudDialogflowCxV3Match_MatchType_MATCHTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_MATCHTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3Match_MatchType "MATCH_TYPE_UNSPECIFIED"

-- | The query was matched to an intent.
pattern GoogleCloudDialogflowCxV3Match_MatchType_Intent :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_Intent = GoogleCloudDialogflowCxV3Match_MatchType "INTENT"

-- | The query directly triggered an intent.
pattern GoogleCloudDialogflowCxV3Match_MatchType_DIRECTINTENT :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_DIRECTINTENT = GoogleCloudDialogflowCxV3Match_MatchType "DIRECT_INTENT"

-- | The query was used for parameter filling.
pattern GoogleCloudDialogflowCxV3Match_MatchType_PARAMETERFILLING :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_PARAMETERFILLING = GoogleCloudDialogflowCxV3Match_MatchType "PARAMETER_FILLING"

-- | No match was found for the query.
pattern GoogleCloudDialogflowCxV3Match_MatchType_NOMATCH :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_NOMATCH = GoogleCloudDialogflowCxV3Match_MatchType "NO_MATCH"

-- | Indicates an empty query.
pattern GoogleCloudDialogflowCxV3Match_MatchType_NOINPUT :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_NOINPUT = GoogleCloudDialogflowCxV3Match_MatchType "NO_INPUT"

-- | The query directly triggered an event.
pattern GoogleCloudDialogflowCxV3Match_MatchType_Event :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_Event = GoogleCloudDialogflowCxV3Match_MatchType "EVENT"

-- | The query was matched to a Knowledge Connector answer.
pattern GoogleCloudDialogflowCxV3Match_MatchType_KNOWLEDGECONNECTOR :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_KNOWLEDGECONNECTOR = GoogleCloudDialogflowCxV3Match_MatchType "KNOWLEDGE_CONNECTOR"

-- | The query was handled by a @Playbook@.
pattern GoogleCloudDialogflowCxV3Match_MatchType_Playbook :: GoogleCloudDialogflowCxV3Match_MatchType
pattern GoogleCloudDialogflowCxV3Match_MatchType_Playbook = GoogleCloudDialogflowCxV3Match_MatchType "PLAYBOOK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3Match_MatchType_MATCHTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3Match_MatchType_Intent,
  GoogleCloudDialogflowCxV3Match_MatchType_DIRECTINTENT,
  GoogleCloudDialogflowCxV3Match_MatchType_PARAMETERFILLING,
  GoogleCloudDialogflowCxV3Match_MatchType_NOMATCH,
  GoogleCloudDialogflowCxV3Match_MatchType_NOINPUT,
  GoogleCloudDialogflowCxV3Match_MatchType_Event,
  GoogleCloudDialogflowCxV3Match_MatchType_KNOWLEDGECONNECTOR,
  GoogleCloudDialogflowCxV3Match_MatchType_Playbook,
  GoogleCloudDialogflowCxV3Match_MatchType
  #-}

-- | Indicates NLU model training mode.
newtype GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode = GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode {fromGoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode :: Core.Text}
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

-- | Not specified. @MODEL_TRAINING_MODE_AUTOMATIC@ will be used.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEUNSPECIFIED :: GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEUNSPECIFIED = GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode "MODEL_TRAINING_MODE_UNSPECIFIED"

-- | NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEAUTOMATIC :: GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEAUTOMATIC = GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode "MODEL_TRAINING_MODE_AUTOMATIC"

-- | User needs to manually trigger NLU model training. Best for large flows whose models take long time to train.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEMANUAL :: GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
pattern GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEMANUAL = GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode "MODEL_TRAINING_MODE_MANUAL"

{-# COMPLETE
  GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEUNSPECIFIED,
  GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEAUTOMATIC,
  GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode_MODELTRAININGMODEMANUAL,
  GoogleCloudDialogflowCxV3NluSettings_ModelTrainingMode
  #-}

-- | Indicates the type of NLU model.
newtype GoogleCloudDialogflowCxV3NluSettings_ModelType = GoogleCloudDialogflowCxV3NluSettings_ModelType {fromGoogleCloudDialogflowCxV3NluSettings_ModelType :: Core.Text}
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

-- | Not specified. @MODEL_TYPE_STANDARD@ will be used.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3NluSettings_ModelType
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3NluSettings_ModelType "MODEL_TYPE_UNSPECIFIED"

-- | Use standard NLU model.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPESTANDARD :: GoogleCloudDialogflowCxV3NluSettings_ModelType
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPESTANDARD = GoogleCloudDialogflowCxV3NluSettings_ModelType "MODEL_TYPE_STANDARD"

-- | Use advanced NLU model.
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEADVANCED :: GoogleCloudDialogflowCxV3NluSettings_ModelType
pattern GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEADVANCED = GoogleCloudDialogflowCxV3NluSettings_ModelType "MODEL_TYPE_ADVANCED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPESTANDARD,
  GoogleCloudDialogflowCxV3NluSettings_ModelType_MODELTYPEADVANCED,
  GoogleCloudDialogflowCxV3NluSettings_ModelType
  #-}

-- | Required. Audio encoding of the synthesized audio content.
newtype GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding {fromGoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding :: Core.Text}
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
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGUNSPECIFIED :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGUNSPECIFIED = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_UNSPECIFIED"

-- | Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio content returned as LINEAR16 also contains a WAV header.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_LINEAR_16 :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_LINEAR_16 = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_LINEAR_16"

-- | MP3 audio at 32kbps.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_MP3 :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_MP3 = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_MP3"

-- | MP3 audio at 64kbps.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMP364KBPS :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMP364KBPS = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"

-- | Opus encoded audio wrapped in an ogg container. The result will be a file which can be played natively on Android, and in browsers (at least Chrome and Firefox). The quality of the encoding is considerably higher than MP3 while using approximately the same bitrate.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGOGGOPUS :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGOGGOPUS = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_OGG_OPUS"

-- | 8-bit samples that compand 14-bit audio samples using G.711 PCMU\/mu-law.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMULAW :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMULAW = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_MULAW"

-- | 8-bit samples that compand 13-bit audio samples using G.711 PCMU\/a-law.
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGALAW :: GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGALAW = GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding "OUTPUT_AUDIO_ENCODING_ALAW"

{-# COMPLETE
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGUNSPECIFIED,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_LINEAR_16,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUT_AUDIO_ENCODING_MP3,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMP364KBPS,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGOGGOPUS,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGMULAW,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding_OUTPUTAUDIOENCODINGALAW,
  GoogleCloudDialogflowCxV3OutputAudioConfig_AudioEncoding
  #-}

-- | Always present for WebhookRequest. Required for WebhookResponse. The state of the parameter. This field can be set to INVALID by the webhook to invalidate the parameter; other values set by the webhook will be ignored.
newtype GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State = GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State {fromGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED :: GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED = GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State "PARAMETER_STATE_UNSPECIFIED"

-- | Indicates that the parameter does not have a value.
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Empty :: GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Empty = GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State "EMPTY"

-- | Indicates that the parameter value is invalid. This field can be used by the webhook to invalidate the parameter and ask the server to collect it from the user again.
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Invalid :: GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Invalid = GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State "INVALID"

-- | Indicates that the parameter has a value.
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Filled :: GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Filled = GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State "FILLED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED,
  GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Empty,
  GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Invalid,
  GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State_Filled,
  GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo_State
  #-}

-- | Response type.
newtype GoogleCloudDialogflowCxV3ResponseMessage_ResponseType = GoogleCloudDialogflowCxV3ResponseMessage_ResponseType {fromGoogleCloudDialogflowCxV3ResponseMessage_ResponseType :: Core.Text}
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
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_RESPONSETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_RESPONSETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3ResponseMessage_ResponseType "RESPONSE_TYPE_UNSPECIFIED"

-- | The response is from an entry prompt in the page.
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_ENTRYPROMPT :: GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_ENTRYPROMPT = GoogleCloudDialogflowCxV3ResponseMessage_ResponseType "ENTRY_PROMPT"

-- | The response is from form-filling prompt in the page.
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_PARAMETERPROMPT :: GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_PARAMETERPROMPT = GoogleCloudDialogflowCxV3ResponseMessage_ResponseType "PARAMETER_PROMPT"

-- | The response is from a transition route or an event handler in the page or flow or transition route group.
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_HANDLERPROMPT :: GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
pattern GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_HANDLERPROMPT = GoogleCloudDialogflowCxV3ResponseMessage_ResponseType "HANDLER_PROMPT"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_RESPONSETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_ENTRYPROMPT,
  GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_PARAMETERPROMPT,
  GoogleCloudDialogflowCxV3ResponseMessage_ResponseType_HANDLERPROMPT,
  GoogleCloudDialogflowCxV3ResponseMessage_ResponseType
  #-}

-- | Agent restore mode. If not specified, @KEEP@ is assumed.
newtype GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption = GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption {fromGoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption :: Core.Text}
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

-- | Unspecified. Treated as KEEP.
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_RESTOREOPTIONUNSPECIFIED :: GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_RESTOREOPTIONUNSPECIFIED = GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption "RESTORE_OPTION_UNSPECIFIED"

-- | Always respect the settings from the exported agent file. It may cause a restoration failure if some settings (e.g. model type) are not supported in the target agent.
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Keep :: GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Keep = GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption "KEEP"

-- | Fallback to default settings if some settings are not supported in the target agent.
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Fallback :: GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
pattern GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Fallback = GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption "FALLBACK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_RESTOREOPTIONUNSPECIFIED,
  GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Keep,
  GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption_Fallback,
  GoogleCloudDialogflowCxV3RestoreAgentRequest_RestoreOption
  #-}

newtype GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem = GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem {fromGoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem :: Core.Text}
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

-- | Unspecified. Do not use.
pattern GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_PURGEDATATYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem
pattern GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_PURGEDATATYPEUNSPECIFIED = GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem "PURGE_DATA_TYPE_UNSPECIFIED"

-- | Dialogflow history. This does not include Cloud logging, which is owned by the user - not Dialogflow.
pattern GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_DIALOGFLOWHISTORY :: GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem
pattern GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_DIALOGFLOWHISTORY = GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem "DIALOGFLOW_HISTORY"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_PURGEDATATYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem_DIALOGFLOWHISTORY,
  GoogleCloudDialogflowCxV3SecuritySettings_PurgeDataTypesItem
  #-}

-- | Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
newtype GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope = GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope {fromGoogleCloudDialogflowCxV3SecuritySettings_RedactionScope :: Core.Text}
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

-- | Don\'t redact any kind of data.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTIONSCOPEUNSPECIFIED :: GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTIONSCOPEUNSPECIFIED = GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope "REDACTION_SCOPE_UNSPECIFIED"

-- | On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTDISKSTORAGE :: GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTDISKSTORAGE = GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope "REDACT_DISK_STORAGE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTIONSCOPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope_REDACTDISKSTORAGE,
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionScope
  #-}

-- | Strategy that defines how we do redaction.
newtype GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy = GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy {fromGoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy :: Core.Text}
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

-- | Do not redact.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTIONSTRATEGYUNSPECIFIED :: GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTIONSTRATEGYUNSPECIFIED = GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy "REDACTION_STRATEGY_UNSPECIFIED"

-- | Call redaction service to clean up the data to be persisted.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTWITHSERVICE :: GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy
pattern GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTWITHSERVICE = GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy "REDACT_WITH_SERVICE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTIONSTRATEGYUNSPECIFIED,
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy_REDACTWITHSERVICE,
  GoogleCloudDialogflowCxV3SecuritySettings_RedactionStrategy
  #-}

-- | Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
newtype GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy = GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy {fromGoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy :: Core.Text}
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

-- | Retains the persisted data with Dialogflow\'s internal default 365d TTLs.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_RETENTIONSTRATEGYUNSPECIFIED :: GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy
pattern GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_RETENTIONSTRATEGYUNSPECIFIED = GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy "RETENTION_STRATEGY_UNSPECIFIED"

-- | Removes data when the conversation ends. If there is no Conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends.
pattern GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_REMOVEAFTERCONVERSATION :: GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy
pattern GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_REMOVEAFTERCONVERSATION = GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy "REMOVE_AFTER_CONVERSATION"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_RETENTIONSTRATEGYUNSPECIFIED,
  GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy_REMOVEAFTERCONVERSATION,
  GoogleCloudDialogflowCxV3SecuritySettings_RetentionStrategy
  #-}

-- | File format for exported audio file. Currently only in telephony recordings.
newtype GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat = GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat {fromGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat :: Core.Text}
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

-- | Unspecified. Do not use.
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_AUDIOFORMATUNSPECIFIED :: GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_AUDIOFORMATUNSPECIFIED = GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat "AUDIO_FORMAT_UNSPECIFIED"

-- | G.711 mu-law PCM with 8kHz sample rate.
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Mulaw :: GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Mulaw = GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat "MULAW"

-- | MP3 file format.
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_MP3 :: GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_MP3 = GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat "MP3"

-- | OGG Vorbis.
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Ogg :: GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
pattern GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Ogg = GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat "OGG"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_AUDIOFORMATUNSPECIFIED,
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Mulaw,
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_MP3,
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat_Ogg,
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings_AudioFormat
  #-}

-- | Required. Indicates whether the additional data should override or supplement the custom entity type definition.
newtype GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode = GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode {fromGoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED :: GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED = GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_UNSPECIFIED"

-- | The collection of session entities overrides the collection of entities in the corresponding custom entity type.
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE :: GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE = GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_OVERRIDE"

-- | The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to @ListSessionEntityTypes@, @GetSessionEntityType@, @CreateSessionEntityType@ and @UpdateSessionEntityType@ only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT :: GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT = GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

{-# COMPLETE
  GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
  GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
  GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
  GoogleCloudDialogflowCxV3SessionEntityType_EntityOverrideMode
  #-}

-- | Whether the test case passed in the agent environment.
newtype GoogleCloudDialogflowCxV3TestCaseResult_TestResult = GoogleCloudDialogflowCxV3TestCaseResult_TestResult {fromGoogleCloudDialogflowCxV3TestCaseResult_TestResult :: Core.Text}
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

-- | Not specified. Should never be used.
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_TESTRESULTUNSPECIFIED :: GoogleCloudDialogflowCxV3TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_TESTRESULTUNSPECIFIED = GoogleCloudDialogflowCxV3TestCaseResult_TestResult "TEST_RESULT_UNSPECIFIED"

-- | The test passed.
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Passed :: GoogleCloudDialogflowCxV3TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Passed = GoogleCloudDialogflowCxV3TestCaseResult_TestResult "PASSED"

-- | The test did not pass.
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Failed :: GoogleCloudDialogflowCxV3TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Failed = GoogleCloudDialogflowCxV3TestCaseResult_TestResult "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3TestCaseResult_TestResult_TESTRESULTUNSPECIFIED,
  GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Passed,
  GoogleCloudDialogflowCxV3TestCaseResult_TestResult_Failed,
  GoogleCloudDialogflowCxV3TestCaseResult_TestResult
  #-}

-- | The type of diff.
newtype GoogleCloudDialogflowCxV3TestRunDifference_Type = GoogleCloudDialogflowCxV3TestRunDifference_Type {fromGoogleCloudDialogflowCxV3TestRunDifference_Type :: Core.Text}
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

-- | Should never be used.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_DIFFTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_DIFFTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3TestRunDifference_Type "DIFF_TYPE_UNSPECIFIED"

-- | The intent.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Intent :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Intent = GoogleCloudDialogflowCxV3TestRunDifference_Type "INTENT"

-- | The page.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Page :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Page = GoogleCloudDialogflowCxV3TestRunDifference_Type "PAGE"

-- | The parameters.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Parameters :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Parameters = GoogleCloudDialogflowCxV3TestRunDifference_Type "PARAMETERS"

-- | The message utterance.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Utterance :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Utterance = GoogleCloudDialogflowCxV3TestRunDifference_Type "UTTERANCE"

-- | The flow.
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Flow :: GoogleCloudDialogflowCxV3TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3TestRunDifference_Type_Flow = GoogleCloudDialogflowCxV3TestRunDifference_Type "FLOW"

{-# COMPLETE
  GoogleCloudDialogflowCxV3TestRunDifference_Type_DIFFTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3TestRunDifference_Type_Intent,
  GoogleCloudDialogflowCxV3TestRunDifference_Type_Page,
  GoogleCloudDialogflowCxV3TestRunDifference_Type_Parameters,
  GoogleCloudDialogflowCxV3TestRunDifference_Type_Utterance,
  GoogleCloudDialogflowCxV3TestRunDifference_Type_Flow,
  GoogleCloudDialogflowCxV3TestRunDifference_Type
  #-}

newtype GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem = GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem {fromGoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem :: Core.Text}
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

-- | Failure reason is not assigned.
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED :: GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED = GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem "FAILURE_REASON_UNSPECIFIED"

-- | Whether NLU failed to recognize user intent.
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDINTENT :: GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDINTENT = GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem "FAILED_INTENT"

-- | Whether webhook failed during the turn.
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDWEBHOOK :: GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDWEBHOOK = GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem "FAILED_WEBHOOK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
  GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDINTENT,
  GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
  GoogleCloudDialogflowCxV3TurnSignals_FailureReasonsItem
  #-}

-- | The type of the resources where the message is found.
newtype GoogleCloudDialogflowCxV3ValidationMessage_ResourceType = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType {fromGoogleCloudDialogflowCxV3ValidationMessage_ResourceType :: Core.Text}
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

-- | Unspecified.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_RESOURCETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_RESOURCETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "RESOURCE_TYPE_UNSPECIFIED"

-- | Agent.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Agent :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Agent = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "AGENT"

-- | Intent.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intent :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intent = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "INTENT"

-- | Intent training phrase.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASE :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASE = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "INTENT_TRAINING_PHRASE"

-- | Intent parameter.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTPARAMETER :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTPARAMETER = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "INTENT_PARAMETER"

-- | Multiple intents.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intents :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intents = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "INTENTS"

-- | Multiple training phrases.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASES :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASES = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "INTENT_TRAINING_PHRASES"

-- | Entity type.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPE :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPE = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "ENTITY_TYPE"

-- | Multiple entity types.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPES :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPES = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "ENTITY_TYPES"

-- | Webhook.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Webhook :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Webhook = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "WEBHOOK"

-- | Flow.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Flow :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Flow = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "FLOW"

-- | Page.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Page :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Page = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "PAGE"

-- | Multiple pages.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Pages :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Pages = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "PAGES"

-- | Transition route group.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_TRANSITIONROUTEGROUP :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_TRANSITIONROUTEGROUP = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "TRANSITION_ROUTE_GROUP"

-- | Agent transition route group.
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_AGENTTRANSITIONROUTEGROUP :: GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
pattern GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_AGENTTRANSITIONROUTEGROUP = GoogleCloudDialogflowCxV3ValidationMessage_ResourceType "AGENT_TRANSITION_ROUTE_GROUP"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_RESOURCETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Agent,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intent,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASE,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTPARAMETER,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Intents,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_INTENTTRAININGPHRASES,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPE,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_ENTITYTYPES,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Webhook,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Flow,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Page,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_Pages,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_TRANSITIONROUTEGROUP,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType_AGENTTRANSITIONROUTEGROUP,
  GoogleCloudDialogflowCxV3ValidationMessage_ResourceType
  #-}

-- | Indicates the severity of the message.
newtype GoogleCloudDialogflowCxV3ValidationMessage_Severity = GoogleCloudDialogflowCxV3ValidationMessage_Severity {fromGoogleCloudDialogflowCxV3ValidationMessage_Severity :: Core.Text}
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

-- | Unspecified.
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_SEVERITYUNSPECIFIED :: GoogleCloudDialogflowCxV3ValidationMessage_Severity
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_SEVERITYUNSPECIFIED = GoogleCloudDialogflowCxV3ValidationMessage_Severity "SEVERITY_UNSPECIFIED"

-- | The agent doesn\'t follow Dialogflow best practices.
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Info :: GoogleCloudDialogflowCxV3ValidationMessage_Severity
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Info = GoogleCloudDialogflowCxV3ValidationMessage_Severity "INFO"

-- | The agent may not behave as expected.
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Warning :: GoogleCloudDialogflowCxV3ValidationMessage_Severity
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Warning = GoogleCloudDialogflowCxV3ValidationMessage_Severity "WARNING"

-- | The agent may experience failures.
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Error' :: GoogleCloudDialogflowCxV3ValidationMessage_Severity
pattern GoogleCloudDialogflowCxV3ValidationMessage_Severity_Error' = GoogleCloudDialogflowCxV3ValidationMessage_Severity "ERROR"

{-# COMPLETE
  GoogleCloudDialogflowCxV3ValidationMessage_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudDialogflowCxV3ValidationMessage_Severity_Info,
  GoogleCloudDialogflowCxV3ValidationMessage_Severity_Warning,
  GoogleCloudDialogflowCxV3ValidationMessage_Severity_Error',
  GoogleCloudDialogflowCxV3ValidationMessage_Severity
  #-}

-- | Output only. The state of this version. This field is read-only and cannot be set by create and update methods.
newtype GoogleCloudDialogflowCxV3Version_State = GoogleCloudDialogflowCxV3Version_State {fromGoogleCloudDialogflowCxV3Version_State :: Core.Text}
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

-- | Not specified. This value is not used.
pattern GoogleCloudDialogflowCxV3Version_State_STATEUNSPECIFIED :: GoogleCloudDialogflowCxV3Version_State
pattern GoogleCloudDialogflowCxV3Version_State_STATEUNSPECIFIED = GoogleCloudDialogflowCxV3Version_State "STATE_UNSPECIFIED"

-- | Version is not ready to serve (e.g. training is running).
pattern GoogleCloudDialogflowCxV3Version_State_Running :: GoogleCloudDialogflowCxV3Version_State
pattern GoogleCloudDialogflowCxV3Version_State_Running = GoogleCloudDialogflowCxV3Version_State "RUNNING"

-- | Training has succeeded and this version is ready to serve.
pattern GoogleCloudDialogflowCxV3Version_State_Succeeded :: GoogleCloudDialogflowCxV3Version_State
pattern GoogleCloudDialogflowCxV3Version_State_Succeeded = GoogleCloudDialogflowCxV3Version_State "SUCCEEDED"

-- | Version training failed.
pattern GoogleCloudDialogflowCxV3Version_State_Failed :: GoogleCloudDialogflowCxV3Version_State
pattern GoogleCloudDialogflowCxV3Version_State_Failed = GoogleCloudDialogflowCxV3Version_State "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3Version_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowCxV3Version_State_Running,
  GoogleCloudDialogflowCxV3Version_State_Succeeded,
  GoogleCloudDialogflowCxV3Version_State_Failed,
  GoogleCloudDialogflowCxV3Version_State
  #-}

-- | Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer substitutes a voice with a different gender rather than failing the request.
newtype GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender = GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender {fromGoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender :: Core.Text}
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

-- | An unspecified gender, which means that the client doesn\'t care which gender the selected voice will have.
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED :: GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED = GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender "SSML_VOICE_GENDER_UNSPECIFIED"

-- | A male voice.
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERMALE :: GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERMALE = GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender "SSML_VOICE_GENDER_MALE"

-- | A female voice.
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERFEMALE :: GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERFEMALE = GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender "SSML_VOICE_GENDER_FEMALE"

-- | A gender-neutral voice.
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERNEUTRAL :: GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
pattern GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERNEUTRAL = GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender "SSML_VOICE_GENDER_NEUTRAL"

{-# COMPLETE
  GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERUNSPECIFIED,
  GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERMALE,
  GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERFEMALE,
  GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender_SSMLVOICEGENDERNEUTRAL,
  GoogleCloudDialogflowCxV3VoiceSelectionParams_SsmlGender
  #-}

-- | Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
newtype GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod {fromGoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod :: Core.Text}
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

-- | HTTP method not specified.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Post' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Post' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "POST"

-- | HTTP GET Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Get' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Get' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "GET"

-- | HTTP HEAD Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Head' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Head' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "HEAD"

-- | HTTP PUT Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Put' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Put' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "PUT"

-- | HTTP DELETE Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Delete' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Delete' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "DELETE"

-- | HTTP PATCH Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Patch' :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Patch' = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "PATCH"

-- | HTTP OPTIONS Method.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Options :: GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Options = GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod "OPTIONS"

{-# COMPLETE
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Post',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Get',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Head',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Put',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Delete',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Patch',
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod_Options,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_HttpMethod
  #-}

-- | Optional. Indicate the auth token type generated from the <https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent Diglogflow service agent>. The generated token is sent in the Authorization header.
newtype GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth = GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth {fromGoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth :: Core.Text}
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

-- | Service agent auth type unspecified. Default to ID_TOKEN.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED :: GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED = GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth "SERVICE_AGENT_AUTH_UNSPECIFIED"

-- | No token used.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_None :: GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_None = GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth "NONE"

-- | Use <https://cloud.google.com/docs/authentication/token-types#id ID token> generated from service agent. This can be used to access Cloud Function and Cloud Run after you grant Invoker role to @service-\@gcp-sa-dialogflow.iam.gserviceaccount.com@.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_IDTOKEN :: GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_IDTOKEN = GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth "ID_TOKEN"

-- | Use <https://cloud.google.com/docs/authentication/token-types#access access token> generated from service agent. This can be used to access other Google Cloud APIs after you grant required roles to @service-\@gcp-sa-dialogflow.iam.gserviceaccount.com@.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN :: GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN = GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth "ACCESS_TOKEN"

{-# COMPLETE
  GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_None,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_IDTOKEN,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_ServiceAgentAuth
  #-}

-- | Optional. Type of the webhook.
newtype GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType = GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType {fromGoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType :: Core.Text}
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

-- | Default value. This value is unused.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType "WEBHOOK_TYPE_UNSPECIFIED"

-- | Represents a standard webhook.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Standard :: GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Standard = GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType "STANDARD"

-- | Represents a flexible webhook.
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Flexible :: GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Flexible = GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType "FLEXIBLE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Standard,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType_Flexible,
  GoogleCloudDialogflowCxV3WebhookGenericWebService_WebhookType
  #-}

-- | Merge behavior for @messages@.
newtype GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior = GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior {fromGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior :: Core.Text}
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

-- | Not specified. @APPEND@ will be used.
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED :: GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED = GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior "MERGE_BEHAVIOR_UNSPECIFIED"

-- | @messages@ will be appended to the list of messages waiting to be sent to the user.
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Append :: GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Append = GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior "APPEND"

-- | @messages@ will replace the list of messages waiting to be sent to the user.
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Replace :: GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Replace = GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior "REPLACE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED,
  GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Append,
  GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior_Replace,
  GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse_MergeBehavior
  #-}

-- | The result of this continuous test run, i.e. whether all the tests in this continuous test run pass or not.
newtype GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result = GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result {fromGoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result :: Core.Text}
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

-- | Not specified. Should never be used.
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED = GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result "AGGREGATED_TEST_RESULT_UNSPECIFIED"

-- | All the tests passed.
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Passed :: GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Passed = GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result "PASSED"

-- | At least one test did not pass.
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Failed :: GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
pattern GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Failed = GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_AGGREGATEDTESTRESULTUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Passed,
  GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result_Failed,
  GoogleCloudDialogflowCxV3beta1ContinuousTestResult_Result
  #-}

-- | The type of the connected data store.
newtype GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType = GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType {fromGoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType :: Core.Text}
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

-- | Not specified. This value indicates that the data store type is not specified, so it will not be used during search.
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED = GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType "DATA_STORE_TYPE_UNSPECIFIED"

-- | A data store that contains public web content.
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_PUBLICWEB :: GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_PUBLICWEB = GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType "PUBLIC_WEB"

-- | A data store that contains unstructured private data.
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Unstructured :: GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Unstructured = GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType "UNSTRUCTURED"

-- | A data store that contains structured data (for example FAQ).
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Structured :: GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
pattern GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Structured = GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType "STRUCTURED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_DATASTORETYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_PUBLICWEB,
  GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Unstructured,
  GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType_Structured,
  GoogleCloudDialogflowCxV3beta1DataStoreConnection_DataStoreType
  #-}

-- | Required. Audio encoding of the audio content to process.
newtype GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding {fromGoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding :: Core.Text}
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
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_UNSPECIFIED"

-- | Uncompressed 16-bit signed little-endian samples (Linear PCM).
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16 :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16 = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_LINEAR_16"

-- | <https://xiph.org/flac/documentation.html FLAC> (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of @LINEAR16@. @FLAC@ stream encoding supports 16-bit and 24-bit samples, however, not all fields in @STREAMINFO@ are supported.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_FLAC"

-- | 8-bit samples that compand 14-bit audio samples using G.711 PCMU\/mu-law.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_MULAW"

-- | Adaptive Multi-Rate Narrowband codec. @sample_rate_hertz@ must be 8000.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_AMR"

-- | Adaptive Multi-Rate Wideband codec. @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_AMR_WB"

-- | Opus encoded audio frames in Ogg container (<https://wiki.xiph.org/OggOpus OggOpus>). @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_OGG_OPUS"

-- | Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, @OGG_OPUS@ is highly preferred over Speex encoding. The <https://speex.org/ Speex> encoding supported by Dialogflow API has a header byte in each block, as in MIME type @audio\/x-speex-with-header-byte@. It is a variant of the RTP Speex encoding defined in <https://tools.ietf.org/html/rfc5574 RFC 5574>. The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. @sample_rate_hertz@ must be 16000.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE"

-- | 8-bit samples that compand 13-bit audio samples using G.711 PCMU\/a-law.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW = GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding "AUDIO_ENCODING_ALAW"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIO_ENCODING_LINEAR_16,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGFLAC,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGMULAW,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMR,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGAMRWB,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGOGGOPUS,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGSPEEXWITHHEADERBYTE,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding_AUDIOENCODINGALAW,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_AudioEncoding
  #-}

-- | Optional. Which variant of the Speech model to use.
newtype GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant = GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant {fromGoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant :: Core.Text}
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

-- | No model variant specified. In this case Dialogflow defaults to USE/BEST/AVAILABLE.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED = GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant "SPEECH_MODEL_VARIANT_UNSPECIFIED"

-- | Use the best available variant of the Speech model that the caller is eligible for.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEBESTAVAILABLE :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEBESTAVAILABLE = GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant "USE_BEST_AVAILABLE"

-- | Use standard model variant even if an enhanced model is available. See the <https://cloud.google.com/speech-to-text/docs/enhanced-models Cloud Speech documentation> for details about enhanced models.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USESTANDARD :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USESTANDARD = GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant "USE_STANDARD"

-- | Use an enhanced model variant: * If an enhanced variant does not exist for the given model and request language, Dialogflow falls back to the standard variant. The <https://cloud.google.com/speech-to-text/docs/enhanced-models Cloud Speech documentation> describes which models have enhanced variants.
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEENHANCED :: GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
pattern GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEENHANCED = GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant "USE_ENHANCED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_SPEECHMODELVARIANTUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEBESTAVAILABLE,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USESTANDARD,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant_USEENHANCED,
  GoogleCloudDialogflowCxV3beta1InputAudioConfig_ModelVariant
  #-}

-- | Always present for WebhookRequest. Required for WebhookResponse. The state of the parameter. This field can be set to INVALID by the webhook to invalidate the parameter; other values set by the webhook will be ignored.
newtype GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State = GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State {fromGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED = GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State "PARAMETER_STATE_UNSPECIFIED"

-- | Indicates that the parameter does not have a value.
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Empty :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Empty = GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State "EMPTY"

-- | Indicates that the parameter value is invalid. This field can be used by the webhook to invalidate the parameter and ask the server to collect it from the user again.
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Invalid :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Invalid = GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State "INVALID"

-- | Indicates that the parameter has a value.
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Filled :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
pattern GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Filled = GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State "FILLED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_PARAMETERSTATEUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Empty,
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Invalid,
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State_Filled,
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo_State
  #-}

-- | Whether the test case passed in the agent environment.
newtype GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult = GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult {fromGoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult :: Core.Text}
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

-- | Not specified. Should never be used.
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_TESTRESULTUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_TESTRESULTUNSPECIFIED = GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult "TEST_RESULT_UNSPECIFIED"

-- | The test passed.
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Passed :: GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Passed = GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult "PASSED"

-- | The test did not pass.
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Failed :: GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
pattern GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Failed = GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_TESTRESULTUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Passed,
  GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult_Failed,
  GoogleCloudDialogflowCxV3beta1TestCaseResult_TestResult
  #-}

-- | The type of diff.
newtype GoogleCloudDialogflowCxV3beta1TestRunDifference_Type = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type {fromGoogleCloudDialogflowCxV3beta1TestRunDifference_Type :: Core.Text}
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

-- | Should never be used.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_DIFFTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_DIFFTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "DIFF_TYPE_UNSPECIFIED"

-- | The intent.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Intent :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Intent = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "INTENT"

-- | The page.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Page :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Page = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "PAGE"

-- | The parameters.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Parameters :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Parameters = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "PARAMETERS"

-- | The message utterance.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Utterance :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Utterance = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "UTTERANCE"

-- | The flow.
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Flow :: GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
pattern GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Flow = GoogleCloudDialogflowCxV3beta1TestRunDifference_Type "FLOW"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_DIFFTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Intent,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Page,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Parameters,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Utterance,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type_Flow,
  GoogleCloudDialogflowCxV3beta1TestRunDifference_Type
  #-}

newtype GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem = GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem {fromGoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem :: Core.Text}
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

-- | Failure reason is not assigned.
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED = GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem "FAILURE_REASON_UNSPECIFIED"

-- | Whether NLU failed to recognize user intent.
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDINTENT :: GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDINTENT = GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem "FAILED_INTENT"

-- | Whether webhook failed during the turn.
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK :: GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK = GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem "FAILED_WEBHOOK"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDINTENT,
  GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
  GoogleCloudDialogflowCxV3beta1TurnSignals_FailureReasonsItem
  #-}

-- | Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
newtype GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod {fromGoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod :: Core.Text}
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

-- | HTTP method not specified.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "HTTP_METHOD_UNSPECIFIED"

-- | HTTP POST Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Post' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Post' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "POST"

-- | HTTP GET Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Get' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Get' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "GET"

-- | HTTP HEAD Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Head' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Head' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "HEAD"

-- | HTTP PUT Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Put' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Put' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "PUT"

-- | HTTP DELETE Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Delete' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Delete' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "DELETE"

-- | HTTP PATCH Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Patch' :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Patch' = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "PATCH"

-- | HTTP OPTIONS Method.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Options :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Options = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod "OPTIONS"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_HTTPMETHODUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Post',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Get',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Head',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Put',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Delete',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Patch',
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod_Options,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_HttpMethod
  #-}

-- | Optional. Indicate the auth token type generated from the <https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent Diglogflow service agent>. The generated token is sent in the Authorization header.
newtype GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth {fromGoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth :: Core.Text}
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

-- | Service agent auth type unspecified. Default to ID_TOKEN.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth "SERVICE_AGENT_AUTH_UNSPECIFIED"

-- | No token used.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_None :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_None = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth "NONE"

-- | Use <https://cloud.google.com/docs/authentication/token-types#id ID token> generated from service agent. This can be used to access Cloud Function and Cloud Run after you grant Invoker role to @service-\@gcp-sa-dialogflow.iam.gserviceaccount.com@.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_IDTOKEN :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_IDTOKEN = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth "ID_TOKEN"

-- | Use <https://cloud.google.com/docs/authentication/token-types#access access token> generated from service agent. This can be used to access other Google Cloud APIs after you grant required roles to @service-\@gcp-sa-dialogflow.iam.gserviceaccount.com@.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth "ACCESS_TOKEN"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_SERVICEAGENTAUTHUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_None,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_IDTOKEN,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth_ACCESSTOKEN,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_ServiceAgentAuth
  #-}

-- | Optional. Type of the webhook.
newtype GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType {fromGoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType :: Core.Text}
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

-- | Default value. This value is unused.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType "WEBHOOK_TYPE_UNSPECIFIED"

-- | Represents a standard webhook.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Standard :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Standard = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType "STANDARD"

-- | Represents a flexible webhook.
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Flexible :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
pattern GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Flexible = GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType "FLEXIBLE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_WEBHOOKTYPEUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Standard,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType_Flexible,
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService_WebhookType
  #-}

-- | Merge behavior for @messages@.
newtype GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior = GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior {fromGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior :: Core.Text}
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

-- | Not specified. @APPEND@ will be used.
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED :: GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED = GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior "MERGE_BEHAVIOR_UNSPECIFIED"

-- | @messages@ will be appended to the list of messages waiting to be sent to the user.
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Append :: GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Append = GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior "APPEND"

-- | @messages@ will replace the list of messages waiting to be sent to the user.
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Replace :: GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
pattern GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Replace = GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior "REPLACE"

{-# COMPLETE
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_MERGEBEHAVIORUNSPECIFIED,
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Append,
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior_Replace,
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse_MergeBehavior
  #-}

-- | Optional. Type of the article suggestion model. If not provided, model_type is used.
newtype GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType = GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType {fromGoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType :: Core.Text}
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

-- | ModelType unspecified.
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED :: GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED = GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType "MODEL_TYPE_UNSPECIFIED"

-- | ModelType smart reply dual encoder model.
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL :: GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL = GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType "SMART_REPLY_DUAL_ENCODER_MODEL"

-- | ModelType smart reply bert model.
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL :: GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL = GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType "SMART_REPLY_BERT_MODEL"

{-# COMPLETE
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED,
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL,
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL,
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata_TrainingModelType
  #-}

-- | Required. The participant role to remove the suggestion feature config. Only HUMAN/AGENT or END/USER can be used.
newtype GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole {fromGoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
  #-}

-- | Required. The type of the suggestion feature to remove.
newtype GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType {fromGoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType :: Core.Text}
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

-- | Unspecified feature type.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "TYPE_UNSPECIFIED"

-- | Run article suggestion model for chat.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "ARTICLE_SUGGESTION"

-- | Run FAQ model for chat.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "FAQ"

-- | Run smart reply model for chat.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "SMART_REPLY"

-- | Run knowledge search with text input from agent or text generated query.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_SEARCH"

-- | Run knowledge assist with automatic query generation.
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST :: GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST = GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_ASSIST"

{-# COMPLETE
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
  GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
  #-}

-- | The type of the event that this notification refers to.
newtype GoogleCloudDialogflowV2ConversationEvent_Type = GoogleCloudDialogflowV2ConversationEvent_Type {fromGoogleCloudDialogflowV2ConversationEvent_Type :: Core.Text}
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

-- | Type not set.
pattern GoogleCloudDialogflowV2ConversationEvent_Type_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_TYPEUNSPECIFIED = GoogleCloudDialogflowV2ConversationEvent_Type "TYPE_UNSPECIFIED"

-- | A new conversation has been opened. This is fired when a telephone call is answered, or a conversation is created via the API.
pattern GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONSTARTED :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONSTARTED = GoogleCloudDialogflowV2ConversationEvent_Type "CONVERSATION_STARTED"

-- | An existing conversation has closed. This is fired when a telephone call is terminated, or a conversation is closed via the API.
pattern GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONFINISHED :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONFINISHED = GoogleCloudDialogflowV2ConversationEvent_Type "CONVERSATION_FINISHED"

-- | An existing conversation has received notification from Dialogflow that human intervention is required.
pattern GoogleCloudDialogflowV2ConversationEvent_Type_HUMANINTERVENTIONNEEDED :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_HUMANINTERVENTIONNEEDED = GoogleCloudDialogflowV2ConversationEvent_Type "HUMAN_INTERVENTION_NEEDED"

-- | An existing conversation has received a new message, either from API or telephony. It is configured in ConversationProfile.new/message/event/notification/config
pattern GoogleCloudDialogflowV2ConversationEvent_Type_NEWMESSAGE :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_NEWMESSAGE = GoogleCloudDialogflowV2ConversationEvent_Type "NEW_MESSAGE"

-- | Unrecoverable error during a telephone call. In general non-recoverable errors only occur if something was misconfigured in the ConversationProfile corresponding to the call. After a non-recoverable error, Dialogflow may stop responding. We don\'t fire this event: * in an API call because we can directly return the error, or, * when we can recover from an error.
pattern GoogleCloudDialogflowV2ConversationEvent_Type_UNRECOVERABLEERROR :: GoogleCloudDialogflowV2ConversationEvent_Type
pattern GoogleCloudDialogflowV2ConversationEvent_Type_UNRECOVERABLEERROR = GoogleCloudDialogflowV2ConversationEvent_Type "UNRECOVERABLE_ERROR"

{-# COMPLETE
  GoogleCloudDialogflowV2ConversationEvent_Type_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONSTARTED,
  GoogleCloudDialogflowV2ConversationEvent_Type_CONVERSATIONFINISHED,
  GoogleCloudDialogflowV2ConversationEvent_Type_HUMANINTERVENTIONNEEDED,
  GoogleCloudDialogflowV2ConversationEvent_Type_NEWMESSAGE,
  GoogleCloudDialogflowV2ConversationEvent_Type_UNRECOVERABLEERROR,
  GoogleCloudDialogflowV2ConversationEvent_Type
  #-}

-- | Output only. State of the model. A model can only serve prediction requests after it gets deployed.
newtype GoogleCloudDialogflowV2ConversationModel_State = GoogleCloudDialogflowV2ConversationModel_State {fromGoogleCloudDialogflowV2ConversationModel_State :: Core.Text}
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

-- | Should not be used, an un-set enum has this value by default.
pattern GoogleCloudDialogflowV2ConversationModel_State_STATEUNSPECIFIED :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_STATEUNSPECIFIED = GoogleCloudDialogflowV2ConversationModel_State "STATE_UNSPECIFIED"

-- | Model being created.
pattern GoogleCloudDialogflowV2ConversationModel_State_Creating :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Creating = GoogleCloudDialogflowV2ConversationModel_State "CREATING"

-- | Model is not deployed but ready to deploy.
pattern GoogleCloudDialogflowV2ConversationModel_State_Undeployed :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Undeployed = GoogleCloudDialogflowV2ConversationModel_State "UNDEPLOYED"

-- | Model is deploying.
pattern GoogleCloudDialogflowV2ConversationModel_State_Deploying :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Deploying = GoogleCloudDialogflowV2ConversationModel_State "DEPLOYING"

-- | Model is deployed and ready to use.
pattern GoogleCloudDialogflowV2ConversationModel_State_Deployed :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Deployed = GoogleCloudDialogflowV2ConversationModel_State "DEPLOYED"

-- | Model is undeploying.
pattern GoogleCloudDialogflowV2ConversationModel_State_Undeploying :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Undeploying = GoogleCloudDialogflowV2ConversationModel_State "UNDEPLOYING"

-- | Model is deleting.
pattern GoogleCloudDialogflowV2ConversationModel_State_Deleting :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Deleting = GoogleCloudDialogflowV2ConversationModel_State "DELETING"

-- | Model is in error state. Not ready to deploy and use.
pattern GoogleCloudDialogflowV2ConversationModel_State_Failed :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Failed = GoogleCloudDialogflowV2ConversationModel_State "FAILED"

-- | Model is being created but the training has not started, The model may remain in this state until there is enough capacity to start training.
pattern GoogleCloudDialogflowV2ConversationModel_State_Pending :: GoogleCloudDialogflowV2ConversationModel_State
pattern GoogleCloudDialogflowV2ConversationModel_State_Pending = GoogleCloudDialogflowV2ConversationModel_State "PENDING"

{-# COMPLETE
  GoogleCloudDialogflowV2ConversationModel_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowV2ConversationModel_State_Creating,
  GoogleCloudDialogflowV2ConversationModel_State_Undeployed,
  GoogleCloudDialogflowV2ConversationModel_State_Deploying,
  GoogleCloudDialogflowV2ConversationModel_State_Deployed,
  GoogleCloudDialogflowV2ConversationModel_State_Undeploying,
  GoogleCloudDialogflowV2ConversationModel_State_Deleting,
  GoogleCloudDialogflowV2ConversationModel_State_Failed,
  GoogleCloudDialogflowV2ConversationModel_State_Pending,
  GoogleCloudDialogflowV2ConversationModel_State
  #-}

-- | State of CreateConversationModel operation.
newtype GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State {fromGoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State :: Core.Text}
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

-- | Operation status not specified.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "STATE_UNSPECIFIED"

-- | The operation is being prepared.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Initializing :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Initializing = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "INITIALIZING"

-- | The operation is running.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Running :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Running = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "RUNNING"

-- | The operation is cancelled.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Cancelled :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Cancelled = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "CANCELLED"

-- | The operation has succeeded.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Succeeded :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Succeeded = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "SUCCEEDED"

-- | The operation has failed.
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Failed :: GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Failed = GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State "FAILED"

{-# COMPLETE
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Initializing,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Running,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Cancelled,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Succeeded,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State_Failed,
  GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata_State
  #-}

-- | State of CreateConversationModel operation.
newtype GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State {fromGoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State :: Core.Text}
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

-- | Invalid.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is submitted, but training has not started yet. The model may remain in this state until there is enough capacity to start training.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Pending :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Pending = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "PENDING"

-- | The training has succeeded.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Succeeded :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Succeeded = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "SUCCEEDED"

-- | The training has succeeded.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Failed :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Failed = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "FAILED"

-- | The training has been cancelled.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelled :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelled = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "CANCELLED"

-- | The training is in cancelling state.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelling :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelling = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "CANCELLING"

-- | Custom model is training.
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Training :: GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
pattern GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Training = GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State "TRAINING"

{-# COMPLETE
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Pending,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Succeeded,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Failed,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelled,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Cancelling,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State_Training,
  GoogleCloudDialogflowV2CreateConversationModelOperationMetadata_State
  #-}

-- | Optional. Indicates whether the entity type can be automatically expanded.
newtype GoogleCloudDialogflowV2EntityType_AutoExpansionMode = GoogleCloudDialogflowV2EntityType_AutoExpansionMode {fromGoogleCloudDialogflowV2EntityType_AutoExpansionMode :: Core.Text}
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

-- | Auto expansion disabled for the entity.
pattern GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED :: GoogleCloudDialogflowV2EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED = GoogleCloudDialogflowV2EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_UNSPECIFIED"

-- | Allows an agent to recognize values that have not been explicitly listed in the entity.
pattern GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT :: GoogleCloudDialogflowV2EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT = GoogleCloudDialogflowV2EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_DEFAULT"

{-# COMPLETE
  GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
  GoogleCloudDialogflowV2EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
  GoogleCloudDialogflowV2EntityType_AutoExpansionMode
  #-}

-- | Required. Indicates the kind of entity type.
newtype GoogleCloudDialogflowV2EntityType_Kind = GoogleCloudDialogflowV2EntityType_Kind {fromGoogleCloudDialogflowV2EntityType_Kind :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDUNSPECIFIED :: GoogleCloudDialogflowV2EntityType_Kind
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDUNSPECIFIED = GoogleCloudDialogflowV2EntityType_Kind "KIND_UNSPECIFIED"

-- | Map entity types allow mapping of a group of synonyms to a reference value.
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDMAP :: GoogleCloudDialogflowV2EntityType_Kind
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDMAP = GoogleCloudDialogflowV2EntityType_Kind "KIND_MAP"

-- | List entity types contain a set of entries that do not map to reference values. However, list entity types can contain references to other entity types (with or without aliases).
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDLIST :: GoogleCloudDialogflowV2EntityType_Kind
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDLIST = GoogleCloudDialogflowV2EntityType_Kind "KIND_LIST"

-- | Regexp entity types allow to specify regular expressions in entries values.
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDREGEXP :: GoogleCloudDialogflowV2EntityType_Kind
pattern GoogleCloudDialogflowV2EntityType_Kind_KINDREGEXP = GoogleCloudDialogflowV2EntityType_Kind "KIND_REGEXP"

{-# COMPLETE
  GoogleCloudDialogflowV2EntityType_Kind_KINDUNSPECIFIED,
  GoogleCloudDialogflowV2EntityType_Kind_KINDMAP,
  GoogleCloudDialogflowV2EntityType_Kind_KINDLIST,
  GoogleCloudDialogflowV2EntityType_Kind_KINDREGEXP,
  GoogleCloudDialogflowV2EntityType_Kind
  #-}

newtype GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem {fromGoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem :: Core.Text}
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

-- | Default platform.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "PLATFORM_UNSPECIFIED"

-- | Facebook.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Facebook :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Facebook = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "FACEBOOK"

-- | Slack.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Slack :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Slack = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "SLACK"

-- | Telegram.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Telegram :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Telegram = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "TELEGRAM"

-- | Kik.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Kik :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Kik = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "KIK"

-- | Skype.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Skype :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Skype = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "SKYPE"

-- | Line.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Line :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Line = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "LINE"

-- | Viber.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Viber :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Viber = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "VIBER"

-- | Google Assistant See <https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json Dialogflow webhook format>
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "ACTIONS_ON_GOOGLE"

-- | Google Hangouts.
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS :: GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS = GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem "GOOGLE_HANGOUTS"

{-# COMPLETE
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Facebook,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Slack,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Telegram,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Kik,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Skype,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Line,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_Viber,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS,
  GoogleCloudDialogflowV2Intent_DefaultResponsePlatformsItem
  #-}

-- | Optional. Indicates whether webhooks are enabled for the intent.
newtype GoogleCloudDialogflowV2Intent_WebhookState = GoogleCloudDialogflowV2Intent_WebhookState {fromGoogleCloudDialogflowV2Intent_WebhookState :: Core.Text}
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

-- | Webhook is disabled in the agent and in the intent.
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED :: GoogleCloudDialogflowV2Intent_WebhookState
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED = GoogleCloudDialogflowV2Intent_WebhookState "WEBHOOK_STATE_UNSPECIFIED"

-- | Webhook is enabled in the agent and in the intent.
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLED :: GoogleCloudDialogflowV2Intent_WebhookState
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLED = GoogleCloudDialogflowV2Intent_WebhookState "WEBHOOK_STATE_ENABLED"

-- | Webhook is enabled in the agent and in the intent. Also, each slot filling prompt is forwarded to the webhook.
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING :: GoogleCloudDialogflowV2Intent_WebhookState
pattern GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING = GoogleCloudDialogflowV2Intent_WebhookState "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"

{-# COMPLETE
  GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED,
  GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLED,
  GoogleCloudDialogflowV2Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING,
  GoogleCloudDialogflowV2Intent_WebhookState
  #-}

-- | Optional. The platform that this message is intended for.
newtype GoogleCloudDialogflowV2IntentMessage_Platform = GoogleCloudDialogflowV2IntentMessage_Platform {fromGoogleCloudDialogflowV2IntentMessage_Platform :: Core.Text}
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

-- | Default platform.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_PLATFORMUNSPECIFIED :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_PLATFORMUNSPECIFIED = GoogleCloudDialogflowV2IntentMessage_Platform "PLATFORM_UNSPECIFIED"

-- | Facebook.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Facebook :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Facebook = GoogleCloudDialogflowV2IntentMessage_Platform "FACEBOOK"

-- | Slack.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Slack :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Slack = GoogleCloudDialogflowV2IntentMessage_Platform "SLACK"

-- | Telegram.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Telegram :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Telegram = GoogleCloudDialogflowV2IntentMessage_Platform "TELEGRAM"

-- | Kik.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Kik :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Kik = GoogleCloudDialogflowV2IntentMessage_Platform "KIK"

-- | Skype.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Skype :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Skype = GoogleCloudDialogflowV2IntentMessage_Platform "SKYPE"

-- | Line.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Line :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Line = GoogleCloudDialogflowV2IntentMessage_Platform "LINE"

-- | Viber.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Viber :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_Viber = GoogleCloudDialogflowV2IntentMessage_Platform "VIBER"

-- | Google Assistant See <https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json Dialogflow webhook format>
pattern GoogleCloudDialogflowV2IntentMessage_Platform_ACTIONSONGOOGLE :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_ACTIONSONGOOGLE = GoogleCloudDialogflowV2IntentMessage_Platform "ACTIONS_ON_GOOGLE"

-- | Google Hangouts.
pattern GoogleCloudDialogflowV2IntentMessage_Platform_GOOGLEHANGOUTS :: GoogleCloudDialogflowV2IntentMessage_Platform
pattern GoogleCloudDialogflowV2IntentMessage_Platform_GOOGLEHANGOUTS = GoogleCloudDialogflowV2IntentMessage_Platform "GOOGLE_HANGOUTS"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentMessage_Platform_PLATFORMUNSPECIFIED,
  GoogleCloudDialogflowV2IntentMessage_Platform_Facebook,
  GoogleCloudDialogflowV2IntentMessage_Platform_Slack,
  GoogleCloudDialogflowV2IntentMessage_Platform_Telegram,
  GoogleCloudDialogflowV2IntentMessage_Platform_Kik,
  GoogleCloudDialogflowV2IntentMessage_Platform_Skype,
  GoogleCloudDialogflowV2IntentMessage_Platform_Line,
  GoogleCloudDialogflowV2IntentMessage_Platform_Viber,
  GoogleCloudDialogflowV2IntentMessage_Platform_ACTIONSONGOOGLE,
  GoogleCloudDialogflowV2IntentMessage_Platform_GOOGLEHANGOUTS,
  GoogleCloudDialogflowV2IntentMessage_Platform
  #-}

-- | Optional. Settings for displaying the image. Applies to every image in items.
newtype GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions {fromGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions :: Core.Text}
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

-- | Fill the gaps between the image and the image container with gray bars.
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"

-- | Fill the gaps between the image and the image container with gray bars.
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions "GRAY"

-- | Fill the gaps between the image and the image container with white bars.
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_White :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_White = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions "WHITE"

-- | Image is scaled such that the image width and height match or exceed the container dimensions. This may crop the top and bottom of the image if the scaled image height is greater than the container height, or crop the left and right of the image if the scaled image width is greater than the container width. This is similar to \"Zoom Mode\" on a widescreen TV when playing a 4:3 video.
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions "CROPPED"

-- | Pad the gaps between image and image frame with a blurred copy of the same image.
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions "BLURRED_BACKGROUND"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_White,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard_ImageDisplayOptions
  #-}

-- | Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
newtype GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint {fromGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint :: Core.Text}
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

-- | Unspecified
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "URL_TYPE_HINT_UNSPECIFIED"

-- | Url would be an amp action
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "AMP_ACTION"

-- | URL that points directly to AMP content, or to a canonical URL which refers to AMP content via .
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT = GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "AMP_CONTENT"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT,
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
  #-}

-- | Optional. Defines text alignment for all cells in this column.
newtype GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment = GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment {fromGoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment :: Core.Text}
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

-- | Text is aligned to the leading edge of the column.
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Text is aligned to the leading edge of the column.
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Leading :: GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Leading = GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment "LEADING"

-- | Text is centered in the column.
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Center :: GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Center = GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment "CENTER"

-- | Text is aligned to the trailing edge of the column.
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Trailing :: GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Trailing = GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment "TRAILING"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Leading,
  GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Center,
  GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment_Trailing,
  GoogleCloudDialogflowV2IntentMessageColumnProperties_HorizontalAlignment
  #-}

-- | Optional. What type of media is the content (ie \"audio\").
newtype GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType = GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType {fromGoogleCloudDialogflowV2IntentMessageMediaContent_MediaType :: Core.Text}
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

-- | Unspecified.
pattern GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED :: GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType
pattern GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED = GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType "RESPONSE_MEDIA_TYPE_UNSPECIFIED"

-- | Response media type is audio.
pattern GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_Audio :: GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType
pattern GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_Audio = GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType "AUDIO"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED,
  GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType_Audio,
  GoogleCloudDialogflowV2IntentMessageMediaContent_MediaType
  #-}

-- | Required. The type of the training phrase.
newtype GoogleCloudDialogflowV2IntentTrainingPhrase_Type = GoogleCloudDialogflowV2IntentTrainingPhrase_Type {fromGoogleCloudDialogflowV2IntentTrainingPhrase_Type :: Core.Text}
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

-- | Not specified. This value should never be used.
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_TYPEUNSPECIFIED = GoogleCloudDialogflowV2IntentTrainingPhrase_Type "TYPE_UNSPECIFIED"

-- | Examples do not contain \@-prefixed entity type names, but example parts can be annotated with entity types.
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Example :: GoogleCloudDialogflowV2IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Example = GoogleCloudDialogflowV2IntentTrainingPhrase_Type "EXAMPLE"

-- | Templates are not annotated with entity types, but they can contain \@-prefixed entity type names as substrings. Template mode has been deprecated. Example mode is the only supported way to create new training phrases. If you have existing training phrases that you\'ve created in template mode, those will continue to work.
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Template :: GoogleCloudDialogflowV2IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Template = GoogleCloudDialogflowV2IntentTrainingPhrase_Type "TEMPLATE"

{-# COMPLETE
  GoogleCloudDialogflowV2IntentTrainingPhrase_Type_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Example,
  GoogleCloudDialogflowV2IntentTrainingPhrase_Type_Template,
  GoogleCloudDialogflowV2IntentTrainingPhrase_Type
  #-}

-- | Output only. The current state of this operation.
newtype GoogleCloudDialogflowV2KnowledgeOperationMetadata_State = GoogleCloudDialogflowV2KnowledgeOperationMetadata_State {fromGoogleCloudDialogflowV2KnowledgeOperationMetadata_State :: Core.Text}
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

-- | State unspecified.
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudDialogflowV2KnowledgeOperationMetadata_State "STATE_UNSPECIFIED"

-- | The operation has been created.
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Pending :: GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Pending = GoogleCloudDialogflowV2KnowledgeOperationMetadata_State "PENDING"

-- | The operation is currently running.
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Running :: GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Running = GoogleCloudDialogflowV2KnowledgeOperationMetadata_State "RUNNING"

-- | The operation is done, either cancelled or completed.
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Done :: GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Done = GoogleCloudDialogflowV2KnowledgeOperationMetadata_State "DONE"

{-# COMPLETE
  GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Pending,
  GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Running,
  GoogleCloudDialogflowV2KnowledgeOperationMetadata_State_Done,
  GoogleCloudDialogflowV2KnowledgeOperationMetadata_State
  #-}

-- | Output only. The role of the participant.
newtype GoogleCloudDialogflowV2Message_ParticipantRole = GoogleCloudDialogflowV2Message_ParticipantRole {fromGoogleCloudDialogflowV2Message_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2Message_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2Message_ParticipantRole
pattern GoogleCloudDialogflowV2Message_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2Message_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2Message_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2Message_ParticipantRole
pattern GoogleCloudDialogflowV2Message_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2Message_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2Message_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2Message_ParticipantRole
pattern GoogleCloudDialogflowV2Message_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2Message_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2Message_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2Message_ParticipantRole
pattern GoogleCloudDialogflowV2Message_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2Message_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2Message_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2Message_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2Message_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2Message_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2Message_ParticipantRole
  #-}

-- | Required. Indicates whether the additional data should override or supplement the custom entity type definition.
newtype GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode = GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode {fromGoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED :: GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED = GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_UNSPECIFIED"

-- | The collection of session entities overrides the collection of entities in the corresponding custom entity type.
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE :: GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE = GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_OVERRIDE"

-- | The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to @ListSessionEntityTypes@, @GetSessionEntityType@, @CreateSessionEntityType@ and @UpdateSessionEntityType@ only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT :: GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT = GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

{-# COMPLETE
  GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
  GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
  GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
  GoogleCloudDialogflowV2SessionEntityType_EntityOverrideMode
  #-}

-- | Required. The participant role to add or update the suggestion feature config. Only HUMAN/AGENT or END/USER can be used.
newtype GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole {fromGoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
  #-}

-- | Required. The type of the suggestion feature to add or update.
newtype GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType {fromGoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType :: Core.Text}
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

-- | Unspecified feature type.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "TYPE_UNSPECIFIED"

-- | Run article suggestion model for chat.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "ARTICLE_SUGGESTION"

-- | Run FAQ model for chat.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "FAQ"

-- | Run smart reply model for chat.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "SMART_REPLY"

-- | Run knowledge search with text input from agent or text generated query.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_SEARCH"

-- | Run knowledge assist with automatic query generation.
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST :: GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST = GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_ASSIST"

{-# COMPLETE
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
  GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
  #-}

-- | Optional. Type of the smart reply model. If not provided, model_type is used.
newtype GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType = GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType {fromGoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType :: Core.Text}
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

-- | ModelType unspecified.
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED :: GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED = GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType "MODEL_TYPE_UNSPECIFIED"

-- | ModelType smart reply dual encoder model.
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL :: GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL = GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType "SMART_REPLY_DUAL_ENCODER_MODEL"

-- | ModelType smart reply bert model.
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL :: GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
pattern GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL = GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType "SMART_REPLY_BERT_MODEL"

{-# COMPLETE
  GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_MODELTYPEUNSPECIFIED,
  GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYDUALENCODERMODEL,
  GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType_SMARTREPLYBERTMODEL,
  GoogleCloudDialogflowV2SmartReplyModelMetadata_TrainingModelType
  #-}

-- | Required. The participant role to remove the suggestion feature config. Only HUMAN/AGENT or END/USER can be used.
newtype GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole {fromGoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_ParticipantRole
  #-}

-- | Required. The type of the suggestion feature to remove.
newtype GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType {fromGoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType :: Core.Text}
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

-- | Unspecified feature type.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "TYPE_UNSPECIFIED"

-- | Run article suggestion model for chat.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "ARTICLE_SUGGESTION"

-- | Run FAQ model.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "FAQ"

-- | Run smart reply model for chat.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "SMART_REPLY"

-- | Run Dialogflow assist model for chat, which will return automated agent response as suggestion.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "DIALOGFLOW_ASSIST"

-- | Run conversation summarization model for chat.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "CONVERSATION_SUMMARIZATION"

-- | Run knowledge search with text input from agent or text generated query.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_SEARCH"

-- | Run knowledge assist with automatic query generation.
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST :: GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST = GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_ASSIST"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
  GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
  #-}

-- | Required. The type of the event that this notification refers to.
newtype GoogleCloudDialogflowV2beta1ConversationEvent_Type = GoogleCloudDialogflowV2beta1ConversationEvent_Type {fromGoogleCloudDialogflowV2beta1ConversationEvent_Type :: Core.Text}
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

-- | Type not set.
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_TYPEUNSPECIFIED = GoogleCloudDialogflowV2beta1ConversationEvent_Type "TYPE_UNSPECIFIED"

-- | A new conversation has been opened. This is fired when a telephone call is answered, or a conversation is created via the API.
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONSTARTED :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONSTARTED = GoogleCloudDialogflowV2beta1ConversationEvent_Type "CONVERSATION_STARTED"

-- | An existing conversation has closed. This is fired when a telephone call is terminated, or a conversation is closed via the API.
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONFINISHED :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONFINISHED = GoogleCloudDialogflowV2beta1ConversationEvent_Type "CONVERSATION_FINISHED"

-- | An existing conversation has received notification from Dialogflow that human intervention is required.
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_HUMANINTERVENTIONNEEDED :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_HUMANINTERVENTIONNEEDED = GoogleCloudDialogflowV2beta1ConversationEvent_Type "HUMAN_INTERVENTION_NEEDED"

-- | An existing conversation has received a new message, either from API or telephony. It is configured in ConversationProfile.new/message/event/notification/config
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_NEWMESSAGE :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_NEWMESSAGE = GoogleCloudDialogflowV2beta1ConversationEvent_Type "NEW_MESSAGE"

-- | Unrecoverable error during a telephone call. In general non-recoverable errors only occur if something was misconfigured in the ConversationProfile corresponding to the call. After a non-recoverable error, Dialogflow may stop responding. We don\'t fire this event: * in an API call because we can directly return the error, or, * when we can recover from an error.
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_UNRECOVERABLEERROR :: GoogleCloudDialogflowV2beta1ConversationEvent_Type
pattern GoogleCloudDialogflowV2beta1ConversationEvent_Type_UNRECOVERABLEERROR = GoogleCloudDialogflowV2beta1ConversationEvent_Type "UNRECOVERABLE_ERROR"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONSTARTED,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_CONVERSATIONFINISHED,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_HUMANINTERVENTIONNEEDED,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_NEWMESSAGE,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type_UNRECOVERABLEERROR,
  GoogleCloudDialogflowV2beta1ConversationEvent_Type
  #-}

-- | Optional. Indicates whether the entity type can be automatically expanded.
newtype GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode = GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode {fromGoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode :: Core.Text}
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

-- | Auto expansion disabled for the entity.
pattern GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED :: GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED = GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_UNSPECIFIED"

-- | Allows an agent to recognize values that have not been explicitly listed in the entity.
pattern GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT :: GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode
pattern GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT = GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode "AUTO_EXPANSION_MODE_DEFAULT"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode_AUTOEXPANSIONMODEDEFAULT,
  GoogleCloudDialogflowV2beta1EntityType_AutoExpansionMode
  #-}

-- | Required. Indicates the kind of entity type.
newtype GoogleCloudDialogflowV2beta1EntityType_Kind = GoogleCloudDialogflowV2beta1EntityType_Kind {fromGoogleCloudDialogflowV2beta1EntityType_Kind :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDUNSPECIFIED :: GoogleCloudDialogflowV2beta1EntityType_Kind
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDUNSPECIFIED = GoogleCloudDialogflowV2beta1EntityType_Kind "KIND_UNSPECIFIED"

-- | Map entity types allow mapping of a group of synonyms to a reference value.
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDMAP :: GoogleCloudDialogflowV2beta1EntityType_Kind
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDMAP = GoogleCloudDialogflowV2beta1EntityType_Kind "KIND_MAP"

-- | List entity types contain a set of entries that do not map to reference values. However, list entity types can contain references to other entity types (with or without aliases).
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDLIST :: GoogleCloudDialogflowV2beta1EntityType_Kind
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDLIST = GoogleCloudDialogflowV2beta1EntityType_Kind "KIND_LIST"

-- | Regexp entity types allow to specify regular expressions in entries values.
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDREGEXP :: GoogleCloudDialogflowV2beta1EntityType_Kind
pattern GoogleCloudDialogflowV2beta1EntityType_Kind_KINDREGEXP = GoogleCloudDialogflowV2beta1EntityType_Kind "KIND_REGEXP"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1EntityType_Kind_KINDUNSPECIFIED,
  GoogleCloudDialogflowV2beta1EntityType_Kind_KINDMAP,
  GoogleCloudDialogflowV2beta1EntityType_Kind_KINDLIST,
  GoogleCloudDialogflowV2beta1EntityType_Kind_KINDREGEXP,
  GoogleCloudDialogflowV2beta1EntityType_Kind
  #-}

newtype GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem {fromGoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "PLATFORM_UNSPECIFIED"

-- | Facebook.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Facebook :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Facebook = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "FACEBOOK"

-- | Slack.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Slack :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Slack = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "SLACK"

-- | Telegram.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telegram :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telegram = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "TELEGRAM"

-- | Kik.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Kik :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Kik = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "KIK"

-- | Skype.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Skype :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Skype = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "SKYPE"

-- | Line.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Line :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Line = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "LINE"

-- | Viber.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Viber :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Viber = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "VIBER"

-- | Google Assistant See <https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json Dialogflow webhook format>
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "ACTIONS_ON_GOOGLE"

-- | Telephony Gateway.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telephony :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telephony = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "TELEPHONY"

-- | Google Hangouts.
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS :: GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
pattern GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS = GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem "GOOGLE_HANGOUTS"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_PLATFORMUNSPECIFIED,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Facebook,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Slack,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telegram,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Kik,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Skype,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Line,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Viber,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_ACTIONSONGOOGLE,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_Telephony,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem_GOOGLEHANGOUTS,
  GoogleCloudDialogflowV2beta1Intent_DefaultResponsePlatformsItem
  #-}

-- | Optional. Indicates whether webhooks are enabled for the intent.
newtype GoogleCloudDialogflowV2beta1Intent_WebhookState = GoogleCloudDialogflowV2beta1Intent_WebhookState {fromGoogleCloudDialogflowV2beta1Intent_WebhookState :: Core.Text}
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

-- | Webhook is disabled in the agent and in the intent.
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED :: GoogleCloudDialogflowV2beta1Intent_WebhookState
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED = GoogleCloudDialogflowV2beta1Intent_WebhookState "WEBHOOK_STATE_UNSPECIFIED"

-- | Webhook is enabled in the agent and in the intent.
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLED :: GoogleCloudDialogflowV2beta1Intent_WebhookState
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLED = GoogleCloudDialogflowV2beta1Intent_WebhookState "WEBHOOK_STATE_ENABLED"

-- | Webhook is enabled in the agent and in the intent. Also, each slot filling prompt is forwarded to the webhook.
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING :: GoogleCloudDialogflowV2beta1Intent_WebhookState
pattern GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING = GoogleCloudDialogflowV2beta1Intent_WebhookState "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLED,
  GoogleCloudDialogflowV2beta1Intent_WebhookState_WEBHOOKSTATEENABLEDFORSLOTFILLING,
  GoogleCloudDialogflowV2beta1Intent_WebhookState
  #-}

-- | Optional. The platform that this message is intended for.
newtype GoogleCloudDialogflowV2beta1IntentMessage_Platform = GoogleCloudDialogflowV2beta1IntentMessage_Platform {fromGoogleCloudDialogflowV2beta1IntentMessage_Platform :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_PLATFORMUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_PLATFORMUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessage_Platform "PLATFORM_UNSPECIFIED"

-- | Facebook.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Facebook :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Facebook = GoogleCloudDialogflowV2beta1IntentMessage_Platform "FACEBOOK"

-- | Slack.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Slack :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Slack = GoogleCloudDialogflowV2beta1IntentMessage_Platform "SLACK"

-- | Telegram.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telegram :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telegram = GoogleCloudDialogflowV2beta1IntentMessage_Platform "TELEGRAM"

-- | Kik.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Kik :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Kik = GoogleCloudDialogflowV2beta1IntentMessage_Platform "KIK"

-- | Skype.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Skype :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Skype = GoogleCloudDialogflowV2beta1IntentMessage_Platform "SKYPE"

-- | Line.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Line :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Line = GoogleCloudDialogflowV2beta1IntentMessage_Platform "LINE"

-- | Viber.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Viber :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Viber = GoogleCloudDialogflowV2beta1IntentMessage_Platform "VIBER"

-- | Google Assistant See <https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json Dialogflow webhook format>
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_ACTIONSONGOOGLE :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_ACTIONSONGOOGLE = GoogleCloudDialogflowV2beta1IntentMessage_Platform "ACTIONS_ON_GOOGLE"

-- | Telephony Gateway.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telephony :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telephony = GoogleCloudDialogflowV2beta1IntentMessage_Platform "TELEPHONY"

-- | Google Hangouts.
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_GOOGLEHANGOUTS :: GoogleCloudDialogflowV2beta1IntentMessage_Platform
pattern GoogleCloudDialogflowV2beta1IntentMessage_Platform_GOOGLEHANGOUTS = GoogleCloudDialogflowV2beta1IntentMessage_Platform "GOOGLE_HANGOUTS"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_PLATFORMUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Facebook,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Slack,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telegram,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Kik,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Skype,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Line,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Viber,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_ACTIONSONGOOGLE,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_Telephony,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform_GOOGLEHANGOUTS,
  GoogleCloudDialogflowV2beta1IntentMessage_Platform
  #-}

-- | Optional. Settings for displaying the image. Applies to every image in items.
newtype GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions {fromGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions :: Core.Text}
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

-- | Fill the gaps between the image and the image container with gray bars.
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"

-- | Fill the gaps between the image and the image container with gray bars.
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions "GRAY"

-- | Fill the gaps between the image and the image container with white bars.
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_White :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_White = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions "WHITE"

-- | Image is scaled such that the image width and height match or exceed the container dimensions. This may crop the top and bottom of the image if the scaled image height is greater than the container height, or crop the left and right of the image if the scaled image width is greater than the container width. This is similar to \"Zoom Mode\" on a widescreen TV when playing a 4:3 video.
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions "CROPPED"

-- | Pad the gaps between image and image frame with a blurred copy of the same image.
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions "BLURRED_BACKGROUND"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_IMAGEDISPLAYOPTIONSUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Gray,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_White,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_Cropped,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions_BLURREDBACKGROUND,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard_ImageDisplayOptions
  #-}

-- | Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
newtype GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint {fromGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint :: Core.Text}
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

-- | Unspecified
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "URL_TYPE_HINT_UNSPECIFIED"

-- | Url would be an amp action
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "AMP_ACTION"

-- | URL that points directly to AMP content, or to a canonical URL which refers to AMP content via .
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
pattern GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT = GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint "AMP_CONTENT"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_URLTYPEHINTUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPACTION,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint_AMPCONTENT,
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction_UrlTypeHint
  #-}

-- | Optional. Defines text alignment for all cells in this column.
newtype GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment = GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment {fromGoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment :: Core.Text}
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

-- | Text is aligned to the leading edge of the column.
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment "HORIZONTAL_ALIGNMENT_UNSPECIFIED"

-- | Text is aligned to the leading edge of the column.
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Leading :: GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Leading = GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment "LEADING"

-- | Text is centered in the column.
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Center :: GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Center = GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment "CENTER"

-- | Text is aligned to the trailing edge of the column.
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Trailing :: GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Trailing = GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment "TRAILING"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_HORIZONTALALIGNMENTUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Leading,
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Center,
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment_Trailing,
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties_HorizontalAlignment
  #-}

-- | Optional. What type of media is the content (ie \"audio\").
newtype GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType = GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType {fromGoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType :: Core.Text}
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

-- | Unspecified.
pattern GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType
pattern GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType "RESPONSE_MEDIA_TYPE_UNSPECIFIED"

-- | Response media type is audio.
pattern GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_Audio :: GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType
pattern GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_Audio = GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType "AUDIO"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_RESPONSEMEDIATYPEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType_Audio,
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent_MediaType
  #-}

-- | Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height {fromGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_HEIGHTUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_HEIGHTUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height "HEIGHT_UNSPECIFIED"

-- | 112 DP.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Short :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Short = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height "SHORT"

-- | 168 DP.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Medium :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Medium = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height "MEDIUM"

-- | 264 DP. Not available for rich card carousels when the card width is set to small.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Tall :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Tall = GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height "TALL"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_HEIGHTUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Short,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Medium,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height_Tall,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia_Height
  #-}

-- | Required. The width of the cards in the carousel.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth = GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth {fromGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_CARDWIDTHUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_CARDWIDTHUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth "CARD_WIDTH_UNSPECIFIED"

-- | 120 DP. Note that tall media cannot be used.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Small :: GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Small = GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth "SMALL"

-- | 232 DP.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Medium :: GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Medium = GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth "MEDIUM"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_CARDWIDTHUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Small,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth_Medium,
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard_CardWidth
  #-}

-- | Required. Orientation of the card.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation {fromGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_CARDORIENTATIONUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_CARDORIENTATIONUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation "CARD_ORIENTATION_UNSPECIFIED"

-- | Horizontal layout.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Horizontal :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Horizontal = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation "HORIZONTAL"

-- | Vertical layout.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Vertical :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Vertical = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation "VERTICAL"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_CARDORIENTATIONUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Horizontal,
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation_Vertical,
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_CardOrientation
  #-}

-- | Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment {fromGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_THUMBNAILIMAGEALIGNMENTUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_THUMBNAILIMAGEALIGNMENTUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED"

-- | Thumbnail preview is left-aligned.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Left' :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Left' = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment "LEFT"

-- | Thumbnail preview is right-aligned.
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Right' :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
pattern GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Right' = GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment "RIGHT"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_THUMBNAILIMAGEALIGNMENTUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Left',
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment_Right',
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard_ThumbnailImageAlignment
  #-}

-- | Required. The type of the training phrase.
newtype GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type = GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type {fromGoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type :: Core.Text}
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

-- | Not specified. This value should never be used.
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_TYPEUNSPECIFIED = GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type "TYPE_UNSPECIFIED"

-- | Examples do not contain \@-prefixed entity type names, but example parts can be annotated with entity types.
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Example :: GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Example = GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type "EXAMPLE"

-- | Templates are not annotated with entity types, but they can contain \@-prefixed entity type names as substrings. Note: Template mode has been deprecated. Example mode is the only supported way to create new training phrases. If you have existing training phrases in template mode, they will be removed during training and it can cause a drop in agent performance.
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Template :: GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
pattern GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Template = GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type "TEMPLATE"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Example,
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type_Template,
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase_Type
  #-}

-- | The system\'s confidence level that this knowledge answer is a good match for this conversational query. NOTE: The confidence level for a given \`\` pair may change without notice, as it depends on models that are constantly being improved. However, it will change less frequently than the confidence score below, and should be preferred for referencing the quality of an answer.
newtype GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel = GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel {fromGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel :: Core.Text}
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
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_MATCHCONFIDENCELEVELUNSPECIFIED :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_MATCHCONFIDENCELEVELUNSPECIFIED = GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED"

-- | Indicates that the confidence is low.
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Low :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Low = GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel "LOW"

-- | Indicates our confidence is medium.
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Medium :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Medium = GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel "MEDIUM"

-- | Indicates our confidence is high.
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_High :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
pattern GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_High = GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel "HIGH"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_MATCHCONFIDENCELEVELUNSPECIFIED,
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Low,
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_Medium,
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel_High,
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer_MatchConfidenceLevel
  #-}

-- | Required. Output only. The current state of this operation.
newtype GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State = GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State {fromGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State :: Core.Text}
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

-- | State unspecified.
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State "STATE_UNSPECIFIED"

-- | The operation has been created.
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Pending :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Pending = GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State "PENDING"

-- | The operation is currently running.
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Running :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Running = GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State "RUNNING"

-- | The operation is done, either cancelled or completed.
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Done :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
pattern GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Done = GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State "DONE"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Pending,
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Running,
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State_Done,
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata_State
  #-}

-- | Output only. The role of the participant.
newtype GoogleCloudDialogflowV2beta1Message_ParticipantRole = GoogleCloudDialogflowV2beta1Message_ParticipantRole {fromGoogleCloudDialogflowV2beta1Message_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2beta1Message_ParticipantRole
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2beta1Message_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2beta1Message_ParticipantRole
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2beta1Message_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2beta1Message_ParticipantRole
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2beta1Message_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2beta1Message_ParticipantRole
pattern GoogleCloudDialogflowV2beta1Message_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2beta1Message_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1Message_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1Message_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2beta1Message_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2beta1Message_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2beta1Message_ParticipantRole
  #-}

-- | Required. Indicates whether the additional data should override or supplement the custom entity type definition.
newtype GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode = GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode {fromGoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode :: Core.Text}
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

-- | Not specified. This value should be never used.
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED :: GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED = GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_UNSPECIFIED"

-- | The collection of session entities overrides the collection of entities in the corresponding custom entity type.
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE :: GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE = GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_OVERRIDE"

-- | The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to @ListSessionEntityTypes@, @GetSessionEntityType@, @CreateSessionEntityType@ and @UpdateSessionEntityType@ only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT :: GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
pattern GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT = GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode "ENTITY_OVERRIDE_MODE_SUPPLEMENT"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODEOVERRIDE,
  GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode_ENTITYOVERRIDEMODESUPPLEMENT,
  GoogleCloudDialogflowV2beta1SessionEntityType_EntityOverrideMode
  #-}

-- | Required. The participant role to add or update the suggestion feature config. Only HUMAN/AGENT or END/USER can be used.
newtype GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole {fromGoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole :: Core.Text}
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

-- | Participant role not set.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "ROLE_UNSPECIFIED"

-- | Participant is a human agent.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "HUMAN_AGENT"

-- | Participant is an automated agent, such as a Dialogflow agent.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "AUTOMATED_AGENT"

-- | Participant is an end user that has called or chatted with Dialogflow services.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole "END_USER"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ROLEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_HUMANAGENT,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_AUTOMATEDAGENT,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole_ENDUSER,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_ParticipantRole
  #-}

-- | Required. The type of the suggestion feature to add or update.
newtype GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType {fromGoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType :: Core.Text}
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

-- | Unspecified feature type.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "TYPE_UNSPECIFIED"

-- | Run article suggestion model for chat.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "ARTICLE_SUGGESTION"

-- | Run FAQ model.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "FAQ"

-- | Run smart reply model for chat.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "SMART_REPLY"

-- | Run Dialogflow assist model for chat, which will return automated agent response as suggestion.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "DIALOGFLOW_ASSIST"

-- | Run conversation summarization model for chat.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "CONVERSATION_SUMMARIZATION"

-- | Run knowledge search with text input from agent or text generated query.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_SEARCH"

-- | Run knowledge assist with automatic query generation.
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST :: GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
pattern GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST = GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType "KNOWLEDGE_ASSIST"

{-# COMPLETE
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_TYPEUNSPECIFIED,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_ARTICLESUGGESTION,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_Faq,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_SMARTREPLY,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_DIALOGFLOWASSIST,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_CONVERSATIONSUMMARIZATION,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGESEARCH,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType_KNOWLEDGEASSIST,
  GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata_SuggestionFeatureType
  #-}

newtype GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem = GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem {fromGoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem :: Core.Text}
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

-- | Failure reason is not assigned.
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED :: GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED = GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem "FAILURE_REASON_UNSPECIFIED"

-- | Whether NLU failed to recognize user intent.
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDINTENT :: GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDINTENT = GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem "FAILED_INTENT"

-- | Whether webhook failed during the turn.
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK :: GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
pattern GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK = GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem "FAILED_WEBHOOK"

{-# COMPLETE
  GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILUREREASONUNSPECIFIED,
  GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDINTENT,
  GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem_FAILEDWEBHOOK,
  GoogleCloudDialogflowV3alpha1TurnSignals_FailureReasonsItem
  #-}

-- | The resource view to apply to the returned intent.
newtype ProjectsLocationsAgentsIntentsListIntentView = ProjectsLocationsAgentsIntentsListIntentView {fromProjectsLocationsAgentsIntentsListIntentView :: Core.Text}
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

-- | Not specified. Treated as INTENT/VIEW/FULL.
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWUNSPECIFIED :: ProjectsLocationsAgentsIntentsListIntentView
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWUNSPECIFIED = ProjectsLocationsAgentsIntentsListIntentView "INTENT_VIEW_UNSPECIFIED"

-- | Training phrases field is not populated in the response.
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWPARTIAL :: ProjectsLocationsAgentsIntentsListIntentView
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWPARTIAL = ProjectsLocationsAgentsIntentsListIntentView "INTENT_VIEW_PARTIAL"

-- | All fields are populated.
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWFULL :: ProjectsLocationsAgentsIntentsListIntentView
pattern ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWFULL = ProjectsLocationsAgentsIntentsListIntentView "INTENT_VIEW_FULL"

{-# COMPLETE
  ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWUNSPECIFIED,
  ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWPARTIAL,
  ProjectsLocationsAgentsIntentsListIntentView_INTENTVIEWFULL,
  ProjectsLocationsAgentsIntentsListIntentView
  #-}

-- | Required. The type of coverage requested.
newtype ProjectsLocationsAgentsTestCasesCalculateCoverageType = ProjectsLocationsAgentsTestCasesCalculateCoverageType {fromProjectsLocationsAgentsTestCasesCalculateCoverageType :: Core.Text}
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

-- | Should never be used.
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_COVERAGETYPEUNSPECIFIED :: ProjectsLocationsAgentsTestCasesCalculateCoverageType
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_COVERAGETYPEUNSPECIFIED = ProjectsLocationsAgentsTestCasesCalculateCoverageType "COVERAGE_TYPE_UNSPECIFIED"

-- | Intent coverage.
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_Intent :: ProjectsLocationsAgentsTestCasesCalculateCoverageType
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_Intent = ProjectsLocationsAgentsTestCasesCalculateCoverageType "INTENT"

-- | Page transition coverage.
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_PAGETRANSITION :: ProjectsLocationsAgentsTestCasesCalculateCoverageType
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_PAGETRANSITION = ProjectsLocationsAgentsTestCasesCalculateCoverageType "PAGE_TRANSITION"

-- | Transition route group coverage.
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_TRANSITIONROUTEGROUP :: ProjectsLocationsAgentsTestCasesCalculateCoverageType
pattern ProjectsLocationsAgentsTestCasesCalculateCoverageType_TRANSITIONROUTEGROUP = ProjectsLocationsAgentsTestCasesCalculateCoverageType "TRANSITION_ROUTE_GROUP"

{-# COMPLETE
  ProjectsLocationsAgentsTestCasesCalculateCoverageType_COVERAGETYPEUNSPECIFIED,
  ProjectsLocationsAgentsTestCasesCalculateCoverageType_Intent,
  ProjectsLocationsAgentsTestCasesCalculateCoverageType_PAGETRANSITION,
  ProjectsLocationsAgentsTestCasesCalculateCoverageType_TRANSITIONROUTEGROUP,
  ProjectsLocationsAgentsTestCasesCalculateCoverageType
  #-}

-- | Specifies whether response should include all fields or just the metadata.
newtype ProjectsLocationsAgentsTestCasesListView = ProjectsLocationsAgentsTestCasesListView {fromProjectsLocationsAgentsTestCasesListView :: Core.Text}
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

-- | The default \/ unset value. The API will default to the BASIC view.
pattern ProjectsLocationsAgentsTestCasesListView_TESTCASEVIEWUNSPECIFIED :: ProjectsLocationsAgentsTestCasesListView
pattern ProjectsLocationsAgentsTestCasesListView_TESTCASEVIEWUNSPECIFIED = ProjectsLocationsAgentsTestCasesListView "TEST_CASE_VIEW_UNSPECIFIED"

-- | Include basic metadata about the test case, but not the conversation turns. This is the default value.
pattern ProjectsLocationsAgentsTestCasesListView_Basic :: ProjectsLocationsAgentsTestCasesListView
pattern ProjectsLocationsAgentsTestCasesListView_Basic = ProjectsLocationsAgentsTestCasesListView "BASIC"

-- | Include everything.
pattern ProjectsLocationsAgentsTestCasesListView_Full :: ProjectsLocationsAgentsTestCasesListView
pattern ProjectsLocationsAgentsTestCasesListView_Full = ProjectsLocationsAgentsTestCasesListView "FULL"

{-# COMPLETE
  ProjectsLocationsAgentsTestCasesListView_TESTCASEVIEWUNSPECIFIED,
  ProjectsLocationsAgentsTestCasesListView_Basic,
  ProjectsLocationsAgentsTestCasesListView_Full,
  ProjectsLocationsAgentsTestCasesListView
  #-}
