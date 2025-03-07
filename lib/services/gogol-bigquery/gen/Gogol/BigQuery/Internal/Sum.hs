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
-- Module      : Gogol.BigQuery.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigQuery.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Argument_ArgumentKind
    Argument_ArgumentKind
      ( Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED,
        Argument_ArgumentKind_FIXEDTYPE,
        Argument_ArgumentKind_ANYTYPE,
        ..
      ),

    -- * Argument_Mode
    Argument_Mode
      ( Argument_Mode_MODEUNSPECIFIED,
        Argument_Mode_IN,
        Argument_Mode_Out,
        Argument_Mode_Inout,
        ..
      ),

    -- * ArimaForecastingMetrics_SeasonalPeriodsItem
    ArimaForecastingMetrics_SeasonalPeriodsItem
      ( ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Daily,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaModelInfo_SeasonalPeriodsItem
    ArimaModelInfo_SeasonalPeriodsItem
      ( ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaModelInfo_SeasonalPeriodsItem_Daily,
        ArimaModelInfo_SeasonalPeriodsItem_Weekly,
        ArimaModelInfo_SeasonalPeriodsItem_Monthly,
        ArimaModelInfo_SeasonalPeriodsItem_Quarterly,
        ArimaModelInfo_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaResult_SeasonalPeriodsItem
    ArimaResult_SeasonalPeriodsItem
      ( ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaResult_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaResult_SeasonalPeriodsItem_Daily,
        ArimaResult_SeasonalPeriodsItem_Weekly,
        ArimaResult_SeasonalPeriodsItem_Monthly,
        ArimaResult_SeasonalPeriodsItem_Quarterly,
        ArimaResult_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
    ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
      ( ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * BiEngineReason_Code
    BiEngineReason_Code
      ( BiEngineReason_Code_CODEUNSPECIFIED,
        BiEngineReason_Code_NORESERVATION,
        BiEngineReason_Code_INSUFFICIENTRESERVATION,
        BiEngineReason_Code_UNSUPPORTEDSQLTEXT,
        BiEngineReason_Code_INPUTTOOLARGE,
        BiEngineReason_Code_OTHERREASON,
        BiEngineReason_Code_TABLEEXCLUDED,
        ..
      ),

    -- * BiEngineStatistics_AccelerationMode
    BiEngineStatistics_AccelerationMode
      ( BiEngineStatistics_AccelerationMode_BIENGINEACCELERATIONMODEUNSPECIFIED,
        BiEngineStatistics_AccelerationMode_BIENGINEDISABLED,
        BiEngineStatistics_AccelerationMode_PARTIALINPUT,
        BiEngineStatistics_AccelerationMode_FULLINPUT,
        BiEngineStatistics_AccelerationMode_FULLQUERY,
        ..
      ),

    -- * BiEngineStatistics_BiEngineMode
    BiEngineStatistics_BiEngineMode
      ( BiEngineStatistics_BiEngineMode_ACCELERATIONMODEUNSPECIFIED,
        BiEngineStatistics_BiEngineMode_Disabled,
        BiEngineStatistics_BiEngineMode_Partial,
        BiEngineStatistics_BiEngineMode_Full,
        ..
      ),

    -- * BigLakeConfiguration_FileFormat
    BigLakeConfiguration_FileFormat
      ( BigLakeConfiguration_FileFormat_FILEFORMATUNSPECIFIED,
        BigLakeConfiguration_FileFormat_Parquet,
        ..
      ),

    -- * BigLakeConfiguration_TableFormat
    BigLakeConfiguration_TableFormat
      ( BigLakeConfiguration_TableFormat_TABLEFORMATUNSPECIFIED,
        BigLakeConfiguration_TableFormat_Iceberg,
        ..
      ),

    -- * Dataset_DefaultRoundingMode
    Dataset_DefaultRoundingMode
      ( Dataset_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED,
        Dataset_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO,
        Dataset_DefaultRoundingMode_ROUNDHALFEVEN,
        ..
      ),

    -- * Dataset_StorageBillingModel
    Dataset_StorageBillingModel
      ( Dataset_StorageBillingModel_STORAGEBILLINGMODELUNSPECIFIED,
        Dataset_StorageBillingModel_Logical,
        Dataset_StorageBillingModel_Physical,
        ..
      ),

    -- * DatasetAccessEntry_TargetTypesItem
    DatasetAccessEntry_TargetTypesItem
      ( DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED,
        DatasetAccessEntry_TargetTypesItem_Views,
        DatasetAccessEntry_TargetTypesItem_Routines,
        ..
      ),

    -- * ExplainQueryStage_ComputeMode
    ExplainQueryStage_ComputeMode
      ( ExplainQueryStage_ComputeMode_COMPUTEMODEUNSPECIFIED,
        ExplainQueryStage_ComputeMode_Bigquery,
        ExplainQueryStage_ComputeMode_BIENGINE,
        ..
      ),

    -- * ExternalDataConfiguration_DecimalTargetTypesItem
    ExternalDataConfiguration_DecimalTargetTypesItem
      ( ExternalDataConfiguration_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED,
        ExternalDataConfiguration_DecimalTargetTypesItem_Numeric,
        ExternalDataConfiguration_DecimalTargetTypesItem_Bignumeric,
        ExternalDataConfiguration_DecimalTargetTypesItem_String,
        ..
      ),

    -- * ExternalDataConfiguration_FileSetSpecType
    ExternalDataConfiguration_FileSetSpecType
      ( ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH,
        ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST,
        ..
      ),

    -- * ExternalDataConfiguration_JsonExtension
    ExternalDataConfiguration_JsonExtension
      ( ExternalDataConfiguration_JsonExtension_JSONEXTENSIONUNSPECIFIED,
        ExternalDataConfiguration_JsonExtension_Geojson,
        ..
      ),

    -- * ExternalDataConfiguration_MetadataCacheMode
    ExternalDataConfiguration_MetadataCacheMode
      ( ExternalDataConfiguration_MetadataCacheMode_METADATACACHEMODEUNSPECIFIED,
        ExternalDataConfiguration_MetadataCacheMode_Automatic,
        ExternalDataConfiguration_MetadataCacheMode_Manual,
        ..
      ),

    -- * ExternalDataConfiguration_ObjectMetadata
    ExternalDataConfiguration_ObjectMetadata
      ( ExternalDataConfiguration_ObjectMetadata_OBJECTMETADATAUNSPECIFIED,
        ExternalDataConfiguration_ObjectMetadata_Directory,
        ExternalDataConfiguration_ObjectMetadata_Simple,
        ..
      ),

    -- * ForeignTypeInfo_TypeSystem
    ForeignTypeInfo_TypeSystem
      ( ForeignTypeInfo_TypeSystem_TYPESYSTEMUNSPECIFIED,
        ForeignTypeInfo_TypeSystem_Hive,
        ..
      ),

    -- * HparamTuningTrial_Status
    HparamTuningTrial_Status
      ( HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED,
        HparamTuningTrial_Status_NOTSTARTED,
        HparamTuningTrial_Status_Running,
        HparamTuningTrial_Status_Succeeded,
        HparamTuningTrial_Status_Failed,
        HparamTuningTrial_Status_Infeasible,
        HparamTuningTrial_Status_STOPPEDEARLY,
        ..
      ),

    -- * IndexUnusedReason_Code
    IndexUnusedReason_Code
      ( IndexUnusedReason_Code_CODEUNSPECIFIED,
        IndexUnusedReason_Code_INDEXCONFIGNOTAVAILABLE,
        IndexUnusedReason_Code_PENDINGINDEXCREATION,
        IndexUnusedReason_Code_BASETABLETRUNCATED,
        IndexUnusedReason_Code_INDEXCONFIGMODIFIED,
        IndexUnusedReason_Code_TIMETRAVELQUERY,
        IndexUnusedReason_Code_NOPRUNINGPOWER,
        IndexUnusedReason_Code_UNINDEXEDSEARCHFIELDS,
        IndexUnusedReason_Code_UNSUPPORTEDSEARCHPATTERN,
        IndexUnusedReason_Code_OPTIMIZEDWITHMATERIALIZEDVIEW,
        IndexUnusedReason_Code_SECUREDBYDATAMASKING,
        IndexUnusedReason_Code_MISMATCHEDTEXTANALYZER,
        IndexUnusedReason_Code_BASETABLETOOSMALL,
        IndexUnusedReason_Code_BASETABLETOOLARGE,
        IndexUnusedReason_Code_ESTIMATEDPERFORMANCEGAINTOOLOW,
        IndexUnusedReason_Code_NOTSUPPORTEDINSTANDARDEDITION,
        IndexUnusedReason_Code_INDEXSUPPRESSEDBYFUNCTIONOPTION,
        IndexUnusedReason_Code_QUERYCACHEHIT,
        IndexUnusedReason_Code_STALEINDEX,
        IndexUnusedReason_Code_INTERNALERROR,
        IndexUnusedReason_Code_OTHERREASON,
        ..
      ),

    -- * JobConfigurationLoad_ColumnNameCharacterMap
    JobConfigurationLoad_ColumnNameCharacterMap
      ( JobConfigurationLoad_ColumnNameCharacterMap_COLUMNNAMECHARACTERMAPUNSPECIFIED,
        JobConfigurationLoad_ColumnNameCharacterMap_Strict,
        JobConfigurationLoad_ColumnNameCharacterMap_V1,
        JobConfigurationLoad_ColumnNameCharacterMap_V2,
        ..
      ),

    -- * JobConfigurationLoad_DecimalTargetTypesItem
    JobConfigurationLoad_DecimalTargetTypesItem
      ( JobConfigurationLoad_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED,
        JobConfigurationLoad_DecimalTargetTypesItem_Numeric,
        JobConfigurationLoad_DecimalTargetTypesItem_Bignumeric,
        JobConfigurationLoad_DecimalTargetTypesItem_String,
        ..
      ),

    -- * JobConfigurationLoad_FileSetSpecType
    JobConfigurationLoad_FileSetSpecType
      ( JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH,
        JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST,
        ..
      ),

    -- * JobConfigurationLoad_JsonExtension
    JobConfigurationLoad_JsonExtension
      ( JobConfigurationLoad_JsonExtension_JSONEXTENSIONUNSPECIFIED,
        JobConfigurationLoad_JsonExtension_Geojson,
        ..
      ),

    -- * JobConfigurationTableCopy_OperationType
    JobConfigurationTableCopy_OperationType
      ( JobConfigurationTableCopy_OperationType_OPERATIONTYPEUNSPECIFIED,
        JobConfigurationTableCopy_OperationType_Copy,
        JobConfigurationTableCopy_OperationType_Snapshot,
        JobConfigurationTableCopy_OperationType_Restore,
        JobConfigurationTableCopy_OperationType_Clone,
        ..
      ),

    -- * JobCreationReason_Code
    JobCreationReason_Code
      ( JobCreationReason_Code_CODEUNSPECIFIED,
        JobCreationReason_Code_Requested,
        JobCreationReason_Code_LONGRUNNING,
        JobCreationReason_Code_LARGERESULTS,
        JobCreationReason_Code_Other,
        ..
      ),

    -- * JobStatistics_Edition
    JobStatistics_Edition
      ( JobStatistics_Edition_RESERVATIONEDITIONUNSPECIFIED,
        JobStatistics_Edition_Standard,
        JobStatistics_Edition_Enterprise,
        JobStatistics_Edition_ENTERPRISEPLUS,
        ..
      ),

    -- * JoinRestrictionPolicy_JoinCondition
    JoinRestrictionPolicy_JoinCondition
      ( JoinRestrictionPolicy_JoinCondition_JOINCONDITIONUNSPECIFIED,
        JoinRestrictionPolicy_JoinCondition_JOINANY,
        JoinRestrictionPolicy_JoinCondition_JOINALL,
        JoinRestrictionPolicy_JoinCondition_JOINNOTREQUIRED,
        JoinRestrictionPolicy_JoinCondition_JOINBLOCKED,
        ..
      ),

    -- * LinkedDatasetMetadata_LinkState
    LinkedDatasetMetadata_LinkState
      ( LinkedDatasetMetadata_LinkState_LINKSTATEUNSPECIFIED,
        LinkedDatasetMetadata_LinkState_Linked,
        LinkedDatasetMetadata_LinkState_Unlinked,
        ..
      ),

    -- * MaterializedView_RejectedReason
    MaterializedView_RejectedReason
      ( MaterializedView_RejectedReason_REJECTEDREASONUNSPECIFIED,
        MaterializedView_RejectedReason_NODATA,
        MaterializedView_RejectedReason_Cost,
        MaterializedView_RejectedReason_BASETABLETRUNCATED,
        MaterializedView_RejectedReason_BASETABLEDATACHANGE,
        MaterializedView_RejectedReason_BASETABLEPARTITIONEXPIRATIONCHANGE,
        MaterializedView_RejectedReason_BASETABLEEXPIREDPARTITION,
        MaterializedView_RejectedReason_BASETABLEINCOMPATIBLEMETADATACHANGE,
        MaterializedView_RejectedReason_TIMEZONE,
        MaterializedView_RejectedReason_OUTOFTIMETRAVELWINDOW,
        MaterializedView_RejectedReason_BASETABLEFINEGRAINEDSECURITYPOLICY,
        MaterializedView_RejectedReason_BASETABLETOOSTALE,
        ..
      ),

    -- * MlStatistics_ModelType
    MlStatistics_ModelType
      ( MlStatistics_ModelType_MODELTYPEUNSPECIFIED,
        MlStatistics_ModelType_LINEARREGRESSION,
        MlStatistics_ModelType_LOGISTICREGRESSION,
        MlStatistics_ModelType_Kmeans,
        MlStatistics_ModelType_MATRIXFACTORIZATION,
        MlStatistics_ModelType_DNNCLASSIFIER,
        MlStatistics_ModelType_Tensorflow,
        MlStatistics_ModelType_DNNREGRESSOR,
        MlStatistics_ModelType_Xgboost,
        MlStatistics_ModelType_BOOSTEDTREEREGRESSOR,
        MlStatistics_ModelType_BOOSTEDTREECLASSIFIER,
        MlStatistics_ModelType_Arima,
        MlStatistics_ModelType_AUTOMLREGRESSOR,
        MlStatistics_ModelType_AUTOMLCLASSIFIER,
        MlStatistics_ModelType_Pca,
        MlStatistics_ModelType_DNNLINEARCOMBINEDCLASSIFIER,
        MlStatistics_ModelType_DNNLINEARCOMBINEDREGRESSOR,
        MlStatistics_ModelType_Autoencoder,
        MlStatistics_ModelType_ARIMAPLUS,
        MlStatistics_ModelType_ARIMAPLUSXREG,
        MlStatistics_ModelType_RANDOMFORESTREGRESSOR,
        MlStatistics_ModelType_RANDOMFORESTCLASSIFIER,
        MlStatistics_ModelType_TENSORFLOWLITE,
        MlStatistics_ModelType_Onnx,
        MlStatistics_ModelType_TRANSFORMONLY,
        MlStatistics_ModelType_CONTRIBUTIONANALYSIS,
        ..
      ),

    -- * MlStatistics_TrainingType
    MlStatistics_TrainingType
      ( MlStatistics_TrainingType_TRAININGTYPEUNSPECIFIED,
        MlStatistics_TrainingType_SINGLETRAINING,
        MlStatistics_TrainingType_HPARAMTUNING,
        ..
      ),

    -- * Model_ModelType
    Model_ModelType
      ( Model_ModelType_MODELTYPEUNSPECIFIED,
        Model_ModelType_LINEARREGRESSION,
        Model_ModelType_LOGISTICREGRESSION,
        Model_ModelType_Kmeans,
        Model_ModelType_MATRIXFACTORIZATION,
        Model_ModelType_DNNCLASSIFIER,
        Model_ModelType_Tensorflow,
        Model_ModelType_DNNREGRESSOR,
        Model_ModelType_Xgboost,
        Model_ModelType_BOOSTEDTREEREGRESSOR,
        Model_ModelType_BOOSTEDTREECLASSIFIER,
        Model_ModelType_Arima,
        Model_ModelType_AUTOMLREGRESSOR,
        Model_ModelType_AUTOMLCLASSIFIER,
        Model_ModelType_Pca,
        Model_ModelType_DNNLINEARCOMBINEDCLASSIFIER,
        Model_ModelType_DNNLINEARCOMBINEDREGRESSOR,
        Model_ModelType_Autoencoder,
        Model_ModelType_ARIMAPLUS,
        Model_ModelType_ARIMAPLUSXREG,
        Model_ModelType_RANDOMFORESTREGRESSOR,
        Model_ModelType_RANDOMFORESTCLASSIFIER,
        Model_ModelType_TENSORFLOWLITE,
        Model_ModelType_Onnx,
        Model_ModelType_TRANSFORMONLY,
        Model_ModelType_CONTRIBUTIONANALYSIS,
        ..
      ),

    -- * ParquetOptions_MapTargetType
    ParquetOptions_MapTargetType
      ( ParquetOptions_MapTargetType_MAPTARGETTYPEUNSPECIFIED,
        ParquetOptions_MapTargetType_ARRAYOFSTRUCT,
        ..
      ),

    -- * QueryRequest_JobCreationMode
    QueryRequest_JobCreationMode
      ( QueryRequest_JobCreationMode_JOBCREATIONMODEUNSPECIFIED,
        QueryRequest_JobCreationMode_JOBCREATIONREQUIRED,
        QueryRequest_JobCreationMode_JOBCREATIONOPTIONAL,
        ..
      ),

    -- * RemoteModelInfo_RemoteServiceType
    RemoteModelInfo_RemoteServiceType
      ( RemoteModelInfo_RemoteServiceType_REMOTESERVICETYPEUNSPECIFIED,
        RemoteModelInfo_RemoteServiceType_CLOUD_AI_TRANSLATE_V3,
        RemoteModelInfo_RemoteServiceType_CLOUD_AI_VISION_V1,
        RemoteModelInfo_RemoteServiceType_CLOUD_AI_NATURAL_LANGUAGE_V1,
        RemoteModelInfo_RemoteServiceType_CLOUD_AI_SPEECH_TO_TEXT_V2,
        ..
      ),

    -- * RestrictionConfig_Type
    RestrictionConfig_Type
      ( RestrictionConfig_Type_RESTRICTIONTYPEUNSPECIFIED,
        RestrictionConfig_Type_RESTRICTEDDATAEGRESS,
        ..
      ),

    -- * Routine_DataGovernanceType
    Routine_DataGovernanceType
      ( Routine_DataGovernanceType_DATAGOVERNANCETYPEUNSPECIFIED,
        Routine_DataGovernanceType_DATAMASKING,
        ..
      ),

    -- * Routine_DeterminismLevel
    Routine_DeterminismLevel
      ( Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED,
        Routine_DeterminismLevel_Deterministic,
        Routine_DeterminismLevel_NOTDETERMINISTIC,
        ..
      ),

    -- * Routine_Language
    Routine_Language
      ( Routine_Language_LANGUAGEUNSPECIFIED,
        Routine_Language_Sql,
        Routine_Language_Javascript,
        Routine_Language_Python,
        Routine_Language_Java,
        Routine_Language_Scala,
        ..
      ),

    -- * Routine_RoutineType
    Routine_RoutineType
      ( Routine_RoutineType_ROUTINETYPEUNSPECIFIED,
        Routine_RoutineType_SCALARFUNCTION,
        Routine_RoutineType_Procedure,
        Routine_RoutineType_TABLEVALUEDFUNCTION,
        Routine_RoutineType_AGGREGATEFUNCTION,
        ..
      ),

    -- * Routine_SecurityMode
    Routine_SecurityMode
      ( Routine_SecurityMode_SECURITYMODEUNSPECIFIED,
        Routine_SecurityMode_Definer,
        Routine_SecurityMode_Invoker,
        ..
      ),

    -- * ScriptOptions_KeyResultStatement
    ScriptOptions_KeyResultStatement
      ( ScriptOptions_KeyResultStatement_KEYRESULTSTATEMENTKINDUNSPECIFIED,
        ScriptOptions_KeyResultStatement_Last,
        ScriptOptions_KeyResultStatement_FIRSTSELECT,
        ..
      ),

    -- * ScriptStatistics_EvaluationKind
    ScriptStatistics_EvaluationKind
      ( ScriptStatistics_EvaluationKind_EVALUATIONKINDUNSPECIFIED,
        ScriptStatistics_EvaluationKind_Statement,
        ScriptStatistics_EvaluationKind_Expression,
        ..
      ),

    -- * SearchStatistics_IndexUsageMode
    SearchStatistics_IndexUsageMode
      ( SearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED,
        SearchStatistics_IndexUsageMode_Unused,
        SearchStatistics_IndexUsageMode_PARTIALLYUSED,
        SearchStatistics_IndexUsageMode_FULLYUSED,
        ..
      ),

    -- * StandardSqlDataType_TypeKind
    StandardSqlDataType_TypeKind
      ( StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED,
        StandardSqlDataType_TypeKind_INT64,
        StandardSqlDataType_TypeKind_Bool,
        StandardSqlDataType_TypeKind_FLOAT64,
        StandardSqlDataType_TypeKind_String,
        StandardSqlDataType_TypeKind_Bytes,
        StandardSqlDataType_TypeKind_Timestamp,
        StandardSqlDataType_TypeKind_Date,
        StandardSqlDataType_TypeKind_Time,
        StandardSqlDataType_TypeKind_Datetime,
        StandardSqlDataType_TypeKind_Interval,
        StandardSqlDataType_TypeKind_Geography,
        StandardSqlDataType_TypeKind_Numeric,
        StandardSqlDataType_TypeKind_Bignumeric,
        StandardSqlDataType_TypeKind_Json,
        StandardSqlDataType_TypeKind_Array,
        StandardSqlDataType_TypeKind_Struct,
        StandardSqlDataType_TypeKind_Range,
        ..
      ),

    -- * Table_DefaultRoundingMode
    Table_DefaultRoundingMode
      ( Table_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED,
        Table_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO,
        Table_DefaultRoundingMode_ROUNDHALFEVEN,
        ..
      ),

    -- * Table_ManagedTableType
    Table_ManagedTableType
      ( Table_ManagedTableType_MANAGEDTABLETYPEUNSPECIFIED,
        Table_ManagedTableType_Native,
        Table_ManagedTableType_Iceberg,
        ..
      ),

    -- * TableFieldSchema_RoundingMode
    TableFieldSchema_RoundingMode
      ( TableFieldSchema_RoundingMode_ROUNDINGMODEUNSPECIFIED,
        TableFieldSchema_RoundingMode_ROUNDHALFAWAYFROMZERO,
        TableFieldSchema_RoundingMode_ROUNDHALFEVEN,
        ..
      ),

    -- * TableMetadataCacheUsage_UnusedReason
    TableMetadataCacheUsage_UnusedReason
      ( TableMetadataCacheUsage_UnusedReason_UNUSEDREASONUNSPECIFIED,
        TableMetadataCacheUsage_UnusedReason_EXCEEDEDMAXSTALENESS,
        TableMetadataCacheUsage_UnusedReason_METADATACACHINGNOTENABLED,
        TableMetadataCacheUsage_UnusedReason_OTHERREASON,
        ..
      ),

    -- * TableReplicationInfo_ReplicationStatus
    TableReplicationInfo_ReplicationStatus
      ( TableReplicationInfo_ReplicationStatus_REPLICATIONSTATUSUNSPECIFIED,
        TableReplicationInfo_ReplicationStatus_Active,
        TableReplicationInfo_ReplicationStatus_SOURCEDELETED,
        TableReplicationInfo_ReplicationStatus_PERMISSIONDENIED,
        TableReplicationInfo_ReplicationStatus_UNSUPPORTEDCONFIGURATION,
        ..
      ),

    -- * TrainingOptions_BoosterType
    TrainingOptions_BoosterType
      ( TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED,
        TrainingOptions_BoosterType_Gbtree,
        TrainingOptions_BoosterType_Dart,
        ..
      ),

    -- * TrainingOptions_CategoryEncodingMethod
    TrainingOptions_CategoryEncodingMethod
      ( TrainingOptions_CategoryEncodingMethod_ENCODINGMETHODUNSPECIFIED,
        TrainingOptions_CategoryEncodingMethod_ONEHOTENCODING,
        TrainingOptions_CategoryEncodingMethod_LABELENCODING,
        TrainingOptions_CategoryEncodingMethod_DUMMYENCODING,
        ..
      ),

    -- * TrainingOptions_ColorSpace
    TrainingOptions_ColorSpace
      ( TrainingOptions_ColorSpace_COLORSPACEUNSPECIFIED,
        TrainingOptions_ColorSpace_Rgb,
        TrainingOptions_ColorSpace_Hsv,
        TrainingOptions_ColorSpace_Yiq,
        TrainingOptions_ColorSpace_Yuv,
        TrainingOptions_ColorSpace_Grayscale,
        ..
      ),

    -- * TrainingOptions_DartNormalizeType
    TrainingOptions_DartNormalizeType
      ( TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED,
        TrainingOptions_DartNormalizeType_Tree,
        TrainingOptions_DartNormalizeType_Forest,
        ..
      ),

    -- * TrainingOptions_DataFrequency
    TrainingOptions_DataFrequency
      ( TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED,
        TrainingOptions_DataFrequency_AUTOFREQUENCY,
        TrainingOptions_DataFrequency_Yearly,
        TrainingOptions_DataFrequency_Quarterly,
        TrainingOptions_DataFrequency_Monthly,
        TrainingOptions_DataFrequency_Weekly,
        TrainingOptions_DataFrequency_Daily,
        TrainingOptions_DataFrequency_Hourly,
        TrainingOptions_DataFrequency_PERMINUTE,
        ..
      ),

    -- * TrainingOptions_DataSplitMethod
    TrainingOptions_DataSplitMethod
      ( TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED,
        TrainingOptions_DataSplitMethod_Random,
        TrainingOptions_DataSplitMethod_Custom,
        TrainingOptions_DataSplitMethod_Sequential,
        TrainingOptions_DataSplitMethod_NOSPLIT,
        TrainingOptions_DataSplitMethod_AUTOSPLIT,
        ..
      ),

    -- * TrainingOptions_DistanceType
    TrainingOptions_DistanceType
      ( TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED,
        TrainingOptions_DistanceType_Euclidean,
        TrainingOptions_DistanceType_Cosine,
        ..
      ),

    -- * TrainingOptions_FeedbackType
    TrainingOptions_FeedbackType
      ( TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED,
        TrainingOptions_FeedbackType_Implicit,
        TrainingOptions_FeedbackType_Explicit,
        ..
      ),

    -- * TrainingOptions_HolidayRegion
    TrainingOptions_HolidayRegion
      ( TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED,
        TrainingOptions_HolidayRegion_Global,
        TrainingOptions_HolidayRegion_NA,
        TrainingOptions_HolidayRegion_Japac,
        TrainingOptions_HolidayRegion_Emea,
        TrainingOptions_HolidayRegion_Lac,
        TrainingOptions_HolidayRegion_AE,
        TrainingOptions_HolidayRegion_AR,
        TrainingOptions_HolidayRegion_AT,
        TrainingOptions_HolidayRegion_AU,
        TrainingOptions_HolidayRegion_BE,
        TrainingOptions_HolidayRegion_BR,
        TrainingOptions_HolidayRegion_CA,
        TrainingOptions_HolidayRegion_CH,
        TrainingOptions_HolidayRegion_CL,
        TrainingOptions_HolidayRegion_CN,
        TrainingOptions_HolidayRegion_CO,
        TrainingOptions_HolidayRegion_CS,
        TrainingOptions_HolidayRegion_CZ,
        TrainingOptions_HolidayRegion_DE,
        TrainingOptions_HolidayRegion_DK,
        TrainingOptions_HolidayRegion_DZ,
        TrainingOptions_HolidayRegion_EC,
        TrainingOptions_HolidayRegion_EE,
        TrainingOptions_HolidayRegion_EG,
        TrainingOptions_HolidayRegion_ES,
        TrainingOptions_HolidayRegion_FI,
        TrainingOptions_HolidayRegion_FR,
        TrainingOptions_HolidayRegion_GB,
        TrainingOptions_HolidayRegion_GR,
        TrainingOptions_HolidayRegion_HK,
        TrainingOptions_HolidayRegion_HU,
        TrainingOptions_HolidayRegion_ID,
        TrainingOptions_HolidayRegion_IE,
        TrainingOptions_HolidayRegion_IL,
        TrainingOptions_HolidayRegion_IN,
        TrainingOptions_HolidayRegion_IR,
        TrainingOptions_HolidayRegion_IT,
        TrainingOptions_HolidayRegion_JP,
        TrainingOptions_HolidayRegion_KR,
        TrainingOptions_HolidayRegion_LV,
        TrainingOptions_HolidayRegion_MA,
        TrainingOptions_HolidayRegion_MX,
        TrainingOptions_HolidayRegion_MY,
        TrainingOptions_HolidayRegion_NG,
        TrainingOptions_HolidayRegion_NL,
        TrainingOptions_HolidayRegion_NO,
        TrainingOptions_HolidayRegion_NZ,
        TrainingOptions_HolidayRegion_PE,
        TrainingOptions_HolidayRegion_PH,
        TrainingOptions_HolidayRegion_PK,
        TrainingOptions_HolidayRegion_PL,
        TrainingOptions_HolidayRegion_PT,
        TrainingOptions_HolidayRegion_RO,
        TrainingOptions_HolidayRegion_RS,
        TrainingOptions_HolidayRegion_RU,
        TrainingOptions_HolidayRegion_SA,
        TrainingOptions_HolidayRegion_SE,
        TrainingOptions_HolidayRegion_SG,
        TrainingOptions_HolidayRegion_SI,
        TrainingOptions_HolidayRegion_SK,
        TrainingOptions_HolidayRegion_TH,
        TrainingOptions_HolidayRegion_TR,
        TrainingOptions_HolidayRegion_TW,
        TrainingOptions_HolidayRegion_UA,
        TrainingOptions_HolidayRegion_US,
        TrainingOptions_HolidayRegion_VE,
        TrainingOptions_HolidayRegion_VN,
        TrainingOptions_HolidayRegion_ZA,
        ..
      ),

    -- * TrainingOptions_HolidayRegionsItem
    TrainingOptions_HolidayRegionsItem
      ( TrainingOptions_HolidayRegionsItem_HOLIDAYREGIONUNSPECIFIED,
        TrainingOptions_HolidayRegionsItem_Global,
        TrainingOptions_HolidayRegionsItem_NA,
        TrainingOptions_HolidayRegionsItem_Japac,
        TrainingOptions_HolidayRegionsItem_Emea,
        TrainingOptions_HolidayRegionsItem_Lac,
        TrainingOptions_HolidayRegionsItem_AE,
        TrainingOptions_HolidayRegionsItem_AR,
        TrainingOptions_HolidayRegionsItem_AT,
        TrainingOptions_HolidayRegionsItem_AU,
        TrainingOptions_HolidayRegionsItem_BE,
        TrainingOptions_HolidayRegionsItem_BR,
        TrainingOptions_HolidayRegionsItem_CA,
        TrainingOptions_HolidayRegionsItem_CH,
        TrainingOptions_HolidayRegionsItem_CL,
        TrainingOptions_HolidayRegionsItem_CN,
        TrainingOptions_HolidayRegionsItem_CO,
        TrainingOptions_HolidayRegionsItem_CS,
        TrainingOptions_HolidayRegionsItem_CZ,
        TrainingOptions_HolidayRegionsItem_DE,
        TrainingOptions_HolidayRegionsItem_DK,
        TrainingOptions_HolidayRegionsItem_DZ,
        TrainingOptions_HolidayRegionsItem_EC,
        TrainingOptions_HolidayRegionsItem_EE,
        TrainingOptions_HolidayRegionsItem_EG,
        TrainingOptions_HolidayRegionsItem_ES,
        TrainingOptions_HolidayRegionsItem_FI,
        TrainingOptions_HolidayRegionsItem_FR,
        TrainingOptions_HolidayRegionsItem_GB,
        TrainingOptions_HolidayRegionsItem_GR,
        TrainingOptions_HolidayRegionsItem_HK,
        TrainingOptions_HolidayRegionsItem_HU,
        TrainingOptions_HolidayRegionsItem_ID,
        TrainingOptions_HolidayRegionsItem_IE,
        TrainingOptions_HolidayRegionsItem_IL,
        TrainingOptions_HolidayRegionsItem_IN,
        TrainingOptions_HolidayRegionsItem_IR,
        TrainingOptions_HolidayRegionsItem_IT,
        TrainingOptions_HolidayRegionsItem_JP,
        TrainingOptions_HolidayRegionsItem_KR,
        TrainingOptions_HolidayRegionsItem_LV,
        TrainingOptions_HolidayRegionsItem_MA,
        TrainingOptions_HolidayRegionsItem_MX,
        TrainingOptions_HolidayRegionsItem_MY,
        TrainingOptions_HolidayRegionsItem_NG,
        TrainingOptions_HolidayRegionsItem_NL,
        TrainingOptions_HolidayRegionsItem_NO,
        TrainingOptions_HolidayRegionsItem_NZ,
        TrainingOptions_HolidayRegionsItem_PE,
        TrainingOptions_HolidayRegionsItem_PH,
        TrainingOptions_HolidayRegionsItem_PK,
        TrainingOptions_HolidayRegionsItem_PL,
        TrainingOptions_HolidayRegionsItem_PT,
        TrainingOptions_HolidayRegionsItem_RO,
        TrainingOptions_HolidayRegionsItem_RS,
        TrainingOptions_HolidayRegionsItem_RU,
        TrainingOptions_HolidayRegionsItem_SA,
        TrainingOptions_HolidayRegionsItem_SE,
        TrainingOptions_HolidayRegionsItem_SG,
        TrainingOptions_HolidayRegionsItem_SI,
        TrainingOptions_HolidayRegionsItem_SK,
        TrainingOptions_HolidayRegionsItem_TH,
        TrainingOptions_HolidayRegionsItem_TR,
        TrainingOptions_HolidayRegionsItem_TW,
        TrainingOptions_HolidayRegionsItem_UA,
        TrainingOptions_HolidayRegionsItem_US,
        TrainingOptions_HolidayRegionsItem_VE,
        TrainingOptions_HolidayRegionsItem_VN,
        TrainingOptions_HolidayRegionsItem_ZA,
        ..
      ),

    -- * TrainingOptions_HparamTuningObjectivesItem
    TrainingOptions_HparamTuningObjectivesItem
      ( TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED,
        TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR,
        TrainingOptions_HparamTuningObjectivesItem_RSQUARED,
        TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE,
        TrainingOptions_HparamTuningObjectivesItem_Precision,
        TrainingOptions_HparamTuningObjectivesItem_Recall,
        TrainingOptions_HparamTuningObjectivesItem_Accuracy,
        TrainingOptions_HparamTuningObjectivesItem_F1SCORE,
        TrainingOptions_HparamTuningObjectivesItem_LOGLOSS,
        TrainingOptions_HparamTuningObjectivesItem_ROCAUC,
        TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX,
        TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION,
        TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN,
        TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK,
        ..
      ),

    -- * TrainingOptions_KmeansInitializationMethod
    TrainingOptions_KmeansInitializationMethod
      ( TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED,
        TrainingOptions_KmeansInitializationMethod_Random,
        TrainingOptions_KmeansInitializationMethod_Custom,
        TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS,
        ..
      ),

    -- * TrainingOptions_LearnRateStrategy
    TrainingOptions_LearnRateStrategy
      ( TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED,
        TrainingOptions_LearnRateStrategy_LINESEARCH,
        TrainingOptions_LearnRateStrategy_Constant,
        ..
      ),

    -- * TrainingOptions_LossType
    TrainingOptions_LossType
      ( TrainingOptions_LossType_LOSSTYPEUNSPECIFIED,
        TrainingOptions_LossType_MEANSQUAREDLOSS,
        TrainingOptions_LossType_MEANLOGLOSS,
        ..
      ),

    -- * TrainingOptions_ModelRegistry
    TrainingOptions_ModelRegistry
      ( TrainingOptions_ModelRegistry_MODELREGISTRYUNSPECIFIED,
        TrainingOptions_ModelRegistry_VERTEXAI,
        ..
      ),

    -- * TrainingOptions_OptimizationStrategy
    TrainingOptions_OptimizationStrategy
      ( TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED,
        TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT,
        TrainingOptions_OptimizationStrategy_NORMALEQUATION,
        ..
      ),

    -- * TrainingOptions_PcaSolver
    TrainingOptions_PcaSolver
      ( TrainingOptions_PcaSolver_Unspecified,
        TrainingOptions_PcaSolver_Full,
        TrainingOptions_PcaSolver_Randomized,
        TrainingOptions_PcaSolver_Auto,
        ..
      ),

    -- * TrainingOptions_TreeMethod
    TrainingOptions_TreeMethod
      ( TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED,
        TrainingOptions_TreeMethod_Auto,
        TrainingOptions_TreeMethod_Exact,
        TrainingOptions_TreeMethod_Approx,
        TrainingOptions_TreeMethod_Hist,
        ..
      ),

    -- * VectorSearchStatistics_IndexUsageMode
    VectorSearchStatistics_IndexUsageMode
      ( VectorSearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED,
        VectorSearchStatistics_IndexUsageMode_Unused,
        VectorSearchStatistics_IndexUsageMode_PARTIALLYUSED,
        VectorSearchStatistics_IndexUsageMode_FULLYUSED,
        ..
      ),

    -- * DatasetsGetDatasetView
    DatasetsGetDatasetView
      ( DatasetsGetDatasetView_DATASETVIEWUNSPECIFIED,
        DatasetsGetDatasetView_Metadata,
        DatasetsGetDatasetView_Acl,
        DatasetsGetDatasetView_Full,
        ..
      ),

    -- * JobsListProjection
    JobsListProjection
      ( JobsListProjection_Full,
        JobsListProjection_Minimal,
        ..
      ),

    -- * JobsListStateFilter
    JobsListStateFilter
      ( JobsListStateFilter_Done,
        JobsListStateFilter_Pending,
        JobsListStateFilter_Running,
        ..
      ),

    -- * TablesGetView
    TablesGetView
      ( TablesGetView_TABLEMETADATAVIEWUNSPECIFIED,
        TablesGetView_Basic,
        TablesGetView_STORAGESTATS,
        TablesGetView_Full,
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

-- | Optional. Defaults to FIXED_TYPE.
newtype Argument_ArgumentKind = Argument_ArgumentKind {fromArgument_ArgumentKind :: Core.Text}
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

-- | Default value.
pattern Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED :: Argument_ArgumentKind
pattern Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED = Argument_ArgumentKind "ARGUMENT_KIND_UNSPECIFIED"

-- | The argument is a variable with fully specified type, which can be a struct or an array, but not a table.
pattern Argument_ArgumentKind_FIXEDTYPE :: Argument_ArgumentKind
pattern Argument_ArgumentKind_FIXEDTYPE = Argument_ArgumentKind "FIXED_TYPE"

-- | The argument is any type, including struct or array, but not a table.
pattern Argument_ArgumentKind_ANYTYPE :: Argument_ArgumentKind
pattern Argument_ArgumentKind_ANYTYPE = Argument_ArgumentKind "ANY_TYPE"

{-# COMPLETE
  Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED,
  Argument_ArgumentKind_FIXEDTYPE,
  Argument_ArgumentKind_ANYTYPE,
  Argument_ArgumentKind
  #-}

-- | Optional. Specifies whether the argument is input or output. Can be set for procedures only.
newtype Argument_Mode = Argument_Mode {fromArgument_Mode :: Core.Text}
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

-- | Default value.
pattern Argument_Mode_MODEUNSPECIFIED :: Argument_Mode
pattern Argument_Mode_MODEUNSPECIFIED = Argument_Mode "MODE_UNSPECIFIED"

-- | The argument is input-only.
pattern Argument_Mode_IN :: Argument_Mode
pattern Argument_Mode_IN = Argument_Mode "IN"

-- | The argument is output-only.
pattern Argument_Mode_Out :: Argument_Mode
pattern Argument_Mode_Out = Argument_Mode "OUT"

-- | The argument is both an input and an output.
pattern Argument_Mode_Inout :: Argument_Mode
pattern Argument_Mode_Inout = Argument_Mode "INOUT"

{-# COMPLETE
  Argument_Mode_MODEUNSPECIFIED,
  Argument_Mode_IN,
  Argument_Mode_Out,
  Argument_Mode_Inout,
  Argument_Mode
  #-}

newtype ArimaForecastingMetrics_SeasonalPeriodsItem = ArimaForecastingMetrics_SeasonalPeriodsItem {fromArimaForecastingMetrics_SeasonalPeriodsItem :: Core.Text}
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

-- | Unspecified seasonal period.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaForecastingMetrics_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY = ArimaForecastingMetrics_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Daily :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Daily = ArimaForecastingMetrics_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly = ArimaForecastingMetrics_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly = ArimaForecastingMetrics_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly = ArimaForecastingMetrics_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly = ArimaForecastingMetrics_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Daily,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly,
  ArimaForecastingMetrics_SeasonalPeriodsItem
  #-}

newtype ArimaModelInfo_SeasonalPeriodsItem = ArimaModelInfo_SeasonalPeriodsItem {fromArimaModelInfo_SeasonalPeriodsItem :: Core.Text}
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

-- | Unspecified seasonal period.
pattern ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaModelInfo_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY = ArimaModelInfo_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaModelInfo_SeasonalPeriodsItem_Daily :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Daily = ArimaModelInfo_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaModelInfo_SeasonalPeriodsItem_Weekly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Weekly = ArimaModelInfo_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Monthly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Monthly = ArimaModelInfo_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Quarterly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Quarterly = ArimaModelInfo_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Yearly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Yearly = ArimaModelInfo_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaModelInfo_SeasonalPeriodsItem_Daily,
  ArimaModelInfo_SeasonalPeriodsItem_Weekly,
  ArimaModelInfo_SeasonalPeriodsItem_Monthly,
  ArimaModelInfo_SeasonalPeriodsItem_Quarterly,
  ArimaModelInfo_SeasonalPeriodsItem_Yearly,
  ArimaModelInfo_SeasonalPeriodsItem
  #-}

newtype ArimaResult_SeasonalPeriodsItem = ArimaResult_SeasonalPeriodsItem {fromArimaResult_SeasonalPeriodsItem :: Core.Text}
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

-- | Unspecified seasonal period.
pattern ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaResult_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaResult_SeasonalPeriodsItem_NOSEASONALITY :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_NOSEASONALITY = ArimaResult_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaResult_SeasonalPeriodsItem_Daily :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Daily = ArimaResult_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaResult_SeasonalPeriodsItem_Weekly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Weekly = ArimaResult_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Monthly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Monthly = ArimaResult_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Quarterly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Quarterly = ArimaResult_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Yearly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Yearly = ArimaResult_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaResult_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaResult_SeasonalPeriodsItem_Daily,
  ArimaResult_SeasonalPeriodsItem_Weekly,
  ArimaResult_SeasonalPeriodsItem_Monthly,
  ArimaResult_SeasonalPeriodsItem_Quarterly,
  ArimaResult_SeasonalPeriodsItem_Yearly,
  ArimaResult_SeasonalPeriodsItem
  #-}

newtype ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem {fromArimaSingleModelForecastingMetrics_SeasonalPeriodsItem :: Core.Text}
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

-- | Unspecified seasonal period.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | Output only. High-level BI Engine reason for partial or disabled acceleration
newtype BiEngineReason_Code = BiEngineReason_Code {fromBiEngineReason_Code :: Core.Text}
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

-- | BiEngineReason not specified.
pattern BiEngineReason_Code_CODEUNSPECIFIED :: BiEngineReason_Code
pattern BiEngineReason_Code_CODEUNSPECIFIED = BiEngineReason_Code "CODE_UNSPECIFIED"

-- | No reservation available for BI Engine acceleration.
pattern BiEngineReason_Code_NORESERVATION :: BiEngineReason_Code
pattern BiEngineReason_Code_NORESERVATION = BiEngineReason_Code "NO_RESERVATION"

-- | Not enough memory available for BI Engine acceleration.
pattern BiEngineReason_Code_INSUFFICIENTRESERVATION :: BiEngineReason_Code
pattern BiEngineReason_Code_INSUFFICIENTRESERVATION = BiEngineReason_Code "INSUFFICIENT_RESERVATION"

-- | This particular SQL text is not supported for acceleration by BI Engine.
pattern BiEngineReason_Code_UNSUPPORTEDSQLTEXT :: BiEngineReason_Code
pattern BiEngineReason_Code_UNSUPPORTEDSQLTEXT = BiEngineReason_Code "UNSUPPORTED_SQL_TEXT"

-- | Input too large for acceleration by BI Engine.
pattern BiEngineReason_Code_INPUTTOOLARGE :: BiEngineReason_Code
pattern BiEngineReason_Code_INPUTTOOLARGE = BiEngineReason_Code "INPUT_TOO_LARGE"

-- | Catch-all code for all other cases for partial or disabled acceleration.
pattern BiEngineReason_Code_OTHERREASON :: BiEngineReason_Code
pattern BiEngineReason_Code_OTHERREASON = BiEngineReason_Code "OTHER_REASON"

-- | One or more tables were not eligible for BI Engine acceleration.
pattern BiEngineReason_Code_TABLEEXCLUDED :: BiEngineReason_Code
pattern BiEngineReason_Code_TABLEEXCLUDED = BiEngineReason_Code "TABLE_EXCLUDED"

{-# COMPLETE
  BiEngineReason_Code_CODEUNSPECIFIED,
  BiEngineReason_Code_NORESERVATION,
  BiEngineReason_Code_INSUFFICIENTRESERVATION,
  BiEngineReason_Code_UNSUPPORTEDSQLTEXT,
  BiEngineReason_Code_INPUTTOOLARGE,
  BiEngineReason_Code_OTHERREASON,
  BiEngineReason_Code_TABLEEXCLUDED,
  BiEngineReason_Code
  #-}

-- | Output only. Specifies which mode of BI Engine acceleration was performed (if any).
newtype BiEngineStatistics_AccelerationMode = BiEngineStatistics_AccelerationMode {fromBiEngineStatistics_AccelerationMode :: Core.Text}
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

-- | BiEngineMode type not specified.
pattern BiEngineStatistics_AccelerationMode_BIENGINEACCELERATIONMODEUNSPECIFIED :: BiEngineStatistics_AccelerationMode
pattern BiEngineStatistics_AccelerationMode_BIENGINEACCELERATIONMODEUNSPECIFIED = BiEngineStatistics_AccelerationMode "BI_ENGINE_ACCELERATION_MODE_UNSPECIFIED"

-- | BI Engine acceleration was attempted but disabled. bi/engine/reasons specifies a more detailed reason.
pattern BiEngineStatistics_AccelerationMode_BIENGINEDISABLED :: BiEngineStatistics_AccelerationMode
pattern BiEngineStatistics_AccelerationMode_BIENGINEDISABLED = BiEngineStatistics_AccelerationMode "BI_ENGINE_DISABLED"

-- | Some inputs were accelerated using BI Engine. See bi/engine/reasons for why parts of the query were not accelerated.
pattern BiEngineStatistics_AccelerationMode_PARTIALINPUT :: BiEngineStatistics_AccelerationMode
pattern BiEngineStatistics_AccelerationMode_PARTIALINPUT = BiEngineStatistics_AccelerationMode "PARTIAL_INPUT"

-- | All of the query inputs were accelerated using BI Engine.
pattern BiEngineStatistics_AccelerationMode_FULLINPUT :: BiEngineStatistics_AccelerationMode
pattern BiEngineStatistics_AccelerationMode_FULLINPUT = BiEngineStatistics_AccelerationMode "FULL_INPUT"

-- | All of the query was accelerated using BI Engine.
pattern BiEngineStatistics_AccelerationMode_FULLQUERY :: BiEngineStatistics_AccelerationMode
pattern BiEngineStatistics_AccelerationMode_FULLQUERY = BiEngineStatistics_AccelerationMode "FULL_QUERY"

{-# COMPLETE
  BiEngineStatistics_AccelerationMode_BIENGINEACCELERATIONMODEUNSPECIFIED,
  BiEngineStatistics_AccelerationMode_BIENGINEDISABLED,
  BiEngineStatistics_AccelerationMode_PARTIALINPUT,
  BiEngineStatistics_AccelerationMode_FULLINPUT,
  BiEngineStatistics_AccelerationMode_FULLQUERY,
  BiEngineStatistics_AccelerationMode
  #-}

-- | Output only. Specifies which mode of BI Engine acceleration was performed (if any).
newtype BiEngineStatistics_BiEngineMode = BiEngineStatistics_BiEngineMode {fromBiEngineStatistics_BiEngineMode :: Core.Text}
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

-- | BiEngineMode type not specified.
pattern BiEngineStatistics_BiEngineMode_ACCELERATIONMODEUNSPECIFIED :: BiEngineStatistics_BiEngineMode
pattern BiEngineStatistics_BiEngineMode_ACCELERATIONMODEUNSPECIFIED = BiEngineStatistics_BiEngineMode "ACCELERATION_MODE_UNSPECIFIED"

-- | BI Engine disabled the acceleration. bi/engine/reasons specifies a more detailed reason.
pattern BiEngineStatistics_BiEngineMode_Disabled :: BiEngineStatistics_BiEngineMode
pattern BiEngineStatistics_BiEngineMode_Disabled = BiEngineStatistics_BiEngineMode "DISABLED"

-- | Part of the query was accelerated using BI Engine. See bi/engine/reasons for why parts of the query were not accelerated.
pattern BiEngineStatistics_BiEngineMode_Partial :: BiEngineStatistics_BiEngineMode
pattern BiEngineStatistics_BiEngineMode_Partial = BiEngineStatistics_BiEngineMode "PARTIAL"

-- | All of the query was accelerated using BI Engine.
pattern BiEngineStatistics_BiEngineMode_Full :: BiEngineStatistics_BiEngineMode
pattern BiEngineStatistics_BiEngineMode_Full = BiEngineStatistics_BiEngineMode "FULL"

{-# COMPLETE
  BiEngineStatistics_BiEngineMode_ACCELERATIONMODEUNSPECIFIED,
  BiEngineStatistics_BiEngineMode_Disabled,
  BiEngineStatistics_BiEngineMode_Partial,
  BiEngineStatistics_BiEngineMode_Full,
  BiEngineStatistics_BiEngineMode
  #-}

-- | Optional. The file format the table data is stored in.
newtype BigLakeConfiguration_FileFormat = BigLakeConfiguration_FileFormat {fromBigLakeConfiguration_FileFormat :: Core.Text}
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

-- | Default Value.
pattern BigLakeConfiguration_FileFormat_FILEFORMATUNSPECIFIED :: BigLakeConfiguration_FileFormat
pattern BigLakeConfiguration_FileFormat_FILEFORMATUNSPECIFIED = BigLakeConfiguration_FileFormat "FILE_FORMAT_UNSPECIFIED"

-- | Apache Parquet format.
pattern BigLakeConfiguration_FileFormat_Parquet :: BigLakeConfiguration_FileFormat
pattern BigLakeConfiguration_FileFormat_Parquet = BigLakeConfiguration_FileFormat "PARQUET"

{-# COMPLETE
  BigLakeConfiguration_FileFormat_FILEFORMATUNSPECIFIED,
  BigLakeConfiguration_FileFormat_Parquet,
  BigLakeConfiguration_FileFormat
  #-}

-- | Optional. The table format the metadata only snapshots are stored in.
newtype BigLakeConfiguration_TableFormat = BigLakeConfiguration_TableFormat {fromBigLakeConfiguration_TableFormat :: Core.Text}
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

-- | Default Value.
pattern BigLakeConfiguration_TableFormat_TABLEFORMATUNSPECIFIED :: BigLakeConfiguration_TableFormat
pattern BigLakeConfiguration_TableFormat_TABLEFORMATUNSPECIFIED = BigLakeConfiguration_TableFormat "TABLE_FORMAT_UNSPECIFIED"

-- | Apache Iceberg format.
pattern BigLakeConfiguration_TableFormat_Iceberg :: BigLakeConfiguration_TableFormat
pattern BigLakeConfiguration_TableFormat_Iceberg = BigLakeConfiguration_TableFormat "ICEBERG"

{-# COMPLETE
  BigLakeConfiguration_TableFormat_TABLEFORMATUNSPECIFIED,
  BigLakeConfiguration_TableFormat_Iceberg,
  BigLakeConfiguration_TableFormat
  #-}

-- | Optional. Defines the default rounding mode specification of new tables created within this dataset. During table creation, if this field is specified, the table within this dataset will inherit the default rounding mode of the dataset. Setting the default rounding mode on a table overrides this option. Existing tables in the dataset are unaffected. If columns are defined during that table creation, they will immediately inherit the table\'s default rounding mode, unless otherwise specified.
newtype Dataset_DefaultRoundingMode = Dataset_DefaultRoundingMode {fromDataset_DefaultRoundingMode :: Core.Text}
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

-- | Unspecified will default to using ROUND/HALF/AWAY/FROM/ZERO.
pattern Dataset_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED :: Dataset_DefaultRoundingMode
pattern Dataset_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED = Dataset_DefaultRoundingMode "ROUNDING_MODE_UNSPECIFIED"

-- | ROUND/HALF/AWAY/FROM/ZERO rounds half values away from zero when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5, 1.6, 1.7, 1.8, 1.9 => 2
pattern Dataset_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO :: Dataset_DefaultRoundingMode
pattern Dataset_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO = Dataset_DefaultRoundingMode "ROUND_HALF_AWAY_FROM_ZERO"

-- | ROUND/HALF/EVEN rounds half values to the nearest even value when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5 => 2 1.6, 1.7, 1.8, 1.9 => 2 2.5 => 2
pattern Dataset_DefaultRoundingMode_ROUNDHALFEVEN :: Dataset_DefaultRoundingMode
pattern Dataset_DefaultRoundingMode_ROUNDHALFEVEN = Dataset_DefaultRoundingMode "ROUND_HALF_EVEN"

{-# COMPLETE
  Dataset_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED,
  Dataset_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO,
  Dataset_DefaultRoundingMode_ROUNDHALFEVEN,
  Dataset_DefaultRoundingMode
  #-}

-- | Optional. Updates storage/billing/model for the dataset.
newtype Dataset_StorageBillingModel = Dataset_StorageBillingModel {fromDataset_StorageBillingModel :: Core.Text}
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

-- | Value not set.
pattern Dataset_StorageBillingModel_STORAGEBILLINGMODELUNSPECIFIED :: Dataset_StorageBillingModel
pattern Dataset_StorageBillingModel_STORAGEBILLINGMODELUNSPECIFIED = Dataset_StorageBillingModel "STORAGE_BILLING_MODEL_UNSPECIFIED"

-- | Billing for logical bytes.
pattern Dataset_StorageBillingModel_Logical :: Dataset_StorageBillingModel
pattern Dataset_StorageBillingModel_Logical = Dataset_StorageBillingModel "LOGICAL"

-- | Billing for physical bytes.
pattern Dataset_StorageBillingModel_Physical :: Dataset_StorageBillingModel
pattern Dataset_StorageBillingModel_Physical = Dataset_StorageBillingModel "PHYSICAL"

{-# COMPLETE
  Dataset_StorageBillingModel_STORAGEBILLINGMODELUNSPECIFIED,
  Dataset_StorageBillingModel_Logical,
  Dataset_StorageBillingModel_Physical,
  Dataset_StorageBillingModel
  #-}

newtype DatasetAccessEntry_TargetTypesItem = DatasetAccessEntry_TargetTypesItem {fromDatasetAccessEntry_TargetTypesItem :: Core.Text}
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

-- | Do not use. You must set a target type explicitly.
pattern DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED :: DatasetAccessEntry_TargetTypesItem
pattern DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED = DatasetAccessEntry_TargetTypesItem "TARGET_TYPE_UNSPECIFIED"

-- | This entry applies to views in the dataset.
pattern DatasetAccessEntry_TargetTypesItem_Views :: DatasetAccessEntry_TargetTypesItem
pattern DatasetAccessEntry_TargetTypesItem_Views = DatasetAccessEntry_TargetTypesItem "VIEWS"

-- | This entry applies to routines in the dataset.
pattern DatasetAccessEntry_TargetTypesItem_Routines :: DatasetAccessEntry_TargetTypesItem
pattern DatasetAccessEntry_TargetTypesItem_Routines = DatasetAccessEntry_TargetTypesItem "ROUTINES"

{-# COMPLETE
  DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED,
  DatasetAccessEntry_TargetTypesItem_Views,
  DatasetAccessEntry_TargetTypesItem_Routines,
  DatasetAccessEntry_TargetTypesItem
  #-}

-- | Output only. Compute mode for this stage.
newtype ExplainQueryStage_ComputeMode = ExplainQueryStage_ComputeMode {fromExplainQueryStage_ComputeMode :: Core.Text}
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

-- | ComputeMode type not specified.
pattern ExplainQueryStage_ComputeMode_COMPUTEMODEUNSPECIFIED :: ExplainQueryStage_ComputeMode
pattern ExplainQueryStage_ComputeMode_COMPUTEMODEUNSPECIFIED = ExplainQueryStage_ComputeMode "COMPUTE_MODE_UNSPECIFIED"

-- | This stage was processed using BigQuery slots.
pattern ExplainQueryStage_ComputeMode_Bigquery :: ExplainQueryStage_ComputeMode
pattern ExplainQueryStage_ComputeMode_Bigquery = ExplainQueryStage_ComputeMode "BIGQUERY"

-- | This stage was processed using BI Engine compute.
pattern ExplainQueryStage_ComputeMode_BIENGINE :: ExplainQueryStage_ComputeMode
pattern ExplainQueryStage_ComputeMode_BIENGINE = ExplainQueryStage_ComputeMode "BI_ENGINE"

{-# COMPLETE
  ExplainQueryStage_ComputeMode_COMPUTEMODEUNSPECIFIED,
  ExplainQueryStage_ComputeMode_Bigquery,
  ExplainQueryStage_ComputeMode_BIENGINE,
  ExplainQueryStage_ComputeMode
  #-}

newtype ExternalDataConfiguration_DecimalTargetTypesItem = ExternalDataConfiguration_DecimalTargetTypesItem {fromExternalDataConfiguration_DecimalTargetTypesItem :: Core.Text}
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

-- | Invalid type.
pattern ExternalDataConfiguration_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED :: ExternalDataConfiguration_DecimalTargetTypesItem
pattern ExternalDataConfiguration_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED = ExternalDataConfiguration_DecimalTargetTypesItem "DECIMAL_TARGET_TYPE_UNSPECIFIED"

-- | Decimal values could be converted to NUMERIC type.
pattern ExternalDataConfiguration_DecimalTargetTypesItem_Numeric :: ExternalDataConfiguration_DecimalTargetTypesItem
pattern ExternalDataConfiguration_DecimalTargetTypesItem_Numeric = ExternalDataConfiguration_DecimalTargetTypesItem "NUMERIC"

-- | Decimal values could be converted to BIGNUMERIC type.
pattern ExternalDataConfiguration_DecimalTargetTypesItem_Bignumeric :: ExternalDataConfiguration_DecimalTargetTypesItem
pattern ExternalDataConfiguration_DecimalTargetTypesItem_Bignumeric = ExternalDataConfiguration_DecimalTargetTypesItem "BIGNUMERIC"

-- | Decimal values could be converted to STRING type.
pattern ExternalDataConfiguration_DecimalTargetTypesItem_String :: ExternalDataConfiguration_DecimalTargetTypesItem
pattern ExternalDataConfiguration_DecimalTargetTypesItem_String = ExternalDataConfiguration_DecimalTargetTypesItem "STRING"

{-# COMPLETE
  ExternalDataConfiguration_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED,
  ExternalDataConfiguration_DecimalTargetTypesItem_Numeric,
  ExternalDataConfiguration_DecimalTargetTypesItem_Bignumeric,
  ExternalDataConfiguration_DecimalTargetTypesItem_String,
  ExternalDataConfiguration_DecimalTargetTypesItem
  #-}

-- | Optional. Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
newtype ExternalDataConfiguration_FileSetSpecType = ExternalDataConfiguration_FileSetSpecType {fromExternalDataConfiguration_FileSetSpecType :: Core.Text}
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

-- | This option expands source URIs by listing files from the object store. It is the default behavior if FileSetSpecType is not set.
pattern ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH :: ExternalDataConfiguration_FileSetSpecType
pattern ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH = ExternalDataConfiguration_FileSetSpecType "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH"

-- | This option indicates that the provided URIs are newline-delimited manifest files, with one URI per line. Wildcard URIs are not supported.
pattern ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST :: ExternalDataConfiguration_FileSetSpecType
pattern ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST = ExternalDataConfiguration_FileSetSpecType "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST"

{-# COMPLETE
  ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH,
  ExternalDataConfiguration_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST,
  ExternalDataConfiguration_FileSetSpecType
  #-}

-- | Optional. Load option to be used together with source/format newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and source/format must be set to NEWLINE/DELIMITED/JSON).
newtype ExternalDataConfiguration_JsonExtension = ExternalDataConfiguration_JsonExtension {fromExternalDataConfiguration_JsonExtension :: Core.Text}
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

-- | The default if provided value is not one included in the enum, or the value is not specified. The source formate is parsed without any modification.
pattern ExternalDataConfiguration_JsonExtension_JSONEXTENSIONUNSPECIFIED :: ExternalDataConfiguration_JsonExtension
pattern ExternalDataConfiguration_JsonExtension_JSONEXTENSIONUNSPECIFIED = ExternalDataConfiguration_JsonExtension "JSON_EXTENSION_UNSPECIFIED"

-- | Use GeoJSON variant of JSON. See https:\/\/tools.ietf.org\/html\/rfc7946.
pattern ExternalDataConfiguration_JsonExtension_Geojson :: ExternalDataConfiguration_JsonExtension
pattern ExternalDataConfiguration_JsonExtension_Geojson = ExternalDataConfiguration_JsonExtension "GEOJSON"

{-# COMPLETE
  ExternalDataConfiguration_JsonExtension_JSONEXTENSIONUNSPECIFIED,
  ExternalDataConfiguration_JsonExtension_Geojson,
  ExternalDataConfiguration_JsonExtension
  #-}

-- | Optional. Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
newtype ExternalDataConfiguration_MetadataCacheMode = ExternalDataConfiguration_MetadataCacheMode {fromExternalDataConfiguration_MetadataCacheMode :: Core.Text}
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

-- | Unspecified metadata cache mode.
pattern ExternalDataConfiguration_MetadataCacheMode_METADATACACHEMODEUNSPECIFIED :: ExternalDataConfiguration_MetadataCacheMode
pattern ExternalDataConfiguration_MetadataCacheMode_METADATACACHEMODEUNSPECIFIED = ExternalDataConfiguration_MetadataCacheMode "METADATA_CACHE_MODE_UNSPECIFIED"

-- | Set this mode to trigger automatic background refresh of metadata cache from the external source. Queries will use the latest available cache version within the table\'s maxStaleness interval.
pattern ExternalDataConfiguration_MetadataCacheMode_Automatic :: ExternalDataConfiguration_MetadataCacheMode
pattern ExternalDataConfiguration_MetadataCacheMode_Automatic = ExternalDataConfiguration_MetadataCacheMode "AUTOMATIC"

-- | Set this mode to enable triggering manual refresh of the metadata cache from external source. Queries will use the latest manually triggered cache version within the table\'s maxStaleness interval.
pattern ExternalDataConfiguration_MetadataCacheMode_Manual :: ExternalDataConfiguration_MetadataCacheMode
pattern ExternalDataConfiguration_MetadataCacheMode_Manual = ExternalDataConfiguration_MetadataCacheMode "MANUAL"

{-# COMPLETE
  ExternalDataConfiguration_MetadataCacheMode_METADATACACHEMODEUNSPECIFIED,
  ExternalDataConfiguration_MetadataCacheMode_Automatic,
  ExternalDataConfiguration_MetadataCacheMode_Manual,
  ExternalDataConfiguration_MetadataCacheMode
  #-}

-- | Optional. ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source/uris. If ObjectMetadata is set, source/format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
newtype ExternalDataConfiguration_ObjectMetadata = ExternalDataConfiguration_ObjectMetadata {fromExternalDataConfiguration_ObjectMetadata :: Core.Text}
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

-- | Unspecified by default.
pattern ExternalDataConfiguration_ObjectMetadata_OBJECTMETADATAUNSPECIFIED :: ExternalDataConfiguration_ObjectMetadata
pattern ExternalDataConfiguration_ObjectMetadata_OBJECTMETADATAUNSPECIFIED = ExternalDataConfiguration_ObjectMetadata "OBJECT_METADATA_UNSPECIFIED"

-- | A synonym for @SIMPLE@.
pattern ExternalDataConfiguration_ObjectMetadata_Directory :: ExternalDataConfiguration_ObjectMetadata
pattern ExternalDataConfiguration_ObjectMetadata_Directory = ExternalDataConfiguration_ObjectMetadata "DIRECTORY"

-- | Directory listing of objects.
pattern ExternalDataConfiguration_ObjectMetadata_Simple :: ExternalDataConfiguration_ObjectMetadata
pattern ExternalDataConfiguration_ObjectMetadata_Simple = ExternalDataConfiguration_ObjectMetadata "SIMPLE"

{-# COMPLETE
  ExternalDataConfiguration_ObjectMetadata_OBJECTMETADATAUNSPECIFIED,
  ExternalDataConfiguration_ObjectMetadata_Directory,
  ExternalDataConfiguration_ObjectMetadata_Simple,
  ExternalDataConfiguration_ObjectMetadata
  #-}

-- | Required. Specifies the system which defines the foreign data type.
newtype ForeignTypeInfo_TypeSystem = ForeignTypeInfo_TypeSystem {fromForeignTypeInfo_TypeSystem :: Core.Text}
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

-- | TypeSystem not specified.
pattern ForeignTypeInfo_TypeSystem_TYPESYSTEMUNSPECIFIED :: ForeignTypeInfo_TypeSystem
pattern ForeignTypeInfo_TypeSystem_TYPESYSTEMUNSPECIFIED = ForeignTypeInfo_TypeSystem "TYPE_SYSTEM_UNSPECIFIED"

-- | Represents Hive data types.
pattern ForeignTypeInfo_TypeSystem_Hive :: ForeignTypeInfo_TypeSystem
pattern ForeignTypeInfo_TypeSystem_Hive = ForeignTypeInfo_TypeSystem "HIVE"

{-# COMPLETE
  ForeignTypeInfo_TypeSystem_TYPESYSTEMUNSPECIFIED,
  ForeignTypeInfo_TypeSystem_Hive,
  ForeignTypeInfo_TypeSystem
  #-}

-- | The status of the trial.
newtype HparamTuningTrial_Status = HparamTuningTrial_Status {fromHparamTuningTrial_Status :: Core.Text}
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

-- | Default value.
pattern HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED = HparamTuningTrial_Status "TRIAL_STATUS_UNSPECIFIED"

-- | Scheduled but not started.
pattern HparamTuningTrial_Status_NOTSTARTED :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_NOTSTARTED = HparamTuningTrial_Status "NOT_STARTED"

-- | Running state.
pattern HparamTuningTrial_Status_Running :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Running = HparamTuningTrial_Status "RUNNING"

-- | The trial succeeded.
pattern HparamTuningTrial_Status_Succeeded :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Succeeded = HparamTuningTrial_Status "SUCCEEDED"

-- | The trial failed.
pattern HparamTuningTrial_Status_Failed :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Failed = HparamTuningTrial_Status "FAILED"

-- | The trial is infeasible due to the invalid params.
pattern HparamTuningTrial_Status_Infeasible :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Infeasible = HparamTuningTrial_Status "INFEASIBLE"

-- | Trial stopped early because it\'s not promising.
pattern HparamTuningTrial_Status_STOPPEDEARLY :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_STOPPEDEARLY = HparamTuningTrial_Status "STOPPED_EARLY"

{-# COMPLETE
  HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED,
  HparamTuningTrial_Status_NOTSTARTED,
  HparamTuningTrial_Status_Running,
  HparamTuningTrial_Status_Succeeded,
  HparamTuningTrial_Status_Failed,
  HparamTuningTrial_Status_Infeasible,
  HparamTuningTrial_Status_STOPPEDEARLY,
  HparamTuningTrial_Status
  #-}

-- | Specifies the high-level reason for the scenario when no search index was used.
newtype IndexUnusedReason_Code = IndexUnusedReason_Code {fromIndexUnusedReason_Code :: Core.Text}
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

-- | Code not specified.
pattern IndexUnusedReason_Code_CODEUNSPECIFIED :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_CODEUNSPECIFIED = IndexUnusedReason_Code "CODE_UNSPECIFIED"

-- | Indicates the search index configuration has not been created.
pattern IndexUnusedReason_Code_INDEXCONFIGNOTAVAILABLE :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_INDEXCONFIGNOTAVAILABLE = IndexUnusedReason_Code "INDEX_CONFIG_NOT_AVAILABLE"

-- | Indicates the search index creation has not been completed.
pattern IndexUnusedReason_Code_PENDINGINDEXCREATION :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_PENDINGINDEXCREATION = IndexUnusedReason_Code "PENDING_INDEX_CREATION"

-- | Indicates the base table has been truncated (rows have been removed from table with TRUNCATE TABLE statement) since the last time the search index was refreshed.
pattern IndexUnusedReason_Code_BASETABLETRUNCATED :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_BASETABLETRUNCATED = IndexUnusedReason_Code "BASE_TABLE_TRUNCATED"

-- | Indicates the search index configuration has been changed since the last time the search index was refreshed.
pattern IndexUnusedReason_Code_INDEXCONFIGMODIFIED :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_INDEXCONFIGMODIFIED = IndexUnusedReason_Code "INDEX_CONFIG_MODIFIED"

-- | Indicates the search query accesses data at a timestamp before the last time the search index was refreshed.
pattern IndexUnusedReason_Code_TIMETRAVELQUERY :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_TIMETRAVELQUERY = IndexUnusedReason_Code "TIME_TRAVEL_QUERY"

-- | Indicates the usage of search index will not contribute to any pruning improvement for the search function, e.g. when the search predicate is in a disjunction with other non-search predicates.
pattern IndexUnusedReason_Code_NOPRUNINGPOWER :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_NOPRUNINGPOWER = IndexUnusedReason_Code "NO_PRUNING_POWER"

-- | Indicates the search index does not cover all fields in the search function.
pattern IndexUnusedReason_Code_UNINDEXEDSEARCHFIELDS :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_UNINDEXEDSEARCHFIELDS = IndexUnusedReason_Code "UNINDEXED_SEARCH_FIELDS"

-- | Indicates the search index does not support the given search query pattern.
pattern IndexUnusedReason_Code_UNSUPPORTEDSEARCHPATTERN :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_UNSUPPORTEDSEARCHPATTERN = IndexUnusedReason_Code "UNSUPPORTED_SEARCH_PATTERN"

-- | Indicates the query has been optimized by using a materialized view.
pattern IndexUnusedReason_Code_OPTIMIZEDWITHMATERIALIZEDVIEW :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_OPTIMIZEDWITHMATERIALIZEDVIEW = IndexUnusedReason_Code "OPTIMIZED_WITH_MATERIALIZED_VIEW"

-- | Indicates the query has been secured by data masking, and thus search indexes are not applicable.
pattern IndexUnusedReason_Code_SECUREDBYDATAMASKING :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_SECUREDBYDATAMASKING = IndexUnusedReason_Code "SECURED_BY_DATA_MASKING"

-- | Indicates that the search index and the search function call do not have the same text analyzer.
pattern IndexUnusedReason_Code_MISMATCHEDTEXTANALYZER :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_MISMATCHEDTEXTANALYZER = IndexUnusedReason_Code "MISMATCHED_TEXT_ANALYZER"

-- | Indicates the base table is too small (below a certain threshold). The index does not provide noticeable search performance gains when the base table is too small.
pattern IndexUnusedReason_Code_BASETABLETOOSMALL :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_BASETABLETOOSMALL = IndexUnusedReason_Code "BASE_TABLE_TOO_SMALL"

-- | Indicates that the total size of indexed base tables in your organization exceeds your region\'s limit and the index is not used in the query. To index larger base tables, you can use your own reservation for index-management jobs.
pattern IndexUnusedReason_Code_BASETABLETOOLARGE :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_BASETABLETOOLARGE = IndexUnusedReason_Code "BASE_TABLE_TOO_LARGE"

-- | Indicates that the estimated performance gain from using the search index is too low for the given search query.
pattern IndexUnusedReason_Code_ESTIMATEDPERFORMANCEGAINTOOLOW :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_ESTIMATEDPERFORMANCEGAINTOOLOW = IndexUnusedReason_Code "ESTIMATED_PERFORMANCE_GAIN_TOO_LOW"

-- | Indicates that search indexes can not be used for search query with STANDARD edition.
pattern IndexUnusedReason_Code_NOTSUPPORTEDINSTANDARDEDITION :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_NOTSUPPORTEDINSTANDARDEDITION = IndexUnusedReason_Code "NOT_SUPPORTED_IN_STANDARD_EDITION"

-- | Indicates that an option in the search function that cannot make use of the index has been selected.
pattern IndexUnusedReason_Code_INDEXSUPPRESSEDBYFUNCTIONOPTION :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_INDEXSUPPRESSEDBYFUNCTIONOPTION = IndexUnusedReason_Code "INDEX_SUPPRESSED_BY_FUNCTION_OPTION"

-- | Indicates that the query was cached, and thus the search index was not used.
pattern IndexUnusedReason_Code_QUERYCACHEHIT :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_QUERYCACHEHIT = IndexUnusedReason_Code "QUERY_CACHE_HIT"

-- | The index cannot be used in the search query because it is stale.
pattern IndexUnusedReason_Code_STALEINDEX :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_STALEINDEX = IndexUnusedReason_Code "STALE_INDEX"

-- | Indicates an internal error that causes the search index to be unused.
pattern IndexUnusedReason_Code_INTERNALERROR :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_INTERNALERROR = IndexUnusedReason_Code "INTERNAL_ERROR"

-- | Indicates that the reason search indexes cannot be used in the query is not covered by any of the other IndexUnusedReason options.
pattern IndexUnusedReason_Code_OTHERREASON :: IndexUnusedReason_Code
pattern IndexUnusedReason_Code_OTHERREASON = IndexUnusedReason_Code "OTHER_REASON"

{-# COMPLETE
  IndexUnusedReason_Code_CODEUNSPECIFIED,
  IndexUnusedReason_Code_INDEXCONFIGNOTAVAILABLE,
  IndexUnusedReason_Code_PENDINGINDEXCREATION,
  IndexUnusedReason_Code_BASETABLETRUNCATED,
  IndexUnusedReason_Code_INDEXCONFIGMODIFIED,
  IndexUnusedReason_Code_TIMETRAVELQUERY,
  IndexUnusedReason_Code_NOPRUNINGPOWER,
  IndexUnusedReason_Code_UNINDEXEDSEARCHFIELDS,
  IndexUnusedReason_Code_UNSUPPORTEDSEARCHPATTERN,
  IndexUnusedReason_Code_OPTIMIZEDWITHMATERIALIZEDVIEW,
  IndexUnusedReason_Code_SECUREDBYDATAMASKING,
  IndexUnusedReason_Code_MISMATCHEDTEXTANALYZER,
  IndexUnusedReason_Code_BASETABLETOOSMALL,
  IndexUnusedReason_Code_BASETABLETOOLARGE,
  IndexUnusedReason_Code_ESTIMATEDPERFORMANCEGAINTOOLOW,
  IndexUnusedReason_Code_NOTSUPPORTEDINSTANDARDEDITION,
  IndexUnusedReason_Code_INDEXSUPPRESSEDBYFUNCTIONOPTION,
  IndexUnusedReason_Code_QUERYCACHEHIT,
  IndexUnusedReason_Code_STALEINDEX,
  IndexUnusedReason_Code_INTERNALERROR,
  IndexUnusedReason_Code_OTHERREASON,
  IndexUnusedReason_Code
  #-}

-- | Optional. Character map supported for column names in CSV\/Parquet loads. Defaults to STRICT and can be overridden by Project Config Service. Using this option with unsupporting load formats will result in an error.
newtype JobConfigurationLoad_ColumnNameCharacterMap = JobConfigurationLoad_ColumnNameCharacterMap {fromJobConfigurationLoad_ColumnNameCharacterMap :: Core.Text}
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

-- | Unspecified column name character map.
pattern JobConfigurationLoad_ColumnNameCharacterMap_COLUMNNAMECHARACTERMAPUNSPECIFIED :: JobConfigurationLoad_ColumnNameCharacterMap
pattern JobConfigurationLoad_ColumnNameCharacterMap_COLUMNNAMECHARACTERMAPUNSPECIFIED = JobConfigurationLoad_ColumnNameCharacterMap "COLUMN_NAME_CHARACTER_MAP_UNSPECIFIED"

-- | Support flexible column name and reject invalid column names.
pattern JobConfigurationLoad_ColumnNameCharacterMap_Strict :: JobConfigurationLoad_ColumnNameCharacterMap
pattern JobConfigurationLoad_ColumnNameCharacterMap_Strict = JobConfigurationLoad_ColumnNameCharacterMap "STRICT"

-- | Support alphanumeric + underscore characters and names must start with a letter or underscore. Invalid column names will be normalized.
pattern JobConfigurationLoad_ColumnNameCharacterMap_V1 :: JobConfigurationLoad_ColumnNameCharacterMap
pattern JobConfigurationLoad_ColumnNameCharacterMap_V1 = JobConfigurationLoad_ColumnNameCharacterMap "V1"

-- | Support flexible column name. Invalid column names will be normalized.
pattern JobConfigurationLoad_ColumnNameCharacterMap_V2 :: JobConfigurationLoad_ColumnNameCharacterMap
pattern JobConfigurationLoad_ColumnNameCharacterMap_V2 = JobConfigurationLoad_ColumnNameCharacterMap "V2"

{-# COMPLETE
  JobConfigurationLoad_ColumnNameCharacterMap_COLUMNNAMECHARACTERMAPUNSPECIFIED,
  JobConfigurationLoad_ColumnNameCharacterMap_Strict,
  JobConfigurationLoad_ColumnNameCharacterMap_V1,
  JobConfigurationLoad_ColumnNameCharacterMap_V2,
  JobConfigurationLoad_ColumnNameCharacterMap
  #-}

newtype JobConfigurationLoad_DecimalTargetTypesItem = JobConfigurationLoad_DecimalTargetTypesItem {fromJobConfigurationLoad_DecimalTargetTypesItem :: Core.Text}
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

-- | Invalid type.
pattern JobConfigurationLoad_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED :: JobConfigurationLoad_DecimalTargetTypesItem
pattern JobConfigurationLoad_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED = JobConfigurationLoad_DecimalTargetTypesItem "DECIMAL_TARGET_TYPE_UNSPECIFIED"

-- | Decimal values could be converted to NUMERIC type.
pattern JobConfigurationLoad_DecimalTargetTypesItem_Numeric :: JobConfigurationLoad_DecimalTargetTypesItem
pattern JobConfigurationLoad_DecimalTargetTypesItem_Numeric = JobConfigurationLoad_DecimalTargetTypesItem "NUMERIC"

-- | Decimal values could be converted to BIGNUMERIC type.
pattern JobConfigurationLoad_DecimalTargetTypesItem_Bignumeric :: JobConfigurationLoad_DecimalTargetTypesItem
pattern JobConfigurationLoad_DecimalTargetTypesItem_Bignumeric = JobConfigurationLoad_DecimalTargetTypesItem "BIGNUMERIC"

-- | Decimal values could be converted to STRING type.
pattern JobConfigurationLoad_DecimalTargetTypesItem_String :: JobConfigurationLoad_DecimalTargetTypesItem
pattern JobConfigurationLoad_DecimalTargetTypesItem_String = JobConfigurationLoad_DecimalTargetTypesItem "STRING"

{-# COMPLETE
  JobConfigurationLoad_DecimalTargetTypesItem_DECIMALTARGETTYPEUNSPECIFIED,
  JobConfigurationLoad_DecimalTargetTypesItem_Numeric,
  JobConfigurationLoad_DecimalTargetTypesItem_Bignumeric,
  JobConfigurationLoad_DecimalTargetTypesItem_String,
  JobConfigurationLoad_DecimalTargetTypesItem
  #-}

-- | Optional. Specifies how source URIs are interpreted for constructing the file set to load. By default, source URIs are expanded against the underlying storage. You can also specify manifest files to control how the file set is constructed. This option is only applicable to object storage systems.
newtype JobConfigurationLoad_FileSetSpecType = JobConfigurationLoad_FileSetSpecType {fromJobConfigurationLoad_FileSetSpecType :: Core.Text}
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

-- | This option expands source URIs by listing files from the object store. It is the default behavior if FileSetSpecType is not set.
pattern JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH :: JobConfigurationLoad_FileSetSpecType
pattern JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH = JobConfigurationLoad_FileSetSpecType "FILE_SET_SPEC_TYPE_FILE_SYSTEM_MATCH"

-- | This option indicates that the provided URIs are newline-delimited manifest files, with one URI per line. Wildcard URIs are not supported.
pattern JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST :: JobConfigurationLoad_FileSetSpecType
pattern JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST = JobConfigurationLoad_FileSetSpecType "FILE_SET_SPEC_TYPE_NEW_LINE_DELIMITED_MANIFEST"

{-# COMPLETE
  JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPEFILESYSTEMMATCH,
  JobConfigurationLoad_FileSetSpecType_FILESETSPECTYPENEWLINEDELIMITEDMANIFEST,
  JobConfigurationLoad_FileSetSpecType
  #-}

-- | Optional. Load option to be used together with source/format newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and source/format must be set to NEWLINE/DELIMITED/JSON).
newtype JobConfigurationLoad_JsonExtension = JobConfigurationLoad_JsonExtension {fromJobConfigurationLoad_JsonExtension :: Core.Text}
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

-- | The default if provided value is not one included in the enum, or the value is not specified. The source formate is parsed without any modification.
pattern JobConfigurationLoad_JsonExtension_JSONEXTENSIONUNSPECIFIED :: JobConfigurationLoad_JsonExtension
pattern JobConfigurationLoad_JsonExtension_JSONEXTENSIONUNSPECIFIED = JobConfigurationLoad_JsonExtension "JSON_EXTENSION_UNSPECIFIED"

-- | Use GeoJSON variant of JSON. See https:\/\/tools.ietf.org\/html\/rfc7946.
pattern JobConfigurationLoad_JsonExtension_Geojson :: JobConfigurationLoad_JsonExtension
pattern JobConfigurationLoad_JsonExtension_Geojson = JobConfigurationLoad_JsonExtension "GEOJSON"

{-# COMPLETE
  JobConfigurationLoad_JsonExtension_JSONEXTENSIONUNSPECIFIED,
  JobConfigurationLoad_JsonExtension_Geojson,
  JobConfigurationLoad_JsonExtension
  #-}

-- | Optional. Supported operation types in table copy job.
newtype JobConfigurationTableCopy_OperationType = JobConfigurationTableCopy_OperationType {fromJobConfigurationTableCopy_OperationType :: Core.Text}
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

-- | Unspecified operation type.
pattern JobConfigurationTableCopy_OperationType_OPERATIONTYPEUNSPECIFIED :: JobConfigurationTableCopy_OperationType
pattern JobConfigurationTableCopy_OperationType_OPERATIONTYPEUNSPECIFIED = JobConfigurationTableCopy_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | The source and destination table have the same table type.
pattern JobConfigurationTableCopy_OperationType_Copy :: JobConfigurationTableCopy_OperationType
pattern JobConfigurationTableCopy_OperationType_Copy = JobConfigurationTableCopy_OperationType "COPY"

-- | The source table type is TABLE and the destination table type is SNAPSHOT.
pattern JobConfigurationTableCopy_OperationType_Snapshot :: JobConfigurationTableCopy_OperationType
pattern JobConfigurationTableCopy_OperationType_Snapshot = JobConfigurationTableCopy_OperationType "SNAPSHOT"

-- | The source table type is SNAPSHOT and the destination table type is TABLE.
pattern JobConfigurationTableCopy_OperationType_Restore :: JobConfigurationTableCopy_OperationType
pattern JobConfigurationTableCopy_OperationType_Restore = JobConfigurationTableCopy_OperationType "RESTORE"

-- | The source and destination table have the same table type, but only bill for unique data.
pattern JobConfigurationTableCopy_OperationType_Clone :: JobConfigurationTableCopy_OperationType
pattern JobConfigurationTableCopy_OperationType_Clone = JobConfigurationTableCopy_OperationType "CLONE"

{-# COMPLETE
  JobConfigurationTableCopy_OperationType_OPERATIONTYPEUNSPECIFIED,
  JobConfigurationTableCopy_OperationType_Copy,
  JobConfigurationTableCopy_OperationType_Snapshot,
  JobConfigurationTableCopy_OperationType_Restore,
  JobConfigurationTableCopy_OperationType_Clone,
  JobConfigurationTableCopy_OperationType
  #-}

-- | Output only. Specifies the high level reason why a Job was created.
newtype JobCreationReason_Code = JobCreationReason_Code {fromJobCreationReason_Code :: Core.Text}
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

-- | Reason is not specified.
pattern JobCreationReason_Code_CODEUNSPECIFIED :: JobCreationReason_Code
pattern JobCreationReason_Code_CODEUNSPECIFIED = JobCreationReason_Code "CODE_UNSPECIFIED"

-- | Job creation was requested.
pattern JobCreationReason_Code_Requested :: JobCreationReason_Code
pattern JobCreationReason_Code_Requested = JobCreationReason_Code "REQUESTED"

-- | The query request ran beyond a system defined timeout specified by the <https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query#queryrequest timeoutMs field in the QueryRequest>. As a result it was considered a long running operation for which a job was created.
pattern JobCreationReason_Code_LONGRUNNING :: JobCreationReason_Code
pattern JobCreationReason_Code_LONGRUNNING = JobCreationReason_Code "LONG_RUNNING"

-- | The results from the query cannot fit in the response.
pattern JobCreationReason_Code_LARGERESULTS :: JobCreationReason_Code
pattern JobCreationReason_Code_LARGERESULTS = JobCreationReason_Code "LARGE_RESULTS"

-- | BigQuery has determined that the query needs to be executed as a Job.
pattern JobCreationReason_Code_Other :: JobCreationReason_Code
pattern JobCreationReason_Code_Other = JobCreationReason_Code "OTHER"

{-# COMPLETE
  JobCreationReason_Code_CODEUNSPECIFIED,
  JobCreationReason_Code_Requested,
  JobCreationReason_Code_LONGRUNNING,
  JobCreationReason_Code_LARGERESULTS,
  JobCreationReason_Code_Other,
  JobCreationReason_Code
  #-}

-- | Output only. Name of edition corresponding to the reservation for this job at the time of this update.
newtype JobStatistics_Edition = JobStatistics_Edition {fromJobStatistics_Edition :: Core.Text}
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

-- | Default value, which will be treated as ENTERPRISE.
pattern JobStatistics_Edition_RESERVATIONEDITIONUNSPECIFIED :: JobStatistics_Edition
pattern JobStatistics_Edition_RESERVATIONEDITIONUNSPECIFIED = JobStatistics_Edition "RESERVATION_EDITION_UNSPECIFIED"

-- | Standard edition.
pattern JobStatistics_Edition_Standard :: JobStatistics_Edition
pattern JobStatistics_Edition_Standard = JobStatistics_Edition "STANDARD"

-- | Enterprise edition.
pattern JobStatistics_Edition_Enterprise :: JobStatistics_Edition
pattern JobStatistics_Edition_Enterprise = JobStatistics_Edition "ENTERPRISE"

-- | Enterprise Plus edition.
pattern JobStatistics_Edition_ENTERPRISEPLUS :: JobStatistics_Edition
pattern JobStatistics_Edition_ENTERPRISEPLUS = JobStatistics_Edition "ENTERPRISE_PLUS"

{-# COMPLETE
  JobStatistics_Edition_RESERVATIONEDITIONUNSPECIFIED,
  JobStatistics_Edition_Standard,
  JobStatistics_Edition_Enterprise,
  JobStatistics_Edition_ENTERPRISEPLUS,
  JobStatistics_Edition
  #-}

-- | Optional. Specifies if a join is required or not on queries for the view. Default is JOIN/CONDITION/UNSPECIFIED.
newtype JoinRestrictionPolicy_JoinCondition = JoinRestrictionPolicy_JoinCondition {fromJoinRestrictionPolicy_JoinCondition :: Core.Text}
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

-- | A join is neither required nor restricted on any column. Default value.
pattern JoinRestrictionPolicy_JoinCondition_JOINCONDITIONUNSPECIFIED :: JoinRestrictionPolicy_JoinCondition
pattern JoinRestrictionPolicy_JoinCondition_JOINCONDITIONUNSPECIFIED = JoinRestrictionPolicy_JoinCondition "JOIN_CONDITION_UNSPECIFIED"

-- | A join is required on at least one of the specified columns.
pattern JoinRestrictionPolicy_JoinCondition_JOINANY :: JoinRestrictionPolicy_JoinCondition
pattern JoinRestrictionPolicy_JoinCondition_JOINANY = JoinRestrictionPolicy_JoinCondition "JOIN_ANY"

-- | A join is required on all specified columns.
pattern JoinRestrictionPolicy_JoinCondition_JOINALL :: JoinRestrictionPolicy_JoinCondition
pattern JoinRestrictionPolicy_JoinCondition_JOINALL = JoinRestrictionPolicy_JoinCondition "JOIN_ALL"

-- | A join is not required, but if present it is only permitted on \'join/allowed/columns\'
pattern JoinRestrictionPolicy_JoinCondition_JOINNOTREQUIRED :: JoinRestrictionPolicy_JoinCondition
pattern JoinRestrictionPolicy_JoinCondition_JOINNOTREQUIRED = JoinRestrictionPolicy_JoinCondition "JOIN_NOT_REQUIRED"

-- | Joins are blocked for all queries.
pattern JoinRestrictionPolicy_JoinCondition_JOINBLOCKED :: JoinRestrictionPolicy_JoinCondition
pattern JoinRestrictionPolicy_JoinCondition_JOINBLOCKED = JoinRestrictionPolicy_JoinCondition "JOIN_BLOCKED"

{-# COMPLETE
  JoinRestrictionPolicy_JoinCondition_JOINCONDITIONUNSPECIFIED,
  JoinRestrictionPolicy_JoinCondition_JOINANY,
  JoinRestrictionPolicy_JoinCondition_JOINALL,
  JoinRestrictionPolicy_JoinCondition_JOINNOTREQUIRED,
  JoinRestrictionPolicy_JoinCondition_JOINBLOCKED,
  JoinRestrictionPolicy_JoinCondition
  #-}

-- | Output only. Specifies whether Linked Dataset is currently in a linked state or not.
newtype LinkedDatasetMetadata_LinkState = LinkedDatasetMetadata_LinkState {fromLinkedDatasetMetadata_LinkState :: Core.Text}
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

-- | The default value. Default to the LINKED state.
pattern LinkedDatasetMetadata_LinkState_LINKSTATEUNSPECIFIED :: LinkedDatasetMetadata_LinkState
pattern LinkedDatasetMetadata_LinkState_LINKSTATEUNSPECIFIED = LinkedDatasetMetadata_LinkState "LINK_STATE_UNSPECIFIED"

-- | Normal Linked Dataset state. Data is queryable via the Linked Dataset.
pattern LinkedDatasetMetadata_LinkState_Linked :: LinkedDatasetMetadata_LinkState
pattern LinkedDatasetMetadata_LinkState_Linked = LinkedDatasetMetadata_LinkState "LINKED"

-- | Data publisher or owner has unlinked this Linked Dataset. It means you can no longer query or see the data in the Linked Dataset.
pattern LinkedDatasetMetadata_LinkState_Unlinked :: LinkedDatasetMetadata_LinkState
pattern LinkedDatasetMetadata_LinkState_Unlinked = LinkedDatasetMetadata_LinkState "UNLINKED"

{-# COMPLETE
  LinkedDatasetMetadata_LinkState_LINKSTATEUNSPECIFIED,
  LinkedDatasetMetadata_LinkState_Linked,
  LinkedDatasetMetadata_LinkState_Unlinked,
  LinkedDatasetMetadata_LinkState
  #-}

-- | If present, specifies the reason why the materialized view was not chosen for the query.
newtype MaterializedView_RejectedReason = MaterializedView_RejectedReason {fromMaterializedView_RejectedReason :: Core.Text}
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

-- | Default unspecified value.
pattern MaterializedView_RejectedReason_REJECTEDREASONUNSPECIFIED :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_REJECTEDREASONUNSPECIFIED = MaterializedView_RejectedReason "REJECTED_REASON_UNSPECIFIED"

-- | View has no cached data because it has not refreshed yet.
pattern MaterializedView_RejectedReason_NODATA :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_NODATA = MaterializedView_RejectedReason "NO_DATA"

-- | The estimated cost of the view is more expensive than another view or the base table. Note: The estimate cost might not match the billed cost.
pattern MaterializedView_RejectedReason_Cost :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_Cost = MaterializedView_RejectedReason "COST"

-- | View has no cached data because a base table is truncated.
pattern MaterializedView_RejectedReason_BASETABLETRUNCATED :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLETRUNCATED = MaterializedView_RejectedReason "BASE_TABLE_TRUNCATED"

-- | View is invalidated because of a data change in one or more base tables. It could be any recent change if the <https://cloud.google.com/bigquery/docs/materialized-views-create#max_staleness max_staleness> option is not set for the view, or otherwise any change outside of the staleness window.
pattern MaterializedView_RejectedReason_BASETABLEDATACHANGE :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLEDATACHANGE = MaterializedView_RejectedReason "BASE_TABLE_DATA_CHANGE"

-- | View is invalidated because a base table\'s partition expiration has changed.
pattern MaterializedView_RejectedReason_BASETABLEPARTITIONEXPIRATIONCHANGE :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLEPARTITIONEXPIRATIONCHANGE = MaterializedView_RejectedReason "BASE_TABLE_PARTITION_EXPIRATION_CHANGE"

-- | View is invalidated because a base table\'s partition has expired.
pattern MaterializedView_RejectedReason_BASETABLEEXPIREDPARTITION :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLEEXPIREDPARTITION = MaterializedView_RejectedReason "BASE_TABLE_EXPIRED_PARTITION"

-- | View is invalidated because a base table has an incompatible metadata change.
pattern MaterializedView_RejectedReason_BASETABLEINCOMPATIBLEMETADATACHANGE :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLEINCOMPATIBLEMETADATACHANGE = MaterializedView_RejectedReason "BASE_TABLE_INCOMPATIBLE_METADATA_CHANGE"

-- | View is invalidated because it was refreshed with a time zone other than that of the current job.
pattern MaterializedView_RejectedReason_TIMEZONE :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_TIMEZONE = MaterializedView_RejectedReason "TIME_ZONE"

-- | View is outside the time travel window.
pattern MaterializedView_RejectedReason_OUTOFTIMETRAVELWINDOW :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_OUTOFTIMETRAVELWINDOW = MaterializedView_RejectedReason "OUT_OF_TIME_TRAVEL_WINDOW"

-- | View is inaccessible to the user because of a fine-grained security policy on one of its base tables.
pattern MaterializedView_RejectedReason_BASETABLEFINEGRAINEDSECURITYPOLICY :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLEFINEGRAINEDSECURITYPOLICY = MaterializedView_RejectedReason "BASE_TABLE_FINE_GRAINED_SECURITY_POLICY"

-- | One of the view\'s base tables is too stale. For example, the cached metadata of a BigLake external table needs to be updated.
pattern MaterializedView_RejectedReason_BASETABLETOOSTALE :: MaterializedView_RejectedReason
pattern MaterializedView_RejectedReason_BASETABLETOOSTALE = MaterializedView_RejectedReason "BASE_TABLE_TOO_STALE"

{-# COMPLETE
  MaterializedView_RejectedReason_REJECTEDREASONUNSPECIFIED,
  MaterializedView_RejectedReason_NODATA,
  MaterializedView_RejectedReason_Cost,
  MaterializedView_RejectedReason_BASETABLETRUNCATED,
  MaterializedView_RejectedReason_BASETABLEDATACHANGE,
  MaterializedView_RejectedReason_BASETABLEPARTITIONEXPIRATIONCHANGE,
  MaterializedView_RejectedReason_BASETABLEEXPIREDPARTITION,
  MaterializedView_RejectedReason_BASETABLEINCOMPATIBLEMETADATACHANGE,
  MaterializedView_RejectedReason_TIMEZONE,
  MaterializedView_RejectedReason_OUTOFTIMETRAVELWINDOW,
  MaterializedView_RejectedReason_BASETABLEFINEGRAINEDSECURITYPOLICY,
  MaterializedView_RejectedReason_BASETABLETOOSTALE,
  MaterializedView_RejectedReason
  #-}

-- | Output only. The type of the model that is being trained.
newtype MlStatistics_ModelType = MlStatistics_ModelType {fromMlStatistics_ModelType :: Core.Text}
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

-- | Default value.
pattern MlStatistics_ModelType_MODELTYPEUNSPECIFIED :: MlStatistics_ModelType
pattern MlStatistics_ModelType_MODELTYPEUNSPECIFIED = MlStatistics_ModelType "MODEL_TYPE_UNSPECIFIED"

-- | Linear regression model.
pattern MlStatistics_ModelType_LINEARREGRESSION :: MlStatistics_ModelType
pattern MlStatistics_ModelType_LINEARREGRESSION = MlStatistics_ModelType "LINEAR_REGRESSION"

-- | Logistic regression based classification model.
pattern MlStatistics_ModelType_LOGISTICREGRESSION :: MlStatistics_ModelType
pattern MlStatistics_ModelType_LOGISTICREGRESSION = MlStatistics_ModelType "LOGISTIC_REGRESSION"

-- | K-means clustering model.
pattern MlStatistics_ModelType_Kmeans :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Kmeans = MlStatistics_ModelType "KMEANS"

-- | Matrix factorization model.
pattern MlStatistics_ModelType_MATRIXFACTORIZATION :: MlStatistics_ModelType
pattern MlStatistics_ModelType_MATRIXFACTORIZATION = MlStatistics_ModelType "MATRIX_FACTORIZATION"

-- | DNN classifier model.
pattern MlStatistics_ModelType_DNNCLASSIFIER :: MlStatistics_ModelType
pattern MlStatistics_ModelType_DNNCLASSIFIER = MlStatistics_ModelType "DNN_CLASSIFIER"

-- | An imported TensorFlow model.
pattern MlStatistics_ModelType_Tensorflow :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Tensorflow = MlStatistics_ModelType "TENSORFLOW"

-- | DNN regressor model.
pattern MlStatistics_ModelType_DNNREGRESSOR :: MlStatistics_ModelType
pattern MlStatistics_ModelType_DNNREGRESSOR = MlStatistics_ModelType "DNN_REGRESSOR"

-- | An imported XGBoost model.
pattern MlStatistics_ModelType_Xgboost :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Xgboost = MlStatistics_ModelType "XGBOOST"

-- | Boosted tree regressor model.
pattern MlStatistics_ModelType_BOOSTEDTREEREGRESSOR :: MlStatistics_ModelType
pattern MlStatistics_ModelType_BOOSTEDTREEREGRESSOR = MlStatistics_ModelType "BOOSTED_TREE_REGRESSOR"

-- | Boosted tree classifier model.
pattern MlStatistics_ModelType_BOOSTEDTREECLASSIFIER :: MlStatistics_ModelType
pattern MlStatistics_ModelType_BOOSTEDTREECLASSIFIER = MlStatistics_ModelType "BOOSTED_TREE_CLASSIFIER"

-- | ARIMA model.
pattern MlStatistics_ModelType_Arima :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Arima = MlStatistics_ModelType "ARIMA"

-- | AutoML Tables regression model.
pattern MlStatistics_ModelType_AUTOMLREGRESSOR :: MlStatistics_ModelType
pattern MlStatistics_ModelType_AUTOMLREGRESSOR = MlStatistics_ModelType "AUTOML_REGRESSOR"

-- | AutoML Tables classification model.
pattern MlStatistics_ModelType_AUTOMLCLASSIFIER :: MlStatistics_ModelType
pattern MlStatistics_ModelType_AUTOMLCLASSIFIER = MlStatistics_ModelType "AUTOML_CLASSIFIER"

-- | Prinpical Component Analysis model.
pattern MlStatistics_ModelType_Pca :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Pca = MlStatistics_ModelType "PCA"

-- | Wide-and-deep classifier model.
pattern MlStatistics_ModelType_DNNLINEARCOMBINEDCLASSIFIER :: MlStatistics_ModelType
pattern MlStatistics_ModelType_DNNLINEARCOMBINEDCLASSIFIER = MlStatistics_ModelType "DNN_LINEAR_COMBINED_CLASSIFIER"

-- | Wide-and-deep regressor model.
pattern MlStatistics_ModelType_DNNLINEARCOMBINEDREGRESSOR :: MlStatistics_ModelType
pattern MlStatistics_ModelType_DNNLINEARCOMBINEDREGRESSOR = MlStatistics_ModelType "DNN_LINEAR_COMBINED_REGRESSOR"

-- | Autoencoder model.
pattern MlStatistics_ModelType_Autoencoder :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Autoencoder = MlStatistics_ModelType "AUTOENCODER"

-- | New name for the ARIMA model.
pattern MlStatistics_ModelType_ARIMAPLUS :: MlStatistics_ModelType
pattern MlStatistics_ModelType_ARIMAPLUS = MlStatistics_ModelType "ARIMA_PLUS"

-- | ARIMA with external regressors.
pattern MlStatistics_ModelType_ARIMAPLUSXREG :: MlStatistics_ModelType
pattern MlStatistics_ModelType_ARIMAPLUSXREG = MlStatistics_ModelType "ARIMA_PLUS_XREG"

-- | Random forest regressor model.
pattern MlStatistics_ModelType_RANDOMFORESTREGRESSOR :: MlStatistics_ModelType
pattern MlStatistics_ModelType_RANDOMFORESTREGRESSOR = MlStatistics_ModelType "RANDOM_FOREST_REGRESSOR"

-- | Random forest classifier model.
pattern MlStatistics_ModelType_RANDOMFORESTCLASSIFIER :: MlStatistics_ModelType
pattern MlStatistics_ModelType_RANDOMFORESTCLASSIFIER = MlStatistics_ModelType "RANDOM_FOREST_CLASSIFIER"

-- | An imported TensorFlow Lite model.
pattern MlStatistics_ModelType_TENSORFLOWLITE :: MlStatistics_ModelType
pattern MlStatistics_ModelType_TENSORFLOWLITE = MlStatistics_ModelType "TENSORFLOW_LITE"

-- | An imported ONNX model.
pattern MlStatistics_ModelType_Onnx :: MlStatistics_ModelType
pattern MlStatistics_ModelType_Onnx = MlStatistics_ModelType "ONNX"

-- | Model to capture the columns and logic in the TRANSFORM clause along with statistics useful for ML analytic functions.
pattern MlStatistics_ModelType_TRANSFORMONLY :: MlStatistics_ModelType
pattern MlStatistics_ModelType_TRANSFORMONLY = MlStatistics_ModelType "TRANSFORM_ONLY"

-- | The contribution analysis model.
pattern MlStatistics_ModelType_CONTRIBUTIONANALYSIS :: MlStatistics_ModelType
pattern MlStatistics_ModelType_CONTRIBUTIONANALYSIS = MlStatistics_ModelType "CONTRIBUTION_ANALYSIS"

{-# COMPLETE
  MlStatistics_ModelType_MODELTYPEUNSPECIFIED,
  MlStatistics_ModelType_LINEARREGRESSION,
  MlStatistics_ModelType_LOGISTICREGRESSION,
  MlStatistics_ModelType_Kmeans,
  MlStatistics_ModelType_MATRIXFACTORIZATION,
  MlStatistics_ModelType_DNNCLASSIFIER,
  MlStatistics_ModelType_Tensorflow,
  MlStatistics_ModelType_DNNREGRESSOR,
  MlStatistics_ModelType_Xgboost,
  MlStatistics_ModelType_BOOSTEDTREEREGRESSOR,
  MlStatistics_ModelType_BOOSTEDTREECLASSIFIER,
  MlStatistics_ModelType_Arima,
  MlStatistics_ModelType_AUTOMLREGRESSOR,
  MlStatistics_ModelType_AUTOMLCLASSIFIER,
  MlStatistics_ModelType_Pca,
  MlStatistics_ModelType_DNNLINEARCOMBINEDCLASSIFIER,
  MlStatistics_ModelType_DNNLINEARCOMBINEDREGRESSOR,
  MlStatistics_ModelType_Autoencoder,
  MlStatistics_ModelType_ARIMAPLUS,
  MlStatistics_ModelType_ARIMAPLUSXREG,
  MlStatistics_ModelType_RANDOMFORESTREGRESSOR,
  MlStatistics_ModelType_RANDOMFORESTCLASSIFIER,
  MlStatistics_ModelType_TENSORFLOWLITE,
  MlStatistics_ModelType_Onnx,
  MlStatistics_ModelType_TRANSFORMONLY,
  MlStatistics_ModelType_CONTRIBUTIONANALYSIS,
  MlStatistics_ModelType
  #-}

-- | Output only. Training type of the job.
newtype MlStatistics_TrainingType = MlStatistics_TrainingType {fromMlStatistics_TrainingType :: Core.Text}
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

-- | Unspecified training type.
pattern MlStatistics_TrainingType_TRAININGTYPEUNSPECIFIED :: MlStatistics_TrainingType
pattern MlStatistics_TrainingType_TRAININGTYPEUNSPECIFIED = MlStatistics_TrainingType "TRAINING_TYPE_UNSPECIFIED"

-- | Single training with fixed parameter space.
pattern MlStatistics_TrainingType_SINGLETRAINING :: MlStatistics_TrainingType
pattern MlStatistics_TrainingType_SINGLETRAINING = MlStatistics_TrainingType "SINGLE_TRAINING"

-- | <https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview Hyperparameter tuning training>.
pattern MlStatistics_TrainingType_HPARAMTUNING :: MlStatistics_TrainingType
pattern MlStatistics_TrainingType_HPARAMTUNING = MlStatistics_TrainingType "HPARAM_TUNING"

{-# COMPLETE
  MlStatistics_TrainingType_TRAININGTYPEUNSPECIFIED,
  MlStatistics_TrainingType_SINGLETRAINING,
  MlStatistics_TrainingType_HPARAMTUNING,
  MlStatistics_TrainingType
  #-}

-- | Output only. Type of the model resource.
newtype Model_ModelType = Model_ModelType {fromModel_ModelType :: Core.Text}
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

-- | Default value.
pattern Model_ModelType_MODELTYPEUNSPECIFIED :: Model_ModelType
pattern Model_ModelType_MODELTYPEUNSPECIFIED = Model_ModelType "MODEL_TYPE_UNSPECIFIED"

-- | Linear regression model.
pattern Model_ModelType_LINEARREGRESSION :: Model_ModelType
pattern Model_ModelType_LINEARREGRESSION = Model_ModelType "LINEAR_REGRESSION"

-- | Logistic regression based classification model.
pattern Model_ModelType_LOGISTICREGRESSION :: Model_ModelType
pattern Model_ModelType_LOGISTICREGRESSION = Model_ModelType "LOGISTIC_REGRESSION"

-- | K-means clustering model.
pattern Model_ModelType_Kmeans :: Model_ModelType
pattern Model_ModelType_Kmeans = Model_ModelType "KMEANS"

-- | Matrix factorization model.
pattern Model_ModelType_MATRIXFACTORIZATION :: Model_ModelType
pattern Model_ModelType_MATRIXFACTORIZATION = Model_ModelType "MATRIX_FACTORIZATION"

-- | DNN classifier model.
pattern Model_ModelType_DNNCLASSIFIER :: Model_ModelType
pattern Model_ModelType_DNNCLASSIFIER = Model_ModelType "DNN_CLASSIFIER"

-- | An imported TensorFlow model.
pattern Model_ModelType_Tensorflow :: Model_ModelType
pattern Model_ModelType_Tensorflow = Model_ModelType "TENSORFLOW"

-- | DNN regressor model.
pattern Model_ModelType_DNNREGRESSOR :: Model_ModelType
pattern Model_ModelType_DNNREGRESSOR = Model_ModelType "DNN_REGRESSOR"

-- | An imported XGBoost model.
pattern Model_ModelType_Xgboost :: Model_ModelType
pattern Model_ModelType_Xgboost = Model_ModelType "XGBOOST"

-- | Boosted tree regressor model.
pattern Model_ModelType_BOOSTEDTREEREGRESSOR :: Model_ModelType
pattern Model_ModelType_BOOSTEDTREEREGRESSOR = Model_ModelType "BOOSTED_TREE_REGRESSOR"

-- | Boosted tree classifier model.
pattern Model_ModelType_BOOSTEDTREECLASSIFIER :: Model_ModelType
pattern Model_ModelType_BOOSTEDTREECLASSIFIER = Model_ModelType "BOOSTED_TREE_CLASSIFIER"

-- | ARIMA model.
pattern Model_ModelType_Arima :: Model_ModelType
pattern Model_ModelType_Arima = Model_ModelType "ARIMA"

-- | AutoML Tables regression model.
pattern Model_ModelType_AUTOMLREGRESSOR :: Model_ModelType
pattern Model_ModelType_AUTOMLREGRESSOR = Model_ModelType "AUTOML_REGRESSOR"

-- | AutoML Tables classification model.
pattern Model_ModelType_AUTOMLCLASSIFIER :: Model_ModelType
pattern Model_ModelType_AUTOMLCLASSIFIER = Model_ModelType "AUTOML_CLASSIFIER"

-- | Prinpical Component Analysis model.
pattern Model_ModelType_Pca :: Model_ModelType
pattern Model_ModelType_Pca = Model_ModelType "PCA"

-- | Wide-and-deep classifier model.
pattern Model_ModelType_DNNLINEARCOMBINEDCLASSIFIER :: Model_ModelType
pattern Model_ModelType_DNNLINEARCOMBINEDCLASSIFIER = Model_ModelType "DNN_LINEAR_COMBINED_CLASSIFIER"

-- | Wide-and-deep regressor model.
pattern Model_ModelType_DNNLINEARCOMBINEDREGRESSOR :: Model_ModelType
pattern Model_ModelType_DNNLINEARCOMBINEDREGRESSOR = Model_ModelType "DNN_LINEAR_COMBINED_REGRESSOR"

-- | Autoencoder model.
pattern Model_ModelType_Autoencoder :: Model_ModelType
pattern Model_ModelType_Autoencoder = Model_ModelType "AUTOENCODER"

-- | New name for the ARIMA model.
pattern Model_ModelType_ARIMAPLUS :: Model_ModelType
pattern Model_ModelType_ARIMAPLUS = Model_ModelType "ARIMA_PLUS"

-- | ARIMA with external regressors.
pattern Model_ModelType_ARIMAPLUSXREG :: Model_ModelType
pattern Model_ModelType_ARIMAPLUSXREG = Model_ModelType "ARIMA_PLUS_XREG"

-- | Random forest regressor model.
pattern Model_ModelType_RANDOMFORESTREGRESSOR :: Model_ModelType
pattern Model_ModelType_RANDOMFORESTREGRESSOR = Model_ModelType "RANDOM_FOREST_REGRESSOR"

-- | Random forest classifier model.
pattern Model_ModelType_RANDOMFORESTCLASSIFIER :: Model_ModelType
pattern Model_ModelType_RANDOMFORESTCLASSIFIER = Model_ModelType "RANDOM_FOREST_CLASSIFIER"

-- | An imported TensorFlow Lite model.
pattern Model_ModelType_TENSORFLOWLITE :: Model_ModelType
pattern Model_ModelType_TENSORFLOWLITE = Model_ModelType "TENSORFLOW_LITE"

-- | An imported ONNX model.
pattern Model_ModelType_Onnx :: Model_ModelType
pattern Model_ModelType_Onnx = Model_ModelType "ONNX"

-- | Model to capture the columns and logic in the TRANSFORM clause along with statistics useful for ML analytic functions.
pattern Model_ModelType_TRANSFORMONLY :: Model_ModelType
pattern Model_ModelType_TRANSFORMONLY = Model_ModelType "TRANSFORM_ONLY"

-- | The contribution analysis model.
pattern Model_ModelType_CONTRIBUTIONANALYSIS :: Model_ModelType
pattern Model_ModelType_CONTRIBUTIONANALYSIS = Model_ModelType "CONTRIBUTION_ANALYSIS"

{-# COMPLETE
  Model_ModelType_MODELTYPEUNSPECIFIED,
  Model_ModelType_LINEARREGRESSION,
  Model_ModelType_LOGISTICREGRESSION,
  Model_ModelType_Kmeans,
  Model_ModelType_MATRIXFACTORIZATION,
  Model_ModelType_DNNCLASSIFIER,
  Model_ModelType_Tensorflow,
  Model_ModelType_DNNREGRESSOR,
  Model_ModelType_Xgboost,
  Model_ModelType_BOOSTEDTREEREGRESSOR,
  Model_ModelType_BOOSTEDTREECLASSIFIER,
  Model_ModelType_Arima,
  Model_ModelType_AUTOMLREGRESSOR,
  Model_ModelType_AUTOMLCLASSIFIER,
  Model_ModelType_Pca,
  Model_ModelType_DNNLINEARCOMBINEDCLASSIFIER,
  Model_ModelType_DNNLINEARCOMBINEDREGRESSOR,
  Model_ModelType_Autoencoder,
  Model_ModelType_ARIMAPLUS,
  Model_ModelType_ARIMAPLUSXREG,
  Model_ModelType_RANDOMFORESTREGRESSOR,
  Model_ModelType_RANDOMFORESTCLASSIFIER,
  Model_ModelType_TENSORFLOWLITE,
  Model_ModelType_Onnx,
  Model_ModelType_TRANSFORMONLY,
  Model_ModelType_CONTRIBUTIONANALYSIS,
  Model_ModelType
  #-}

-- | Optional. Indicates how to represent a Parquet map if present.
newtype ParquetOptions_MapTargetType = ParquetOptions_MapTargetType {fromParquetOptions_MapTargetType :: Core.Text}
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

-- | In this mode, the map will have the following schema: struct map/field/name { repeated struct key_value { key value } }.
pattern ParquetOptions_MapTargetType_MAPTARGETTYPEUNSPECIFIED :: ParquetOptions_MapTargetType
pattern ParquetOptions_MapTargetType_MAPTARGETTYPEUNSPECIFIED = ParquetOptions_MapTargetType "MAP_TARGET_TYPE_UNSPECIFIED"

-- | In this mode, the map will have the following schema: repeated struct map/field/name { key value }.
pattern ParquetOptions_MapTargetType_ARRAYOFSTRUCT :: ParquetOptions_MapTargetType
pattern ParquetOptions_MapTargetType_ARRAYOFSTRUCT = ParquetOptions_MapTargetType "ARRAY_OF_STRUCT"

{-# COMPLETE
  ParquetOptions_MapTargetType_MAPTARGETTYPEUNSPECIFIED,
  ParquetOptions_MapTargetType_ARRAYOFSTRUCT,
  ParquetOptions_MapTargetType
  #-}

-- | Optional. If not set, jobs are always required. If set, the query request will follow the behavior described JobCreationMode. <https://cloud.google.com/products/#product-launch-stages Preview>
newtype QueryRequest_JobCreationMode = QueryRequest_JobCreationMode {fromQueryRequest_JobCreationMode :: Core.Text}
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

-- | If unspecified JOB/CREATION/REQUIRED is the default.
pattern QueryRequest_JobCreationMode_JOBCREATIONMODEUNSPECIFIED :: QueryRequest_JobCreationMode
pattern QueryRequest_JobCreationMode_JOBCREATIONMODEUNSPECIFIED = QueryRequest_JobCreationMode "JOB_CREATION_MODE_UNSPECIFIED"

-- | Default. Job creation is always required.
pattern QueryRequest_JobCreationMode_JOBCREATIONREQUIRED :: QueryRequest_JobCreationMode
pattern QueryRequest_JobCreationMode_JOBCREATIONREQUIRED = QueryRequest_JobCreationMode "JOB_CREATION_REQUIRED"

-- | Job creation is optional. Returning immediate results is prioritized. BigQuery will automatically determine if a Job needs to be created. The conditions under which BigQuery can decide to not create a Job are subject to change. If Job creation is required, JOB/CREATION/REQUIRED mode should be used, which is the default.
pattern QueryRequest_JobCreationMode_JOBCREATIONOPTIONAL :: QueryRequest_JobCreationMode
pattern QueryRequest_JobCreationMode_JOBCREATIONOPTIONAL = QueryRequest_JobCreationMode "JOB_CREATION_OPTIONAL"

{-# COMPLETE
  QueryRequest_JobCreationMode_JOBCREATIONMODEUNSPECIFIED,
  QueryRequest_JobCreationMode_JOBCREATIONREQUIRED,
  QueryRequest_JobCreationMode_JOBCREATIONOPTIONAL,
  QueryRequest_JobCreationMode
  #-}

-- | Output only. The remote service type for remote model.
newtype RemoteModelInfo_RemoteServiceType = RemoteModelInfo_RemoteServiceType {fromRemoteModelInfo_RemoteServiceType :: Core.Text}
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

-- | Unspecified remote service type.
pattern RemoteModelInfo_RemoteServiceType_REMOTESERVICETYPEUNSPECIFIED :: RemoteModelInfo_RemoteServiceType
pattern RemoteModelInfo_RemoteServiceType_REMOTESERVICETYPEUNSPECIFIED = RemoteModelInfo_RemoteServiceType "REMOTE_SERVICE_TYPE_UNSPECIFIED"

-- | V3 Cloud AI Translation API. See more details at [Cloud Translation API] (https:\/\/cloud.google.com\/translate\/docs\/reference\/rest).
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_TRANSLATE_V3 :: RemoteModelInfo_RemoteServiceType
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_TRANSLATE_V3 = RemoteModelInfo_RemoteServiceType "CLOUD_AI_TRANSLATE_V3"

-- | V1 Cloud AI Vision API See more details at [Cloud Vision API] (https:\/\/cloud.google.com\/vision\/docs\/reference\/rest).
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_VISION_V1 :: RemoteModelInfo_RemoteServiceType
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_VISION_V1 = RemoteModelInfo_RemoteServiceType "CLOUD_AI_VISION_V1"

-- | V1 Cloud AI Natural Language API. See more details at <https://cloud.google.com/natural-language/docs/reference/rest/v1/documents REST Resource: documents>.
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_NATURAL_LANGUAGE_V1 :: RemoteModelInfo_RemoteServiceType
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_NATURAL_LANGUAGE_V1 = RemoteModelInfo_RemoteServiceType "CLOUD_AI_NATURAL_LANGUAGE_V1"

-- | V2 Speech-to-Text API. See more details at <https://cloud.google.com/speech-to-text/v2/docs Google Cloud Speech-to-Text V2 API>
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_SPEECH_TO_TEXT_V2 :: RemoteModelInfo_RemoteServiceType
pattern RemoteModelInfo_RemoteServiceType_CLOUD_AI_SPEECH_TO_TEXT_V2 = RemoteModelInfo_RemoteServiceType "CLOUD_AI_SPEECH_TO_TEXT_V2"

{-# COMPLETE
  RemoteModelInfo_RemoteServiceType_REMOTESERVICETYPEUNSPECIFIED,
  RemoteModelInfo_RemoteServiceType_CLOUD_AI_TRANSLATE_V3,
  RemoteModelInfo_RemoteServiceType_CLOUD_AI_VISION_V1,
  RemoteModelInfo_RemoteServiceType_CLOUD_AI_NATURAL_LANGUAGE_V1,
  RemoteModelInfo_RemoteServiceType_CLOUD_AI_SPEECH_TO_TEXT_V2,
  RemoteModelInfo_RemoteServiceType
  #-}

-- | Output only. Specifies the type of dataset\/table restriction.
newtype RestrictionConfig_Type = RestrictionConfig_Type {fromRestrictionConfig_Type :: Core.Text}
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
pattern RestrictionConfig_Type_RESTRICTIONTYPEUNSPECIFIED :: RestrictionConfig_Type
pattern RestrictionConfig_Type_RESTRICTIONTYPEUNSPECIFIED = RestrictionConfig_Type "RESTRICTION_TYPE_UNSPECIFIED"

-- | Restrict data egress. See <https://cloud.google.com/bigquery/docs/analytics-hub-introduction#data_egress Data egress> for more details.
pattern RestrictionConfig_Type_RESTRICTEDDATAEGRESS :: RestrictionConfig_Type
pattern RestrictionConfig_Type_RESTRICTEDDATAEGRESS = RestrictionConfig_Type "RESTRICTED_DATA_EGRESS"

{-# COMPLETE
  RestrictionConfig_Type_RESTRICTIONTYPEUNSPECIFIED,
  RestrictionConfig_Type_RESTRICTEDDATAEGRESS,
  RestrictionConfig_Type
  #-}

-- | Optional. If set to @DATA_MASKING@, the function is validated and made available as a masking function. For more information, see <https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask Create custom masking routines>.
newtype Routine_DataGovernanceType = Routine_DataGovernanceType {fromRoutine_DataGovernanceType :: Core.Text}
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

-- | The data governance type is unspecified.
pattern Routine_DataGovernanceType_DATAGOVERNANCETYPEUNSPECIFIED :: Routine_DataGovernanceType
pattern Routine_DataGovernanceType_DATAGOVERNANCETYPEUNSPECIFIED = Routine_DataGovernanceType "DATA_GOVERNANCE_TYPE_UNSPECIFIED"

-- | The data governance type is data masking.
pattern Routine_DataGovernanceType_DATAMASKING :: Routine_DataGovernanceType
pattern Routine_DataGovernanceType_DATAMASKING = Routine_DataGovernanceType "DATA_MASKING"

{-# COMPLETE
  Routine_DataGovernanceType_DATAGOVERNANCETYPEUNSPECIFIED,
  Routine_DataGovernanceType_DATAMASKING,
  Routine_DataGovernanceType
  #-}

-- | Optional. The determinism level of the JavaScript UDF, if defined.
newtype Routine_DeterminismLevel = Routine_DeterminismLevel {fromRoutine_DeterminismLevel :: Core.Text}
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

-- | The determinism of the UDF is unspecified.
pattern Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED = Routine_DeterminismLevel "DETERMINISM_LEVEL_UNSPECIFIED"

-- | The UDF is deterministic, meaning that 2 function calls with the same inputs always produce the same result, even across 2 query runs.
pattern Routine_DeterminismLevel_Deterministic :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_Deterministic = Routine_DeterminismLevel "DETERMINISTIC"

-- | The UDF is not deterministic.
pattern Routine_DeterminismLevel_NOTDETERMINISTIC :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_NOTDETERMINISTIC = Routine_DeterminismLevel "NOT_DETERMINISTIC"

{-# COMPLETE
  Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED,
  Routine_DeterminismLevel_Deterministic,
  Routine_DeterminismLevel_NOTDETERMINISTIC,
  Routine_DeterminismLevel
  #-}

-- | Optional. Defaults to \"SQL\" if remote/function/options field is absent, not set otherwise.
newtype Routine_Language = Routine_Language {fromRoutine_Language :: Core.Text}
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

-- | Default value.
pattern Routine_Language_LANGUAGEUNSPECIFIED :: Routine_Language
pattern Routine_Language_LANGUAGEUNSPECIFIED = Routine_Language "LANGUAGE_UNSPECIFIED"

-- | SQL language.
pattern Routine_Language_Sql :: Routine_Language
pattern Routine_Language_Sql = Routine_Language "SQL"

-- | JavaScript language.
pattern Routine_Language_Javascript :: Routine_Language
pattern Routine_Language_Javascript = Routine_Language "JAVASCRIPT"

-- | Python language.
pattern Routine_Language_Python :: Routine_Language
pattern Routine_Language_Python = Routine_Language "PYTHON"

-- | Java language.
pattern Routine_Language_Java :: Routine_Language
pattern Routine_Language_Java = Routine_Language "JAVA"

-- | Scala language.
pattern Routine_Language_Scala :: Routine_Language
pattern Routine_Language_Scala = Routine_Language "SCALA"

{-# COMPLETE
  Routine_Language_LANGUAGEUNSPECIFIED,
  Routine_Language_Sql,
  Routine_Language_Javascript,
  Routine_Language_Python,
  Routine_Language_Java,
  Routine_Language_Scala,
  Routine_Language
  #-}

-- | Required. The type of routine.
newtype Routine_RoutineType = Routine_RoutineType {fromRoutine_RoutineType :: Core.Text}
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

-- | Default value.
pattern Routine_RoutineType_ROUTINETYPEUNSPECIFIED :: Routine_RoutineType
pattern Routine_RoutineType_ROUTINETYPEUNSPECIFIED = Routine_RoutineType "ROUTINE_TYPE_UNSPECIFIED"

-- | Non-built-in persistent scalar function.
pattern Routine_RoutineType_SCALARFUNCTION :: Routine_RoutineType
pattern Routine_RoutineType_SCALARFUNCTION = Routine_RoutineType "SCALAR_FUNCTION"

-- | Stored procedure.
pattern Routine_RoutineType_Procedure :: Routine_RoutineType
pattern Routine_RoutineType_Procedure = Routine_RoutineType "PROCEDURE"

-- | Non-built-in persistent TVF.
pattern Routine_RoutineType_TABLEVALUEDFUNCTION :: Routine_RoutineType
pattern Routine_RoutineType_TABLEVALUEDFUNCTION = Routine_RoutineType "TABLE_VALUED_FUNCTION"

-- | Non-built-in persistent aggregate function.
pattern Routine_RoutineType_AGGREGATEFUNCTION :: Routine_RoutineType
pattern Routine_RoutineType_AGGREGATEFUNCTION = Routine_RoutineType "AGGREGATE_FUNCTION"

{-# COMPLETE
  Routine_RoutineType_ROUTINETYPEUNSPECIFIED,
  Routine_RoutineType_SCALARFUNCTION,
  Routine_RoutineType_Procedure,
  Routine_RoutineType_TABLEVALUEDFUNCTION,
  Routine_RoutineType_AGGREGATEFUNCTION,
  Routine_RoutineType
  #-}

-- | Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine\'s configuration.
newtype Routine_SecurityMode = Routine_SecurityMode {fromRoutine_SecurityMode :: Core.Text}
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

-- | The security mode of the routine is unspecified.
pattern Routine_SecurityMode_SECURITYMODEUNSPECIFIED :: Routine_SecurityMode
pattern Routine_SecurityMode_SECURITYMODEUNSPECIFIED = Routine_SecurityMode "SECURITY_MODE_UNSPECIFIED"

-- | The routine is to be executed with the privileges of the user who defines it.
pattern Routine_SecurityMode_Definer :: Routine_SecurityMode
pattern Routine_SecurityMode_Definer = Routine_SecurityMode "DEFINER"

-- | The routine is to be executed with the privileges of the user who invokes it.
pattern Routine_SecurityMode_Invoker :: Routine_SecurityMode
pattern Routine_SecurityMode_Invoker = Routine_SecurityMode "INVOKER"

{-# COMPLETE
  Routine_SecurityMode_SECURITYMODEUNSPECIFIED,
  Routine_SecurityMode_Definer,
  Routine_SecurityMode_Invoker,
  Routine_SecurityMode
  #-}

-- | Determines which statement in the script represents the \"key result\", used to populate the schema and query results of the script job. Default is LAST.
newtype ScriptOptions_KeyResultStatement = ScriptOptions_KeyResultStatement {fromScriptOptions_KeyResultStatement :: Core.Text}
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

-- | Default value.
pattern ScriptOptions_KeyResultStatement_KEYRESULTSTATEMENTKINDUNSPECIFIED :: ScriptOptions_KeyResultStatement
pattern ScriptOptions_KeyResultStatement_KEYRESULTSTATEMENTKINDUNSPECIFIED = ScriptOptions_KeyResultStatement "KEY_RESULT_STATEMENT_KIND_UNSPECIFIED"

-- | The last result determines the key result.
pattern ScriptOptions_KeyResultStatement_Last :: ScriptOptions_KeyResultStatement
pattern ScriptOptions_KeyResultStatement_Last = ScriptOptions_KeyResultStatement "LAST"

-- | The first SELECT statement determines the key result.
pattern ScriptOptions_KeyResultStatement_FIRSTSELECT :: ScriptOptions_KeyResultStatement
pattern ScriptOptions_KeyResultStatement_FIRSTSELECT = ScriptOptions_KeyResultStatement "FIRST_SELECT"

{-# COMPLETE
  ScriptOptions_KeyResultStatement_KEYRESULTSTATEMENTKINDUNSPECIFIED,
  ScriptOptions_KeyResultStatement_Last,
  ScriptOptions_KeyResultStatement_FIRSTSELECT,
  ScriptOptions_KeyResultStatement
  #-}

-- | Whether this child job was a statement or expression.
newtype ScriptStatistics_EvaluationKind = ScriptStatistics_EvaluationKind {fromScriptStatistics_EvaluationKind :: Core.Text}
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

-- | Default value.
pattern ScriptStatistics_EvaluationKind_EVALUATIONKINDUNSPECIFIED :: ScriptStatistics_EvaluationKind
pattern ScriptStatistics_EvaluationKind_EVALUATIONKINDUNSPECIFIED = ScriptStatistics_EvaluationKind "EVALUATION_KIND_UNSPECIFIED"

-- | The statement appears directly in the script.
pattern ScriptStatistics_EvaluationKind_Statement :: ScriptStatistics_EvaluationKind
pattern ScriptStatistics_EvaluationKind_Statement = ScriptStatistics_EvaluationKind "STATEMENT"

-- | The statement evaluates an expression that appears in the script.
pattern ScriptStatistics_EvaluationKind_Expression :: ScriptStatistics_EvaluationKind
pattern ScriptStatistics_EvaluationKind_Expression = ScriptStatistics_EvaluationKind "EXPRESSION"

{-# COMPLETE
  ScriptStatistics_EvaluationKind_EVALUATIONKINDUNSPECIFIED,
  ScriptStatistics_EvaluationKind_Statement,
  ScriptStatistics_EvaluationKind_Expression,
  ScriptStatistics_EvaluationKind
  #-}

-- | Specifies the index usage mode for the query.
newtype SearchStatistics_IndexUsageMode = SearchStatistics_IndexUsageMode {fromSearchStatistics_IndexUsageMode :: Core.Text}
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

-- | Index usage mode not specified.
pattern SearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED :: SearchStatistics_IndexUsageMode
pattern SearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED = SearchStatistics_IndexUsageMode "INDEX_USAGE_MODE_UNSPECIFIED"

-- | No search indexes were used in the search query. See [@indexUnusedReasons@] (\/bigquery\/docs\/reference\/rest\/v2\/Job#IndexUnusedReason) for detailed reasons.
pattern SearchStatistics_IndexUsageMode_Unused :: SearchStatistics_IndexUsageMode
pattern SearchStatistics_IndexUsageMode_Unused = SearchStatistics_IndexUsageMode "UNUSED"

-- | Part of the search query used search indexes. See [@indexUnusedReasons@] (\/bigquery\/docs\/reference\/rest\/v2\/Job#IndexUnusedReason) for why other parts of the query did not use search indexes.
pattern SearchStatistics_IndexUsageMode_PARTIALLYUSED :: SearchStatistics_IndexUsageMode
pattern SearchStatistics_IndexUsageMode_PARTIALLYUSED = SearchStatistics_IndexUsageMode "PARTIALLY_USED"

-- | The entire search query used search indexes.
pattern SearchStatistics_IndexUsageMode_FULLYUSED :: SearchStatistics_IndexUsageMode
pattern SearchStatistics_IndexUsageMode_FULLYUSED = SearchStatistics_IndexUsageMode "FULLY_USED"

{-# COMPLETE
  SearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED,
  SearchStatistics_IndexUsageMode_Unused,
  SearchStatistics_IndexUsageMode_PARTIALLYUSED,
  SearchStatistics_IndexUsageMode_FULLYUSED,
  SearchStatistics_IndexUsageMode
  #-}

-- | Required. The top level type of this field. Can be any GoogleSQL data type (e.g., \"INT64\", \"DATE\", \"ARRAY\").
newtype StandardSqlDataType_TypeKind = StandardSqlDataType_TypeKind {fromStandardSqlDataType_TypeKind :: Core.Text}
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

-- | Invalid type.
pattern StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED = StandardSqlDataType_TypeKind "TYPE_KIND_UNSPECIFIED"

-- | Encoded as a string in decimal format.
pattern StandardSqlDataType_TypeKind_INT64 :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_INT64 = StandardSqlDataType_TypeKind "INT64"

-- | Encoded as a boolean \"false\" or \"true\".
pattern StandardSqlDataType_TypeKind_Bool :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bool = StandardSqlDataType_TypeKind "BOOL"

-- | Encoded as a number, or string \"NaN\", \"Infinity\" or \"-Infinity\".
pattern StandardSqlDataType_TypeKind_FLOAT64 :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_FLOAT64 = StandardSqlDataType_TypeKind "FLOAT64"

-- | Encoded as a string value.
pattern StandardSqlDataType_TypeKind_String :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_String = StandardSqlDataType_TypeKind "STRING"

-- | Encoded as a base64 string per RFC 4648, section 4.
pattern StandardSqlDataType_TypeKind_Bytes :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bytes = StandardSqlDataType_TypeKind "BYTES"

-- | Encoded as an RFC 3339 timestamp with mandatory \"Z\" time zone string: 1985-04-12T23:20:50.52Z
pattern StandardSqlDataType_TypeKind_Timestamp :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Timestamp = StandardSqlDataType_TypeKind "TIMESTAMP"

-- | Encoded as RFC 3339 full-date format string: 1985-04-12
pattern StandardSqlDataType_TypeKind_Date :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Date = StandardSqlDataType_TypeKind "DATE"

-- | Encoded as RFC 3339 partial-time format string: 23:20:50.52
pattern StandardSqlDataType_TypeKind_Time :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Time = StandardSqlDataType_TypeKind "TIME"

-- | Encoded as RFC 3339 full-date \"T\" partial-time: 1985-04-12T23:20:50.52
pattern StandardSqlDataType_TypeKind_Datetime :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Datetime = StandardSqlDataType_TypeKind "DATETIME"

-- | Encoded as fully qualified 3 part: 0-5 15 2:30:45.6
pattern StandardSqlDataType_TypeKind_Interval :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Interval = StandardSqlDataType_TypeKind "INTERVAL"

-- | Encoded as WKT
pattern StandardSqlDataType_TypeKind_Geography :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Geography = StandardSqlDataType_TypeKind "GEOGRAPHY"

-- | Encoded as a decimal string.
pattern StandardSqlDataType_TypeKind_Numeric :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Numeric = StandardSqlDataType_TypeKind "NUMERIC"

-- | Encoded as a decimal string.
pattern StandardSqlDataType_TypeKind_Bignumeric :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bignumeric = StandardSqlDataType_TypeKind "BIGNUMERIC"

-- | Encoded as a string.
pattern StandardSqlDataType_TypeKind_Json :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Json = StandardSqlDataType_TypeKind "JSON"

-- | Encoded as a list with types matching Type.array_type.
pattern StandardSqlDataType_TypeKind_Array :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Array = StandardSqlDataType_TypeKind "ARRAY"

-- | Encoded as a list with fields of type Type.struct_type[i]. List is used because a JSON object cannot have duplicate field names.
pattern StandardSqlDataType_TypeKind_Struct :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Struct = StandardSqlDataType_TypeKind "STRUCT"

-- | Encoded as a pair with types matching range/element/type. Pairs must begin with \"[\", end with \")\", and be separated by \", \".
pattern StandardSqlDataType_TypeKind_Range :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Range = StandardSqlDataType_TypeKind "RANGE"

{-# COMPLETE
  StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED,
  StandardSqlDataType_TypeKind_INT64,
  StandardSqlDataType_TypeKind_Bool,
  StandardSqlDataType_TypeKind_FLOAT64,
  StandardSqlDataType_TypeKind_String,
  StandardSqlDataType_TypeKind_Bytes,
  StandardSqlDataType_TypeKind_Timestamp,
  StandardSqlDataType_TypeKind_Date,
  StandardSqlDataType_TypeKind_Time,
  StandardSqlDataType_TypeKind_Datetime,
  StandardSqlDataType_TypeKind_Interval,
  StandardSqlDataType_TypeKind_Geography,
  StandardSqlDataType_TypeKind_Numeric,
  StandardSqlDataType_TypeKind_Bignumeric,
  StandardSqlDataType_TypeKind_Json,
  StandardSqlDataType_TypeKind_Array,
  StandardSqlDataType_TypeKind_Struct,
  StandardSqlDataType_TypeKind_Range,
  StandardSqlDataType_TypeKind
  #-}

-- | Optional. Defines the default rounding mode specification of new decimal fields (NUMERIC OR BIGNUMERIC) in the table. During table creation or update, if a decimal field is added to this table without an explicit rounding mode specified, then the field inherits the table default rounding mode. Changing this field doesn\'t affect existing fields.
newtype Table_DefaultRoundingMode = Table_DefaultRoundingMode {fromTable_DefaultRoundingMode :: Core.Text}
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

-- | Unspecified will default to using ROUND/HALF/AWAY/FROM/ZERO.
pattern Table_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED :: Table_DefaultRoundingMode
pattern Table_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED = Table_DefaultRoundingMode "ROUNDING_MODE_UNSPECIFIED"

-- | ROUND/HALF/AWAY/FROM/ZERO rounds half values away from zero when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5, 1.6, 1.7, 1.8, 1.9 => 2
pattern Table_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO :: Table_DefaultRoundingMode
pattern Table_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO = Table_DefaultRoundingMode "ROUND_HALF_AWAY_FROM_ZERO"

-- | ROUND/HALF/EVEN rounds half values to the nearest even value when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5 => 2 1.6, 1.7, 1.8, 1.9 => 2 2.5 => 2
pattern Table_DefaultRoundingMode_ROUNDHALFEVEN :: Table_DefaultRoundingMode
pattern Table_DefaultRoundingMode_ROUNDHALFEVEN = Table_DefaultRoundingMode "ROUND_HALF_EVEN"

{-# COMPLETE
  Table_DefaultRoundingMode_ROUNDINGMODEUNSPECIFIED,
  Table_DefaultRoundingMode_ROUNDHALFAWAYFROMZERO,
  Table_DefaultRoundingMode_ROUNDHALFEVEN,
  Table_DefaultRoundingMode
  #-}

-- | Optional. If set, overrides the default managed table type configured in the dataset.
newtype Table_ManagedTableType = Table_ManagedTableType {fromTable_ManagedTableType :: Core.Text}
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

-- | No managed table type specified.
pattern Table_ManagedTableType_MANAGEDTABLETYPEUNSPECIFIED :: Table_ManagedTableType
pattern Table_ManagedTableType_MANAGEDTABLETYPEUNSPECIFIED = Table_ManagedTableType "MANAGED_TABLE_TYPE_UNSPECIFIED"

-- | The managed table is a native BigQuery table.
pattern Table_ManagedTableType_Native :: Table_ManagedTableType
pattern Table_ManagedTableType_Native = Table_ManagedTableType "NATIVE"

-- | The managed table is a BigQuery table for Apache Iceberg.
pattern Table_ManagedTableType_Iceberg :: Table_ManagedTableType
pattern Table_ManagedTableType_Iceberg = Table_ManagedTableType "ICEBERG"

{-# COMPLETE
  Table_ManagedTableType_MANAGEDTABLETYPEUNSPECIFIED,
  Table_ManagedTableType_Native,
  Table_ManagedTableType_Iceberg,
  Table_ManagedTableType
  #-}

-- | Optional. Specifies the rounding mode to be used when storing values of NUMERIC and BIGNUMERIC type.
newtype TableFieldSchema_RoundingMode = TableFieldSchema_RoundingMode {fromTableFieldSchema_RoundingMode :: Core.Text}
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

-- | Unspecified will default to using ROUND/HALF/AWAY/FROM/ZERO.
pattern TableFieldSchema_RoundingMode_ROUNDINGMODEUNSPECIFIED :: TableFieldSchema_RoundingMode
pattern TableFieldSchema_RoundingMode_ROUNDINGMODEUNSPECIFIED = TableFieldSchema_RoundingMode "ROUNDING_MODE_UNSPECIFIED"

-- | ROUND/HALF/AWAY/FROM/ZERO rounds half values away from zero when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5, 1.6, 1.7, 1.8, 1.9 => 2
pattern TableFieldSchema_RoundingMode_ROUNDHALFAWAYFROMZERO :: TableFieldSchema_RoundingMode
pattern TableFieldSchema_RoundingMode_ROUNDHALFAWAYFROMZERO = TableFieldSchema_RoundingMode "ROUND_HALF_AWAY_FROM_ZERO"

-- | ROUND/HALF/EVEN rounds half values to the nearest even value when applying precision and scale upon writing of NUMERIC and BIGNUMERIC values. For Scale: 0 1.1, 1.2, 1.3, 1.4 => 1 1.5 => 2 1.6, 1.7, 1.8, 1.9 => 2 2.5 => 2
pattern TableFieldSchema_RoundingMode_ROUNDHALFEVEN :: TableFieldSchema_RoundingMode
pattern TableFieldSchema_RoundingMode_ROUNDHALFEVEN = TableFieldSchema_RoundingMode "ROUND_HALF_EVEN"

{-# COMPLETE
  TableFieldSchema_RoundingMode_ROUNDINGMODEUNSPECIFIED,
  TableFieldSchema_RoundingMode_ROUNDHALFAWAYFROMZERO,
  TableFieldSchema_RoundingMode_ROUNDHALFEVEN,
  TableFieldSchema_RoundingMode
  #-}

-- | Reason for not using metadata caching for the table.
newtype TableMetadataCacheUsage_UnusedReason = TableMetadataCacheUsage_UnusedReason {fromTableMetadataCacheUsage_UnusedReason :: Core.Text}
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

-- | Unused reasons not specified.
pattern TableMetadataCacheUsage_UnusedReason_UNUSEDREASONUNSPECIFIED :: TableMetadataCacheUsage_UnusedReason
pattern TableMetadataCacheUsage_UnusedReason_UNUSEDREASONUNSPECIFIED = TableMetadataCacheUsage_UnusedReason "UNUSED_REASON_UNSPECIFIED"

-- | Metadata cache was outside the table\'s maxStaleness.
pattern TableMetadataCacheUsage_UnusedReason_EXCEEDEDMAXSTALENESS :: TableMetadataCacheUsage_UnusedReason
pattern TableMetadataCacheUsage_UnusedReason_EXCEEDEDMAXSTALENESS = TableMetadataCacheUsage_UnusedReason "EXCEEDED_MAX_STALENESS"

-- | Metadata caching feature is not enabled. [Update BigLake tables] (\/bigquery\/docs\/create-cloud-storage-table-biglake#update-biglake-tables) to enable the metadata caching.
pattern TableMetadataCacheUsage_UnusedReason_METADATACACHINGNOTENABLED :: TableMetadataCacheUsage_UnusedReason
pattern TableMetadataCacheUsage_UnusedReason_METADATACACHINGNOTENABLED = TableMetadataCacheUsage_UnusedReason "METADATA_CACHING_NOT_ENABLED"

-- | Other unknown reason.
pattern TableMetadataCacheUsage_UnusedReason_OTHERREASON :: TableMetadataCacheUsage_UnusedReason
pattern TableMetadataCacheUsage_UnusedReason_OTHERREASON = TableMetadataCacheUsage_UnusedReason "OTHER_REASON"

{-# COMPLETE
  TableMetadataCacheUsage_UnusedReason_UNUSEDREASONUNSPECIFIED,
  TableMetadataCacheUsage_UnusedReason_EXCEEDEDMAXSTALENESS,
  TableMetadataCacheUsage_UnusedReason_METADATACACHINGNOTENABLED,
  TableMetadataCacheUsage_UnusedReason_OTHERREASON,
  TableMetadataCacheUsage_UnusedReason
  #-}

-- | Optional. Output only. Replication status of configured replication.
newtype TableReplicationInfo_ReplicationStatus = TableReplicationInfo_ReplicationStatus {fromTableReplicationInfo_ReplicationStatus :: Core.Text}
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

-- | Default value.
pattern TableReplicationInfo_ReplicationStatus_REPLICATIONSTATUSUNSPECIFIED :: TableReplicationInfo_ReplicationStatus
pattern TableReplicationInfo_ReplicationStatus_REPLICATIONSTATUSUNSPECIFIED = TableReplicationInfo_ReplicationStatus "REPLICATION_STATUS_UNSPECIFIED"

-- | Replication is Active with no errors.
pattern TableReplicationInfo_ReplicationStatus_Active :: TableReplicationInfo_ReplicationStatus
pattern TableReplicationInfo_ReplicationStatus_Active = TableReplicationInfo_ReplicationStatus "ACTIVE"

-- | Source object is deleted.
pattern TableReplicationInfo_ReplicationStatus_SOURCEDELETED :: TableReplicationInfo_ReplicationStatus
pattern TableReplicationInfo_ReplicationStatus_SOURCEDELETED = TableReplicationInfo_ReplicationStatus "SOURCE_DELETED"

-- | Source revoked replication permissions.
pattern TableReplicationInfo_ReplicationStatus_PERMISSIONDENIED :: TableReplicationInfo_ReplicationStatus
pattern TableReplicationInfo_ReplicationStatus_PERMISSIONDENIED = TableReplicationInfo_ReplicationStatus "PERMISSION_DENIED"

-- | Source configuration doesn’t allow replication.
pattern TableReplicationInfo_ReplicationStatus_UNSUPPORTEDCONFIGURATION :: TableReplicationInfo_ReplicationStatus
pattern TableReplicationInfo_ReplicationStatus_UNSUPPORTEDCONFIGURATION = TableReplicationInfo_ReplicationStatus "UNSUPPORTED_CONFIGURATION"

{-# COMPLETE
  TableReplicationInfo_ReplicationStatus_REPLICATIONSTATUSUNSPECIFIED,
  TableReplicationInfo_ReplicationStatus_Active,
  TableReplicationInfo_ReplicationStatus_SOURCEDELETED,
  TableReplicationInfo_ReplicationStatus_PERMISSIONDENIED,
  TableReplicationInfo_ReplicationStatus_UNSUPPORTEDCONFIGURATION,
  TableReplicationInfo_ReplicationStatus
  #-}

-- | Booster type for boosted tree models.
newtype TrainingOptions_BoosterType = TrainingOptions_BoosterType {fromTrainingOptions_BoosterType :: Core.Text}
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

-- | Unspecified booster type.
pattern TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED = TrainingOptions_BoosterType "BOOSTER_TYPE_UNSPECIFIED"

-- | Gbtree booster.
pattern TrainingOptions_BoosterType_Gbtree :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_Gbtree = TrainingOptions_BoosterType "GBTREE"

-- | Dart booster.
pattern TrainingOptions_BoosterType_Dart :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_Dart = TrainingOptions_BoosterType "DART"

{-# COMPLETE
  TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED,
  TrainingOptions_BoosterType_Gbtree,
  TrainingOptions_BoosterType_Dart,
  TrainingOptions_BoosterType
  #-}

-- | Categorical feature encoding method.
newtype TrainingOptions_CategoryEncodingMethod = TrainingOptions_CategoryEncodingMethod {fromTrainingOptions_CategoryEncodingMethod :: Core.Text}
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

-- | Unspecified encoding method.
pattern TrainingOptions_CategoryEncodingMethod_ENCODINGMETHODUNSPECIFIED :: TrainingOptions_CategoryEncodingMethod
pattern TrainingOptions_CategoryEncodingMethod_ENCODINGMETHODUNSPECIFIED = TrainingOptions_CategoryEncodingMethod "ENCODING_METHOD_UNSPECIFIED"

-- | Applies one-hot encoding.
pattern TrainingOptions_CategoryEncodingMethod_ONEHOTENCODING :: TrainingOptions_CategoryEncodingMethod
pattern TrainingOptions_CategoryEncodingMethod_ONEHOTENCODING = TrainingOptions_CategoryEncodingMethod "ONE_HOT_ENCODING"

-- | Applies label encoding.
pattern TrainingOptions_CategoryEncodingMethod_LABELENCODING :: TrainingOptions_CategoryEncodingMethod
pattern TrainingOptions_CategoryEncodingMethod_LABELENCODING = TrainingOptions_CategoryEncodingMethod "LABEL_ENCODING"

-- | Applies dummy encoding.
pattern TrainingOptions_CategoryEncodingMethod_DUMMYENCODING :: TrainingOptions_CategoryEncodingMethod
pattern TrainingOptions_CategoryEncodingMethod_DUMMYENCODING = TrainingOptions_CategoryEncodingMethod "DUMMY_ENCODING"

{-# COMPLETE
  TrainingOptions_CategoryEncodingMethod_ENCODINGMETHODUNSPECIFIED,
  TrainingOptions_CategoryEncodingMethod_ONEHOTENCODING,
  TrainingOptions_CategoryEncodingMethod_LABELENCODING,
  TrainingOptions_CategoryEncodingMethod_DUMMYENCODING,
  TrainingOptions_CategoryEncodingMethod
  #-}

-- | Enums for color space, used for processing images in Object Table. See more details at https:\/\/www.tensorflow.org\/io\/tutorials\/colorspace.
newtype TrainingOptions_ColorSpace = TrainingOptions_ColorSpace {fromTrainingOptions_ColorSpace :: Core.Text}
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

-- | Unspecified color space
pattern TrainingOptions_ColorSpace_COLORSPACEUNSPECIFIED :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_COLORSPACEUNSPECIFIED = TrainingOptions_ColorSpace "COLOR_SPACE_UNSPECIFIED"

-- | RGB
pattern TrainingOptions_ColorSpace_Rgb :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_Rgb = TrainingOptions_ColorSpace "RGB"

-- | HSV
pattern TrainingOptions_ColorSpace_Hsv :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_Hsv = TrainingOptions_ColorSpace "HSV"

-- | YIQ
pattern TrainingOptions_ColorSpace_Yiq :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_Yiq = TrainingOptions_ColorSpace "YIQ"

-- | YUV
pattern TrainingOptions_ColorSpace_Yuv :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_Yuv = TrainingOptions_ColorSpace "YUV"

-- | GRAYSCALE
pattern TrainingOptions_ColorSpace_Grayscale :: TrainingOptions_ColorSpace
pattern TrainingOptions_ColorSpace_Grayscale = TrainingOptions_ColorSpace "GRAYSCALE"

{-# COMPLETE
  TrainingOptions_ColorSpace_COLORSPACEUNSPECIFIED,
  TrainingOptions_ColorSpace_Rgb,
  TrainingOptions_ColorSpace_Hsv,
  TrainingOptions_ColorSpace_Yiq,
  TrainingOptions_ColorSpace_Yuv,
  TrainingOptions_ColorSpace_Grayscale,
  TrainingOptions_ColorSpace
  #-}

-- | Type of normalization algorithm for boosted tree models using dart booster.
newtype TrainingOptions_DartNormalizeType = TrainingOptions_DartNormalizeType {fromTrainingOptions_DartNormalizeType :: Core.Text}
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

-- | Unspecified dart normalize type.
pattern TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED = TrainingOptions_DartNormalizeType "DART_NORMALIZE_TYPE_UNSPECIFIED"

-- | New trees have the same weight of each of dropped trees.
pattern TrainingOptions_DartNormalizeType_Tree :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_Tree = TrainingOptions_DartNormalizeType "TREE"

-- | New trees have the same weight of sum of dropped trees.
pattern TrainingOptions_DartNormalizeType_Forest :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_Forest = TrainingOptions_DartNormalizeType "FOREST"

{-# COMPLETE
  TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED,
  TrainingOptions_DartNormalizeType_Tree,
  TrainingOptions_DartNormalizeType_Forest,
  TrainingOptions_DartNormalizeType
  #-}

-- | The data frequency of a time series.
newtype TrainingOptions_DataFrequency = TrainingOptions_DataFrequency {fromTrainingOptions_DataFrequency :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED = TrainingOptions_DataFrequency "DATA_FREQUENCY_UNSPECIFIED"

-- | Automatically inferred from timestamps.
pattern TrainingOptions_DataFrequency_AUTOFREQUENCY :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_AUTOFREQUENCY = TrainingOptions_DataFrequency "AUTO_FREQUENCY"

-- | Yearly data.
pattern TrainingOptions_DataFrequency_Yearly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Yearly = TrainingOptions_DataFrequency "YEARLY"

-- | Quarterly data.
pattern TrainingOptions_DataFrequency_Quarterly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Quarterly = TrainingOptions_DataFrequency "QUARTERLY"

-- | Monthly data.
pattern TrainingOptions_DataFrequency_Monthly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Monthly = TrainingOptions_DataFrequency "MONTHLY"

-- | Weekly data.
pattern TrainingOptions_DataFrequency_Weekly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Weekly = TrainingOptions_DataFrequency "WEEKLY"

-- | Daily data.
pattern TrainingOptions_DataFrequency_Daily :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Daily = TrainingOptions_DataFrequency "DAILY"

-- | Hourly data.
pattern TrainingOptions_DataFrequency_Hourly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Hourly = TrainingOptions_DataFrequency "HOURLY"

-- | Per-minute data.
pattern TrainingOptions_DataFrequency_PERMINUTE :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_PERMINUTE = TrainingOptions_DataFrequency "PER_MINUTE"

{-# COMPLETE
  TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED,
  TrainingOptions_DataFrequency_AUTOFREQUENCY,
  TrainingOptions_DataFrequency_Yearly,
  TrainingOptions_DataFrequency_Quarterly,
  TrainingOptions_DataFrequency_Monthly,
  TrainingOptions_DataFrequency_Weekly,
  TrainingOptions_DataFrequency_Daily,
  TrainingOptions_DataFrequency_Hourly,
  TrainingOptions_DataFrequency_PERMINUTE,
  TrainingOptions_DataFrequency
  #-}

-- | The data split type for training and evaluation, e.g. RANDOM.
newtype TrainingOptions_DataSplitMethod = TrainingOptions_DataSplitMethod {fromTrainingOptions_DataSplitMethod :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED = TrainingOptions_DataSplitMethod "DATA_SPLIT_METHOD_UNSPECIFIED"

-- | Splits data randomly.
pattern TrainingOptions_DataSplitMethod_Random :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Random = TrainingOptions_DataSplitMethod "RANDOM"

-- | Splits data with the user provided tags.
pattern TrainingOptions_DataSplitMethod_Custom :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Custom = TrainingOptions_DataSplitMethod "CUSTOM"

-- | Splits data sequentially.
pattern TrainingOptions_DataSplitMethod_Sequential :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Sequential = TrainingOptions_DataSplitMethod "SEQUENTIAL"

-- | Data split will be skipped.
pattern TrainingOptions_DataSplitMethod_NOSPLIT :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_NOSPLIT = TrainingOptions_DataSplitMethod "NO_SPLIT"

-- | Splits data automatically: Uses NO_SPLIT if the data size is small. Otherwise uses RANDOM.
pattern TrainingOptions_DataSplitMethod_AUTOSPLIT :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_AUTOSPLIT = TrainingOptions_DataSplitMethod "AUTO_SPLIT"

{-# COMPLETE
  TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED,
  TrainingOptions_DataSplitMethod_Random,
  TrainingOptions_DataSplitMethod_Custom,
  TrainingOptions_DataSplitMethod_Sequential,
  TrainingOptions_DataSplitMethod_NOSPLIT,
  TrainingOptions_DataSplitMethod_AUTOSPLIT,
  TrainingOptions_DataSplitMethod
  #-}

-- | Distance type for clustering models.
newtype TrainingOptions_DistanceType = TrainingOptions_DistanceType {fromTrainingOptions_DistanceType :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED = TrainingOptions_DistanceType "DISTANCE_TYPE_UNSPECIFIED"

-- | Eculidean distance.
pattern TrainingOptions_DistanceType_Euclidean :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_Euclidean = TrainingOptions_DistanceType "EUCLIDEAN"

-- | Cosine distance.
pattern TrainingOptions_DistanceType_Cosine :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_Cosine = TrainingOptions_DistanceType "COSINE"

{-# COMPLETE
  TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED,
  TrainingOptions_DistanceType_Euclidean,
  TrainingOptions_DistanceType_Cosine,
  TrainingOptions_DistanceType
  #-}

-- | Feedback type that specifies which algorithm to run for matrix factorization.
newtype TrainingOptions_FeedbackType = TrainingOptions_FeedbackType {fromTrainingOptions_FeedbackType :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED = TrainingOptions_FeedbackType "FEEDBACK_TYPE_UNSPECIFIED"

-- | Use weighted-als for implicit feedback problems.
pattern TrainingOptions_FeedbackType_Implicit :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_Implicit = TrainingOptions_FeedbackType "IMPLICIT"

-- | Use nonweighted-als for explicit feedback problems.
pattern TrainingOptions_FeedbackType_Explicit :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_Explicit = TrainingOptions_FeedbackType "EXPLICIT"

{-# COMPLETE
  TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED,
  TrainingOptions_FeedbackType_Implicit,
  TrainingOptions_FeedbackType_Explicit,
  TrainingOptions_FeedbackType
  #-}

-- | The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled.
newtype TrainingOptions_HolidayRegion = TrainingOptions_HolidayRegion {fromTrainingOptions_HolidayRegion :: Core.Text}
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

-- | Holiday region unspecified.
pattern TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED = TrainingOptions_HolidayRegion "HOLIDAY_REGION_UNSPECIFIED"

-- | Global.
pattern TrainingOptions_HolidayRegion_Global :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Global = TrainingOptions_HolidayRegion "GLOBAL"

-- | North America.
pattern TrainingOptions_HolidayRegion_NA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NA = TrainingOptions_HolidayRegion "NA"

-- | Japan and Asia Pacific: Korea, Greater China, India, Australia, and New Zealand.
pattern TrainingOptions_HolidayRegion_Japac :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Japac = TrainingOptions_HolidayRegion "JAPAC"

-- | Europe, the Middle East and Africa.
pattern TrainingOptions_HolidayRegion_Emea :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Emea = TrainingOptions_HolidayRegion "EMEA"

-- | Latin America and the Caribbean.
pattern TrainingOptions_HolidayRegion_Lac :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Lac = TrainingOptions_HolidayRegion "LAC"

-- | United Arab Emirates
pattern TrainingOptions_HolidayRegion_AE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AE = TrainingOptions_HolidayRegion "AE"

-- | Argentina
pattern TrainingOptions_HolidayRegion_AR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AR = TrainingOptions_HolidayRegion "AR"

-- | Austria
pattern TrainingOptions_HolidayRegion_AT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AT = TrainingOptions_HolidayRegion "AT"

-- | Australia
pattern TrainingOptions_HolidayRegion_AU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AU = TrainingOptions_HolidayRegion "AU"

-- | Belgium
pattern TrainingOptions_HolidayRegion_BE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_BE = TrainingOptions_HolidayRegion "BE"

-- | Brazil
pattern TrainingOptions_HolidayRegion_BR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_BR = TrainingOptions_HolidayRegion "BR"

-- | Canada
pattern TrainingOptions_HolidayRegion_CA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CA = TrainingOptions_HolidayRegion "CA"

-- | Switzerland
pattern TrainingOptions_HolidayRegion_CH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CH = TrainingOptions_HolidayRegion "CH"

-- | Chile
pattern TrainingOptions_HolidayRegion_CL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CL = TrainingOptions_HolidayRegion "CL"

-- | China
pattern TrainingOptions_HolidayRegion_CN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CN = TrainingOptions_HolidayRegion "CN"

-- | Colombia
pattern TrainingOptions_HolidayRegion_CO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CO = TrainingOptions_HolidayRegion "CO"

-- | Czechoslovakia
pattern TrainingOptions_HolidayRegion_CS :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CS = TrainingOptions_HolidayRegion "CS"

-- | Czech Republic
pattern TrainingOptions_HolidayRegion_CZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CZ = TrainingOptions_HolidayRegion "CZ"

-- | Germany
pattern TrainingOptions_HolidayRegion_DE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DE = TrainingOptions_HolidayRegion "DE"

-- | Denmark
pattern TrainingOptions_HolidayRegion_DK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DK = TrainingOptions_HolidayRegion "DK"

-- | Algeria
pattern TrainingOptions_HolidayRegion_DZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DZ = TrainingOptions_HolidayRegion "DZ"

-- | Ecuador
pattern TrainingOptions_HolidayRegion_EC :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EC = TrainingOptions_HolidayRegion "EC"

-- | Estonia
pattern TrainingOptions_HolidayRegion_EE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EE = TrainingOptions_HolidayRegion "EE"

-- | Egypt
pattern TrainingOptions_HolidayRegion_EG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EG = TrainingOptions_HolidayRegion "EG"

-- | Spain
pattern TrainingOptions_HolidayRegion_ES :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ES = TrainingOptions_HolidayRegion "ES"

-- | Finland
pattern TrainingOptions_HolidayRegion_FI :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_FI = TrainingOptions_HolidayRegion "FI"

-- | France
pattern TrainingOptions_HolidayRegion_FR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_FR = TrainingOptions_HolidayRegion "FR"

-- | Great Britain (United Kingdom)
pattern TrainingOptions_HolidayRegion_GB :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_GB = TrainingOptions_HolidayRegion "GB"

-- | Greece
pattern TrainingOptions_HolidayRegion_GR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_GR = TrainingOptions_HolidayRegion "GR"

-- | Hong Kong
pattern TrainingOptions_HolidayRegion_HK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HK = TrainingOptions_HolidayRegion "HK"

-- | Hungary
pattern TrainingOptions_HolidayRegion_HU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HU = TrainingOptions_HolidayRegion "HU"

-- | Indonesia
pattern TrainingOptions_HolidayRegion_ID :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ID = TrainingOptions_HolidayRegion "ID"

-- | Ireland
pattern TrainingOptions_HolidayRegion_IE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IE = TrainingOptions_HolidayRegion "IE"

-- | Israel
pattern TrainingOptions_HolidayRegion_IL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IL = TrainingOptions_HolidayRegion "IL"

-- | India
pattern TrainingOptions_HolidayRegion_IN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IN = TrainingOptions_HolidayRegion "IN"

-- | Iran
pattern TrainingOptions_HolidayRegion_IR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IR = TrainingOptions_HolidayRegion "IR"

-- | Italy
pattern TrainingOptions_HolidayRegion_IT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IT = TrainingOptions_HolidayRegion "IT"

-- | Japan
pattern TrainingOptions_HolidayRegion_JP :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_JP = TrainingOptions_HolidayRegion "JP"

-- | Korea (South)
pattern TrainingOptions_HolidayRegion_KR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_KR = TrainingOptions_HolidayRegion "KR"

-- | Latvia
pattern TrainingOptions_HolidayRegion_LV :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_LV = TrainingOptions_HolidayRegion "LV"

-- | Morocco
pattern TrainingOptions_HolidayRegion_MA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MA = TrainingOptions_HolidayRegion "MA"

-- | Mexico
pattern TrainingOptions_HolidayRegion_MX :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MX = TrainingOptions_HolidayRegion "MX"

-- | Malaysia
pattern TrainingOptions_HolidayRegion_MY :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MY = TrainingOptions_HolidayRegion "MY"

-- | Nigeria
pattern TrainingOptions_HolidayRegion_NG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NG = TrainingOptions_HolidayRegion "NG"

-- | Netherlands
pattern TrainingOptions_HolidayRegion_NL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NL = TrainingOptions_HolidayRegion "NL"

-- | Norway
pattern TrainingOptions_HolidayRegion_NO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NO = TrainingOptions_HolidayRegion "NO"

-- | New Zealand
pattern TrainingOptions_HolidayRegion_NZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NZ = TrainingOptions_HolidayRegion "NZ"

-- | Peru
pattern TrainingOptions_HolidayRegion_PE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PE = TrainingOptions_HolidayRegion "PE"

-- | Philippines
pattern TrainingOptions_HolidayRegion_PH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PH = TrainingOptions_HolidayRegion "PH"

-- | Pakistan
pattern TrainingOptions_HolidayRegion_PK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PK = TrainingOptions_HolidayRegion "PK"

-- | Poland
pattern TrainingOptions_HolidayRegion_PL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PL = TrainingOptions_HolidayRegion "PL"

-- | Portugal
pattern TrainingOptions_HolidayRegion_PT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PT = TrainingOptions_HolidayRegion "PT"

-- | Romania
pattern TrainingOptions_HolidayRegion_RO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RO = TrainingOptions_HolidayRegion "RO"

-- | Serbia
pattern TrainingOptions_HolidayRegion_RS :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RS = TrainingOptions_HolidayRegion "RS"

-- | Russian Federation
pattern TrainingOptions_HolidayRegion_RU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RU = TrainingOptions_HolidayRegion "RU"

-- | Saudi Arabia
pattern TrainingOptions_HolidayRegion_SA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SA = TrainingOptions_HolidayRegion "SA"

-- | Sweden
pattern TrainingOptions_HolidayRegion_SE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SE = TrainingOptions_HolidayRegion "SE"

-- | Singapore
pattern TrainingOptions_HolidayRegion_SG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SG = TrainingOptions_HolidayRegion "SG"

-- | Slovenia
pattern TrainingOptions_HolidayRegion_SI :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SI = TrainingOptions_HolidayRegion "SI"

-- | Slovakia
pattern TrainingOptions_HolidayRegion_SK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SK = TrainingOptions_HolidayRegion "SK"

-- | Thailand
pattern TrainingOptions_HolidayRegion_TH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TH = TrainingOptions_HolidayRegion "TH"

-- | Turkey
pattern TrainingOptions_HolidayRegion_TR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TR = TrainingOptions_HolidayRegion "TR"

-- | Taiwan
pattern TrainingOptions_HolidayRegion_TW :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TW = TrainingOptions_HolidayRegion "TW"

-- | Ukraine
pattern TrainingOptions_HolidayRegion_UA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_UA = TrainingOptions_HolidayRegion "UA"

-- | United States
pattern TrainingOptions_HolidayRegion_US :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_US = TrainingOptions_HolidayRegion "US"

-- | Venezuela
pattern TrainingOptions_HolidayRegion_VE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_VE = TrainingOptions_HolidayRegion "VE"

-- | Viet Nam
pattern TrainingOptions_HolidayRegion_VN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_VN = TrainingOptions_HolidayRegion "VN"

-- | South Africa
pattern TrainingOptions_HolidayRegion_ZA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ZA = TrainingOptions_HolidayRegion "ZA"

{-# COMPLETE
  TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED,
  TrainingOptions_HolidayRegion_Global,
  TrainingOptions_HolidayRegion_NA,
  TrainingOptions_HolidayRegion_Japac,
  TrainingOptions_HolidayRegion_Emea,
  TrainingOptions_HolidayRegion_Lac,
  TrainingOptions_HolidayRegion_AE,
  TrainingOptions_HolidayRegion_AR,
  TrainingOptions_HolidayRegion_AT,
  TrainingOptions_HolidayRegion_AU,
  TrainingOptions_HolidayRegion_BE,
  TrainingOptions_HolidayRegion_BR,
  TrainingOptions_HolidayRegion_CA,
  TrainingOptions_HolidayRegion_CH,
  TrainingOptions_HolidayRegion_CL,
  TrainingOptions_HolidayRegion_CN,
  TrainingOptions_HolidayRegion_CO,
  TrainingOptions_HolidayRegion_CS,
  TrainingOptions_HolidayRegion_CZ,
  TrainingOptions_HolidayRegion_DE,
  TrainingOptions_HolidayRegion_DK,
  TrainingOptions_HolidayRegion_DZ,
  TrainingOptions_HolidayRegion_EC,
  TrainingOptions_HolidayRegion_EE,
  TrainingOptions_HolidayRegion_EG,
  TrainingOptions_HolidayRegion_ES,
  TrainingOptions_HolidayRegion_FI,
  TrainingOptions_HolidayRegion_FR,
  TrainingOptions_HolidayRegion_GB,
  TrainingOptions_HolidayRegion_GR,
  TrainingOptions_HolidayRegion_HK,
  TrainingOptions_HolidayRegion_HU,
  TrainingOptions_HolidayRegion_ID,
  TrainingOptions_HolidayRegion_IE,
  TrainingOptions_HolidayRegion_IL,
  TrainingOptions_HolidayRegion_IN,
  TrainingOptions_HolidayRegion_IR,
  TrainingOptions_HolidayRegion_IT,
  TrainingOptions_HolidayRegion_JP,
  TrainingOptions_HolidayRegion_KR,
  TrainingOptions_HolidayRegion_LV,
  TrainingOptions_HolidayRegion_MA,
  TrainingOptions_HolidayRegion_MX,
  TrainingOptions_HolidayRegion_MY,
  TrainingOptions_HolidayRegion_NG,
  TrainingOptions_HolidayRegion_NL,
  TrainingOptions_HolidayRegion_NO,
  TrainingOptions_HolidayRegion_NZ,
  TrainingOptions_HolidayRegion_PE,
  TrainingOptions_HolidayRegion_PH,
  TrainingOptions_HolidayRegion_PK,
  TrainingOptions_HolidayRegion_PL,
  TrainingOptions_HolidayRegion_PT,
  TrainingOptions_HolidayRegion_RO,
  TrainingOptions_HolidayRegion_RS,
  TrainingOptions_HolidayRegion_RU,
  TrainingOptions_HolidayRegion_SA,
  TrainingOptions_HolidayRegion_SE,
  TrainingOptions_HolidayRegion_SG,
  TrainingOptions_HolidayRegion_SI,
  TrainingOptions_HolidayRegion_SK,
  TrainingOptions_HolidayRegion_TH,
  TrainingOptions_HolidayRegion_TR,
  TrainingOptions_HolidayRegion_TW,
  TrainingOptions_HolidayRegion_UA,
  TrainingOptions_HolidayRegion_US,
  TrainingOptions_HolidayRegion_VE,
  TrainingOptions_HolidayRegion_VN,
  TrainingOptions_HolidayRegion_ZA,
  TrainingOptions_HolidayRegion
  #-}

newtype TrainingOptions_HolidayRegionsItem = TrainingOptions_HolidayRegionsItem {fromTrainingOptions_HolidayRegionsItem :: Core.Text}
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

-- | Holiday region unspecified.
pattern TrainingOptions_HolidayRegionsItem_HOLIDAYREGIONUNSPECIFIED :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_HOLIDAYREGIONUNSPECIFIED = TrainingOptions_HolidayRegionsItem "HOLIDAY_REGION_UNSPECIFIED"

-- | Global.
pattern TrainingOptions_HolidayRegionsItem_Global :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_Global = TrainingOptions_HolidayRegionsItem "GLOBAL"

-- | North America.
pattern TrainingOptions_HolidayRegionsItem_NA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_NA = TrainingOptions_HolidayRegionsItem "NA"

-- | Japan and Asia Pacific: Korea, Greater China, India, Australia, and New Zealand.
pattern TrainingOptions_HolidayRegionsItem_Japac :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_Japac = TrainingOptions_HolidayRegionsItem "JAPAC"

-- | Europe, the Middle East and Africa.
pattern TrainingOptions_HolidayRegionsItem_Emea :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_Emea = TrainingOptions_HolidayRegionsItem "EMEA"

-- | Latin America and the Caribbean.
pattern TrainingOptions_HolidayRegionsItem_Lac :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_Lac = TrainingOptions_HolidayRegionsItem "LAC"

-- | United Arab Emirates
pattern TrainingOptions_HolidayRegionsItem_AE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_AE = TrainingOptions_HolidayRegionsItem "AE"

-- | Argentina
pattern TrainingOptions_HolidayRegionsItem_AR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_AR = TrainingOptions_HolidayRegionsItem "AR"

-- | Austria
pattern TrainingOptions_HolidayRegionsItem_AT :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_AT = TrainingOptions_HolidayRegionsItem "AT"

-- | Australia
pattern TrainingOptions_HolidayRegionsItem_AU :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_AU = TrainingOptions_HolidayRegionsItem "AU"

-- | Belgium
pattern TrainingOptions_HolidayRegionsItem_BE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_BE = TrainingOptions_HolidayRegionsItem "BE"

-- | Brazil
pattern TrainingOptions_HolidayRegionsItem_BR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_BR = TrainingOptions_HolidayRegionsItem "BR"

-- | Canada
pattern TrainingOptions_HolidayRegionsItem_CA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CA = TrainingOptions_HolidayRegionsItem "CA"

-- | Switzerland
pattern TrainingOptions_HolidayRegionsItem_CH :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CH = TrainingOptions_HolidayRegionsItem "CH"

-- | Chile
pattern TrainingOptions_HolidayRegionsItem_CL :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CL = TrainingOptions_HolidayRegionsItem "CL"

-- | China
pattern TrainingOptions_HolidayRegionsItem_CN :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CN = TrainingOptions_HolidayRegionsItem "CN"

-- | Colombia
pattern TrainingOptions_HolidayRegionsItem_CO :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CO = TrainingOptions_HolidayRegionsItem "CO"

-- | Czechoslovakia
pattern TrainingOptions_HolidayRegionsItem_CS :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CS = TrainingOptions_HolidayRegionsItem "CS"

-- | Czech Republic
pattern TrainingOptions_HolidayRegionsItem_CZ :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_CZ = TrainingOptions_HolidayRegionsItem "CZ"

-- | Germany
pattern TrainingOptions_HolidayRegionsItem_DE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_DE = TrainingOptions_HolidayRegionsItem "DE"

-- | Denmark
pattern TrainingOptions_HolidayRegionsItem_DK :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_DK = TrainingOptions_HolidayRegionsItem "DK"

-- | Algeria
pattern TrainingOptions_HolidayRegionsItem_DZ :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_DZ = TrainingOptions_HolidayRegionsItem "DZ"

-- | Ecuador
pattern TrainingOptions_HolidayRegionsItem_EC :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_EC = TrainingOptions_HolidayRegionsItem "EC"

-- | Estonia
pattern TrainingOptions_HolidayRegionsItem_EE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_EE = TrainingOptions_HolidayRegionsItem "EE"

-- | Egypt
pattern TrainingOptions_HolidayRegionsItem_EG :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_EG = TrainingOptions_HolidayRegionsItem "EG"

-- | Spain
pattern TrainingOptions_HolidayRegionsItem_ES :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_ES = TrainingOptions_HolidayRegionsItem "ES"

-- | Finland
pattern TrainingOptions_HolidayRegionsItem_FI :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_FI = TrainingOptions_HolidayRegionsItem "FI"

-- | France
pattern TrainingOptions_HolidayRegionsItem_FR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_FR = TrainingOptions_HolidayRegionsItem "FR"

-- | Great Britain (United Kingdom)
pattern TrainingOptions_HolidayRegionsItem_GB :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_GB = TrainingOptions_HolidayRegionsItem "GB"

-- | Greece
pattern TrainingOptions_HolidayRegionsItem_GR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_GR = TrainingOptions_HolidayRegionsItem "GR"

-- | Hong Kong
pattern TrainingOptions_HolidayRegionsItem_HK :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_HK = TrainingOptions_HolidayRegionsItem "HK"

-- | Hungary
pattern TrainingOptions_HolidayRegionsItem_HU :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_HU = TrainingOptions_HolidayRegionsItem "HU"

-- | Indonesia
pattern TrainingOptions_HolidayRegionsItem_ID :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_ID = TrainingOptions_HolidayRegionsItem "ID"

-- | Ireland
pattern TrainingOptions_HolidayRegionsItem_IE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_IE = TrainingOptions_HolidayRegionsItem "IE"

-- | Israel
pattern TrainingOptions_HolidayRegionsItem_IL :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_IL = TrainingOptions_HolidayRegionsItem "IL"

-- | India
pattern TrainingOptions_HolidayRegionsItem_IN :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_IN = TrainingOptions_HolidayRegionsItem "IN"

-- | Iran
pattern TrainingOptions_HolidayRegionsItem_IR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_IR = TrainingOptions_HolidayRegionsItem "IR"

-- | Italy
pattern TrainingOptions_HolidayRegionsItem_IT :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_IT = TrainingOptions_HolidayRegionsItem "IT"

-- | Japan
pattern TrainingOptions_HolidayRegionsItem_JP :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_JP = TrainingOptions_HolidayRegionsItem "JP"

-- | Korea (South)
pattern TrainingOptions_HolidayRegionsItem_KR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_KR = TrainingOptions_HolidayRegionsItem "KR"

-- | Latvia
pattern TrainingOptions_HolidayRegionsItem_LV :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_LV = TrainingOptions_HolidayRegionsItem "LV"

-- | Morocco
pattern TrainingOptions_HolidayRegionsItem_MA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_MA = TrainingOptions_HolidayRegionsItem "MA"

-- | Mexico
pattern TrainingOptions_HolidayRegionsItem_MX :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_MX = TrainingOptions_HolidayRegionsItem "MX"

-- | Malaysia
pattern TrainingOptions_HolidayRegionsItem_MY :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_MY = TrainingOptions_HolidayRegionsItem "MY"

-- | Nigeria
pattern TrainingOptions_HolidayRegionsItem_NG :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_NG = TrainingOptions_HolidayRegionsItem "NG"

-- | Netherlands
pattern TrainingOptions_HolidayRegionsItem_NL :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_NL = TrainingOptions_HolidayRegionsItem "NL"

-- | Norway
pattern TrainingOptions_HolidayRegionsItem_NO :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_NO = TrainingOptions_HolidayRegionsItem "NO"

-- | New Zealand
pattern TrainingOptions_HolidayRegionsItem_NZ :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_NZ = TrainingOptions_HolidayRegionsItem "NZ"

-- | Peru
pattern TrainingOptions_HolidayRegionsItem_PE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_PE = TrainingOptions_HolidayRegionsItem "PE"

-- | Philippines
pattern TrainingOptions_HolidayRegionsItem_PH :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_PH = TrainingOptions_HolidayRegionsItem "PH"

-- | Pakistan
pattern TrainingOptions_HolidayRegionsItem_PK :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_PK = TrainingOptions_HolidayRegionsItem "PK"

-- | Poland
pattern TrainingOptions_HolidayRegionsItem_PL :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_PL = TrainingOptions_HolidayRegionsItem "PL"

-- | Portugal
pattern TrainingOptions_HolidayRegionsItem_PT :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_PT = TrainingOptions_HolidayRegionsItem "PT"

-- | Romania
pattern TrainingOptions_HolidayRegionsItem_RO :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_RO = TrainingOptions_HolidayRegionsItem "RO"

-- | Serbia
pattern TrainingOptions_HolidayRegionsItem_RS :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_RS = TrainingOptions_HolidayRegionsItem "RS"

-- | Russian Federation
pattern TrainingOptions_HolidayRegionsItem_RU :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_RU = TrainingOptions_HolidayRegionsItem "RU"

-- | Saudi Arabia
pattern TrainingOptions_HolidayRegionsItem_SA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_SA = TrainingOptions_HolidayRegionsItem "SA"

-- | Sweden
pattern TrainingOptions_HolidayRegionsItem_SE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_SE = TrainingOptions_HolidayRegionsItem "SE"

-- | Singapore
pattern TrainingOptions_HolidayRegionsItem_SG :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_SG = TrainingOptions_HolidayRegionsItem "SG"

-- | Slovenia
pattern TrainingOptions_HolidayRegionsItem_SI :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_SI = TrainingOptions_HolidayRegionsItem "SI"

-- | Slovakia
pattern TrainingOptions_HolidayRegionsItem_SK :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_SK = TrainingOptions_HolidayRegionsItem "SK"

-- | Thailand
pattern TrainingOptions_HolidayRegionsItem_TH :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_TH = TrainingOptions_HolidayRegionsItem "TH"

-- | Turkey
pattern TrainingOptions_HolidayRegionsItem_TR :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_TR = TrainingOptions_HolidayRegionsItem "TR"

-- | Taiwan
pattern TrainingOptions_HolidayRegionsItem_TW :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_TW = TrainingOptions_HolidayRegionsItem "TW"

-- | Ukraine
pattern TrainingOptions_HolidayRegionsItem_UA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_UA = TrainingOptions_HolidayRegionsItem "UA"

-- | United States
pattern TrainingOptions_HolidayRegionsItem_US :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_US = TrainingOptions_HolidayRegionsItem "US"

-- | Venezuela
pattern TrainingOptions_HolidayRegionsItem_VE :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_VE = TrainingOptions_HolidayRegionsItem "VE"

-- | Viet Nam
pattern TrainingOptions_HolidayRegionsItem_VN :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_VN = TrainingOptions_HolidayRegionsItem "VN"

-- | South Africa
pattern TrainingOptions_HolidayRegionsItem_ZA :: TrainingOptions_HolidayRegionsItem
pattern TrainingOptions_HolidayRegionsItem_ZA = TrainingOptions_HolidayRegionsItem "ZA"

{-# COMPLETE
  TrainingOptions_HolidayRegionsItem_HOLIDAYREGIONUNSPECIFIED,
  TrainingOptions_HolidayRegionsItem_Global,
  TrainingOptions_HolidayRegionsItem_NA,
  TrainingOptions_HolidayRegionsItem_Japac,
  TrainingOptions_HolidayRegionsItem_Emea,
  TrainingOptions_HolidayRegionsItem_Lac,
  TrainingOptions_HolidayRegionsItem_AE,
  TrainingOptions_HolidayRegionsItem_AR,
  TrainingOptions_HolidayRegionsItem_AT,
  TrainingOptions_HolidayRegionsItem_AU,
  TrainingOptions_HolidayRegionsItem_BE,
  TrainingOptions_HolidayRegionsItem_BR,
  TrainingOptions_HolidayRegionsItem_CA,
  TrainingOptions_HolidayRegionsItem_CH,
  TrainingOptions_HolidayRegionsItem_CL,
  TrainingOptions_HolidayRegionsItem_CN,
  TrainingOptions_HolidayRegionsItem_CO,
  TrainingOptions_HolidayRegionsItem_CS,
  TrainingOptions_HolidayRegionsItem_CZ,
  TrainingOptions_HolidayRegionsItem_DE,
  TrainingOptions_HolidayRegionsItem_DK,
  TrainingOptions_HolidayRegionsItem_DZ,
  TrainingOptions_HolidayRegionsItem_EC,
  TrainingOptions_HolidayRegionsItem_EE,
  TrainingOptions_HolidayRegionsItem_EG,
  TrainingOptions_HolidayRegionsItem_ES,
  TrainingOptions_HolidayRegionsItem_FI,
  TrainingOptions_HolidayRegionsItem_FR,
  TrainingOptions_HolidayRegionsItem_GB,
  TrainingOptions_HolidayRegionsItem_GR,
  TrainingOptions_HolidayRegionsItem_HK,
  TrainingOptions_HolidayRegionsItem_HU,
  TrainingOptions_HolidayRegionsItem_ID,
  TrainingOptions_HolidayRegionsItem_IE,
  TrainingOptions_HolidayRegionsItem_IL,
  TrainingOptions_HolidayRegionsItem_IN,
  TrainingOptions_HolidayRegionsItem_IR,
  TrainingOptions_HolidayRegionsItem_IT,
  TrainingOptions_HolidayRegionsItem_JP,
  TrainingOptions_HolidayRegionsItem_KR,
  TrainingOptions_HolidayRegionsItem_LV,
  TrainingOptions_HolidayRegionsItem_MA,
  TrainingOptions_HolidayRegionsItem_MX,
  TrainingOptions_HolidayRegionsItem_MY,
  TrainingOptions_HolidayRegionsItem_NG,
  TrainingOptions_HolidayRegionsItem_NL,
  TrainingOptions_HolidayRegionsItem_NO,
  TrainingOptions_HolidayRegionsItem_NZ,
  TrainingOptions_HolidayRegionsItem_PE,
  TrainingOptions_HolidayRegionsItem_PH,
  TrainingOptions_HolidayRegionsItem_PK,
  TrainingOptions_HolidayRegionsItem_PL,
  TrainingOptions_HolidayRegionsItem_PT,
  TrainingOptions_HolidayRegionsItem_RO,
  TrainingOptions_HolidayRegionsItem_RS,
  TrainingOptions_HolidayRegionsItem_RU,
  TrainingOptions_HolidayRegionsItem_SA,
  TrainingOptions_HolidayRegionsItem_SE,
  TrainingOptions_HolidayRegionsItem_SG,
  TrainingOptions_HolidayRegionsItem_SI,
  TrainingOptions_HolidayRegionsItem_SK,
  TrainingOptions_HolidayRegionsItem_TH,
  TrainingOptions_HolidayRegionsItem_TR,
  TrainingOptions_HolidayRegionsItem_TW,
  TrainingOptions_HolidayRegionsItem_UA,
  TrainingOptions_HolidayRegionsItem_US,
  TrainingOptions_HolidayRegionsItem_VE,
  TrainingOptions_HolidayRegionsItem_VN,
  TrainingOptions_HolidayRegionsItem_ZA,
  TrainingOptions_HolidayRegionsItem
  #-}

newtype TrainingOptions_HparamTuningObjectivesItem = TrainingOptions_HparamTuningObjectivesItem {fromTrainingOptions_HparamTuningObjectivesItem :: Core.Text}
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

-- | Unspecified evaluation metric.
pattern TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED = TrainingOptions_HparamTuningObjectivesItem "HPARAM_TUNING_OBJECTIVE_UNSPECIFIED"

-- | Mean absolute error. mean/absolute/error = AVG(ABS(label - predicted))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_ABSOLUTE_ERROR"

-- | Mean squared error. mean/squared/error = AVG(POW(label - predicted, 2))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_SQUARED_ERROR"

-- | Mean squared log error. mean/squared/log_error = AVG(POW(LN(1 + label) - LN(1 + predicted), 2))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_SQUARED_LOG_ERROR"

-- | Mean absolute error. median/absolute/error = APPROX/QUANTILES(absolute/error, 2)[OFFSET(1)]
pattern TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR = TrainingOptions_HparamTuningObjectivesItem "MEDIAN_ABSOLUTE_ERROR"

-- | R^2 score. This corresponds to r2/score in ML.EVALUATE. r/squared = 1 - SUM(squared_error)\/(COUNT(label)*VAR_POP(label))
pattern TrainingOptions_HparamTuningObjectivesItem_RSQUARED :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_RSQUARED = TrainingOptions_HparamTuningObjectivesItem "R_SQUARED"

-- | Explained variance. explained/variance = 1 - VAR/POP(label/error)\/VAR/POP(label)
pattern TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE = TrainingOptions_HparamTuningObjectivesItem "EXPLAINED_VARIANCE"

-- | Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier.
pattern TrainingOptions_HparamTuningObjectivesItem_Precision :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Precision = TrainingOptions_HparamTuningObjectivesItem "PRECISION"

-- | Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_Recall :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Recall = TrainingOptions_HparamTuningObjectivesItem "RECALL"

-- | Accuracy is the fraction of predictions given the correct label. For multiclass this is a globally micro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_Accuracy :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Accuracy = TrainingOptions_HparamTuningObjectivesItem "ACCURACY"

-- | The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_F1SCORE :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_F1SCORE = TrainingOptions_HparamTuningObjectivesItem "F1_SCORE"

-- | Logorithmic Loss. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_LOGLOSS :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_LOGLOSS = TrainingOptions_HparamTuningObjectivesItem "LOG_LOSS"

-- | Area Under an ROC Curve. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_ROCAUC :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_ROCAUC = TrainingOptions_HparamTuningObjectivesItem "ROC_AUC"

-- | Davies-Bouldin Index.
pattern TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX = TrainingOptions_HparamTuningObjectivesItem "DAVIES_BOULDIN_INDEX"

-- | Mean Average Precision.
pattern TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION = TrainingOptions_HparamTuningObjectivesItem "MEAN_AVERAGE_PRECISION"

-- | Normalized Discounted Cumulative Gain.
pattern TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN = TrainingOptions_HparamTuningObjectivesItem "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN"

-- | Average Rank.
pattern TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK = TrainingOptions_HparamTuningObjectivesItem "AVERAGE_RANK"

{-# COMPLETE
  TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED,
  TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR,
  TrainingOptions_HparamTuningObjectivesItem_RSQUARED,
  TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE,
  TrainingOptions_HparamTuningObjectivesItem_Precision,
  TrainingOptions_HparamTuningObjectivesItem_Recall,
  TrainingOptions_HparamTuningObjectivesItem_Accuracy,
  TrainingOptions_HparamTuningObjectivesItem_F1SCORE,
  TrainingOptions_HparamTuningObjectivesItem_LOGLOSS,
  TrainingOptions_HparamTuningObjectivesItem_ROCAUC,
  TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX,
  TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION,
  TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN,
  TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK,
  TrainingOptions_HparamTuningObjectivesItem
  #-}

-- | The method used to initialize the centroids for kmeans algorithm.
newtype TrainingOptions_KmeansInitializationMethod = TrainingOptions_KmeansInitializationMethod {fromTrainingOptions_KmeansInitializationMethod :: Core.Text}
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

-- | Unspecified initialization method.
pattern TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED = TrainingOptions_KmeansInitializationMethod "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED"

-- | Initializes the centroids randomly.
pattern TrainingOptions_KmeansInitializationMethod_Random :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_Random = TrainingOptions_KmeansInitializationMethod "RANDOM"

-- | Initializes the centroids using data specified in kmeans/initialization/column.
pattern TrainingOptions_KmeansInitializationMethod_Custom :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_Custom = TrainingOptions_KmeansInitializationMethod "CUSTOM"

-- | Initializes with kmeans++.
pattern TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS = TrainingOptions_KmeansInitializationMethod "KMEANS_PLUS_PLUS"

{-# COMPLETE
  TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED,
  TrainingOptions_KmeansInitializationMethod_Random,
  TrainingOptions_KmeansInitializationMethod_Custom,
  TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS,
  TrainingOptions_KmeansInitializationMethod
  #-}

-- | The strategy to determine learn rate for the current iteration.
newtype TrainingOptions_LearnRateStrategy = TrainingOptions_LearnRateStrategy {fromTrainingOptions_LearnRateStrategy :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED = TrainingOptions_LearnRateStrategy "LEARN_RATE_STRATEGY_UNSPECIFIED"

-- | Use line search to determine learning rate.
pattern TrainingOptions_LearnRateStrategy_LINESEARCH :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_LINESEARCH = TrainingOptions_LearnRateStrategy "LINE_SEARCH"

-- | Use a constant learning rate.
pattern TrainingOptions_LearnRateStrategy_Constant :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_Constant = TrainingOptions_LearnRateStrategy "CONSTANT"

{-# COMPLETE
  TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED,
  TrainingOptions_LearnRateStrategy_LINESEARCH,
  TrainingOptions_LearnRateStrategy_Constant,
  TrainingOptions_LearnRateStrategy
  #-}

-- | Type of loss function used during training run.
newtype TrainingOptions_LossType = TrainingOptions_LossType {fromTrainingOptions_LossType :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_LossType_LOSSTYPEUNSPECIFIED :: TrainingOptions_LossType
pattern TrainingOptions_LossType_LOSSTYPEUNSPECIFIED = TrainingOptions_LossType "LOSS_TYPE_UNSPECIFIED"

-- | Mean squared loss, used for linear regression.
pattern TrainingOptions_LossType_MEANSQUAREDLOSS :: TrainingOptions_LossType
pattern TrainingOptions_LossType_MEANSQUAREDLOSS = TrainingOptions_LossType "MEAN_SQUARED_LOSS"

-- | Mean log loss, used for logistic regression.
pattern TrainingOptions_LossType_MEANLOGLOSS :: TrainingOptions_LossType
pattern TrainingOptions_LossType_MEANLOGLOSS = TrainingOptions_LossType "MEAN_LOG_LOSS"

{-# COMPLETE
  TrainingOptions_LossType_LOSSTYPEUNSPECIFIED,
  TrainingOptions_LossType_MEANSQUAREDLOSS,
  TrainingOptions_LossType_MEANLOGLOSS,
  TrainingOptions_LossType
  #-}

-- | The model registry.
newtype TrainingOptions_ModelRegistry = TrainingOptions_ModelRegistry {fromTrainingOptions_ModelRegistry :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_ModelRegistry_MODELREGISTRYUNSPECIFIED :: TrainingOptions_ModelRegistry
pattern TrainingOptions_ModelRegistry_MODELREGISTRYUNSPECIFIED = TrainingOptions_ModelRegistry "MODEL_REGISTRY_UNSPECIFIED"

-- | Vertex AI.
pattern TrainingOptions_ModelRegistry_VERTEXAI :: TrainingOptions_ModelRegistry
pattern TrainingOptions_ModelRegistry_VERTEXAI = TrainingOptions_ModelRegistry "VERTEX_AI"

{-# COMPLETE
  TrainingOptions_ModelRegistry_MODELREGISTRYUNSPECIFIED,
  TrainingOptions_ModelRegistry_VERTEXAI,
  TrainingOptions_ModelRegistry
  #-}

-- | Optimization strategy for training linear regression models.
newtype TrainingOptions_OptimizationStrategy = TrainingOptions_OptimizationStrategy {fromTrainingOptions_OptimizationStrategy :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED = TrainingOptions_OptimizationStrategy "OPTIMIZATION_STRATEGY_UNSPECIFIED"

-- | Uses an iterative batch gradient descent algorithm.
pattern TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT = TrainingOptions_OptimizationStrategy "BATCH_GRADIENT_DESCENT"

-- | Uses a normal equation to solve linear regression problem.
pattern TrainingOptions_OptimizationStrategy_NORMALEQUATION :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_NORMALEQUATION = TrainingOptions_OptimizationStrategy "NORMAL_EQUATION"

{-# COMPLETE
  TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED,
  TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT,
  TrainingOptions_OptimizationStrategy_NORMALEQUATION,
  TrainingOptions_OptimizationStrategy
  #-}

-- | The solver for PCA.
newtype TrainingOptions_PcaSolver = TrainingOptions_PcaSolver {fromTrainingOptions_PcaSolver :: Core.Text}
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

-- | Default value.
pattern TrainingOptions_PcaSolver_Unspecified :: TrainingOptions_PcaSolver
pattern TrainingOptions_PcaSolver_Unspecified = TrainingOptions_PcaSolver "UNSPECIFIED"

-- | Full eigen-decoposition.
pattern TrainingOptions_PcaSolver_Full :: TrainingOptions_PcaSolver
pattern TrainingOptions_PcaSolver_Full = TrainingOptions_PcaSolver "FULL"

-- | Randomized SVD.
pattern TrainingOptions_PcaSolver_Randomized :: TrainingOptions_PcaSolver
pattern TrainingOptions_PcaSolver_Randomized = TrainingOptions_PcaSolver "RANDOMIZED"

-- | Auto.
pattern TrainingOptions_PcaSolver_Auto :: TrainingOptions_PcaSolver
pattern TrainingOptions_PcaSolver_Auto = TrainingOptions_PcaSolver "AUTO"

{-# COMPLETE
  TrainingOptions_PcaSolver_Unspecified,
  TrainingOptions_PcaSolver_Full,
  TrainingOptions_PcaSolver_Randomized,
  TrainingOptions_PcaSolver_Auto,
  TrainingOptions_PcaSolver
  #-}

-- | Tree construction algorithm for boosted tree models.
newtype TrainingOptions_TreeMethod = TrainingOptions_TreeMethod {fromTrainingOptions_TreeMethod :: Core.Text}
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

-- | Unspecified tree method.
pattern TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED = TrainingOptions_TreeMethod "TREE_METHOD_UNSPECIFIED"

-- | Use heuristic to choose the fastest method.
pattern TrainingOptions_TreeMethod_Auto :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Auto = TrainingOptions_TreeMethod "AUTO"

-- | Exact greedy algorithm.
pattern TrainingOptions_TreeMethod_Exact :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Exact = TrainingOptions_TreeMethod "EXACT"

-- | Approximate greedy algorithm using quantile sketch and gradient histogram.
pattern TrainingOptions_TreeMethod_Approx :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Approx = TrainingOptions_TreeMethod "APPROX"

-- | Fast histogram optimized approximate greedy algorithm.
pattern TrainingOptions_TreeMethod_Hist :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Hist = TrainingOptions_TreeMethod "HIST"

{-# COMPLETE
  TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED,
  TrainingOptions_TreeMethod_Auto,
  TrainingOptions_TreeMethod_Exact,
  TrainingOptions_TreeMethod_Approx,
  TrainingOptions_TreeMethod_Hist,
  TrainingOptions_TreeMethod
  #-}

-- | Specifies the index usage mode for the query.
newtype VectorSearchStatistics_IndexUsageMode = VectorSearchStatistics_IndexUsageMode {fromVectorSearchStatistics_IndexUsageMode :: Core.Text}
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

-- | Index usage mode not specified.
pattern VectorSearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED :: VectorSearchStatistics_IndexUsageMode
pattern VectorSearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED = VectorSearchStatistics_IndexUsageMode "INDEX_USAGE_MODE_UNSPECIFIED"

-- | No vector indexes were used in the vector search query. See [@indexUnusedReasons@] (\/bigquery\/docs\/reference\/rest\/v2\/Job#IndexUnusedReason) for detailed reasons.
pattern VectorSearchStatistics_IndexUsageMode_Unused :: VectorSearchStatistics_IndexUsageMode
pattern VectorSearchStatistics_IndexUsageMode_Unused = VectorSearchStatistics_IndexUsageMode "UNUSED"

-- | Part of the vector search query used vector indexes. See [@indexUnusedReasons@] (\/bigquery\/docs\/reference\/rest\/v2\/Job#IndexUnusedReason) for why other parts of the query did not use vector indexes.
pattern VectorSearchStatistics_IndexUsageMode_PARTIALLYUSED :: VectorSearchStatistics_IndexUsageMode
pattern VectorSearchStatistics_IndexUsageMode_PARTIALLYUSED = VectorSearchStatistics_IndexUsageMode "PARTIALLY_USED"

-- | The entire vector search query used vector indexes.
pattern VectorSearchStatistics_IndexUsageMode_FULLYUSED :: VectorSearchStatistics_IndexUsageMode
pattern VectorSearchStatistics_IndexUsageMode_FULLYUSED = VectorSearchStatistics_IndexUsageMode "FULLY_USED"

{-# COMPLETE
  VectorSearchStatistics_IndexUsageMode_INDEXUSAGEMODEUNSPECIFIED,
  VectorSearchStatistics_IndexUsageMode_Unused,
  VectorSearchStatistics_IndexUsageMode_PARTIALLYUSED,
  VectorSearchStatistics_IndexUsageMode_FULLYUSED,
  VectorSearchStatistics_IndexUsageMode
  #-}

-- | Optional. Specifies the view that determines which dataset information is returned. By default, metadata and ACL information are returned.
newtype DatasetsGetDatasetView = DatasetsGetDatasetView {fromDatasetsGetDatasetView :: Core.Text}
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

-- | The default value. Default to the FULL view.
pattern DatasetsGetDatasetView_DATASETVIEWUNSPECIFIED :: DatasetsGetDatasetView
pattern DatasetsGetDatasetView_DATASETVIEWUNSPECIFIED = DatasetsGetDatasetView "DATASET_VIEW_UNSPECIFIED"

-- | Includes metadata information for the dataset, such as location, etag, lastModifiedTime, etc.
pattern DatasetsGetDatasetView_Metadata :: DatasetsGetDatasetView
pattern DatasetsGetDatasetView_Metadata = DatasetsGetDatasetView "METADATA"

-- | Includes ACL information for the dataset, which defines dataset access for one or more entities.
pattern DatasetsGetDatasetView_Acl :: DatasetsGetDatasetView
pattern DatasetsGetDatasetView_Acl = DatasetsGetDatasetView "ACL"

-- | Includes both dataset metadata and ACL information.
pattern DatasetsGetDatasetView_Full :: DatasetsGetDatasetView
pattern DatasetsGetDatasetView_Full = DatasetsGetDatasetView "FULL"

{-# COMPLETE
  DatasetsGetDatasetView_DATASETVIEWUNSPECIFIED,
  DatasetsGetDatasetView_Metadata,
  DatasetsGetDatasetView_Acl,
  DatasetsGetDatasetView_Full,
  DatasetsGetDatasetView
  #-}

-- | Restrict information returned to a set of selected fields
newtype JobsListProjection = JobsListProjection {fromJobsListProjection :: Core.Text}
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

-- | Includes all job data
pattern JobsListProjection_Full :: JobsListProjection
pattern JobsListProjection_Full = JobsListProjection "full"

-- | Does not include the job configuration
pattern JobsListProjection_Minimal :: JobsListProjection
pattern JobsListProjection_Minimal = JobsListProjection "minimal"

{-# COMPLETE
  JobsListProjection_Full,
  JobsListProjection_Minimal,
  JobsListProjection
  #-}

-- | Filter for job state
newtype JobsListStateFilter = JobsListStateFilter {fromJobsListStateFilter :: Core.Text}
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

-- | Finished jobs
pattern JobsListStateFilter_Done :: JobsListStateFilter
pattern JobsListStateFilter_Done = JobsListStateFilter "done"

-- | Pending jobs
pattern JobsListStateFilter_Pending :: JobsListStateFilter
pattern JobsListStateFilter_Pending = JobsListStateFilter "pending"

-- | Running jobs
pattern JobsListStateFilter_Running :: JobsListStateFilter
pattern JobsListStateFilter_Running = JobsListStateFilter "running"

{-# COMPLETE
  JobsListStateFilter_Done,
  JobsListStateFilter_Pending,
  JobsListStateFilter_Running,
  JobsListStateFilter
  #-}

-- | Optional. Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned.
newtype TablesGetView = TablesGetView {fromTablesGetView :: Core.Text}
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

-- | The default value. Default to the STORAGE_STATS view.
pattern TablesGetView_TABLEMETADATAVIEWUNSPECIFIED :: TablesGetView
pattern TablesGetView_TABLEMETADATAVIEWUNSPECIFIED = TablesGetView "TABLE_METADATA_VIEW_UNSPECIFIED"

-- | Includes basic table information including schema and partitioning specification. This view does not include storage statistics such as numRows or numBytes. This view is significantly more efficient and should be used to support high query rates.
pattern TablesGetView_Basic :: TablesGetView
pattern TablesGetView_Basic = TablesGetView "BASIC"

-- | Includes all information in the BASIC view as well as storage statistics (numBytes, numLongTermBytes, numRows and lastModifiedTime).
pattern TablesGetView_STORAGESTATS :: TablesGetView
pattern TablesGetView_STORAGESTATS = TablesGetView "STORAGE_STATS"

-- | Includes all table information, including storage statistics. It returns same information as STORAGE_STATS view, but may contain additional information in the future.
pattern TablesGetView_Full :: TablesGetView
pattern TablesGetView_Full = TablesGetView "FULL"

{-# COMPLETE
  TablesGetView_TABLEMETADATAVIEWUNSPECIFIED,
  TablesGetView_Basic,
  TablesGetView_STORAGESTATS,
  TablesGetView_Full,
  TablesGetView
  #-}
