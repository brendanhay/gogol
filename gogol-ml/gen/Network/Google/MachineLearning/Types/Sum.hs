{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MachineLearning.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MachineLearning.Types.Sum where

import           Network.Google.Prelude

-- | Output only. The detailed state of a job.
data GoogleCloudMlV1beta1__JobState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The job state is unspecified.
    | Queued
      -- ^ @QUEUED@
      -- The job has been just created and processing has not yet begun.
    | Preparing
      -- ^ @PREPARING@
      -- The service is preparing to run the job.
    | Running
      -- ^ @RUNNING@
      -- The job is in progress.
    | Succeeded
      -- ^ @SUCCEEDED@
      -- The job completed successfully.
    | Failed
      -- ^ @FAILED@
      -- The job failed. \`error_message\` should contain the details of the
      -- failure.
    | Cancelling
      -- ^ @CANCELLING@
      -- The job is being cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
    | Cancelled
      -- ^ @CANCELLED@
      -- The job has been cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__JobState

instance FromHttpApiData GoogleCloudMlV1beta1__JobState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "QUEUED" -> Right Queued
        "PREPARING" -> Right Preparing
        "RUNNING" -> Right Running
        "SUCCEEDED" -> Right Succeeded
        "FAILED" -> Right Failed
        "CANCELLING" -> Right Cancelling
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__JobState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__JobState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Queued -> "QUEUED"
        Preparing -> "PREPARING"
        Running -> "RUNNING"
        Succeeded -> "SUCCEEDED"
        Failed -> "FAILED"
        Cancelling -> "CANCELLING"
        Cancelled -> "CANCELLED"

instance FromJSON GoogleCloudMlV1beta1__JobState where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__JobState"

instance ToJSON GoogleCloudMlV1beta1__JobState where
    toJSON = toJSONText

-- | The operation type.
data GoogleCloudMlV1beta1__OperationMetadataOperationType
    = OperationTypeUnspecified
      -- ^ @OPERATION_TYPE_UNSPECIFIED@
      -- Unspecified operation type.
    | CreateVersion
      -- ^ @CREATE_VERSION@
      -- An operation to create a new version.
    | DeleteVersion
      -- ^ @DELETE_VERSION@
      -- An operation to delete an existing version.
    | DeleteModel
      -- ^ @DELETE_MODEL@
      -- An operation to delete an existing model.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__OperationMetadataOperationType

instance FromHttpApiData GoogleCloudMlV1beta1__OperationMetadataOperationType where
    parseQueryParam = \case
        "OPERATION_TYPE_UNSPECIFIED" -> Right OperationTypeUnspecified
        "CREATE_VERSION" -> Right CreateVersion
        "DELETE_VERSION" -> Right DeleteVersion
        "DELETE_MODEL" -> Right DeleteModel
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__OperationMetadataOperationType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__OperationMetadataOperationType where
    toQueryParam = \case
        OperationTypeUnspecified -> "OPERATION_TYPE_UNSPECIFIED"
        CreateVersion -> "CREATE_VERSION"
        DeleteVersion -> "DELETE_VERSION"
        DeleteModel -> "DELETE_MODEL"

instance FromJSON GoogleCloudMlV1beta1__OperationMetadataOperationType where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__OperationMetadataOperationType"

instance ToJSON GoogleCloudMlV1beta1__OperationMetadataOperationType where
    toJSON = toJSONText

-- | Required. The type of the parameter.
data GoogleCloudMlV1beta1__ParameterSpecType
    = ParameterTypeUnspecified
      -- ^ @PARAMETER_TYPE_UNSPECIFIED@
      -- You must specify a valid type. Using this unspecified type will result
      -- in an error.
    | Double
      -- ^ @DOUBLE@
      -- Type for real-valued parameters.
    | Integer
      -- ^ @INTEGER@
      -- Type for integral parameters.
    | Categorical
      -- ^ @CATEGORICAL@
      -- The parameter is categorical, with a value chosen from the categories
      -- field.
    | Discrete
      -- ^ @DISCRETE@
      -- The parameter is real valued, with a fixed set of feasible points. If
      -- \`type==DISCRETE\`, feasible_points must be provided, and
      -- {\`min_value\`, \`max_value\`} will be ignored.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__ParameterSpecType

instance FromHttpApiData GoogleCloudMlV1beta1__ParameterSpecType where
    parseQueryParam = \case
        "PARAMETER_TYPE_UNSPECIFIED" -> Right ParameterTypeUnspecified
        "DOUBLE" -> Right Double
        "INTEGER" -> Right Integer
        "CATEGORICAL" -> Right Categorical
        "DISCRETE" -> Right Discrete
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__ParameterSpecType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__ParameterSpecType where
    toQueryParam = \case
        ParameterTypeUnspecified -> "PARAMETER_TYPE_UNSPECIFIED"
        Double -> "DOUBLE"
        Integer -> "INTEGER"
        Categorical -> "CATEGORICAL"
        Discrete -> "DISCRETE"

instance FromJSON GoogleCloudMlV1beta1__ParameterSpecType where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__ParameterSpecType"

instance ToJSON GoogleCloudMlV1beta1__ParameterSpecType where
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

-- | Required. The type of goal to use for tuning. Available types are
-- \`MAXIMIZE\` and \`MINIMIZE\`. Defaults to \`MAXIMIZE\`.
data GoogleCloudMlV1beta1__HyperparameterSpecGoal
    = GoalTypeUnspecified
      -- ^ @GOAL_TYPE_UNSPECIFIED@
      -- Goal Type will default to maximize.
    | Maximize
      -- ^ @MAXIMIZE@
      -- Maximize the goal metric.
    | Minimize
      -- ^ @MINIMIZE@
      -- Minimize the goal metric.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__HyperparameterSpecGoal

instance FromHttpApiData GoogleCloudMlV1beta1__HyperparameterSpecGoal where
    parseQueryParam = \case
        "GOAL_TYPE_UNSPECIFIED" -> Right GoalTypeUnspecified
        "MAXIMIZE" -> Right Maximize
        "MINIMIZE" -> Right Minimize
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__HyperparameterSpecGoal from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__HyperparameterSpecGoal where
    toQueryParam = \case
        GoalTypeUnspecified -> "GOAL_TYPE_UNSPECIFIED"
        Maximize -> "MAXIMIZE"
        Minimize -> "MINIMIZE"

instance FromJSON GoogleCloudMlV1beta1__HyperparameterSpecGoal where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__HyperparameterSpecGoal"

instance ToJSON GoogleCloudMlV1beta1__HyperparameterSpecGoal where
    toJSON = toJSONText

-- | Required. The format of the input data files.
data GoogleCloudMlV1beta1__PredictionInputDataFormat
    = DataFormatUnspecified
      -- ^ @DATA_FORMAT_UNSPECIFIED@
      -- Unspecified format.
    | Text
      -- ^ @TEXT@
      -- The source file is a text file with instances separated by the new-line
      -- character.
    | TfRecord
      -- ^ @TF_RECORD@
      -- The source file is a TFRecord file.
    | TfRecordGzip
      -- ^ @TF_RECORD_GZIP@
      -- The source file is a GZIP-compressed TFRecord file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__PredictionInputDataFormat

instance FromHttpApiData GoogleCloudMlV1beta1__PredictionInputDataFormat where
    parseQueryParam = \case
        "DATA_FORMAT_UNSPECIFIED" -> Right DataFormatUnspecified
        "TEXT" -> Right Text
        "TF_RECORD" -> Right TfRecord
        "TF_RECORD_GZIP" -> Right TfRecordGzip
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__PredictionInputDataFormat from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__PredictionInputDataFormat where
    toQueryParam = \case
        DataFormatUnspecified -> "DATA_FORMAT_UNSPECIFIED"
        Text -> "TEXT"
        TfRecord -> "TF_RECORD"
        TfRecordGzip -> "TF_RECORD_GZIP"

instance FromJSON GoogleCloudMlV1beta1__PredictionInputDataFormat where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__PredictionInputDataFormat"

instance ToJSON GoogleCloudMlV1beta1__PredictionInputDataFormat where
    toJSON = toJSONText

-- | Optional. How the parameter should be scaled to the hypercube. Leave
-- unset for categorical parameters. Some kind of scaling is strongly
-- recommended for real or integral parameters (e.g.,
-- \`UNIT_LINEAR_SCALE\`).
data GoogleCloudMlV1beta1__ParameterSpecScaleType
    = None
      -- ^ @NONE@
      -- By default, no scaling is applied.
    | UnitLinearScale
      -- ^ @UNIT_LINEAR_SCALE@
      -- Scales the feasible space to (0, 1) linearly.
    | UnitLogScale
      -- ^ @UNIT_LOG_SCALE@
      -- Scales the feasible space logarithmically to (0, 1). The entire feasible
      -- space must be strictly positive.
    | UnitReverseLogScale
      -- ^ @UNIT_REVERSE_LOG_SCALE@
      -- Scales the feasible space \"reverse\" logarithmically to (0, 1). The
      -- result is that values close to the top of the feasible space are spread
      -- out more than points near the bottom. The entire feasible space must be
      -- strictly positive.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__ParameterSpecScaleType

instance FromHttpApiData GoogleCloudMlV1beta1__ParameterSpecScaleType where
    parseQueryParam = \case
        "NONE" -> Right None
        "UNIT_LINEAR_SCALE" -> Right UnitLinearScale
        "UNIT_LOG_SCALE" -> Right UnitLogScale
        "UNIT_REVERSE_LOG_SCALE" -> Right UnitReverseLogScale
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__ParameterSpecScaleType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__ParameterSpecScaleType where
    toQueryParam = \case
        None -> "NONE"
        UnitLinearScale -> "UNIT_LINEAR_SCALE"
        UnitLogScale -> "UNIT_LOG_SCALE"
        UnitReverseLogScale -> "UNIT_REVERSE_LOG_SCALE"

instance FromJSON GoogleCloudMlV1beta1__ParameterSpecScaleType where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__ParameterSpecScaleType"

instance ToJSON GoogleCloudMlV1beta1__ParameterSpecScaleType where
    toJSON = toJSONText

-- | Required. Specifies the machine types, the number of replicas for
-- workers and parameter servers.
data GoogleCloudMlV1beta1__TrainingInputScaleTier
    = Basic
      -- ^ @BASIC@
      -- A single worker instance. This tier is suitable for learning how to use
      -- Cloud ML, and for experimenting with new models using small datasets.
    | Standard1
      -- ^ @STANDARD_1@
      -- Many workers and a few parameter servers.
    | Premium1
      -- ^ @PREMIUM_1@
      -- A large number of workers with many parameter servers.
    | Custom
      -- ^ @CUSTOM@
      -- The CUSTOM tier is not a set tier, but rather enables you to use your
      -- own cluster specification. When you use this tier, set values to
      -- configure your processing cluster according to these guidelines: * You
      -- _must_ set \`TrainingInput.masterType\` to specify the type of machine
      -- to use for your master node. This is the only required setting. * You
      -- _may_ set \`TrainingInput.workerCount\` to specify the number of workers
      -- to use. If you specify one or more workers, you _must_ also set
      -- \`TrainingInput.workerType\` to specify the type of machine to use for
      -- your worker nodes. * You _may_ set
      -- \`TrainingInput.parameterServerCount\` to specify the number of
      -- parameter servers to use. If you specify one or more parameter servers,
      -- you _must_ also set \`TrainingInput.parameterServerType\` to specify the
      -- type of machine to use for your parameter servers. Note that all of your
      -- workers must use the same machine type, which can be different from your
      -- parameter server type and master type. Your parameter servers must
      -- likewise use the same machine type, which can be different from your
      -- worker type and master type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1beta1__TrainingInputScaleTier

instance FromHttpApiData GoogleCloudMlV1beta1__TrainingInputScaleTier where
    parseQueryParam = \case
        "BASIC" -> Right Basic
        "STANDARD_1" -> Right Standard1
        "PREMIUM_1" -> Right Premium1
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse GoogleCloudMlV1beta1__TrainingInputScaleTier from: " <> x)

instance ToHttpApiData GoogleCloudMlV1beta1__TrainingInputScaleTier where
    toQueryParam = \case
        Basic -> "BASIC"
        Standard1 -> "STANDARD_1"
        Premium1 -> "PREMIUM_1"
        Custom -> "CUSTOM"

instance FromJSON GoogleCloudMlV1beta1__TrainingInputScaleTier where
    parseJSON = parseJSONText "GoogleCloudMlV1beta1__TrainingInputScaleTier"

instance ToJSON GoogleCloudMlV1beta1__TrainingInputScaleTier where
    toJSON = toJSONText
