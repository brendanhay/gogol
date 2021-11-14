{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MachineLearning.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MachineLearning.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The search algorithm specified for the study.
data GoogleCloudMlV1__StudyConfigAlgorithm
    = AlgorithmUnspecified
      -- ^ @ALGORITHM_UNSPECIFIED@
      -- The default algorithm used by the Cloud AI Platform Vizier service.
    | GaussianProcessBandit
      -- ^ @GAUSSIAN_PROCESS_BANDIT@
      -- Gaussian Process Bandit.
    | GridSearch
      -- ^ @GRID_SEARCH@
      -- Simple grid search within the feasible space. To use grid search, all
      -- parameters must be \`INTEGER\`, \`CATEGORICAL\`, or \`DISCRETE\`.
    | RandomSearch
      -- ^ @RANDOM_SEARCH@
      -- Simple random search within the feasible space.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__StudyConfigAlgorithm

instance FromHttpApiData GoogleCloudMlV1__StudyConfigAlgorithm where
    parseQueryParam = \case
        "ALGORITHM_UNSPECIFIED" -> Right AlgorithmUnspecified
        "GAUSSIAN_PROCESS_BANDIT" -> Right GaussianProcessBandit
        "GRID_SEARCH" -> Right GridSearch
        "RANDOM_SEARCH" -> Right RandomSearch
        x -> Left ("Unable to parse GoogleCloudMlV1__StudyConfigAlgorithm from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__StudyConfigAlgorithm where
    toQueryParam = \case
        AlgorithmUnspecified -> "ALGORITHM_UNSPECIFIED"
        GaussianProcessBandit -> "GAUSSIAN_PROCESS_BANDIT"
        GridSearch -> "GRID_SEARCH"
        RandomSearch -> "RANDOM_SEARCH"

instance FromJSON GoogleCloudMlV1__StudyConfigAlgorithm where
    parseJSON = parseJSONText "GoogleCloudMlV1__StudyConfigAlgorithm"

instance ToJSON GoogleCloudMlV1__StudyConfigAlgorithm where
    toJSON = toJSONText

-- | Required. The type of the parameter.
data GoogleCloudMlV1_StudyConfig_ParameterSpecType
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

instance Hashable GoogleCloudMlV1_StudyConfig_ParameterSpecType

instance FromHttpApiData GoogleCloudMlV1_StudyConfig_ParameterSpecType where
    parseQueryParam = \case
        "PARAMETER_TYPE_UNSPECIFIED" -> Right ParameterTypeUnspecified
        "DOUBLE" -> Right Double
        "INTEGER" -> Right Integer
        "CATEGORICAL" -> Right Categorical
        "DISCRETE" -> Right Discrete
        x -> Left ("Unable to parse GoogleCloudMlV1_StudyConfig_ParameterSpecType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1_StudyConfig_ParameterSpecType where
    toQueryParam = \case
        ParameterTypeUnspecified -> "PARAMETER_TYPE_UNSPECIFIED"
        Double -> "DOUBLE"
        Integer -> "INTEGER"
        Categorical -> "CATEGORICAL"
        Discrete -> "DISCRETE"

instance FromJSON GoogleCloudMlV1_StudyConfig_ParameterSpecType where
    parseJSON = parseJSONText "GoogleCloudMlV1_StudyConfig_ParameterSpecType"

instance ToJSON GoogleCloudMlV1_StudyConfig_ParameterSpecType where
    toJSON = toJSONText

-- | Required. The type of the parameter.
data GoogleCloudMlV1__ParameterSpecType
    = GCMVPSTParameterTypeUnspecified
      -- ^ @PARAMETER_TYPE_UNSPECIFIED@
      -- You must specify a valid type. Using this unspecified type will result
      -- in an error.
    | GCMVPSTDouble
      -- ^ @DOUBLE@
      -- Type for real-valued parameters.
    | GCMVPSTInteger
      -- ^ @INTEGER@
      -- Type for integral parameters.
    | GCMVPSTCategorical
      -- ^ @CATEGORICAL@
      -- The parameter is categorical, with a value chosen from the categories
      -- field.
    | GCMVPSTDiscrete
      -- ^ @DISCRETE@
      -- The parameter is real valued, with a fixed set of feasible points. If
      -- \`type==DISCRETE\`, feasible_points must be provided, and
      -- {\`min_value\`, \`max_value\`} will be ignored.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__ParameterSpecType

instance FromHttpApiData GoogleCloudMlV1__ParameterSpecType where
    parseQueryParam = \case
        "PARAMETER_TYPE_UNSPECIFIED" -> Right GCMVPSTParameterTypeUnspecified
        "DOUBLE" -> Right GCMVPSTDouble
        "INTEGER" -> Right GCMVPSTInteger
        "CATEGORICAL" -> Right GCMVPSTCategorical
        "DISCRETE" -> Right GCMVPSTDiscrete
        x -> Left ("Unable to parse GoogleCloudMlV1__ParameterSpecType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__ParameterSpecType where
    toQueryParam = \case
        GCMVPSTParameterTypeUnspecified -> "PARAMETER_TYPE_UNSPECIFIED"
        GCMVPSTDouble -> "DOUBLE"
        GCMVPSTInteger -> "INTEGER"
        GCMVPSTCategorical -> "CATEGORICAL"
        GCMVPSTDiscrete -> "DISCRETE"

instance FromJSON GoogleCloudMlV1__ParameterSpecType where
    parseJSON = parseJSONText "GoogleCloudMlV1__ParameterSpecType"

instance ToJSON GoogleCloudMlV1__ParameterSpecType where
    toJSON = toJSONText

-- | Required. Specifies the machine types, the number of replicas for
-- workers and parameter servers.
data GoogleCloudMlV1__TrainingInputScaleTier
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
    | BasicGpu
      -- ^ @BASIC_GPU@
      -- A single worker instance [with a
      -- GPU](\/ai-platform\/training\/docs\/using-gpus).
    | BasicTpu
      -- ^ @BASIC_TPU@
      -- A single worker instance with a [Cloud
      -- TPU](\/ml-engine\/docs\/tensorflow\/using-tpus).
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

instance Hashable GoogleCloudMlV1__TrainingInputScaleTier

instance FromHttpApiData GoogleCloudMlV1__TrainingInputScaleTier where
    parseQueryParam = \case
        "BASIC" -> Right Basic
        "STANDARD_1" -> Right Standard1
        "PREMIUM_1" -> Right Premium1
        "BASIC_GPU" -> Right BasicGpu
        "BASIC_TPU" -> Right BasicTpu
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse GoogleCloudMlV1__TrainingInputScaleTier from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__TrainingInputScaleTier where
    toQueryParam = \case
        Basic -> "BASIC"
        Standard1 -> "STANDARD_1"
        Premium1 -> "PREMIUM_1"
        BasicGpu -> "BASIC_GPU"
        BasicTpu -> "BASIC_TPU"
        Custom -> "CUSTOM"

instance FromJSON GoogleCloudMlV1__TrainingInputScaleTier where
    parseJSON = parseJSONText "GoogleCloudMlV1__TrainingInputScaleTier"

instance ToJSON GoogleCloudMlV1__TrainingInputScaleTier where
    toJSON = toJSONText

-- | Optional. How the parameter should be scaled to the hypercube. Leave
-- unset for categorical parameters. Some kind of scaling is strongly
-- recommended for real or integral parameters (e.g.,
-- \`UNIT_LINEAR_SCALE\`).
data GoogleCloudMlV1__ParameterSpecScaleType
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

instance Hashable GoogleCloudMlV1__ParameterSpecScaleType

instance FromHttpApiData GoogleCloudMlV1__ParameterSpecScaleType where
    parseQueryParam = \case
        "NONE" -> Right None
        "UNIT_LINEAR_SCALE" -> Right UnitLinearScale
        "UNIT_LOG_SCALE" -> Right UnitLogScale
        "UNIT_REVERSE_LOG_SCALE" -> Right UnitReverseLogScale
        x -> Left ("Unable to parse GoogleCloudMlV1__ParameterSpecScaleType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__ParameterSpecScaleType where
    toQueryParam = \case
        None -> "NONE"
        UnitLinearScale -> "UNIT_LINEAR_SCALE"
        UnitLogScale -> "UNIT_LOG_SCALE"
        UnitReverseLogScale -> "UNIT_REVERSE_LOG_SCALE"

instance FromJSON GoogleCloudMlV1__ParameterSpecScaleType where
    parseJSON = parseJSONText "GoogleCloudMlV1__ParameterSpecScaleType"

instance ToJSON GoogleCloudMlV1__ParameterSpecScaleType where
    toJSON = toJSONText

-- | Optional. The machine learning framework AI Platform uses to train this
-- version of the model. Valid values are \`TENSORFLOW\`, \`SCIKIT_LEARN\`,
-- \`XGBOOST\`. If you do not specify a framework, AI Platform will analyze
-- files in the deployment_uri to determine a framework. If you choose
-- \`SCIKIT_LEARN\` or \`XGBOOST\`, you must also set the runtime version
-- of the model to 1.4 or greater. Do **not** specify a framework if
-- you\'re deploying a [custom prediction
-- routine](\/ai-platform\/prediction\/docs\/custom-prediction-routines) or
-- if you\'re using a [custom
-- container](\/ai-platform\/prediction\/docs\/use-custom-container).
data GoogleCloudMlV1__VersionFramework
    = FrameworkUnspecified
      -- ^ @FRAMEWORK_UNSPECIFIED@
      -- Unspecified framework. Assigns a value based on the file suffix.
    | Tensorflow
      -- ^ @TENSORFLOW@
      -- Tensorflow framework.
    | ScikitLearn
      -- ^ @SCIKIT_LEARN@
      -- Scikit-learn framework.
    | Xgboost
      -- ^ @XGBOOST@
      -- XGBoost framework.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__VersionFramework

instance FromHttpApiData GoogleCloudMlV1__VersionFramework where
    parseQueryParam = \case
        "FRAMEWORK_UNSPECIFIED" -> Right FrameworkUnspecified
        "TENSORFLOW" -> Right Tensorflow
        "SCIKIT_LEARN" -> Right ScikitLearn
        "XGBOOST" -> Right Xgboost
        x -> Left ("Unable to parse GoogleCloudMlV1__VersionFramework from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__VersionFramework where
    toQueryParam = \case
        FrameworkUnspecified -> "FRAMEWORK_UNSPECIFIED"
        Tensorflow -> "TENSORFLOW"
        ScikitLearn -> "SCIKIT_LEARN"
        Xgboost -> "XGBOOST"

instance FromJSON GoogleCloudMlV1__VersionFramework where
    parseJSON = parseJSONText "GoogleCloudMlV1__VersionFramework"

instance ToJSON GoogleCloudMlV1__VersionFramework where
    toJSON = toJSONText

-- | metric name.
data GoogleCloudMlV1__MetricSpecName
    = MetricNameUnspecified
      -- ^ @METRIC_NAME_UNSPECIFIED@
      -- Unspecified MetricName.
    | CPUUsage
      -- ^ @CPU_USAGE@
      -- CPU usage.
    | GpuDutyCycle
      -- ^ @GPU_DUTY_CYCLE@
      -- GPU duty cycle.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__MetricSpecName

instance FromHttpApiData GoogleCloudMlV1__MetricSpecName where
    parseQueryParam = \case
        "METRIC_NAME_UNSPECIFIED" -> Right MetricNameUnspecified
        "CPU_USAGE" -> Right CPUUsage
        "GPU_DUTY_CYCLE" -> Right GpuDutyCycle
        x -> Left ("Unable to parse GoogleCloudMlV1__MetricSpecName from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__MetricSpecName where
    toQueryParam = \case
        MetricNameUnspecified -> "METRIC_NAME_UNSPECIFIED"
        CPUUsage -> "CPU_USAGE"
        GpuDutyCycle -> "GPU_DUTY_CYCLE"

instance FromJSON GoogleCloudMlV1__MetricSpecName where
    parseJSON = parseJSONText "GoogleCloudMlV1__MetricSpecName"

instance ToJSON GoogleCloudMlV1__MetricSpecName where
    toJSON = toJSONText

-- | The state of the study.
data GoogleCloudMlV1__SuggestTrialsResponseStudyState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The study state is unspecified.
    | Active
      -- ^ @ACTIVE@
      -- The study is active.
    | Inactive
      -- ^ @INACTIVE@
      -- The study is stopped due to an internal error.
    | Completed
      -- ^ @COMPLETED@
      -- The study is done when the service exhausts the parameter search space
      -- or max_trial_count is reached.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__SuggestTrialsResponseStudyState

instance FromHttpApiData GoogleCloudMlV1__SuggestTrialsResponseStudyState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ACTIVE" -> Right Active
        "INACTIVE" -> Right Inactive
        "COMPLETED" -> Right Completed
        x -> Left ("Unable to parse GoogleCloudMlV1__SuggestTrialsResponseStudyState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__SuggestTrialsResponseStudyState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Inactive -> "INACTIVE"
        Completed -> "COMPLETED"

instance FromJSON GoogleCloudMlV1__SuggestTrialsResponseStudyState where
    parseJSON = parseJSONText "GoogleCloudMlV1__SuggestTrialsResponseStudyState"

instance ToJSON GoogleCloudMlV1__SuggestTrialsResponseStudyState where
    toJSON = toJSONText

-- | Output only. The state of a version.
data GoogleCloudMlV1__VersionState
    = Unknown
      -- ^ @UNKNOWN@
      -- The version state is unspecified.
    | Ready
      -- ^ @READY@
      -- The version is ready for prediction.
    | Creating
      -- ^ @CREATING@
      -- The version is being created. New UpdateVersion and DeleteVersion
      -- requests will fail if a version is in the CREATING state.
    | Failed
      -- ^ @FAILED@
      -- The version failed to be created, possibly cancelled. \`error_message\`
      -- should contain the details of the failure.
    | Deleting
      -- ^ @DELETING@
      -- The version is being deleted. New UpdateVersion and DeleteVersion
      -- requests will fail if a version is in the DELETING state.
    | Updating
      -- ^ @UPDATING@
      -- The version is being updated. New UpdateVersion and DeleteVersion
      -- requests will fail if a version is in the UPDATING state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__VersionState

instance FromHttpApiData GoogleCloudMlV1__VersionState where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "READY" -> Right Ready
        "CREATING" -> Right Creating
        "FAILED" -> Right Failed
        "DELETING" -> Right Deleting
        "UPDATING" -> Right Updating
        x -> Left ("Unable to parse GoogleCloudMlV1__VersionState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__VersionState where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Ready -> "READY"
        Creating -> "CREATING"
        Failed -> "FAILED"
        Deleting -> "DELETING"
        Updating -> "UPDATING"

instance FromJSON GoogleCloudMlV1__VersionState where
    parseJSON = parseJSONText "GoogleCloudMlV1__VersionState"

instance ToJSON GoogleCloudMlV1__VersionState where
    toJSON = toJSONText

-- | Optional. The search algorithm specified for the hyperparameter tuning
-- job. Uses the default AI Platform hyperparameter tuning algorithm if
-- unspecified.
data GoogleCloudMlV1__HyperparameterSpecAlgorithm
    = GCMVHSAAlgorithmUnspecified
      -- ^ @ALGORITHM_UNSPECIFIED@
      -- The default algorithm used by the hyperparameter tuning service. This is
      -- a Bayesian optimization algorithm.
    | GCMVHSAGridSearch
      -- ^ @GRID_SEARCH@
      -- Simple grid search within the feasible space. To use grid search, all
      -- parameters must be \`INTEGER\`, \`CATEGORICAL\`, or \`DISCRETE\`.
    | GCMVHSARandomSearch
      -- ^ @RANDOM_SEARCH@
      -- Simple random search within the feasible space.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__HyperparameterSpecAlgorithm

instance FromHttpApiData GoogleCloudMlV1__HyperparameterSpecAlgorithm where
    parseQueryParam = \case
        "ALGORITHM_UNSPECIFIED" -> Right GCMVHSAAlgorithmUnspecified
        "GRID_SEARCH" -> Right GCMVHSAGridSearch
        "RANDOM_SEARCH" -> Right GCMVHSARandomSearch
        x -> Left ("Unable to parse GoogleCloudMlV1__HyperparameterSpecAlgorithm from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__HyperparameterSpecAlgorithm where
    toQueryParam = \case
        GCMVHSAAlgorithmUnspecified -> "ALGORITHM_UNSPECIFIED"
        GCMVHSAGridSearch -> "GRID_SEARCH"
        GCMVHSARandomSearch -> "RANDOM_SEARCH"

instance FromJSON GoogleCloudMlV1__HyperparameterSpecAlgorithm where
    parseJSON = parseJSONText "GoogleCloudMlV1__HyperparameterSpecAlgorithm"

instance ToJSON GoogleCloudMlV1__HyperparameterSpecAlgorithm where
    toJSON = toJSONText

data GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem
    = AcceleratorTypeUnspecified
      -- ^ @ACCELERATOR_TYPE_UNSPECIFIED@
      -- Unspecified accelerator type. Default to no GPU.
    | NvidiaTeslaK80
      -- ^ @NVIDIA_TESLA_K80@
      -- Nvidia Tesla K80 GPU.
    | NvidiaTeslaP100
      -- ^ @NVIDIA_TESLA_P100@
      -- Nvidia Tesla P100 GPU.
    | NvidiaTeslaV100
      -- ^ @NVIDIA_TESLA_V100@
      -- Nvidia V100 GPU.
    | NvidiaTeslaP4
      -- ^ @NVIDIA_TESLA_P4@
      -- Nvidia Tesla P4 GPU.
    | NvidiaTeslaT4
      -- ^ @NVIDIA_TESLA_T4@
      -- Nvidia T4 GPU.
    | NvidiaTeslaA100
      -- ^ @NVIDIA_TESLA_A100@
      -- Nvidia A100 GPU.
    | TpuV2
      -- ^ @TPU_V2@
      -- TPU v2.
    | TpuV3
      -- ^ @TPU_V3@
      -- TPU v3.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem

instance FromHttpApiData GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem where
    parseQueryParam = \case
        "ACCELERATOR_TYPE_UNSPECIFIED" -> Right AcceleratorTypeUnspecified
        "NVIDIA_TESLA_K80" -> Right NvidiaTeslaK80
        "NVIDIA_TESLA_P100" -> Right NvidiaTeslaP100
        "NVIDIA_TESLA_V100" -> Right NvidiaTeslaV100
        "NVIDIA_TESLA_P4" -> Right NvidiaTeslaP4
        "NVIDIA_TESLA_T4" -> Right NvidiaTeslaT4
        "NVIDIA_TESLA_A100" -> Right NvidiaTeslaA100
        "TPU_V2" -> Right TpuV2
        "TPU_V3" -> Right TpuV3
        x -> Left ("Unable to parse GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem where
    toQueryParam = \case
        AcceleratorTypeUnspecified -> "ACCELERATOR_TYPE_UNSPECIFIED"
        NvidiaTeslaK80 -> "NVIDIA_TESLA_K80"
        NvidiaTeslaP100 -> "NVIDIA_TESLA_P100"
        NvidiaTeslaV100 -> "NVIDIA_TESLA_V100"
        NvidiaTeslaP4 -> "NVIDIA_TESLA_P4"
        NvidiaTeslaT4 -> "NVIDIA_TESLA_T4"
        NvidiaTeslaA100 -> "NVIDIA_TESLA_A100"
        TpuV2 -> "TPU_V2"
        TpuV3 -> "TPU_V3"

instance FromJSON GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem where
    parseJSON = parseJSONText "GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem"

instance ToJSON GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem where
    toJSON = toJSONText

-- | Output only. The detailed state of a job.
data GoogleCloudMlV1__JobState
    = GCMVJSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The job state is unspecified.
    | GCMVJSQueued
      -- ^ @QUEUED@
      -- The job has been just created and processing has not yet begun.
    | GCMVJSPreparing
      -- ^ @PREPARING@
      -- The service is preparing to run the job.
    | GCMVJSRunning
      -- ^ @RUNNING@
      -- The job is in progress.
    | GCMVJSSucceeded
      -- ^ @SUCCEEDED@
      -- The job completed successfully.
    | GCMVJSFailed
      -- ^ @FAILED@
      -- The job failed. \`error_message\` should contain the details of the
      -- failure.
    | GCMVJSCancelling
      -- ^ @CANCELLING@
      -- The job is being cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
    | GCMVJSCancelled
      -- ^ @CANCELLED@
      -- The job has been cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__JobState

instance FromHttpApiData GoogleCloudMlV1__JobState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCMVJSStateUnspecified
        "QUEUED" -> Right GCMVJSQueued
        "PREPARING" -> Right GCMVJSPreparing
        "RUNNING" -> Right GCMVJSRunning
        "SUCCEEDED" -> Right GCMVJSSucceeded
        "FAILED" -> Right GCMVJSFailed
        "CANCELLING" -> Right GCMVJSCancelling
        "CANCELLED" -> Right GCMVJSCancelled
        x -> Left ("Unable to parse GoogleCloudMlV1__JobState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__JobState where
    toQueryParam = \case
        GCMVJSStateUnspecified -> "STATE_UNSPECIFIED"
        GCMVJSQueued -> "QUEUED"
        GCMVJSPreparing -> "PREPARING"
        GCMVJSRunning -> "RUNNING"
        GCMVJSSucceeded -> "SUCCEEDED"
        GCMVJSFailed -> "FAILED"
        GCMVJSCancelling -> "CANCELLING"
        GCMVJSCancelled -> "CANCELLED"

instance FromJSON GoogleCloudMlV1__JobState where
    parseJSON = parseJSONText "GoogleCloudMlV1__JobState"

instance ToJSON GoogleCloudMlV1__JobState where
    toJSON = toJSONText

-- | Required. The format of the input data files.
data GoogleCloudMlV1__PredictionInputDataFormat
    = DataFormatUnspecified
      -- ^ @DATA_FORMAT_UNSPECIFIED@
      -- Unspecified format.
    | JSON
      -- ^ @JSON@
      -- Each line of the file is a JSON dictionary representing one record.
    | Text
      -- ^ @TEXT@
      -- Deprecated. Use JSON instead.
    | TfRecord
      -- ^ @TF_RECORD@
      -- The source file is a TFRecord file. Currently available only for input
      -- data.
    | TfRecordGzip
      -- ^ @TF_RECORD_GZIP@
      -- The source file is a GZIP-compressed TFRecord file. Currently available
      -- only for input data.
    | CSV
      -- ^ @CSV@
      -- Values are comma-separated rows, with keys in a separate file. Currently
      -- available only for output data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__PredictionInputDataFormat

instance FromHttpApiData GoogleCloudMlV1__PredictionInputDataFormat where
    parseQueryParam = \case
        "DATA_FORMAT_UNSPECIFIED" -> Right DataFormatUnspecified
        "JSON" -> Right JSON
        "TEXT" -> Right Text
        "TF_RECORD" -> Right TfRecord
        "TF_RECORD_GZIP" -> Right TfRecordGzip
        "CSV" -> Right CSV
        x -> Left ("Unable to parse GoogleCloudMlV1__PredictionInputDataFormat from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__PredictionInputDataFormat where
    toQueryParam = \case
        DataFormatUnspecified -> "DATA_FORMAT_UNSPECIFIED"
        JSON -> "JSON"
        Text -> "TEXT"
        TfRecord -> "TF_RECORD"
        TfRecordGzip -> "TF_RECORD_GZIP"
        CSV -> "CSV"

instance FromJSON GoogleCloudMlV1__PredictionInputDataFormat where
    parseJSON = parseJSONText "GoogleCloudMlV1__PredictionInputDataFormat"

instance ToJSON GoogleCloudMlV1__PredictionInputDataFormat where
    toJSON = toJSONText

data GoogleCloudMlV1__CapabilityType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | Training
      -- ^ @TRAINING@
    | BatchPrediction
      -- ^ @BATCH_PREDICTION@
    | OnlinePrediction
      -- ^ @ONLINE_PREDICTION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__CapabilityType

instance FromHttpApiData GoogleCloudMlV1__CapabilityType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "TRAINING" -> Right Training
        "BATCH_PREDICTION" -> Right BatchPrediction
        "ONLINE_PREDICTION" -> Right OnlinePrediction
        x -> Left ("Unable to parse GoogleCloudMlV1__CapabilityType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__CapabilityType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Training -> "TRAINING"
        BatchPrediction -> "BATCH_PREDICTION"
        OnlinePrediction -> "ONLINE_PREDICTION"

instance FromJSON GoogleCloudMlV1__CapabilityType where
    parseJSON = parseJSONText "GoogleCloudMlV1__CapabilityType"

instance ToJSON GoogleCloudMlV1__CapabilityType where
    toJSON = toJSONText

-- | Output only. The detailed state of a study.
data GoogleCloudMlV1__StudyState
    = GCMVSSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The study state is unspecified.
    | GCMVSSActive
      -- ^ @ACTIVE@
      -- The study is active.
    | GCMVSSInactive
      -- ^ @INACTIVE@
      -- The study is stopped due to an internal error.
    | GCMVSSCompleted
      -- ^ @COMPLETED@
      -- The study is done when the service exhausts the parameter search space
      -- or max_trial_count is reached.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__StudyState

instance FromHttpApiData GoogleCloudMlV1__StudyState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCMVSSStateUnspecified
        "ACTIVE" -> Right GCMVSSActive
        "INACTIVE" -> Right GCMVSSInactive
        "COMPLETED" -> Right GCMVSSCompleted
        x -> Left ("Unable to parse GoogleCloudMlV1__StudyState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__StudyState where
    toQueryParam = \case
        GCMVSSStateUnspecified -> "STATE_UNSPECIFIED"
        GCMVSSActive -> "ACTIVE"
        GCMVSSInactive -> "INACTIVE"
        GCMVSSCompleted -> "COMPLETED"

instance FromJSON GoogleCloudMlV1__StudyState where
    parseJSON = parseJSONText "GoogleCloudMlV1__StudyState"

instance ToJSON GoogleCloudMlV1__StudyState where
    toJSON = toJSONText

-- | Optional. Format of the output data files, defaults to JSON.
data GoogleCloudMlV1__PredictionInputOutputDataFormat
    = GCMVPIODFDataFormatUnspecified
      -- ^ @DATA_FORMAT_UNSPECIFIED@
      -- Unspecified format.
    | GCMVPIODFJSON
      -- ^ @JSON@
      -- Each line of the file is a JSON dictionary representing one record.
    | GCMVPIODFText
      -- ^ @TEXT@
      -- Deprecated. Use JSON instead.
    | GCMVPIODFTfRecord
      -- ^ @TF_RECORD@
      -- The source file is a TFRecord file. Currently available only for input
      -- data.
    | GCMVPIODFTfRecordGzip
      -- ^ @TF_RECORD_GZIP@
      -- The source file is a GZIP-compressed TFRecord file. Currently available
      -- only for input data.
    | GCMVPIODFCSV
      -- ^ @CSV@
      -- Values are comma-separated rows, with keys in a separate file. Currently
      -- available only for output data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__PredictionInputOutputDataFormat

instance FromHttpApiData GoogleCloudMlV1__PredictionInputOutputDataFormat where
    parseQueryParam = \case
        "DATA_FORMAT_UNSPECIFIED" -> Right GCMVPIODFDataFormatUnspecified
        "JSON" -> Right GCMVPIODFJSON
        "TEXT" -> Right GCMVPIODFText
        "TF_RECORD" -> Right GCMVPIODFTfRecord
        "TF_RECORD_GZIP" -> Right GCMVPIODFTfRecordGzip
        "CSV" -> Right GCMVPIODFCSV
        x -> Left ("Unable to parse GoogleCloudMlV1__PredictionInputOutputDataFormat from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__PredictionInputOutputDataFormat where
    toQueryParam = \case
        GCMVPIODFDataFormatUnspecified -> "DATA_FORMAT_UNSPECIFIED"
        GCMVPIODFJSON -> "JSON"
        GCMVPIODFText -> "TEXT"
        GCMVPIODFTfRecord -> "TF_RECORD"
        GCMVPIODFTfRecordGzip -> "TF_RECORD_GZIP"
        GCMVPIODFCSV -> "CSV"

instance FromJSON GoogleCloudMlV1__PredictionInputOutputDataFormat where
    parseJSON = parseJSONText "GoogleCloudMlV1__PredictionInputOutputDataFormat"

instance ToJSON GoogleCloudMlV1__PredictionInputOutputDataFormat where
    toJSON = toJSONText

-- | Required. The type of goal to use for tuning. Available types are
-- \`MAXIMIZE\` and \`MINIMIZE\`. Defaults to \`MAXIMIZE\`.
data GoogleCloudMlV1__HyperparameterSpecGoal
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

instance Hashable GoogleCloudMlV1__HyperparameterSpecGoal

instance FromHttpApiData GoogleCloudMlV1__HyperparameterSpecGoal where
    parseQueryParam = \case
        "GOAL_TYPE_UNSPECIFIED" -> Right GoalTypeUnspecified
        "MAXIMIZE" -> Right Maximize
        "MINIMIZE" -> Right Minimize
        x -> Left ("Unable to parse GoogleCloudMlV1__HyperparameterSpecGoal from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__HyperparameterSpecGoal where
    toQueryParam = \case
        GoalTypeUnspecified -> "GOAL_TYPE_UNSPECIFIED"
        Maximize -> "MAXIMIZE"
        Minimize -> "MINIMIZE"

instance FromJSON GoogleCloudMlV1__HyperparameterSpecGoal where
    parseJSON = parseJSONText "GoogleCloudMlV1__HyperparameterSpecGoal"

instance ToJSON GoogleCloudMlV1__HyperparameterSpecGoal where
    toJSON = toJSONText

-- | The log type that this config enables.
data GoogleIAMV1__AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIAMV1__AuditLogConfigLogType

instance FromHttpApiData GoogleIAMV1__AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse GoogleIAMV1__AuditLogConfigLogType from: " <> x)

instance ToHttpApiData GoogleIAMV1__AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON GoogleIAMV1__AuditLogConfigLogType where
    parseJSON = parseJSONText "GoogleIAMV1__AuditLogConfigLogType"

instance ToJSON GoogleIAMV1__AuditLogConfigLogType where
    toJSON = toJSONText

-- | How the parameter should be scaled. Leave unset for categorical
-- parameters.
data GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType
    = GCMVSCPSSTScaleTypeUnspecified
      -- ^ @SCALE_TYPE_UNSPECIFIED@
      -- By default, no scaling is applied.
    | GCMVSCPSSTUnitLinearScale
      -- ^ @UNIT_LINEAR_SCALE@
      -- Scales the feasible space to (0, 1) linearly.
    | GCMVSCPSSTUnitLogScale
      -- ^ @UNIT_LOG_SCALE@
      -- Scales the feasible space logarithmically to (0, 1). The entire feasible
      -- space must be strictly positive.
    | GCMVSCPSSTUnitReverseLogScale
      -- ^ @UNIT_REVERSE_LOG_SCALE@
      -- Scales the feasible space \"reverse\" logarithmically to (0, 1). The
      -- result is that values close to the top of the feasible space are spread
      -- out more than points near the bottom. The entire feasible space must be
      -- strictly positive.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType

instance FromHttpApiData GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType where
    parseQueryParam = \case
        "SCALE_TYPE_UNSPECIFIED" -> Right GCMVSCPSSTScaleTypeUnspecified
        "UNIT_LINEAR_SCALE" -> Right GCMVSCPSSTUnitLinearScale
        "UNIT_LOG_SCALE" -> Right GCMVSCPSSTUnitLogScale
        "UNIT_REVERSE_LOG_SCALE" -> Right GCMVSCPSSTUnitReverseLogScale
        x -> Left ("Unable to parse GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType where
    toQueryParam = \case
        GCMVSCPSSTScaleTypeUnspecified -> "SCALE_TYPE_UNSPECIFIED"
        GCMVSCPSSTUnitLinearScale -> "UNIT_LINEAR_SCALE"
        GCMVSCPSSTUnitLogScale -> "UNIT_LOG_SCALE"
        GCMVSCPSSTUnitReverseLogScale -> "UNIT_REVERSE_LOG_SCALE"

instance FromJSON GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType where
    parseJSON = parseJSONText "GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType"

instance ToJSON GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType where
    toJSON = toJSONText

-- | Required. The optimization goal of the metric.
data GoogleCloudMlV1_StudyConfig_MetricSpecGoal
    = GCMVSCMSGGoalTypeUnspecified
      -- ^ @GOAL_TYPE_UNSPECIFIED@
      -- Goal Type will default to maximize.
    | GCMVSCMSGMaximize
      -- ^ @MAXIMIZE@
      -- Maximize the goal metric.
    | GCMVSCMSGMinimize
      -- ^ @MINIMIZE@
      -- Minimize the goal metric.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1_StudyConfig_MetricSpecGoal

instance FromHttpApiData GoogleCloudMlV1_StudyConfig_MetricSpecGoal where
    parseQueryParam = \case
        "GOAL_TYPE_UNSPECIFIED" -> Right GCMVSCMSGGoalTypeUnspecified
        "MAXIMIZE" -> Right GCMVSCMSGMaximize
        "MINIMIZE" -> Right GCMVSCMSGMinimize
        x -> Left ("Unable to parse GoogleCloudMlV1_StudyConfig_MetricSpecGoal from: " <> x)

instance ToHttpApiData GoogleCloudMlV1_StudyConfig_MetricSpecGoal where
    toQueryParam = \case
        GCMVSCMSGGoalTypeUnspecified -> "GOAL_TYPE_UNSPECIFIED"
        GCMVSCMSGMaximize -> "MAXIMIZE"
        GCMVSCMSGMinimize -> "MINIMIZE"

instance FromJSON GoogleCloudMlV1_StudyConfig_MetricSpecGoal where
    parseJSON = parseJSONText "GoogleCloudMlV1_StudyConfig_MetricSpecGoal"

instance ToJSON GoogleCloudMlV1_StudyConfig_MetricSpecGoal where
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

-- | The operation type.
data GoogleCloudMlV1__OperationMetadataOperationType
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
    | UpdateModel
      -- ^ @UPDATE_MODEL@
      -- An operation to update an existing model.
    | UpdateVersion
      -- ^ @UPDATE_VERSION@
      -- An operation to update an existing version.
    | UpdateConfig
      -- ^ @UPDATE_CONFIG@
      -- An operation to update project configuration.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__OperationMetadataOperationType

instance FromHttpApiData GoogleCloudMlV1__OperationMetadataOperationType where
    parseQueryParam = \case
        "OPERATION_TYPE_UNSPECIFIED" -> Right OperationTypeUnspecified
        "CREATE_VERSION" -> Right CreateVersion
        "DELETE_VERSION" -> Right DeleteVersion
        "DELETE_MODEL" -> Right DeleteModel
        "UPDATE_MODEL" -> Right UpdateModel
        "UPDATE_VERSION" -> Right UpdateVersion
        "UPDATE_CONFIG" -> Right UpdateConfig
        x -> Left ("Unable to parse GoogleCloudMlV1__OperationMetadataOperationType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__OperationMetadataOperationType where
    toQueryParam = \case
        OperationTypeUnspecified -> "OPERATION_TYPE_UNSPECIFIED"
        CreateVersion -> "CREATE_VERSION"
        DeleteVersion -> "DELETE_VERSION"
        DeleteModel -> "DELETE_MODEL"
        UpdateModel -> "UPDATE_MODEL"
        UpdateVersion -> "UPDATE_VERSION"
        UpdateConfig -> "UPDATE_CONFIG"

instance FromJSON GoogleCloudMlV1__OperationMetadataOperationType where
    parseJSON = parseJSONText "GoogleCloudMlV1__OperationMetadataOperationType"

instance ToJSON GoogleCloudMlV1__OperationMetadataOperationType where
    toJSON = toJSONText

-- | The detailed state of a trial.
data GoogleCloudMlV1__TrialState
    = GCMVTSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The trial state is unspecified.
    | GCMVTSRequested
      -- ^ @REQUESTED@
      -- Indicates that a specific trial has been requested, but it has not yet
      -- been suggested by the service.
    | GCMVTSActive
      -- ^ @ACTIVE@
      -- Indicates that the trial has been suggested.
    | GCMVTSCompleted
      -- ^ @COMPLETED@
      -- Indicates that the trial is done, and either has a final_measurement
      -- set, or is marked as trial_infeasible.
    | GCMVTSStopping
      -- ^ @STOPPING@
      -- Indicates that the trial should stop according to the service.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__TrialState

instance FromHttpApiData GoogleCloudMlV1__TrialState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCMVTSStateUnspecified
        "REQUESTED" -> Right GCMVTSRequested
        "ACTIVE" -> Right GCMVTSActive
        "COMPLETED" -> Right GCMVTSCompleted
        "STOPPING" -> Right GCMVTSStopping
        x -> Left ("Unable to parse GoogleCloudMlV1__TrialState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__TrialState where
    toQueryParam = \case
        GCMVTSStateUnspecified -> "STATE_UNSPECIFIED"
        GCMVTSRequested -> "REQUESTED"
        GCMVTSActive -> "ACTIVE"
        GCMVTSCompleted -> "COMPLETED"
        GCMVTSStopping -> "STOPPING"

instance FromJSON GoogleCloudMlV1__TrialState where
    parseJSON = parseJSONText "GoogleCloudMlV1__TrialState"

instance ToJSON GoogleCloudMlV1__TrialState where
    toJSON = toJSONText

-- | The type of accelerator to use.
data GoogleCloudMlV1__AcceleratorConfigType
    = GCMVACTAcceleratorTypeUnspecified
      -- ^ @ACCELERATOR_TYPE_UNSPECIFIED@
      -- Unspecified accelerator type. Default to no GPU.
    | GCMVACTNvidiaTeslaK80
      -- ^ @NVIDIA_TESLA_K80@
      -- Nvidia Tesla K80 GPU.
    | GCMVACTNvidiaTeslaP100
      -- ^ @NVIDIA_TESLA_P100@
      -- Nvidia Tesla P100 GPU.
    | GCMVACTNvidiaTeslaV100
      -- ^ @NVIDIA_TESLA_V100@
      -- Nvidia V100 GPU.
    | GCMVACTNvidiaTeslaP4
      -- ^ @NVIDIA_TESLA_P4@
      -- Nvidia Tesla P4 GPU.
    | GCMVACTNvidiaTeslaT4
      -- ^ @NVIDIA_TESLA_T4@
      -- Nvidia T4 GPU.
    | GCMVACTNvidiaTeslaA100
      -- ^ @NVIDIA_TESLA_A100@
      -- Nvidia A100 GPU.
    | GCMVACTTpuV2
      -- ^ @TPU_V2@
      -- TPU v2.
    | GCMVACTTpuV3
      -- ^ @TPU_V3@
      -- TPU v3.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__AcceleratorConfigType

instance FromHttpApiData GoogleCloudMlV1__AcceleratorConfigType where
    parseQueryParam = \case
        "ACCELERATOR_TYPE_UNSPECIFIED" -> Right GCMVACTAcceleratorTypeUnspecified
        "NVIDIA_TESLA_K80" -> Right GCMVACTNvidiaTeslaK80
        "NVIDIA_TESLA_P100" -> Right GCMVACTNvidiaTeslaP100
        "NVIDIA_TESLA_V100" -> Right GCMVACTNvidiaTeslaV100
        "NVIDIA_TESLA_P4" -> Right GCMVACTNvidiaTeslaP4
        "NVIDIA_TESLA_T4" -> Right GCMVACTNvidiaTeslaT4
        "NVIDIA_TESLA_A100" -> Right GCMVACTNvidiaTeslaA100
        "TPU_V2" -> Right GCMVACTTpuV2
        "TPU_V3" -> Right GCMVACTTpuV3
        x -> Left ("Unable to parse GoogleCloudMlV1__AcceleratorConfigType from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__AcceleratorConfigType where
    toQueryParam = \case
        GCMVACTAcceleratorTypeUnspecified -> "ACCELERATOR_TYPE_UNSPECIFIED"
        GCMVACTNvidiaTeslaK80 -> "NVIDIA_TESLA_K80"
        GCMVACTNvidiaTeslaP100 -> "NVIDIA_TESLA_P100"
        GCMVACTNvidiaTeslaV100 -> "NVIDIA_TESLA_V100"
        GCMVACTNvidiaTeslaP4 -> "NVIDIA_TESLA_P4"
        GCMVACTNvidiaTeslaT4 -> "NVIDIA_TESLA_T4"
        GCMVACTNvidiaTeslaA100 -> "NVIDIA_TESLA_A100"
        GCMVACTTpuV2 -> "TPU_V2"
        GCMVACTTpuV3 -> "TPU_V3"

instance FromJSON GoogleCloudMlV1__AcceleratorConfigType where
    parseJSON = parseJSONText "GoogleCloudMlV1__AcceleratorConfigType"

instance ToJSON GoogleCloudMlV1__AcceleratorConfigType where
    toJSON = toJSONText

-- | Output only. The detailed state of the trial.
data GoogleCloudMlV1__HyperparameterOutputState
    = GCMVHOSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The job state is unspecified.
    | GCMVHOSQueued
      -- ^ @QUEUED@
      -- The job has been just created and processing has not yet begun.
    | GCMVHOSPreparing
      -- ^ @PREPARING@
      -- The service is preparing to run the job.
    | GCMVHOSRunning
      -- ^ @RUNNING@
      -- The job is in progress.
    | GCMVHOSSucceeded
      -- ^ @SUCCEEDED@
      -- The job completed successfully.
    | GCMVHOSFailed
      -- ^ @FAILED@
      -- The job failed. \`error_message\` should contain the details of the
      -- failure.
    | GCMVHOSCancelling
      -- ^ @CANCELLING@
      -- The job is being cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
    | GCMVHOSCancelled
      -- ^ @CANCELLED@
      -- The job has been cancelled. \`error_message\` should describe the reason
      -- for the cancellation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudMlV1__HyperparameterOutputState

instance FromHttpApiData GoogleCloudMlV1__HyperparameterOutputState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCMVHOSStateUnspecified
        "QUEUED" -> Right GCMVHOSQueued
        "PREPARING" -> Right GCMVHOSPreparing
        "RUNNING" -> Right GCMVHOSRunning
        "SUCCEEDED" -> Right GCMVHOSSucceeded
        "FAILED" -> Right GCMVHOSFailed
        "CANCELLING" -> Right GCMVHOSCancelling
        "CANCELLED" -> Right GCMVHOSCancelled
        x -> Left ("Unable to parse GoogleCloudMlV1__HyperparameterOutputState from: " <> x)

instance ToHttpApiData GoogleCloudMlV1__HyperparameterOutputState where
    toQueryParam = \case
        GCMVHOSStateUnspecified -> "STATE_UNSPECIFIED"
        GCMVHOSQueued -> "QUEUED"
        GCMVHOSPreparing -> "PREPARING"
        GCMVHOSRunning -> "RUNNING"
        GCMVHOSSucceeded -> "SUCCEEDED"
        GCMVHOSFailed -> "FAILED"
        GCMVHOSCancelling -> "CANCELLING"
        GCMVHOSCancelled -> "CANCELLED"

instance FromJSON GoogleCloudMlV1__HyperparameterOutputState where
    parseJSON = parseJSONText "GoogleCloudMlV1__HyperparameterOutputState"

instance ToJSON GoogleCloudMlV1__HyperparameterOutputState where
    toJSON = toJSONText
