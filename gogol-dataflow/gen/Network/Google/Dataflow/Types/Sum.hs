{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataflow.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataflow.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Counter aggregation kind.
data NameAndKindKind
    = Invalid
      -- ^ @INVALID@
      -- Counter aggregation kind was not set.
    | Sum
      -- ^ @SUM@
      -- Aggregated value is the sum of all contributed values.
    | Max
      -- ^ @MAX@
      -- Aggregated value is the max of all contributed values.
    | Min
      -- ^ @MIN@
      -- Aggregated value is the min of all contributed values.
    | Mean
      -- ^ @MEAN@
      -- Aggregated value is the mean of all contributed values.
    | OR
      -- ^ @OR@
      -- Aggregated value represents the logical \'or\' of all contributed
      -- values.
    | And
      -- ^ @AND@
      -- Aggregated value represents the logical \'and\' of all contributed
      -- values.
    | Set
      -- ^ @SET@
      -- Aggregated value is a set of unique contributed values.
    | Distribution
      -- ^ @DISTRIBUTION@
      -- Aggregated value captures statistics about a distribution.
    | LatestValue
      -- ^ @LATEST_VALUE@
      -- Aggregated value tracks the latest value of a variable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NameAndKindKind

instance FromHttpApiData NameAndKindKind where
    parseQueryParam = \case
        "INVALID" -> Right Invalid
        "SUM" -> Right Sum
        "MAX" -> Right Max
        "MIN" -> Right Min
        "MEAN" -> Right Mean
        "OR" -> Right OR
        "AND" -> Right And
        "SET" -> Right Set
        "DISTRIBUTION" -> Right Distribution
        "LATEST_VALUE" -> Right LatestValue
        x -> Left ("Unable to parse NameAndKindKind from: " <> x)

instance ToHttpApiData NameAndKindKind where
    toQueryParam = \case
        Invalid -> "INVALID"
        Sum -> "SUM"
        Max -> "MAX"
        Min -> "MIN"
        Mean -> "MEAN"
        OR -> "OR"
        And -> "AND"
        Set -> "SET"
        Distribution -> "DISTRIBUTION"
        LatestValue -> "LATEST_VALUE"

instance FromJSON NameAndKindKind where
    parseJSON = parseJSONText "NameAndKindKind"

instance ToJSON NameAndKindKind where
    toJSON = toJSONText

-- | The kind of filter to use.
data ProjectsJobsAggregatedFilter
    = Unknown
      -- ^ @UNKNOWN@
      -- The filter isn\'t specified, or is unknown. This returns all jobs
      -- ordered on descending \`JobUuid\`.
    | All
      -- ^ @ALL@
      -- Returns all running jobs first ordered on creation timestamp, then
      -- returns all terminated jobs ordered on the termination timestamp.
    | Terminated
      -- ^ @TERMINATED@
      -- Filters the jobs that have a terminated state, ordered on the
      -- termination timestamp. Example terminated states: \`JOB_STATE_STOPPED\`,
      -- \`JOB_STATE_UPDATED\`, \`JOB_STATE_DRAINED\`, etc.
    | Active
      -- ^ @ACTIVE@
      -- Filters the jobs that are running ordered on the creation timestamp.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsAggregatedFilter

instance FromHttpApiData ProjectsJobsAggregatedFilter where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "ALL" -> Right All
        "TERMINATED" -> Right Terminated
        "ACTIVE" -> Right Active
        x -> Left ("Unable to parse ProjectsJobsAggregatedFilter from: " <> x)

instance ToHttpApiData ProjectsJobsAggregatedFilter where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        All -> "ALL"
        Terminated -> "TERMINATED"
        Active -> "ACTIVE"

instance FromJSON ProjectsJobsAggregatedFilter where
    parseJSON = parseJSONText "ProjectsJobsAggregatedFilter"

instance ToJSON ProjectsJobsAggregatedFilter where
    toJSON = toJSONText

-- | State of this stage.
data StageSummaryState
    = ExecutionStateUnknown
      -- ^ @EXECUTION_STATE_UNKNOWN@
      -- The component state is unknown or unspecified.
    | ExecutionStateNotStarted
      -- ^ @EXECUTION_STATE_NOT_STARTED@
      -- The component is not yet running.
    | ExecutionStateRunning
      -- ^ @EXECUTION_STATE_RUNNING@
      -- The component is currently running.
    | ExecutionStateSucceeded
      -- ^ @EXECUTION_STATE_SUCCEEDED@
      -- The component succeeded.
    | ExecutionStateFailed
      -- ^ @EXECUTION_STATE_FAILED@
      -- The component failed.
    | ExecutionStateCancelled
      -- ^ @EXECUTION_STATE_CANCELLED@
      -- Execution of the component was cancelled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StageSummaryState

instance FromHttpApiData StageSummaryState where
    parseQueryParam = \case
        "EXECUTION_STATE_UNKNOWN" -> Right ExecutionStateUnknown
        "EXECUTION_STATE_NOT_STARTED" -> Right ExecutionStateNotStarted
        "EXECUTION_STATE_RUNNING" -> Right ExecutionStateRunning
        "EXECUTION_STATE_SUCCEEDED" -> Right ExecutionStateSucceeded
        "EXECUTION_STATE_FAILED" -> Right ExecutionStateFailed
        "EXECUTION_STATE_CANCELLED" -> Right ExecutionStateCancelled
        x -> Left ("Unable to parse StageSummaryState from: " <> x)

instance ToHttpApiData StageSummaryState where
    toQueryParam = \case
        ExecutionStateUnknown -> "EXECUTION_STATE_UNKNOWN"
        ExecutionStateNotStarted -> "EXECUTION_STATE_NOT_STARTED"
        ExecutionStateRunning -> "EXECUTION_STATE_RUNNING"
        ExecutionStateSucceeded -> "EXECUTION_STATE_SUCCEEDED"
        ExecutionStateFailed -> "EXECUTION_STATE_FAILED"
        ExecutionStateCancelled -> "EXECUTION_STATE_CANCELLED"

instance FromJSON StageSummaryState where
    parseJSON = parseJSONText "StageSummaryState"

instance ToJSON StageSummaryState where
    toJSON = toJSONText

-- | The type of Cloud Dataflow job.
data JobType
    = JobTypeUnknown
      -- ^ @JOB_TYPE_UNKNOWN@
      -- The type of the job is unspecified, or unknown.
    | JobTypeBatch
      -- ^ @JOB_TYPE_BATCH@
      -- A batch job with a well-defined end point: data is read, data is
      -- processed, data is written, and the job is done.
    | JobTypeStreaming
      -- ^ @JOB_TYPE_STREAMING@
      -- A continuously streaming job with no end: data is read, processed, and
      -- written continuously.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobType

instance FromHttpApiData JobType where
    parseQueryParam = \case
        "JOB_TYPE_UNKNOWN" -> Right JobTypeUnknown
        "JOB_TYPE_BATCH" -> Right JobTypeBatch
        "JOB_TYPE_STREAMING" -> Right JobTypeStreaming
        x -> Left ("Unable to parse JobType from: " <> x)

instance ToHttpApiData JobType where
    toQueryParam = \case
        JobTypeUnknown -> "JOB_TYPE_UNKNOWN"
        JobTypeBatch -> "JOB_TYPE_BATCH"
        JobTypeStreaming -> "JOB_TYPE_STREAMING"

instance FromJSON JobType where
    parseJSON = parseJSONText "JobType"

instance ToJSON JobType where
    toJSON = toJSONText

-- | Configuration for VM IPs.
data FlexTemplateRuntimeEnvironmentIPConfiguration
    = WorkerIPUnspecified
      -- ^ @WORKER_IP_UNSPECIFIED@
      -- The configuration is unknown, or unspecified.
    | WorkerIPPublic
      -- ^ @WORKER_IP_PUBLIC@
      -- Workers should have public IP addresses.
    | WorkerIPPrivate
      -- ^ @WORKER_IP_PRIVATE@
      -- Workers should have private IP addresses.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FlexTemplateRuntimeEnvironmentIPConfiguration

instance FromHttpApiData FlexTemplateRuntimeEnvironmentIPConfiguration where
    parseQueryParam = \case
        "WORKER_IP_UNSPECIFIED" -> Right WorkerIPUnspecified
        "WORKER_IP_PUBLIC" -> Right WorkerIPPublic
        "WORKER_IP_PRIVATE" -> Right WorkerIPPrivate
        x -> Left ("Unable to parse FlexTemplateRuntimeEnvironmentIPConfiguration from: " <> x)

instance ToHttpApiData FlexTemplateRuntimeEnvironmentIPConfiguration where
    toQueryParam = \case
        WorkerIPUnspecified -> "WORKER_IP_UNSPECIFIED"
        WorkerIPPublic -> "WORKER_IP_PUBLIC"
        WorkerIPPrivate -> "WORKER_IP_PRIVATE"

instance FromJSON FlexTemplateRuntimeEnvironmentIPConfiguration where
    parseJSON = parseJSONText "FlexTemplateRuntimeEnvironmentIPConfiguration"

instance ToJSON FlexTemplateRuntimeEnvironmentIPConfiguration where
    toJSON = toJSONText

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other
-- JobViews.
data ProjectsJobsAggregatedView
    = JobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | JobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | JobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | JobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsAggregatedView

instance FromHttpApiData ProjectsJobsAggregatedView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right JobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right JobViewSummary
        "JOB_VIEW_ALL" -> Right JobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right JobViewDescription
        x -> Left ("Unable to parse ProjectsJobsAggregatedView from: " <> x)

instance ToHttpApiData ProjectsJobsAggregatedView where
    toQueryParam = \case
        JobViewUnknown -> "JOB_VIEW_UNKNOWN"
        JobViewSummary -> "JOB_VIEW_SUMMARY"
        JobViewAll -> "JOB_VIEW_ALL"
        JobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsJobsAggregatedView where
    parseJSON = parseJSONText "ProjectsJobsAggregatedView"

instance ToJSON ProjectsJobsAggregatedView where
    toJSON = toJSONText

-- | Sets the policy for determining when to turndown worker pool. Allowed
-- values are: \`TEARDOWN_ALWAYS\`, \`TEARDOWN_ON_SUCCESS\`, and
-- \`TEARDOWN_NEVER\`. \`TEARDOWN_ALWAYS\` means workers are always torn
-- down regardless of whether the job succeeds. \`TEARDOWN_ON_SUCCESS\`
-- means workers are torn down if the job succeeds. \`TEARDOWN_NEVER\`
-- means the workers are never torn down. If the workers are not torn down
-- by the service, they will continue to run and use Google Compute Engine
-- VM resources in the user\'s project until they are explicitly terminated
-- by the user. Because of this, Google recommends using the
-- \`TEARDOWN_ALWAYS\` policy except for small, manually supervised test
-- jobs. If unknown or unspecified, the service will attempt to choose a
-- reasonable default.
data WorkerPoolTeardownPolicy
    = TeardownPolicyUnknown
      -- ^ @TEARDOWN_POLICY_UNKNOWN@
      -- The teardown policy isn\'t specified, or is unknown.
    | TeardownAlways
      -- ^ @TEARDOWN_ALWAYS@
      -- Always teardown the resource.
    | TeardownOnSuccess
      -- ^ @TEARDOWN_ON_SUCCESS@
      -- Teardown the resource on success. This is useful for debugging failures.
    | TeardownNever
      -- ^ @TEARDOWN_NEVER@
      -- Never teardown the resource. This is useful for debugging and
      -- development.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkerPoolTeardownPolicy

instance FromHttpApiData WorkerPoolTeardownPolicy where
    parseQueryParam = \case
        "TEARDOWN_POLICY_UNKNOWN" -> Right TeardownPolicyUnknown
        "TEARDOWN_ALWAYS" -> Right TeardownAlways
        "TEARDOWN_ON_SUCCESS" -> Right TeardownOnSuccess
        "TEARDOWN_NEVER" -> Right TeardownNever
        x -> Left ("Unable to parse WorkerPoolTeardownPolicy from: " <> x)

instance ToHttpApiData WorkerPoolTeardownPolicy where
    toQueryParam = \case
        TeardownPolicyUnknown -> "TEARDOWN_POLICY_UNKNOWN"
        TeardownAlways -> "TEARDOWN_ALWAYS"
        TeardownOnSuccess -> "TEARDOWN_ON_SUCCESS"
        TeardownNever -> "TEARDOWN_NEVER"

instance FromJSON WorkerPoolTeardownPolicy where
    parseJSON = parseJSONText "WorkerPoolTeardownPolicy"

instance ToJSON WorkerPoolTeardownPolicy where
    toJSON = toJSONText

-- | Set FlexRS goal for the job.
-- https:\/\/cloud.google.com\/dataflow\/docs\/guides\/flexrs
data FlexTemplateRuntimeEnvironmentFlexrsGoal
    = FlexrsUnspecified
      -- ^ @FLEXRS_UNSPECIFIED@
      -- Run in the default mode.
    | FlexrsSpeedOptimized
      -- ^ @FLEXRS_SPEED_OPTIMIZED@
      -- Optimize for lower execution time.
    | FlexrsCostOptimized
      -- ^ @FLEXRS_COST_OPTIMIZED@
      -- Optimize for lower cost.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FlexTemplateRuntimeEnvironmentFlexrsGoal

instance FromHttpApiData FlexTemplateRuntimeEnvironmentFlexrsGoal where
    parseQueryParam = \case
        "FLEXRS_UNSPECIFIED" -> Right FlexrsUnspecified
        "FLEXRS_SPEED_OPTIMIZED" -> Right FlexrsSpeedOptimized
        "FLEXRS_COST_OPTIMIZED" -> Right FlexrsCostOptimized
        x -> Left ("Unable to parse FlexTemplateRuntimeEnvironmentFlexrsGoal from: " <> x)

instance ToHttpApiData FlexTemplateRuntimeEnvironmentFlexrsGoal where
    toQueryParam = \case
        FlexrsUnspecified -> "FLEXRS_UNSPECIFIED"
        FlexrsSpeedOptimized -> "FLEXRS_SPEED_OPTIMIZED"
        FlexrsCostOptimized -> "FLEXRS_COST_OPTIMIZED"

instance FromJSON FlexTemplateRuntimeEnvironmentFlexrsGoal where
    parseJSON = parseJSONText "FlexTemplateRuntimeEnvironmentFlexrsGoal"

instance ToJSON FlexTemplateRuntimeEnvironmentFlexrsGoal where
    toJSON = toJSONText

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other
-- JobViews.
data ProjectsJobsListView
    = PJLVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PJLVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PJLVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PJLVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsListView

instance FromHttpApiData ProjectsJobsListView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PJLVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PJLVJobViewSummary
        "JOB_VIEW_ALL" -> Right PJLVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PJLVJobViewDescription
        x -> Left ("Unable to parse ProjectsJobsListView from: " <> x)

instance ToHttpApiData ProjectsJobsListView where
    toQueryParam = \case
        PJLVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PJLVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PJLVJobViewAll -> "JOB_VIEW_ALL"
        PJLVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsJobsListView where
    parseJSON = parseJSONText "ProjectsJobsListView"

instance ToJSON ProjectsJobsListView where
    toJSON = toJSONText

-- | Template Type.
data GetTemplateResponseTemplateType
    = GTRTTUnknown
      -- ^ @UNKNOWN@
      -- Unknown Template Type.
    | GTRTTLegacy
      -- ^ @LEGACY@
      -- Legacy Template.
    | GTRTTFlex
      -- ^ @FLEX@
      -- Flex Template.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetTemplateResponseTemplateType

instance FromHttpApiData GetTemplateResponseTemplateType where
    parseQueryParam = \case
        "UNKNOWN" -> Right GTRTTUnknown
        "LEGACY" -> Right GTRTTLegacy
        "FLEX" -> Right GTRTTFlex
        x -> Left ("Unable to parse GetTemplateResponseTemplateType from: " <> x)

instance ToHttpApiData GetTemplateResponseTemplateType where
    toQueryParam = \case
        GTRTTUnknown -> "UNKNOWN"
        GTRTTLegacy -> "LEGACY"
        GTRTTFlex -> "FLEX"

instance FromJSON GetTemplateResponseTemplateType where
    parseJSON = parseJSONText "GetTemplateResponseTemplateType"

instance ToJSON GetTemplateResponseTemplateType where
    toJSON = toJSONText

-- | Which Flexible Resource Scheduling mode to run in.
data EnvironmentFlexResourceSchedulingGoal
    = EFRSGFlexrsUnspecified
      -- ^ @FLEXRS_UNSPECIFIED@
      -- Run in the default mode.
    | EFRSGFlexrsSpeedOptimized
      -- ^ @FLEXRS_SPEED_OPTIMIZED@
      -- Optimize for lower execution time.
    | EFRSGFlexrsCostOptimized
      -- ^ @FLEXRS_COST_OPTIMIZED@
      -- Optimize for lower cost.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentFlexResourceSchedulingGoal

instance FromHttpApiData EnvironmentFlexResourceSchedulingGoal where
    parseQueryParam = \case
        "FLEXRS_UNSPECIFIED" -> Right EFRSGFlexrsUnspecified
        "FLEXRS_SPEED_OPTIMIZED" -> Right EFRSGFlexrsSpeedOptimized
        "FLEXRS_COST_OPTIMIZED" -> Right EFRSGFlexrsCostOptimized
        x -> Left ("Unable to parse EnvironmentFlexResourceSchedulingGoal from: " <> x)

instance ToHttpApiData EnvironmentFlexResourceSchedulingGoal where
    toQueryParam = \case
        EFRSGFlexrsUnspecified -> "FLEXRS_UNSPECIFIED"
        EFRSGFlexrsSpeedOptimized -> "FLEXRS_SPEED_OPTIMIZED"
        EFRSGFlexrsCostOptimized -> "FLEXRS_COST_OPTIMIZED"

instance FromJSON EnvironmentFlexResourceSchedulingGoal where
    parseJSON = parseJSONText "EnvironmentFlexResourceSchedulingGoal"

instance ToJSON EnvironmentFlexResourceSchedulingGoal where
    toJSON = toJSONText

-- | The algorithm to use for autoscaling.
data AutoscalingSettingsAlgorithm
    = AutoscalingAlgorithmUnknown
      -- ^ @AUTOSCALING_ALGORITHM_UNKNOWN@
      -- The algorithm is unknown, or unspecified.
    | AutoscalingAlgorithmNone
      -- ^ @AUTOSCALING_ALGORITHM_NONE@
      -- Disable autoscaling.
    | AutoscalingAlgorithmBasic
      -- ^ @AUTOSCALING_ALGORITHM_BASIC@
      -- Increase worker count over time to reduce job execution time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalingSettingsAlgorithm

instance FromHttpApiData AutoscalingSettingsAlgorithm where
    parseQueryParam = \case
        "AUTOSCALING_ALGORITHM_UNKNOWN" -> Right AutoscalingAlgorithmUnknown
        "AUTOSCALING_ALGORITHM_NONE" -> Right AutoscalingAlgorithmNone
        "AUTOSCALING_ALGORITHM_BASIC" -> Right AutoscalingAlgorithmBasic
        x -> Left ("Unable to parse AutoscalingSettingsAlgorithm from: " <> x)

instance ToHttpApiData AutoscalingSettingsAlgorithm where
    toQueryParam = \case
        AutoscalingAlgorithmUnknown -> "AUTOSCALING_ALGORITHM_UNKNOWN"
        AutoscalingAlgorithmNone -> "AUTOSCALING_ALGORITHM_NONE"
        AutoscalingAlgorithmBasic -> "AUTOSCALING_ALGORITHM_BASIC"

instance FromJSON AutoscalingSettingsAlgorithm where
    parseJSON = parseJSONText "AutoscalingSettingsAlgorithm"

instance ToJSON AutoscalingSettingsAlgorithm where
    toJSON = toJSONText

-- | Type of transform.
data TransformSummaryKind
    = UnknownKind
      -- ^ @UNKNOWN_KIND@
      -- Unrecognized transform type.
    | ParDoKind
      -- ^ @PAR_DO_KIND@
      -- ParDo transform.
    | GroupByKeyKind
      -- ^ @GROUP_BY_KEY_KIND@
      -- Group By Key transform.
    | FlattenKind
      -- ^ @FLATTEN_KIND@
      -- Flatten transform.
    | ReadKind
      -- ^ @READ_KIND@
      -- Read transform.
    | WriteKind
      -- ^ @WRITE_KIND@
      -- Write transform.
    | ConstantKind
      -- ^ @CONSTANT_KIND@
      -- Constructs from a constant value, such as with Create.of.
    | SingletonKind
      -- ^ @SINGLETON_KIND@
      -- Creates a Singleton view of a collection.
    | ShuffleKind
      -- ^ @SHUFFLE_KIND@
      -- Opening or closing a shuffle session, often as part of a GroupByKey.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransformSummaryKind

instance FromHttpApiData TransformSummaryKind where
    parseQueryParam = \case
        "UNKNOWN_KIND" -> Right UnknownKind
        "PAR_DO_KIND" -> Right ParDoKind
        "GROUP_BY_KEY_KIND" -> Right GroupByKeyKind
        "FLATTEN_KIND" -> Right FlattenKind
        "READ_KIND" -> Right ReadKind
        "WRITE_KIND" -> Right WriteKind
        "CONSTANT_KIND" -> Right ConstantKind
        "SINGLETON_KIND" -> Right SingletonKind
        "SHUFFLE_KIND" -> Right ShuffleKind
        x -> Left ("Unable to parse TransformSummaryKind from: " <> x)

instance ToHttpApiData TransformSummaryKind where
    toQueryParam = \case
        UnknownKind -> "UNKNOWN_KIND"
        ParDoKind -> "PAR_DO_KIND"
        GroupByKeyKind -> "GROUP_BY_KEY_KIND"
        FlattenKind -> "FLATTEN_KIND"
        ReadKind -> "READ_KIND"
        WriteKind -> "WRITE_KIND"
        ConstantKind -> "CONSTANT_KIND"
        SingletonKind -> "SINGLETON_KIND"
        ShuffleKind -> "SHUFFLE_KIND"

instance FromJSON TransformSummaryKind where
    parseJSON = parseJSONText "TransformSummaryKind"

instance ToJSON TransformSummaryKind where
    toJSON = toJSONText

-- | The kind of filter to use.
data ProjectsJobsListFilter
    = PJLFUnknown
      -- ^ @UNKNOWN@
      -- The filter isn\'t specified, or is unknown. This returns all jobs
      -- ordered on descending \`JobUuid\`.
    | PJLFAll
      -- ^ @ALL@
      -- Returns all running jobs first ordered on creation timestamp, then
      -- returns all terminated jobs ordered on the termination timestamp.
    | PJLFTerminated
      -- ^ @TERMINATED@
      -- Filters the jobs that have a terminated state, ordered on the
      -- termination timestamp. Example terminated states: \`JOB_STATE_STOPPED\`,
      -- \`JOB_STATE_UPDATED\`, \`JOB_STATE_DRAINED\`, etc.
    | PJLFActive
      -- ^ @ACTIVE@
      -- Filters the jobs that are running ordered on the creation timestamp.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsListFilter

instance FromHttpApiData ProjectsJobsListFilter where
    parseQueryParam = \case
        "UNKNOWN" -> Right PJLFUnknown
        "ALL" -> Right PJLFAll
        "TERMINATED" -> Right PJLFTerminated
        "ACTIVE" -> Right PJLFActive
        x -> Left ("Unable to parse ProjectsJobsListFilter from: " <> x)

instance ToHttpApiData ProjectsJobsListFilter where
    toQueryParam = \case
        PJLFUnknown -> "UNKNOWN"
        PJLFAll -> "ALL"
        PJLFTerminated -> "TERMINATED"
        PJLFActive -> "ACTIVE"

instance FromJSON ProjectsJobsListFilter where
    parseJSON = parseJSONText "ProjectsJobsListFilter"

instance ToJSON ProjectsJobsListFilter where
    toJSON = toJSONText

-- | Optional. The type of the parameter. Used for selecting input picker.
data ParameterMetadataParamType
    = Default
      -- ^ @DEFAULT@
      -- Default input type.
    | Text
      -- ^ @TEXT@
      -- The parameter specifies generic text input.
    | GcsReadBucket
      -- ^ @GCS_READ_BUCKET@
      -- The parameter specifies a Cloud Storage Bucket to read from.
    | GcsWriteBucket
      -- ^ @GCS_WRITE_BUCKET@
      -- The parameter specifies a Cloud Storage Bucket to write to.
    | GcsReadFile
      -- ^ @GCS_READ_FILE@
      -- The parameter specifies a Cloud Storage file path to read from.
    | GcsWriteFile
      -- ^ @GCS_WRITE_FILE@
      -- The parameter specifies a Cloud Storage file path to write to.
    | GcsReadFolder
      -- ^ @GCS_READ_FOLDER@
      -- The parameter specifies a Cloud Storage folder path to read from.
    | GcsWriteFolder
      -- ^ @GCS_WRITE_FOLDER@
      -- The parameter specifies a Cloud Storage folder to write to.
    | PubsubTopic
      -- ^ @PUBSUB_TOPIC@
      -- The parameter specifies a Pub\/Sub Topic.
    | PubsubSubscription
      -- ^ @PUBSUB_SUBSCRIPTION@
      -- The parameter specifies a Pub\/Sub Subscription.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParameterMetadataParamType

instance FromHttpApiData ParameterMetadataParamType where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "TEXT" -> Right Text
        "GCS_READ_BUCKET" -> Right GcsReadBucket
        "GCS_WRITE_BUCKET" -> Right GcsWriteBucket
        "GCS_READ_FILE" -> Right GcsReadFile
        "GCS_WRITE_FILE" -> Right GcsWriteFile
        "GCS_READ_FOLDER" -> Right GcsReadFolder
        "GCS_WRITE_FOLDER" -> Right GcsWriteFolder
        "PUBSUB_TOPIC" -> Right PubsubTopic
        "PUBSUB_SUBSCRIPTION" -> Right PubsubSubscription
        x -> Left ("Unable to parse ParameterMetadataParamType from: " <> x)

instance ToHttpApiData ParameterMetadataParamType where
    toQueryParam = \case
        Default -> "DEFAULT"
        Text -> "TEXT"
        GcsReadBucket -> "GCS_READ_BUCKET"
        GcsWriteBucket -> "GCS_WRITE_BUCKET"
        GcsReadFile -> "GCS_READ_FILE"
        GcsWriteFile -> "GCS_WRITE_FILE"
        GcsReadFolder -> "GCS_READ_FOLDER"
        GcsWriteFolder -> "GCS_WRITE_FOLDER"
        PubsubTopic -> "PUBSUB_TOPIC"
        PubsubSubscription -> "PUBSUB_SUBSCRIPTION"

instance FromJSON ParameterMetadataParamType where
    parseJSON = parseJSONText "ParameterMetadataParamType"

instance ToJSON ParameterMetadataParamType where
    toJSON = toJSONText

-- | Portion of this counter, either key or value.
data CounterStructuredNamePortion
    = CSNPAll
      -- ^ @ALL@
      -- Counter portion has not been set.
    | CSNPKey
      -- ^ @KEY@
      -- Counter reports a key.
    | CSNPValue
      -- ^ @VALUE@
      -- Counter reports a value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CounterStructuredNamePortion

instance FromHttpApiData CounterStructuredNamePortion where
    parseQueryParam = \case
        "ALL" -> Right CSNPAll
        "KEY" -> Right CSNPKey
        "VALUE" -> Right CSNPValue
        x -> Left ("Unable to parse CounterStructuredNamePortion from: " <> x)

instance ToHttpApiData CounterStructuredNamePortion where
    toQueryParam = \case
        CSNPAll -> "ALL"
        CSNPKey -> "KEY"
        CSNPValue -> "VALUE"

instance FromJSON CounterStructuredNamePortion where
    parseJSON = parseJSONText "CounterStructuredNamePortion"

instance ToJSON CounterStructuredNamePortion where
    toJSON = toJSONText

-- | Importance level of the message.
data JobMessageMessageImportance
    = JobMessageImportanceUnknown
      -- ^ @JOB_MESSAGE_IMPORTANCE_UNKNOWN@
      -- The message importance isn\'t specified, or is unknown.
    | JobMessageDebug
      -- ^ @JOB_MESSAGE_DEBUG@
      -- The message is at the \'debug\' level: typically only useful for
      -- software engineers working on the code the job is running. Typically,
      -- Dataflow pipeline runners do not display log messages at this level by
      -- default.
    | JobMessageDetailed
      -- ^ @JOB_MESSAGE_DETAILED@
      -- The message is at the \'detailed\' level: somewhat verbose, but
      -- potentially useful to users. Typically, Dataflow pipeline runners do not
      -- display log messages at this level by default. These messages are
      -- displayed by default in the Dataflow monitoring UI.
    | JobMessageBasic
      -- ^ @JOB_MESSAGE_BASIC@
      -- The message is at the \'basic\' level: useful for keeping track of the
      -- execution of a Dataflow pipeline. Typically, Dataflow pipeline runners
      -- display log messages at this level by default, and these messages are
      -- displayed by default in the Dataflow monitoring UI.
    | JobMessageWarning
      -- ^ @JOB_MESSAGE_WARNING@
      -- The message is at the \'warning\' level: indicating a condition
      -- pertaining to a job which may require human intervention. Typically,
      -- Dataflow pipeline runners display log messages at this level by default,
      -- and these messages are displayed by default in the Dataflow monitoring
      -- UI.
    | JobMessageError
      -- ^ @JOB_MESSAGE_ERROR@
      -- The message is at the \'error\' level: indicating a condition preventing
      -- a job from succeeding. Typically, Dataflow pipeline runners display log
      -- messages at this level by default, and these messages are displayed by
      -- default in the Dataflow monitoring UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobMessageMessageImportance

instance FromHttpApiData JobMessageMessageImportance where
    parseQueryParam = \case
        "JOB_MESSAGE_IMPORTANCE_UNKNOWN" -> Right JobMessageImportanceUnknown
        "JOB_MESSAGE_DEBUG" -> Right JobMessageDebug
        "JOB_MESSAGE_DETAILED" -> Right JobMessageDetailed
        "JOB_MESSAGE_BASIC" -> Right JobMessageBasic
        "JOB_MESSAGE_WARNING" -> Right JobMessageWarning
        "JOB_MESSAGE_ERROR" -> Right JobMessageError
        x -> Left ("Unable to parse JobMessageMessageImportance from: " <> x)

instance ToHttpApiData JobMessageMessageImportance where
    toQueryParam = \case
        JobMessageImportanceUnknown -> "JOB_MESSAGE_IMPORTANCE_UNKNOWN"
        JobMessageDebug -> "JOB_MESSAGE_DEBUG"
        JobMessageDetailed -> "JOB_MESSAGE_DETAILED"
        JobMessageBasic -> "JOB_MESSAGE_BASIC"
        JobMessageWarning -> "JOB_MESSAGE_WARNING"
        JobMessageError -> "JOB_MESSAGE_ERROR"

instance FromJSON JobMessageMessageImportance where
    parseJSON = parseJSONText "JobMessageMessageImportance"

instance ToJSON JobMessageMessageImportance where
    toJSON = toJSONText

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other
-- JobViews.
data ProjectsLocationsJobsListView
    = PLJLVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PLJLVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PLJLVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PLJLVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobsListView

instance FromHttpApiData ProjectsLocationsJobsListView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PLJLVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PLJLVJobViewSummary
        "JOB_VIEW_ALL" -> Right PLJLVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PLJLVJobViewDescription
        x -> Left ("Unable to parse ProjectsLocationsJobsListView from: " <> x)

instance ToHttpApiData ProjectsLocationsJobsListView where
    toQueryParam = \case
        PLJLVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PLJLVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PLJLVJobViewAll -> "JOB_VIEW_ALL"
        PLJLVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsLocationsJobsListView where
    parseJSON = parseJSONText "ProjectsLocationsJobsListView"

instance ToJSON ProjectsLocationsJobsListView where
    toJSON = toJSONText

-- | State of the snapshot.
data SnapshotState
    = UnknownSnapshotState
      -- ^ @UNKNOWN_SNAPSHOT_STATE@
      -- Unknown state.
    | Pending
      -- ^ @PENDING@
      -- Snapshot intent to create has been persisted, snapshotting of state has
      -- not yet started.
    | Running
      -- ^ @RUNNING@
      -- Snapshotting is being performed.
    | Ready
      -- ^ @READY@
      -- Snapshot has been created and is ready to be used.
    | Failed
      -- ^ @FAILED@
      -- Snapshot failed to be created.
    | Deleted
      -- ^ @DELETED@
      -- Snapshot has been deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SnapshotState

instance FromHttpApiData SnapshotState where
    parseQueryParam = \case
        "UNKNOWN_SNAPSHOT_STATE" -> Right UnknownSnapshotState
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "READY" -> Right Ready
        "FAILED" -> Right Failed
        "DELETED" -> Right Deleted
        x -> Left ("Unable to parse SnapshotState from: " <> x)

instance ToHttpApiData SnapshotState where
    toQueryParam = \case
        UnknownSnapshotState -> "UNKNOWN_SNAPSHOT_STATE"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Ready -> "READY"
        Failed -> "FAILED"
        Deleted -> "DELETED"

instance FromJSON SnapshotState where
    parseJSON = parseJSONText "SnapshotState"

instance ToJSON SnapshotState where
    toJSON = toJSONText

-- | The view to retrieve. Defaults to METADATA_ONLY.
data ProjectsTemplatesGetView
    = MetadataOnly
      -- ^ @METADATA_ONLY@
      -- Template view that retrieves only the metadata associated with the
      -- template.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTemplatesGetView

instance FromHttpApiData ProjectsTemplatesGetView where
    parseQueryParam = \case
        "METADATA_ONLY" -> Right MetadataOnly
        x -> Left ("Unable to parse ProjectsTemplatesGetView from: " <> x)

instance ToHttpApiData ProjectsTemplatesGetView where
    toQueryParam = \case
        MetadataOnly -> "METADATA_ONLY"

instance FromJSON ProjectsTemplatesGetView where
    parseJSON = parseJSONText "ProjectsTemplatesGetView"

instance ToJSON ProjectsTemplatesGetView where
    toJSON = toJSONText

-- | Indicates whether splitting happened and produced a list of bundles. If
-- this is USE_CURRENT_SOURCE_AS_IS, the current source should be processed
-- \"as is\" without splitting. \"bundles\" is ignored in this case. If
-- this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles
-- into which the source was split.
data SourceSplitResponseOutcome
    = SourceSplitOutcomeUnknown
      -- ^ @SOURCE_SPLIT_OUTCOME_UNKNOWN@
      -- The source split outcome is unknown, or unspecified.
    | SourceSplitOutcomeUseCurrent
      -- ^ @SOURCE_SPLIT_OUTCOME_USE_CURRENT@
      -- The current source should be processed \"as is\" without splitting.
    | SourceSplitOutcomeSplittingHAppened
      -- ^ @SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED@
      -- Splitting produced a list of bundles.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceSplitResponseOutcome

instance FromHttpApiData SourceSplitResponseOutcome where
    parseQueryParam = \case
        "SOURCE_SPLIT_OUTCOME_UNKNOWN" -> Right SourceSplitOutcomeUnknown
        "SOURCE_SPLIT_OUTCOME_USE_CURRENT" -> Right SourceSplitOutcomeUseCurrent
        "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED" -> Right SourceSplitOutcomeSplittingHAppened
        x -> Left ("Unable to parse SourceSplitResponseOutcome from: " <> x)

instance ToHttpApiData SourceSplitResponseOutcome where
    toQueryParam = \case
        SourceSplitOutcomeUnknown -> "SOURCE_SPLIT_OUTCOME_UNKNOWN"
        SourceSplitOutcomeUseCurrent -> "SOURCE_SPLIT_OUTCOME_USE_CURRENT"
        SourceSplitOutcomeSplittingHAppened -> "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED"

instance FromJSON SourceSplitResponseOutcome where
    parseJSON = parseJSONText "SourceSplitResponseOutcome"

instance ToJSON SourceSplitResponseOutcome where
    toJSON = toJSONText

-- | DEPRECATED
data SourceSplitShardDerivationMode
    = SourceDerivationModeUnknown
      -- ^ @SOURCE_DERIVATION_MODE_UNKNOWN@
      -- The source derivation is unknown, or unspecified.
    | SourceDerivationModeIndependent
      -- ^ @SOURCE_DERIVATION_MODE_INDEPENDENT@
      -- Produce a completely independent Source with no base.
    | SourceDerivationModeChildOfCurrent
      -- ^ @SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT@
      -- Produce a Source based on the Source being split.
    | SourceDerivationModeSiblingOfCurrent
      -- ^ @SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT@
      -- Produce a Source based on the base of the Source being split.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceSplitShardDerivationMode

instance FromHttpApiData SourceSplitShardDerivationMode where
    parseQueryParam = \case
        "SOURCE_DERIVATION_MODE_UNKNOWN" -> Right SourceDerivationModeUnknown
        "SOURCE_DERIVATION_MODE_INDEPENDENT" -> Right SourceDerivationModeIndependent
        "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" -> Right SourceDerivationModeChildOfCurrent
        "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" -> Right SourceDerivationModeSiblingOfCurrent
        x -> Left ("Unable to parse SourceSplitShardDerivationMode from: " <> x)

instance ToHttpApiData SourceSplitShardDerivationMode where
    toQueryParam = \case
        SourceDerivationModeUnknown -> "SOURCE_DERIVATION_MODE_UNKNOWN"
        SourceDerivationModeIndependent -> "SOURCE_DERIVATION_MODE_INDEPENDENT"
        SourceDerivationModeChildOfCurrent -> "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT"
        SourceDerivationModeSiblingOfCurrent -> "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT"

instance FromJSON SourceSplitShardDerivationMode where
    parseJSON = parseJSONText "SourceSplitShardDerivationMode"

instance ToJSON SourceSplitShardDerivationMode where
    toJSON = toJSONText

-- | The default package set to install. This allows the service to select a
-- default set of packages which are useful to worker harnesses written in
-- a particular language.
data WorkerPoolDefaultPackageSet
    = DefaultPackageSetUnknown
      -- ^ @DEFAULT_PACKAGE_SET_UNKNOWN@
      -- The default set of packages to stage is unknown, or unspecified.
    | DefaultPackageSetNone
      -- ^ @DEFAULT_PACKAGE_SET_NONE@
      -- Indicates that no packages should be staged at the worker unless
      -- explicitly specified by the job.
    | DefaultPackageSetJava
      -- ^ @DEFAULT_PACKAGE_SET_JAVA@
      -- Stage packages typically useful to workers written in Java.
    | DefaultPackageSetPython
      -- ^ @DEFAULT_PACKAGE_SET_PYTHON@
      -- Stage packages typically useful to workers written in Python.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkerPoolDefaultPackageSet

instance FromHttpApiData WorkerPoolDefaultPackageSet where
    parseQueryParam = \case
        "DEFAULT_PACKAGE_SET_UNKNOWN" -> Right DefaultPackageSetUnknown
        "DEFAULT_PACKAGE_SET_NONE" -> Right DefaultPackageSetNone
        "DEFAULT_PACKAGE_SET_JAVA" -> Right DefaultPackageSetJava
        "DEFAULT_PACKAGE_SET_PYTHON" -> Right DefaultPackageSetPython
        x -> Left ("Unable to parse WorkerPoolDefaultPackageSet from: " <> x)

instance ToHttpApiData WorkerPoolDefaultPackageSet where
    toQueryParam = \case
        DefaultPackageSetUnknown -> "DEFAULT_PACKAGE_SET_UNKNOWN"
        DefaultPackageSetNone -> "DEFAULT_PACKAGE_SET_NONE"
        DefaultPackageSetJava -> "DEFAULT_PACKAGE_SET_JAVA"
        DefaultPackageSetPython -> "DEFAULT_PACKAGE_SET_PYTHON"

instance FromJSON WorkerPoolDefaultPackageSet where
    parseJSON = parseJSONText "WorkerPoolDefaultPackageSet"

instance ToJSON WorkerPoolDefaultPackageSet where
    toJSON = toJSONText

-- | Counter aggregation kind.
data CounterMetadataKind
    = CMKInvalid
      -- ^ @INVALID@
      -- Counter aggregation kind was not set.
    | CMKSum
      -- ^ @SUM@
      -- Aggregated value is the sum of all contributed values.
    | CMKMax
      -- ^ @MAX@
      -- Aggregated value is the max of all contributed values.
    | CMKMin
      -- ^ @MIN@
      -- Aggregated value is the min of all contributed values.
    | CMKMean
      -- ^ @MEAN@
      -- Aggregated value is the mean of all contributed values.
    | CMKOR
      -- ^ @OR@
      -- Aggregated value represents the logical \'or\' of all contributed
      -- values.
    | CMKAnd
      -- ^ @AND@
      -- Aggregated value represents the logical \'and\' of all contributed
      -- values.
    | CMKSet
      -- ^ @SET@
      -- Aggregated value is a set of unique contributed values.
    | CMKDistribution
      -- ^ @DISTRIBUTION@
      -- Aggregated value captures statistics about a distribution.
    | CMKLatestValue
      -- ^ @LATEST_VALUE@
      -- Aggregated value tracks the latest value of a variable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CounterMetadataKind

instance FromHttpApiData CounterMetadataKind where
    parseQueryParam = \case
        "INVALID" -> Right CMKInvalid
        "SUM" -> Right CMKSum
        "MAX" -> Right CMKMax
        "MIN" -> Right CMKMin
        "MEAN" -> Right CMKMean
        "OR" -> Right CMKOR
        "AND" -> Right CMKAnd
        "SET" -> Right CMKSet
        "DISTRIBUTION" -> Right CMKDistribution
        "LATEST_VALUE" -> Right CMKLatestValue
        x -> Left ("Unable to parse CounterMetadataKind from: " <> x)

instance ToHttpApiData CounterMetadataKind where
    toQueryParam = \case
        CMKInvalid -> "INVALID"
        CMKSum -> "SUM"
        CMKMax -> "MAX"
        CMKMin -> "MIN"
        CMKMean -> "MEAN"
        CMKOR -> "OR"
        CMKAnd -> "AND"
        CMKSet -> "SET"
        CMKDistribution -> "DISTRIBUTION"
        CMKLatestValue -> "LATEST_VALUE"

instance FromJSON CounterMetadataKind where
    parseJSON = parseJSONText "CounterMetadataKind"

instance ToJSON CounterMetadataKind where
    toJSON = toJSONText

-- | The current state of the job. Jobs are created in the
-- \`JOB_STATE_STOPPED\` state unless otherwise specified. A job in the
-- \`JOB_STATE_RUNNING\` state may asynchronously enter a terminal state.
-- After a job has reached a terminal state, no further state updates may
-- be made. This field may be mutated by the Cloud Dataflow service;
-- callers cannot mutate it.
data JobCurrentState
    = JobStateUnknown
      -- ^ @JOB_STATE_UNKNOWN@
      -- The job\'s run state isn\'t specified.
    | JobStateStopped
      -- ^ @JOB_STATE_STOPPED@
      -- \`JOB_STATE_STOPPED\` indicates that the job has not yet started to run.
    | JobStateRunning
      -- ^ @JOB_STATE_RUNNING@
      -- \`JOB_STATE_RUNNING\` indicates that the job is currently running.
    | JobStateDone
      -- ^ @JOB_STATE_DONE@
      -- \`JOB_STATE_DONE\` indicates that the job has successfully completed.
      -- This is a terminal job state. This state may be set by the Cloud
      -- Dataflow service, as a transition from \`JOB_STATE_RUNNING\`. It may
      -- also be set via a Cloud Dataflow \`UpdateJob\` call, if the job has not
      -- yet reached a terminal state.
    | JobStateFailed
      -- ^ @JOB_STATE_FAILED@
      -- \`JOB_STATE_FAILED\` indicates that the job has failed. This is a
      -- terminal job state. This state may only be set by the Cloud Dataflow
      -- service, and only as a transition from \`JOB_STATE_RUNNING\`.
    | JobStateCancelled
      -- ^ @JOB_STATE_CANCELLED@
      -- \`JOB_STATE_CANCELLED\` indicates that the job has been explicitly
      -- cancelled. This is a terminal job state. This state may only be set via
      -- a Cloud Dataflow \`UpdateJob\` call, and only if the job has not yet
      -- reached another terminal state.
    | JobStateUpdated
      -- ^ @JOB_STATE_UPDATED@
      -- \`JOB_STATE_UPDATED\` indicates that the job was successfully updated,
      -- meaning that this job was stopped and another job was started,
      -- inheriting state from this one. This is a terminal job state. This state
      -- may only be set by the Cloud Dataflow service, and only as a transition
      -- from \`JOB_STATE_RUNNING\`.
    | JobStateDraining
      -- ^ @JOB_STATE_DRAINING@
      -- \`JOB_STATE_DRAINING\` indicates that the job is in the process of
      -- draining. A draining job has stopped pulling from its input sources and
      -- is processing any data that remains in-flight. This state may be set via
      -- a Cloud Dataflow \`UpdateJob\` call, but only as a transition from
      -- \`JOB_STATE_RUNNING\`. Jobs that are draining may only transition to
      -- \`JOB_STATE_DRAINED\`, \`JOB_STATE_CANCELLED\`, or \`JOB_STATE_FAILED\`.
    | JobStateDrained
      -- ^ @JOB_STATE_DRAINED@
      -- \`JOB_STATE_DRAINED\` indicates that the job has been drained. A drained
      -- job terminated by stopping pulling from its input sources and processing
      -- any data that remained in-flight when draining was requested. This state
      -- is a terminal state, may only be set by the Cloud Dataflow service, and
      -- only as a transition from \`JOB_STATE_DRAINING\`.
    | JobStatePending
      -- ^ @JOB_STATE_PENDING@
      -- \`JOB_STATE_PENDING\` indicates that the job has been created but is not
      -- yet running. Jobs that are pending may only transition to
      -- \`JOB_STATE_RUNNING\`, or \`JOB_STATE_FAILED\`.
    | JobStateCancelling
      -- ^ @JOB_STATE_CANCELLING@
      -- \`JOB_STATE_CANCELLING\` indicates that the job has been explicitly
      -- cancelled and is in the process of stopping. Jobs that are cancelling
      -- may only transition to \`JOB_STATE_CANCELLED\` or \`JOB_STATE_FAILED\`.
    | JobStateQueued
      -- ^ @JOB_STATE_QUEUED@
      -- \`JOB_STATE_QUEUED\` indicates that the job has been created but is
      -- being delayed until launch. Jobs that are queued may only transition to
      -- \`JOB_STATE_PENDING\` or \`JOB_STATE_CANCELLED\`.
    | JobStateResourceCleaningUp
      -- ^ @JOB_STATE_RESOURCE_CLEANING_UP@
      -- \`JOB_STATE_RESOURCE_CLEANING_UP\` indicates that the batch job\'s
      -- associated resources are currently being cleaned up after a successful
      -- run. Currently, this is an opt-in feature, please reach out to Cloud
      -- support team if you are interested.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobCurrentState

instance FromHttpApiData JobCurrentState where
    parseQueryParam = \case
        "JOB_STATE_UNKNOWN" -> Right JobStateUnknown
        "JOB_STATE_STOPPED" -> Right JobStateStopped
        "JOB_STATE_RUNNING" -> Right JobStateRunning
        "JOB_STATE_DONE" -> Right JobStateDone
        "JOB_STATE_FAILED" -> Right JobStateFailed
        "JOB_STATE_CANCELLED" -> Right JobStateCancelled
        "JOB_STATE_UPDATED" -> Right JobStateUpdated
        "JOB_STATE_DRAINING" -> Right JobStateDraining
        "JOB_STATE_DRAINED" -> Right JobStateDrained
        "JOB_STATE_PENDING" -> Right JobStatePending
        "JOB_STATE_CANCELLING" -> Right JobStateCancelling
        "JOB_STATE_QUEUED" -> Right JobStateQueued
        "JOB_STATE_RESOURCE_CLEANING_UP" -> Right JobStateResourceCleaningUp
        x -> Left ("Unable to parse JobCurrentState from: " <> x)

instance ToHttpApiData JobCurrentState where
    toQueryParam = \case
        JobStateUnknown -> "JOB_STATE_UNKNOWN"
        JobStateStopped -> "JOB_STATE_STOPPED"
        JobStateRunning -> "JOB_STATE_RUNNING"
        JobStateDone -> "JOB_STATE_DONE"
        JobStateFailed -> "JOB_STATE_FAILED"
        JobStateCancelled -> "JOB_STATE_CANCELLED"
        JobStateUpdated -> "JOB_STATE_UPDATED"
        JobStateDraining -> "JOB_STATE_DRAINING"
        JobStateDrained -> "JOB_STATE_DRAINED"
        JobStatePending -> "JOB_STATE_PENDING"
        JobStateCancelling -> "JOB_STATE_CANCELLING"
        JobStateQueued -> "JOB_STATE_QUEUED"
        JobStateResourceCleaningUp -> "JOB_STATE_RESOURCE_CLEANING_UP"

instance FromJSON JobCurrentState where
    parseJSON = parseJSONText "JobCurrentState"

instance ToJSON JobCurrentState where
    toJSON = toJSONText

-- | Filter to only get messages with importance >= level
data ProjectsLocationsJobsMessagesListMinimumImportance
    = PLJMLMIJobMessageImportanceUnknown
      -- ^ @JOB_MESSAGE_IMPORTANCE_UNKNOWN@
      -- The message importance isn\'t specified, or is unknown.
    | PLJMLMIJobMessageDebug
      -- ^ @JOB_MESSAGE_DEBUG@
      -- The message is at the \'debug\' level: typically only useful for
      -- software engineers working on the code the job is running. Typically,
      -- Dataflow pipeline runners do not display log messages at this level by
      -- default.
    | PLJMLMIJobMessageDetailed
      -- ^ @JOB_MESSAGE_DETAILED@
      -- The message is at the \'detailed\' level: somewhat verbose, but
      -- potentially useful to users. Typically, Dataflow pipeline runners do not
      -- display log messages at this level by default. These messages are
      -- displayed by default in the Dataflow monitoring UI.
    | PLJMLMIJobMessageBasic
      -- ^ @JOB_MESSAGE_BASIC@
      -- The message is at the \'basic\' level: useful for keeping track of the
      -- execution of a Dataflow pipeline. Typically, Dataflow pipeline runners
      -- display log messages at this level by default, and these messages are
      -- displayed by default in the Dataflow monitoring UI.
    | PLJMLMIJobMessageWarning
      -- ^ @JOB_MESSAGE_WARNING@
      -- The message is at the \'warning\' level: indicating a condition
      -- pertaining to a job which may require human intervention. Typically,
      -- Dataflow pipeline runners display log messages at this level by default,
      -- and these messages are displayed by default in the Dataflow monitoring
      -- UI.
    | PLJMLMIJobMessageError
      -- ^ @JOB_MESSAGE_ERROR@
      -- The message is at the \'error\' level: indicating a condition preventing
      -- a job from succeeding. Typically, Dataflow pipeline runners display log
      -- messages at this level by default, and these messages are displayed by
      -- default in the Dataflow monitoring UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobsMessagesListMinimumImportance

instance FromHttpApiData ProjectsLocationsJobsMessagesListMinimumImportance where
    parseQueryParam = \case
        "JOB_MESSAGE_IMPORTANCE_UNKNOWN" -> Right PLJMLMIJobMessageImportanceUnknown
        "JOB_MESSAGE_DEBUG" -> Right PLJMLMIJobMessageDebug
        "JOB_MESSAGE_DETAILED" -> Right PLJMLMIJobMessageDetailed
        "JOB_MESSAGE_BASIC" -> Right PLJMLMIJobMessageBasic
        "JOB_MESSAGE_WARNING" -> Right PLJMLMIJobMessageWarning
        "JOB_MESSAGE_ERROR" -> Right PLJMLMIJobMessageError
        x -> Left ("Unable to parse ProjectsLocationsJobsMessagesListMinimumImportance from: " <> x)

instance ToHttpApiData ProjectsLocationsJobsMessagesListMinimumImportance where
    toQueryParam = \case
        PLJMLMIJobMessageImportanceUnknown -> "JOB_MESSAGE_IMPORTANCE_UNKNOWN"
        PLJMLMIJobMessageDebug -> "JOB_MESSAGE_DEBUG"
        PLJMLMIJobMessageDetailed -> "JOB_MESSAGE_DETAILED"
        PLJMLMIJobMessageBasic -> "JOB_MESSAGE_BASIC"
        PLJMLMIJobMessageWarning -> "JOB_MESSAGE_WARNING"
        PLJMLMIJobMessageError -> "JOB_MESSAGE_ERROR"

instance FromJSON ProjectsLocationsJobsMessagesListMinimumImportance where
    parseJSON = parseJSONText "ProjectsLocationsJobsMessagesListMinimumImportance"

instance ToJSON ProjectsLocationsJobsMessagesListMinimumImportance where
    toJSON = toJSONText

data QueryInfoQueryPropertyItem
    = QueryPropertyUnspecified
      -- ^ @QUERY_PROPERTY_UNSPECIFIED@
      -- The query property is unknown or unspecified.
    | HasUnboundedSource
      -- ^ @HAS_UNBOUNDED_SOURCE@
      -- Indicates this query reads from >= 1 unbounded source.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryInfoQueryPropertyItem

instance FromHttpApiData QueryInfoQueryPropertyItem where
    parseQueryParam = \case
        "QUERY_PROPERTY_UNSPECIFIED" -> Right QueryPropertyUnspecified
        "HAS_UNBOUNDED_SOURCE" -> Right HasUnboundedSource
        x -> Left ("Unable to parse QueryInfoQueryPropertyItem from: " <> x)

instance ToHttpApiData QueryInfoQueryPropertyItem where
    toQueryParam = \case
        QueryPropertyUnspecified -> "QUERY_PROPERTY_UNSPECIFIED"
        HasUnboundedSource -> "HAS_UNBOUNDED_SOURCE"

instance FromJSON QueryInfoQueryPropertyItem where
    parseJSON = parseJSONText "QueryInfoQueryPropertyItem"

instance ToJSON QueryInfoQueryPropertyItem where
    toJSON = toJSONText

-- | System defined Units, see above enum.
data CounterMetadataStandardUnits
    = Bytes
      -- ^ @BYTES@
      -- Counter returns a value in bytes.
    | BytesPerSec
      -- ^ @BYTES_PER_SEC@
      -- Counter returns a value in bytes per second.
    | Milliseconds
      -- ^ @MILLISECONDS@
      -- Counter returns a value in milliseconds.
    | Microseconds
      -- ^ @MICROSECONDS@
      -- Counter returns a value in microseconds.
    | Nanoseconds
      -- ^ @NANOSECONDS@
      -- Counter returns a value in nanoseconds.
    | TimestampMsec
      -- ^ @TIMESTAMP_MSEC@
      -- Counter returns a timestamp in milliseconds.
    | TimestampUsec
      -- ^ @TIMESTAMP_USEC@
      -- Counter returns a timestamp in microseconds.
    | TimestampNsec
      -- ^ @TIMESTAMP_NSEC@
      -- Counter returns a timestamp in nanoseconds.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CounterMetadataStandardUnits

instance FromHttpApiData CounterMetadataStandardUnits where
    parseQueryParam = \case
        "BYTES" -> Right Bytes
        "BYTES_PER_SEC" -> Right BytesPerSec
        "MILLISECONDS" -> Right Milliseconds
        "MICROSECONDS" -> Right Microseconds
        "NANOSECONDS" -> Right Nanoseconds
        "TIMESTAMP_MSEC" -> Right TimestampMsec
        "TIMESTAMP_USEC" -> Right TimestampUsec
        "TIMESTAMP_NSEC" -> Right TimestampNsec
        x -> Left ("Unable to parse CounterMetadataStandardUnits from: " <> x)

instance ToHttpApiData CounterMetadataStandardUnits where
    toQueryParam = \case
        Bytes -> "BYTES"
        BytesPerSec -> "BYTES_PER_SEC"
        Milliseconds -> "MILLISECONDS"
        Microseconds -> "MICROSECONDS"
        Nanoseconds -> "NANOSECONDS"
        TimestampMsec -> "TIMESTAMP_MSEC"
        TimestampUsec -> "TIMESTAMP_USEC"
        TimestampNsec -> "TIMESTAMP_NSEC"

instance FromJSON CounterMetadataStandardUnits where
    parseJSON = parseJSONText "CounterMetadataStandardUnits"

instance ToJSON CounterMetadataStandardUnits where
    toJSON = toJSONText

-- | The level of information requested in response.
data ProjectsLocationsJobsGetView
    = PLJGVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PLJGVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PLJGVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PLJGVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobsGetView

instance FromHttpApiData ProjectsLocationsJobsGetView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PLJGVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PLJGVJobViewSummary
        "JOB_VIEW_ALL" -> Right PLJGVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PLJGVJobViewDescription
        x -> Left ("Unable to parse ProjectsLocationsJobsGetView from: " <> x)

instance ToHttpApiData ProjectsLocationsJobsGetView where
    toQueryParam = \case
        PLJGVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PLJGVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PLJGVJobViewAll -> "JOB_VIEW_ALL"
        PLJGVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsLocationsJobsGetView where
    parseJSON = parseJSONText "ProjectsLocationsJobsGetView"

instance ToJSON ProjectsLocationsJobsGetView where
    toJSON = toJSONText

-- | The type of autoscaling event to report.
data AutoscalingEventEventType
    = TypeUnknown
      -- ^ @TYPE_UNKNOWN@
      -- Default type for the enum. Value should never be returned.
    | TargetNumWorkersChanged
      -- ^ @TARGET_NUM_WORKERS_CHANGED@
      -- The TARGET_NUM_WORKERS_CHANGED type should be used when the target
      -- worker pool size has changed at the start of an actuation. An event
      -- should always be specified as TARGET_NUM_WORKERS_CHANGED if it reflects
      -- a change in the target_num_workers.
    | CurrentNumWorkersChanged
      -- ^ @CURRENT_NUM_WORKERS_CHANGED@
      -- The CURRENT_NUM_WORKERS_CHANGED type should be used when actual worker
      -- pool size has been changed, but the target_num_workers has not changed.
    | ActuationFailure
      -- ^ @ACTUATION_FAILURE@
      -- The ACTUATION_FAILURE type should be used when we want to report an
      -- error to the user indicating why the current number of workers in the
      -- pool could not be changed. Displayed in the current status and history
      -- widgets.
    | NoChange
      -- ^ @NO_CHANGE@
      -- Used when we want to report to the user a reason why we are not
      -- currently adjusting the number of workers. Should specify both
      -- target_num_workers, current_num_workers and a decision_message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalingEventEventType

instance FromHttpApiData AutoscalingEventEventType where
    parseQueryParam = \case
        "TYPE_UNKNOWN" -> Right TypeUnknown
        "TARGET_NUM_WORKERS_CHANGED" -> Right TargetNumWorkersChanged
        "CURRENT_NUM_WORKERS_CHANGED" -> Right CurrentNumWorkersChanged
        "ACTUATION_FAILURE" -> Right ActuationFailure
        "NO_CHANGE" -> Right NoChange
        x -> Left ("Unable to parse AutoscalingEventEventType from: " <> x)

instance ToHttpApiData AutoscalingEventEventType where
    toQueryParam = \case
        TypeUnknown -> "TYPE_UNKNOWN"
        TargetNumWorkersChanged -> "TARGET_NUM_WORKERS_CHANGED"
        CurrentNumWorkersChanged -> "CURRENT_NUM_WORKERS_CHANGED"
        ActuationFailure -> "ACTUATION_FAILURE"
        NoChange -> "NO_CHANGE"

instance FromJSON AutoscalingEventEventType where
    parseJSON = parseJSONText "AutoscalingEventEventType"

instance ToJSON AutoscalingEventEventType where
    toJSON = toJSONText

-- | What source to base the produced source on (if any).
data DerivedSourceDerivationMode
    = DSDMSourceDerivationModeUnknown
      -- ^ @SOURCE_DERIVATION_MODE_UNKNOWN@
      -- The source derivation is unknown, or unspecified.
    | DSDMSourceDerivationModeIndependent
      -- ^ @SOURCE_DERIVATION_MODE_INDEPENDENT@
      -- Produce a completely independent Source with no base.
    | DSDMSourceDerivationModeChildOfCurrent
      -- ^ @SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT@
      -- Produce a Source based on the Source being split.
    | DSDMSourceDerivationModeSiblingOfCurrent
      -- ^ @SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT@
      -- Produce a Source based on the base of the Source being split.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DerivedSourceDerivationMode

instance FromHttpApiData DerivedSourceDerivationMode where
    parseQueryParam = \case
        "SOURCE_DERIVATION_MODE_UNKNOWN" -> Right DSDMSourceDerivationModeUnknown
        "SOURCE_DERIVATION_MODE_INDEPENDENT" -> Right DSDMSourceDerivationModeIndependent
        "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" -> Right DSDMSourceDerivationModeChildOfCurrent
        "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" -> Right DSDMSourceDerivationModeSiblingOfCurrent
        x -> Left ("Unable to parse DerivedSourceDerivationMode from: " <> x)

instance ToHttpApiData DerivedSourceDerivationMode where
    toQueryParam = \case
        DSDMSourceDerivationModeUnknown -> "SOURCE_DERIVATION_MODE_UNKNOWN"
        DSDMSourceDerivationModeIndependent -> "SOURCE_DERIVATION_MODE_INDEPENDENT"
        DSDMSourceDerivationModeChildOfCurrent -> "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT"
        DSDMSourceDerivationModeSiblingOfCurrent -> "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT"

instance FromJSON DerivedSourceDerivationMode where
    parseJSON = parseJSONText "DerivedSourceDerivationMode"

instance ToJSON DerivedSourceDerivationMode where
    toJSON = toJSONText

-- | Type of transform this stage is executing.
data ExecutionStageSummaryKind
    = ESSKUnknownKind
      -- ^ @UNKNOWN_KIND@
      -- Unrecognized transform type.
    | ESSKParDoKind
      -- ^ @PAR_DO_KIND@
      -- ParDo transform.
    | ESSKGroupByKeyKind
      -- ^ @GROUP_BY_KEY_KIND@
      -- Group By Key transform.
    | ESSKFlattenKind
      -- ^ @FLATTEN_KIND@
      -- Flatten transform.
    | ESSKReadKind
      -- ^ @READ_KIND@
      -- Read transform.
    | ESSKWriteKind
      -- ^ @WRITE_KIND@
      -- Write transform.
    | ESSKConstantKind
      -- ^ @CONSTANT_KIND@
      -- Constructs from a constant value, such as with Create.of.
    | ESSKSingletonKind
      -- ^ @SINGLETON_KIND@
      -- Creates a Singleton view of a collection.
    | ESSKShuffleKind
      -- ^ @SHUFFLE_KIND@
      -- Opening or closing a shuffle session, often as part of a GroupByKey.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExecutionStageSummaryKind

instance FromHttpApiData ExecutionStageSummaryKind where
    parseQueryParam = \case
        "UNKNOWN_KIND" -> Right ESSKUnknownKind
        "PAR_DO_KIND" -> Right ESSKParDoKind
        "GROUP_BY_KEY_KIND" -> Right ESSKGroupByKeyKind
        "FLATTEN_KIND" -> Right ESSKFlattenKind
        "READ_KIND" -> Right ESSKReadKind
        "WRITE_KIND" -> Right ESSKWriteKind
        "CONSTANT_KIND" -> Right ESSKConstantKind
        "SINGLETON_KIND" -> Right ESSKSingletonKind
        "SHUFFLE_KIND" -> Right ESSKShuffleKind
        x -> Left ("Unable to parse ExecutionStageSummaryKind from: " <> x)

instance ToHttpApiData ExecutionStageSummaryKind where
    toQueryParam = \case
        ESSKUnknownKind -> "UNKNOWN_KIND"
        ESSKParDoKind -> "PAR_DO_KIND"
        ESSKGroupByKeyKind -> "GROUP_BY_KEY_KIND"
        ESSKFlattenKind -> "FLATTEN_KIND"
        ESSKReadKind -> "READ_KIND"
        ESSKWriteKind -> "WRITE_KIND"
        ESSKConstantKind -> "CONSTANT_KIND"
        ESSKSingletonKind -> "SINGLETON_KIND"
        ESSKShuffleKind -> "SHUFFLE_KIND"

instance FromJSON ExecutionStageSummaryKind where
    parseJSON = parseJSONText "ExecutionStageSummaryKind"

instance ToJSON ExecutionStageSummaryKind where
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

-- | Filter to only get messages with importance >= level
data ProjectsJobsMessagesListMinimumImportance
    = PJMLMIJobMessageImportanceUnknown
      -- ^ @JOB_MESSAGE_IMPORTANCE_UNKNOWN@
      -- The message importance isn\'t specified, or is unknown.
    | PJMLMIJobMessageDebug
      -- ^ @JOB_MESSAGE_DEBUG@
      -- The message is at the \'debug\' level: typically only useful for
      -- software engineers working on the code the job is running. Typically,
      -- Dataflow pipeline runners do not display log messages at this level by
      -- default.
    | PJMLMIJobMessageDetailed
      -- ^ @JOB_MESSAGE_DETAILED@
      -- The message is at the \'detailed\' level: somewhat verbose, but
      -- potentially useful to users. Typically, Dataflow pipeline runners do not
      -- display log messages at this level by default. These messages are
      -- displayed by default in the Dataflow monitoring UI.
    | PJMLMIJobMessageBasic
      -- ^ @JOB_MESSAGE_BASIC@
      -- The message is at the \'basic\' level: useful for keeping track of the
      -- execution of a Dataflow pipeline. Typically, Dataflow pipeline runners
      -- display log messages at this level by default, and these messages are
      -- displayed by default in the Dataflow monitoring UI.
    | PJMLMIJobMessageWarning
      -- ^ @JOB_MESSAGE_WARNING@
      -- The message is at the \'warning\' level: indicating a condition
      -- pertaining to a job which may require human intervention. Typically,
      -- Dataflow pipeline runners display log messages at this level by default,
      -- and these messages are displayed by default in the Dataflow monitoring
      -- UI.
    | PJMLMIJobMessageError
      -- ^ @JOB_MESSAGE_ERROR@
      -- The message is at the \'error\' level: indicating a condition preventing
      -- a job from succeeding. Typically, Dataflow pipeline runners display log
      -- messages at this level by default, and these messages are displayed by
      -- default in the Dataflow monitoring UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsMessagesListMinimumImportance

instance FromHttpApiData ProjectsJobsMessagesListMinimumImportance where
    parseQueryParam = \case
        "JOB_MESSAGE_IMPORTANCE_UNKNOWN" -> Right PJMLMIJobMessageImportanceUnknown
        "JOB_MESSAGE_DEBUG" -> Right PJMLMIJobMessageDebug
        "JOB_MESSAGE_DETAILED" -> Right PJMLMIJobMessageDetailed
        "JOB_MESSAGE_BASIC" -> Right PJMLMIJobMessageBasic
        "JOB_MESSAGE_WARNING" -> Right PJMLMIJobMessageWarning
        "JOB_MESSAGE_ERROR" -> Right PJMLMIJobMessageError
        x -> Left ("Unable to parse ProjectsJobsMessagesListMinimumImportance from: " <> x)

instance ToHttpApiData ProjectsJobsMessagesListMinimumImportance where
    toQueryParam = \case
        PJMLMIJobMessageImportanceUnknown -> "JOB_MESSAGE_IMPORTANCE_UNKNOWN"
        PJMLMIJobMessageDebug -> "JOB_MESSAGE_DEBUG"
        PJMLMIJobMessageDetailed -> "JOB_MESSAGE_DETAILED"
        PJMLMIJobMessageBasic -> "JOB_MESSAGE_BASIC"
        PJMLMIJobMessageWarning -> "JOB_MESSAGE_WARNING"
        PJMLMIJobMessageError -> "JOB_MESSAGE_ERROR"

instance FromJSON ProjectsJobsMessagesListMinimumImportance where
    parseJSON = parseJSONText "ProjectsJobsMessagesListMinimumImportance"

instance ToJSON ProjectsJobsMessagesListMinimumImportance where
    toJSON = toJSONText

-- | The level of information requested in response.
data ProjectsLocationsJobsCreateView
    = PLJCVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PLJCVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PLJCVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PLJCVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobsCreateView

instance FromHttpApiData ProjectsLocationsJobsCreateView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PLJCVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PLJCVJobViewSummary
        "JOB_VIEW_ALL" -> Right PLJCVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PLJCVJobViewDescription
        x -> Left ("Unable to parse ProjectsLocationsJobsCreateView from: " <> x)

instance ToHttpApiData ProjectsLocationsJobsCreateView where
    toQueryParam = \case
        PLJCVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PLJCVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PLJCVJobViewAll -> "JOB_VIEW_ALL"
        PLJCVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsLocationsJobsCreateView where
    parseJSON = parseJSONText "ProjectsLocationsJobsCreateView"

instance ToJSON ProjectsLocationsJobsCreateView where
    toJSON = toJSONText

-- | Required. The SDK Language.
data SDKInfoLanguage
    = SDKILUnknown
      -- ^ @UNKNOWN@
      -- UNKNOWN Language.
    | SDKILJava
      -- ^ @JAVA@
      -- Java.
    | SDKILPython
      -- ^ @PYTHON@
      -- Python.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SDKInfoLanguage

instance FromHttpApiData SDKInfoLanguage where
    parseQueryParam = \case
        "UNKNOWN" -> Right SDKILUnknown
        "JAVA" -> Right SDKILJava
        "PYTHON" -> Right SDKILPython
        x -> Left ("Unable to parse SDKInfoLanguage from: " <> x)

instance ToHttpApiData SDKInfoLanguage where
    toQueryParam = \case
        SDKILUnknown -> "UNKNOWN"
        SDKILJava -> "JAVA"
        SDKILPython -> "PYTHON"

instance FromJSON SDKInfoLanguage where
    parseJSON = parseJSONText "SDKInfoLanguage"

instance ToJSON SDKInfoLanguage where
    toJSON = toJSONText

-- | The job\'s requested state. \`UpdateJob\` may be used to switch between
-- the \`JOB_STATE_STOPPED\` and \`JOB_STATE_RUNNING\` states, by setting
-- requested_state. \`UpdateJob\` may also be used to directly set a job\'s
-- requested state to \`JOB_STATE_CANCELLED\` or \`JOB_STATE_DONE\`,
-- irrevocably terminating the job if it has not already reached a terminal
-- state.
data JobRequestedState
    = JRSJobStateUnknown
      -- ^ @JOB_STATE_UNKNOWN@
      -- The job\'s run state isn\'t specified.
    | JRSJobStateStopped
      -- ^ @JOB_STATE_STOPPED@
      -- \`JOB_STATE_STOPPED\` indicates that the job has not yet started to run.
    | JRSJobStateRunning
      -- ^ @JOB_STATE_RUNNING@
      -- \`JOB_STATE_RUNNING\` indicates that the job is currently running.
    | JRSJobStateDone
      -- ^ @JOB_STATE_DONE@
      -- \`JOB_STATE_DONE\` indicates that the job has successfully completed.
      -- This is a terminal job state. This state may be set by the Cloud
      -- Dataflow service, as a transition from \`JOB_STATE_RUNNING\`. It may
      -- also be set via a Cloud Dataflow \`UpdateJob\` call, if the job has not
      -- yet reached a terminal state.
    | JRSJobStateFailed
      -- ^ @JOB_STATE_FAILED@
      -- \`JOB_STATE_FAILED\` indicates that the job has failed. This is a
      -- terminal job state. This state may only be set by the Cloud Dataflow
      -- service, and only as a transition from \`JOB_STATE_RUNNING\`.
    | JRSJobStateCancelled
      -- ^ @JOB_STATE_CANCELLED@
      -- \`JOB_STATE_CANCELLED\` indicates that the job has been explicitly
      -- cancelled. This is a terminal job state. This state may only be set via
      -- a Cloud Dataflow \`UpdateJob\` call, and only if the job has not yet
      -- reached another terminal state.
    | JRSJobStateUpdated
      -- ^ @JOB_STATE_UPDATED@
      -- \`JOB_STATE_UPDATED\` indicates that the job was successfully updated,
      -- meaning that this job was stopped and another job was started,
      -- inheriting state from this one. This is a terminal job state. This state
      -- may only be set by the Cloud Dataflow service, and only as a transition
      -- from \`JOB_STATE_RUNNING\`.
    | JRSJobStateDraining
      -- ^ @JOB_STATE_DRAINING@
      -- \`JOB_STATE_DRAINING\` indicates that the job is in the process of
      -- draining. A draining job has stopped pulling from its input sources and
      -- is processing any data that remains in-flight. This state may be set via
      -- a Cloud Dataflow \`UpdateJob\` call, but only as a transition from
      -- \`JOB_STATE_RUNNING\`. Jobs that are draining may only transition to
      -- \`JOB_STATE_DRAINED\`, \`JOB_STATE_CANCELLED\`, or \`JOB_STATE_FAILED\`.
    | JRSJobStateDrained
      -- ^ @JOB_STATE_DRAINED@
      -- \`JOB_STATE_DRAINED\` indicates that the job has been drained. A drained
      -- job terminated by stopping pulling from its input sources and processing
      -- any data that remained in-flight when draining was requested. This state
      -- is a terminal state, may only be set by the Cloud Dataflow service, and
      -- only as a transition from \`JOB_STATE_DRAINING\`.
    | JRSJobStatePending
      -- ^ @JOB_STATE_PENDING@
      -- \`JOB_STATE_PENDING\` indicates that the job has been created but is not
      -- yet running. Jobs that are pending may only transition to
      -- \`JOB_STATE_RUNNING\`, or \`JOB_STATE_FAILED\`.
    | JRSJobStateCancelling
      -- ^ @JOB_STATE_CANCELLING@
      -- \`JOB_STATE_CANCELLING\` indicates that the job has been explicitly
      -- cancelled and is in the process of stopping. Jobs that are cancelling
      -- may only transition to \`JOB_STATE_CANCELLED\` or \`JOB_STATE_FAILED\`.
    | JRSJobStateQueued
      -- ^ @JOB_STATE_QUEUED@
      -- \`JOB_STATE_QUEUED\` indicates that the job has been created but is
      -- being delayed until launch. Jobs that are queued may only transition to
      -- \`JOB_STATE_PENDING\` or \`JOB_STATE_CANCELLED\`.
    | JRSJobStateResourceCleaningUp
      -- ^ @JOB_STATE_RESOURCE_CLEANING_UP@
      -- \`JOB_STATE_RESOURCE_CLEANING_UP\` indicates that the batch job\'s
      -- associated resources are currently being cleaned up after a successful
      -- run. Currently, this is an opt-in feature, please reach out to Cloud
      -- support team if you are interested.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobRequestedState

instance FromHttpApiData JobRequestedState where
    parseQueryParam = \case
        "JOB_STATE_UNKNOWN" -> Right JRSJobStateUnknown
        "JOB_STATE_STOPPED" -> Right JRSJobStateStopped
        "JOB_STATE_RUNNING" -> Right JRSJobStateRunning
        "JOB_STATE_DONE" -> Right JRSJobStateDone
        "JOB_STATE_FAILED" -> Right JRSJobStateFailed
        "JOB_STATE_CANCELLED" -> Right JRSJobStateCancelled
        "JOB_STATE_UPDATED" -> Right JRSJobStateUpdated
        "JOB_STATE_DRAINING" -> Right JRSJobStateDraining
        "JOB_STATE_DRAINED" -> Right JRSJobStateDrained
        "JOB_STATE_PENDING" -> Right JRSJobStatePending
        "JOB_STATE_CANCELLING" -> Right JRSJobStateCancelling
        "JOB_STATE_QUEUED" -> Right JRSJobStateQueued
        "JOB_STATE_RESOURCE_CLEANING_UP" -> Right JRSJobStateResourceCleaningUp
        x -> Left ("Unable to parse JobRequestedState from: " <> x)

instance ToHttpApiData JobRequestedState where
    toQueryParam = \case
        JRSJobStateUnknown -> "JOB_STATE_UNKNOWN"
        JRSJobStateStopped -> "JOB_STATE_STOPPED"
        JRSJobStateRunning -> "JOB_STATE_RUNNING"
        JRSJobStateDone -> "JOB_STATE_DONE"
        JRSJobStateFailed -> "JOB_STATE_FAILED"
        JRSJobStateCancelled -> "JOB_STATE_CANCELLED"
        JRSJobStateUpdated -> "JOB_STATE_UPDATED"
        JRSJobStateDraining -> "JOB_STATE_DRAINING"
        JRSJobStateDrained -> "JOB_STATE_DRAINED"
        JRSJobStatePending -> "JOB_STATE_PENDING"
        JRSJobStateCancelling -> "JOB_STATE_CANCELLING"
        JRSJobStateQueued -> "JOB_STATE_QUEUED"
        JRSJobStateResourceCleaningUp -> "JOB_STATE_RESOURCE_CLEANING_UP"

instance FromJSON JobRequestedState where
    parseJSON = parseJSONText "JobRequestedState"

instance ToJSON JobRequestedState where
    toJSON = toJSONText

-- | Configuration for VM IPs.
data RuntimeEnvironmentIPConfiguration
    = REICWorkerIPUnspecified
      -- ^ @WORKER_IP_UNSPECIFIED@
      -- The configuration is unknown, or unspecified.
    | REICWorkerIPPublic
      -- ^ @WORKER_IP_PUBLIC@
      -- Workers should have public IP addresses.
    | REICWorkerIPPrivate
      -- ^ @WORKER_IP_PRIVATE@
      -- Workers should have private IP addresses.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuntimeEnvironmentIPConfiguration

instance FromHttpApiData RuntimeEnvironmentIPConfiguration where
    parseQueryParam = \case
        "WORKER_IP_UNSPECIFIED" -> Right REICWorkerIPUnspecified
        "WORKER_IP_PUBLIC" -> Right REICWorkerIPPublic
        "WORKER_IP_PRIVATE" -> Right REICWorkerIPPrivate
        x -> Left ("Unable to parse RuntimeEnvironmentIPConfiguration from: " <> x)

instance ToHttpApiData RuntimeEnvironmentIPConfiguration where
    toQueryParam = \case
        REICWorkerIPUnspecified -> "WORKER_IP_UNSPECIFIED"
        REICWorkerIPPublic -> "WORKER_IP_PUBLIC"
        REICWorkerIPPrivate -> "WORKER_IP_PRIVATE"

instance FromJSON RuntimeEnvironmentIPConfiguration where
    parseJSON = parseJSONText "RuntimeEnvironmentIPConfiguration"

instance ToJSON RuntimeEnvironmentIPConfiguration where
    toJSON = toJSONText

-- | The view to retrieve. Defaults to METADATA_ONLY.
data ProjectsLocationsTemplatesGetView
    = PLTGVMetadataOnly
      -- ^ @METADATA_ONLY@
      -- Template view that retrieves only the metadata associated with the
      -- template.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsTemplatesGetView

instance FromHttpApiData ProjectsLocationsTemplatesGetView where
    parseQueryParam = \case
        "METADATA_ONLY" -> Right PLTGVMetadataOnly
        x -> Left ("Unable to parse ProjectsLocationsTemplatesGetView from: " <> x)

instance ToHttpApiData ProjectsLocationsTemplatesGetView where
    toQueryParam = \case
        PLTGVMetadataOnly -> "METADATA_ONLY"

instance FromJSON ProjectsLocationsTemplatesGetView where
    parseJSON = parseJSONText "ProjectsLocationsTemplatesGetView"

instance ToJSON ProjectsLocationsTemplatesGetView where
    toJSON = toJSONText

-- | The event being reported.
data WorkerLifecycleEventEvent
    = UnknownEvent
      -- ^ @UNKNOWN_EVENT@
      -- Invalid event.
    | OSStart
      -- ^ @OS_START@
      -- The time the VM started.
    | ContainerStart
      -- ^ @CONTAINER_START@
      -- Our container code starts running. Multiple containers could be
      -- distinguished with WorkerMessage.labels if desired.
    | NetworkUp
      -- ^ @NETWORK_UP@
      -- The worker has a functional external network connection.
    | StagingFilesDownloadStart
      -- ^ @STAGING_FILES_DOWNLOAD_START@
      -- Started downloading staging files.
    | StagingFilesDownloadFinish
      -- ^ @STAGING_FILES_DOWNLOAD_FINISH@
      -- Finished downloading all staging files.
    | SdkInstallStart
      -- ^ @SDK_INSTALL_START@
      -- For applicable SDKs, started installation of SDK and worker packages.
    | SdkInstallFinish
      -- ^ @SDK_INSTALL_FINISH@
      -- Finished installing SDK.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkerLifecycleEventEvent

instance FromHttpApiData WorkerLifecycleEventEvent where
    parseQueryParam = \case
        "UNKNOWN_EVENT" -> Right UnknownEvent
        "OS_START" -> Right OSStart
        "CONTAINER_START" -> Right ContainerStart
        "NETWORK_UP" -> Right NetworkUp
        "STAGING_FILES_DOWNLOAD_START" -> Right StagingFilesDownloadStart
        "STAGING_FILES_DOWNLOAD_FINISH" -> Right StagingFilesDownloadFinish
        "SDK_INSTALL_START" -> Right SdkInstallStart
        "SDK_INSTALL_FINISH" -> Right SdkInstallFinish
        x -> Left ("Unable to parse WorkerLifecycleEventEvent from: " <> x)

instance ToHttpApiData WorkerLifecycleEventEvent where
    toQueryParam = \case
        UnknownEvent -> "UNKNOWN_EVENT"
        OSStart -> "OS_START"
        ContainerStart -> "CONTAINER_START"
        NetworkUp -> "NETWORK_UP"
        StagingFilesDownloadStart -> "STAGING_FILES_DOWNLOAD_START"
        StagingFilesDownloadFinish -> "STAGING_FILES_DOWNLOAD_FINISH"
        SdkInstallStart -> "SDK_INSTALL_START"
        SdkInstallFinish -> "SDK_INSTALL_FINISH"

instance FromJSON WorkerLifecycleEventEvent where
    parseJSON = parseJSONText "WorkerLifecycleEventEvent"

instance ToJSON WorkerLifecycleEventEvent where
    toJSON = toJSONText

-- | Executions stage states allow the same set of values as JobState.
data ExecutionStageStateExecutionStageState
    = ESSESSJobStateUnknown
      -- ^ @JOB_STATE_UNKNOWN@
      -- The job\'s run state isn\'t specified.
    | ESSESSJobStateStopped
      -- ^ @JOB_STATE_STOPPED@
      -- \`JOB_STATE_STOPPED\` indicates that the job has not yet started to run.
    | ESSESSJobStateRunning
      -- ^ @JOB_STATE_RUNNING@
      -- \`JOB_STATE_RUNNING\` indicates that the job is currently running.
    | ESSESSJobStateDone
      -- ^ @JOB_STATE_DONE@
      -- \`JOB_STATE_DONE\` indicates that the job has successfully completed.
      -- This is a terminal job state. This state may be set by the Cloud
      -- Dataflow service, as a transition from \`JOB_STATE_RUNNING\`. It may
      -- also be set via a Cloud Dataflow \`UpdateJob\` call, if the job has not
      -- yet reached a terminal state.
    | ESSESSJobStateFailed
      -- ^ @JOB_STATE_FAILED@
      -- \`JOB_STATE_FAILED\` indicates that the job has failed. This is a
      -- terminal job state. This state may only be set by the Cloud Dataflow
      -- service, and only as a transition from \`JOB_STATE_RUNNING\`.
    | ESSESSJobStateCancelled
      -- ^ @JOB_STATE_CANCELLED@
      -- \`JOB_STATE_CANCELLED\` indicates that the job has been explicitly
      -- cancelled. This is a terminal job state. This state may only be set via
      -- a Cloud Dataflow \`UpdateJob\` call, and only if the job has not yet
      -- reached another terminal state.
    | ESSESSJobStateUpdated
      -- ^ @JOB_STATE_UPDATED@
      -- \`JOB_STATE_UPDATED\` indicates that the job was successfully updated,
      -- meaning that this job was stopped and another job was started,
      -- inheriting state from this one. This is a terminal job state. This state
      -- may only be set by the Cloud Dataflow service, and only as a transition
      -- from \`JOB_STATE_RUNNING\`.
    | ESSESSJobStateDraining
      -- ^ @JOB_STATE_DRAINING@
      -- \`JOB_STATE_DRAINING\` indicates that the job is in the process of
      -- draining. A draining job has stopped pulling from its input sources and
      -- is processing any data that remains in-flight. This state may be set via
      -- a Cloud Dataflow \`UpdateJob\` call, but only as a transition from
      -- \`JOB_STATE_RUNNING\`. Jobs that are draining may only transition to
      -- \`JOB_STATE_DRAINED\`, \`JOB_STATE_CANCELLED\`, or \`JOB_STATE_FAILED\`.
    | ESSESSJobStateDrained
      -- ^ @JOB_STATE_DRAINED@
      -- \`JOB_STATE_DRAINED\` indicates that the job has been drained. A drained
      -- job terminated by stopping pulling from its input sources and processing
      -- any data that remained in-flight when draining was requested. This state
      -- is a terminal state, may only be set by the Cloud Dataflow service, and
      -- only as a transition from \`JOB_STATE_DRAINING\`.
    | ESSESSJobStatePending
      -- ^ @JOB_STATE_PENDING@
      -- \`JOB_STATE_PENDING\` indicates that the job has been created but is not
      -- yet running. Jobs that are pending may only transition to
      -- \`JOB_STATE_RUNNING\`, or \`JOB_STATE_FAILED\`.
    | ESSESSJobStateCancelling
      -- ^ @JOB_STATE_CANCELLING@
      -- \`JOB_STATE_CANCELLING\` indicates that the job has been explicitly
      -- cancelled and is in the process of stopping. Jobs that are cancelling
      -- may only transition to \`JOB_STATE_CANCELLED\` or \`JOB_STATE_FAILED\`.
    | ESSESSJobStateQueued
      -- ^ @JOB_STATE_QUEUED@
      -- \`JOB_STATE_QUEUED\` indicates that the job has been created but is
      -- being delayed until launch. Jobs that are queued may only transition to
      -- \`JOB_STATE_PENDING\` or \`JOB_STATE_CANCELLED\`.
    | ESSESSJobStateResourceCleaningUp
      -- ^ @JOB_STATE_RESOURCE_CLEANING_UP@
      -- \`JOB_STATE_RESOURCE_CLEANING_UP\` indicates that the batch job\'s
      -- associated resources are currently being cleaned up after a successful
      -- run. Currently, this is an opt-in feature, please reach out to Cloud
      -- support team if you are interested.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExecutionStageStateExecutionStageState

instance FromHttpApiData ExecutionStageStateExecutionStageState where
    parseQueryParam = \case
        "JOB_STATE_UNKNOWN" -> Right ESSESSJobStateUnknown
        "JOB_STATE_STOPPED" -> Right ESSESSJobStateStopped
        "JOB_STATE_RUNNING" -> Right ESSESSJobStateRunning
        "JOB_STATE_DONE" -> Right ESSESSJobStateDone
        "JOB_STATE_FAILED" -> Right ESSESSJobStateFailed
        "JOB_STATE_CANCELLED" -> Right ESSESSJobStateCancelled
        "JOB_STATE_UPDATED" -> Right ESSESSJobStateUpdated
        "JOB_STATE_DRAINING" -> Right ESSESSJobStateDraining
        "JOB_STATE_DRAINED" -> Right ESSESSJobStateDrained
        "JOB_STATE_PENDING" -> Right ESSESSJobStatePending
        "JOB_STATE_CANCELLING" -> Right ESSESSJobStateCancelling
        "JOB_STATE_QUEUED" -> Right ESSESSJobStateQueued
        "JOB_STATE_RESOURCE_CLEANING_UP" -> Right ESSESSJobStateResourceCleaningUp
        x -> Left ("Unable to parse ExecutionStageStateExecutionStageState from: " <> x)

instance ToHttpApiData ExecutionStageStateExecutionStageState where
    toQueryParam = \case
        ESSESSJobStateUnknown -> "JOB_STATE_UNKNOWN"
        ESSESSJobStateStopped -> "JOB_STATE_STOPPED"
        ESSESSJobStateRunning -> "JOB_STATE_RUNNING"
        ESSESSJobStateDone -> "JOB_STATE_DONE"
        ESSESSJobStateFailed -> "JOB_STATE_FAILED"
        ESSESSJobStateCancelled -> "JOB_STATE_CANCELLED"
        ESSESSJobStateUpdated -> "JOB_STATE_UPDATED"
        ESSESSJobStateDraining -> "JOB_STATE_DRAINING"
        ESSESSJobStateDrained -> "JOB_STATE_DRAINED"
        ESSESSJobStatePending -> "JOB_STATE_PENDING"
        ESSESSJobStateCancelling -> "JOB_STATE_CANCELLING"
        ESSESSJobStateQueued -> "JOB_STATE_QUEUED"
        ESSESSJobStateResourceCleaningUp -> "JOB_STATE_RESOURCE_CLEANING_UP"

instance FromJSON ExecutionStageStateExecutionStageState where
    parseJSON = parseJSONText "ExecutionStageStateExecutionStageState"

instance ToJSON ExecutionStageStateExecutionStageState where
    toJSON = toJSONText

-- | The level of information requested in response.
data ProjectsJobsCreateView
    = PJCVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PJCVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PJCVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PJCVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsCreateView

instance FromHttpApiData ProjectsJobsCreateView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PJCVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PJCVJobViewSummary
        "JOB_VIEW_ALL" -> Right PJCVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PJCVJobViewDescription
        x -> Left ("Unable to parse ProjectsJobsCreateView from: " <> x)

instance ToHttpApiData ProjectsJobsCreateView where
    toQueryParam = \case
        PJCVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PJCVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PJCVJobViewAll -> "JOB_VIEW_ALL"
        PJCVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsJobsCreateView where
    parseJSON = parseJSONText "ProjectsJobsCreateView"

instance ToJSON ProjectsJobsCreateView where
    toJSON = toJSONText

-- | Configuration for VM IPs.
data WorkerPoolIPConfiguration
    = WPICWorkerIPUnspecified
      -- ^ @WORKER_IP_UNSPECIFIED@
      -- The configuration is unknown, or unspecified.
    | WPICWorkerIPPublic
      -- ^ @WORKER_IP_PUBLIC@
      -- Workers should have public IP addresses.
    | WPICWorkerIPPrivate
      -- ^ @WORKER_IP_PRIVATE@
      -- Workers should have private IP addresses.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkerPoolIPConfiguration

instance FromHttpApiData WorkerPoolIPConfiguration where
    parseQueryParam = \case
        "WORKER_IP_UNSPECIFIED" -> Right WPICWorkerIPUnspecified
        "WORKER_IP_PUBLIC" -> Right WPICWorkerIPPublic
        "WORKER_IP_PRIVATE" -> Right WPICWorkerIPPrivate
        x -> Left ("Unable to parse WorkerPoolIPConfiguration from: " <> x)

instance ToHttpApiData WorkerPoolIPConfiguration where
    toQueryParam = \case
        WPICWorkerIPUnspecified -> "WORKER_IP_UNSPECIFIED"
        WPICWorkerIPPublic -> "WORKER_IP_PUBLIC"
        WPICWorkerIPPrivate -> "WORKER_IP_PRIVATE"

instance FromJSON WorkerPoolIPConfiguration where
    parseJSON = parseJSONText "WorkerPoolIPConfiguration"

instance ToJSON WorkerPoolIPConfiguration where
    toJSON = toJSONText

-- | One of the standard Origins defined above.
data CounterStructuredNameOrigin
    = System
      -- ^ @SYSTEM@
      -- Counter was created by the Dataflow system.
    | User
      -- ^ @USER@
      -- Counter was created by the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CounterStructuredNameOrigin

instance FromHttpApiData CounterStructuredNameOrigin where
    parseQueryParam = \case
        "SYSTEM" -> Right System
        "USER" -> Right User
        x -> Left ("Unable to parse CounterStructuredNameOrigin from: " <> x)

instance ToHttpApiData CounterStructuredNameOrigin where
    toQueryParam = \case
        System -> "SYSTEM"
        User -> "USER"

instance FromJSON CounterStructuredNameOrigin where
    parseJSON = parseJSONText "CounterStructuredNameOrigin"

instance ToJSON CounterStructuredNameOrigin where
    toJSON = toJSONText

-- | The kind of filter to use.
data ProjectsLocationsJobsListFilter
    = PLJLFUnknown
      -- ^ @UNKNOWN@
      -- The filter isn\'t specified, or is unknown. This returns all jobs
      -- ordered on descending \`JobUuid\`.
    | PLJLFAll
      -- ^ @ALL@
      -- Returns all running jobs first ordered on creation timestamp, then
      -- returns all terminated jobs ordered on the termination timestamp.
    | PLJLFTerminated
      -- ^ @TERMINATED@
      -- Filters the jobs that have a terminated state, ordered on the
      -- termination timestamp. Example terminated states: \`JOB_STATE_STOPPED\`,
      -- \`JOB_STATE_UPDATED\`, \`JOB_STATE_DRAINED\`, etc.
    | PLJLFActive
      -- ^ @ACTIVE@
      -- Filters the jobs that are running ordered on the creation timestamp.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsJobsListFilter

instance FromHttpApiData ProjectsLocationsJobsListFilter where
    parseQueryParam = \case
        "UNKNOWN" -> Right PLJLFUnknown
        "ALL" -> Right PLJLFAll
        "TERMINATED" -> Right PLJLFTerminated
        "ACTIVE" -> Right PLJLFActive
        x -> Left ("Unable to parse ProjectsLocationsJobsListFilter from: " <> x)

instance ToHttpApiData ProjectsLocationsJobsListFilter where
    toQueryParam = \case
        PLJLFUnknown -> "UNKNOWN"
        PLJLFAll -> "ALL"
        PLJLFTerminated -> "TERMINATED"
        PLJLFActive -> "ACTIVE"

instance FromJSON ProjectsLocationsJobsListFilter where
    parseJSON = parseJSONText "ProjectsLocationsJobsListFilter"

instance ToJSON ProjectsLocationsJobsListFilter where
    toJSON = toJSONText

-- | A type of streaming computation task.
data StreamingComputationTaskTaskType
    = StreamingComputationTaskUnknown
      -- ^ @STREAMING_COMPUTATION_TASK_UNKNOWN@
      -- The streaming computation task is unknown, or unspecified.
    | StreamingComputationTaskStop
      -- ^ @STREAMING_COMPUTATION_TASK_STOP@
      -- Stop processing specified streaming computation range(s).
    | StreamingComputationTaskStart
      -- ^ @STREAMING_COMPUTATION_TASK_START@
      -- Start processing specified streaming computation range(s).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StreamingComputationTaskTaskType

instance FromHttpApiData StreamingComputationTaskTaskType where
    parseQueryParam = \case
        "STREAMING_COMPUTATION_TASK_UNKNOWN" -> Right StreamingComputationTaskUnknown
        "STREAMING_COMPUTATION_TASK_STOP" -> Right StreamingComputationTaskStop
        "STREAMING_COMPUTATION_TASK_START" -> Right StreamingComputationTaskStart
        x -> Left ("Unable to parse StreamingComputationTaskTaskType from: " <> x)

instance ToHttpApiData StreamingComputationTaskTaskType where
    toQueryParam = \case
        StreamingComputationTaskUnknown -> "STREAMING_COMPUTATION_TASK_UNKNOWN"
        StreamingComputationTaskStop -> "STREAMING_COMPUTATION_TASK_STOP"
        StreamingComputationTaskStart -> "STREAMING_COMPUTATION_TASK_START"

instance FromJSON StreamingComputationTaskTaskType where
    parseJSON = parseJSONText "StreamingComputationTaskTaskType"

instance ToJSON StreamingComputationTaskTaskType where
    toJSON = toJSONText

-- | State of this work item.
data WorkItemDetailsState
    = WIDSExecutionStateUnknown
      -- ^ @EXECUTION_STATE_UNKNOWN@
      -- The component state is unknown or unspecified.
    | WIDSExecutionStateNotStarted
      -- ^ @EXECUTION_STATE_NOT_STARTED@
      -- The component is not yet running.
    | WIDSExecutionStateRunning
      -- ^ @EXECUTION_STATE_RUNNING@
      -- The component is currently running.
    | WIDSExecutionStateSucceeded
      -- ^ @EXECUTION_STATE_SUCCEEDED@
      -- The component succeeded.
    | WIDSExecutionStateFailed
      -- ^ @EXECUTION_STATE_FAILED@
      -- The component failed.
    | WIDSExecutionStateCancelled
      -- ^ @EXECUTION_STATE_CANCELLED@
      -- Execution of the component was cancelled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkItemDetailsState

instance FromHttpApiData WorkItemDetailsState where
    parseQueryParam = \case
        "EXECUTION_STATE_UNKNOWN" -> Right WIDSExecutionStateUnknown
        "EXECUTION_STATE_NOT_STARTED" -> Right WIDSExecutionStateNotStarted
        "EXECUTION_STATE_RUNNING" -> Right WIDSExecutionStateRunning
        "EXECUTION_STATE_SUCCEEDED" -> Right WIDSExecutionStateSucceeded
        "EXECUTION_STATE_FAILED" -> Right WIDSExecutionStateFailed
        "EXECUTION_STATE_CANCELLED" -> Right WIDSExecutionStateCancelled
        x -> Left ("Unable to parse WorkItemDetailsState from: " <> x)

instance ToHttpApiData WorkItemDetailsState where
    toQueryParam = \case
        WIDSExecutionStateUnknown -> "EXECUTION_STATE_UNKNOWN"
        WIDSExecutionStateNotStarted -> "EXECUTION_STATE_NOT_STARTED"
        WIDSExecutionStateRunning -> "EXECUTION_STATE_RUNNING"
        WIDSExecutionStateSucceeded -> "EXECUTION_STATE_SUCCEEDED"
        WIDSExecutionStateFailed -> "EXECUTION_STATE_FAILED"
        WIDSExecutionStateCancelled -> "EXECUTION_STATE_CANCELLED"

instance FromJSON WorkItemDetailsState where
    parseJSON = parseJSONText "WorkItemDetailsState"

instance ToJSON WorkItemDetailsState where
    toJSON = toJSONText

-- | Output only. The shuffle mode used for the job.
data EnvironmentShuffleMode
    = ShuffleModeUnspecified
      -- ^ @SHUFFLE_MODE_UNSPECIFIED@
      -- Shuffle mode information is not available.
    | VMBased
      -- ^ @VM_BASED@
      -- Shuffle is done on the worker VMs.
    | ServiceBased
      -- ^ @SERVICE_BASED@
      -- Shuffle is done on the service side.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentShuffleMode

instance FromHttpApiData EnvironmentShuffleMode where
    parseQueryParam = \case
        "SHUFFLE_MODE_UNSPECIFIED" -> Right ShuffleModeUnspecified
        "VM_BASED" -> Right VMBased
        "SERVICE_BASED" -> Right ServiceBased
        x -> Left ("Unable to parse EnvironmentShuffleMode from: " <> x)

instance ToHttpApiData EnvironmentShuffleMode where
    toQueryParam = \case
        ShuffleModeUnspecified -> "SHUFFLE_MODE_UNSPECIFIED"
        VMBased -> "VM_BASED"
        ServiceBased -> "SERVICE_BASED"

instance FromJSON EnvironmentShuffleMode where
    parseJSON = parseJSONText "EnvironmentShuffleMode"

instance ToJSON EnvironmentShuffleMode where
    toJSON = toJSONText

-- | The level of information requested in response.
data ProjectsJobsGetView
    = PJGVJobViewUnknown
      -- ^ @JOB_VIEW_UNKNOWN@
      -- The job view to return isn\'t specified, or is unknown. Responses will
      -- contain at least the \`JOB_VIEW_SUMMARY\` information, and may contain
      -- additional information.
    | PJGVJobViewSummary
      -- ^ @JOB_VIEW_SUMMARY@
      -- Request summary information only: Project ID, Job ID, job name, job
      -- type, job status, start\/end time, and Cloud SDK version details.
    | PJGVJobViewAll
      -- ^ @JOB_VIEW_ALL@
      -- Request all information available for this job.
    | PJGVJobViewDescription
      -- ^ @JOB_VIEW_DESCRIPTION@
      -- Request summary info and limited job description data for steps, labels
      -- and environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsJobsGetView

instance FromHttpApiData ProjectsJobsGetView where
    parseQueryParam = \case
        "JOB_VIEW_UNKNOWN" -> Right PJGVJobViewUnknown
        "JOB_VIEW_SUMMARY" -> Right PJGVJobViewSummary
        "JOB_VIEW_ALL" -> Right PJGVJobViewAll
        "JOB_VIEW_DESCRIPTION" -> Right PJGVJobViewDescription
        x -> Left ("Unable to parse ProjectsJobsGetView from: " <> x)

instance ToHttpApiData ProjectsJobsGetView where
    toQueryParam = \case
        PJGVJobViewUnknown -> "JOB_VIEW_UNKNOWN"
        PJGVJobViewSummary -> "JOB_VIEW_SUMMARY"
        PJGVJobViewAll -> "JOB_VIEW_ALL"
        PJGVJobViewDescription -> "JOB_VIEW_DESCRIPTION"

instance FromJSON ProjectsJobsGetView where
    parseJSON = parseJSONText "ProjectsJobsGetView"

instance ToJSON ProjectsJobsGetView where
    toJSON = toJSONText

-- | The support status for this SDK version.
data SdkVersionSdkSupportStatus
    = SVSSSUnknown
      -- ^ @UNKNOWN@
      -- Cloud Dataflow is unaware of this version.
    | SVSSSSupported
      -- ^ @SUPPORTED@
      -- This is a known version of an SDK, and is supported.
    | SVSSSStale
      -- ^ @STALE@
      -- A newer version of the SDK family exists, and an update is recommended.
    | SVSSSDeprecated
      -- ^ @DEPRECATED@
      -- This version of the SDK is deprecated and will eventually be
      -- unsupported.
    | SVSSSUnsupported
      -- ^ @UNSUPPORTED@
      -- Support for this SDK version has ended and it should no longer be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SdkVersionSdkSupportStatus

instance FromHttpApiData SdkVersionSdkSupportStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right SVSSSUnknown
        "SUPPORTED" -> Right SVSSSSupported
        "STALE" -> Right SVSSSStale
        "DEPRECATED" -> Right SVSSSDeprecated
        "UNSUPPORTED" -> Right SVSSSUnsupported
        x -> Left ("Unable to parse SdkVersionSdkSupportStatus from: " <> x)

instance ToHttpApiData SdkVersionSdkSupportStatus where
    toQueryParam = \case
        SVSSSUnknown -> "UNKNOWN"
        SVSSSSupported -> "SUPPORTED"
        SVSSSStale -> "STALE"
        SVSSSDeprecated -> "DEPRECATED"
        SVSSSUnsupported -> "UNSUPPORTED"

instance FromJSON SdkVersionSdkSupportStatus where
    parseJSON = parseJSONText "SdkVersionSdkSupportStatus"

instance ToJSON SdkVersionSdkSupportStatus where
    toJSON = toJSONText
