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

import           Network.Google.Prelude hiding (Bytes)

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

-- | Which Flexible Resource Scheduling mode to run in.
data EnvironmentFlexResourceSchedulingGoal
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

instance Hashable EnvironmentFlexResourceSchedulingGoal

instance FromHttpApiData EnvironmentFlexResourceSchedulingGoal where
    parseQueryParam = \case
        "FLEXRS_UNSPECIFIED" -> Right FlexrsUnspecified
        "FLEXRS_SPEED_OPTIMIZED" -> Right FlexrsSpeedOptimized
        "FLEXRS_COST_OPTIMIZED" -> Right FlexrsCostOptimized
        x -> Left ("Unable to parse EnvironmentFlexResourceSchedulingGoal from: " <> x)

instance ToHttpApiData EnvironmentFlexResourceSchedulingGoal where
    toQueryParam = \case
        FlexrsUnspecified -> "FLEXRS_UNSPECIFIED"
        FlexrsSpeedOptimized -> "FLEXRS_SPEED_OPTIMIZED"
        FlexrsCostOptimized -> "FLEXRS_COST_OPTIMIZED"

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

-- | Portion of this counter, either key or value.
data CounterStructuredNamePortion
    = All
      -- ^ @ALL@
      -- Counter portion has not been set.
    | Key
      -- ^ @KEY@
      -- Counter reports a key.
    | Value
      -- ^ @VALUE@
      -- Counter reports a value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CounterStructuredNamePortion

instance FromHttpApiData CounterStructuredNamePortion where
    parseQueryParam = \case
        "ALL" -> Right All
        "KEY" -> Right Key
        "VALUE" -> Right Value
        x -> Left ("Unable to parse CounterStructuredNamePortion from: " <> x)

instance ToHttpApiData CounterStructuredNamePortion where
    toQueryParam = \case
        All -> "ALL"
        Key -> "KEY"
        Value -> "VALUE"

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
      -- Stage pacakges typically useful to workers written in Python.
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

instance FromJSON JobCurrentState where
    parseJSON = parseJSONText "JobCurrentState"

instance ToJSON JobCurrentState where
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

-- | Type of tranform this stage is executing.
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

instance FromJSON JobRequestedState where
    parseJSON = parseJSONText "JobRequestedState"

instance ToJSON JobRequestedState where
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

instance FromJSON ExecutionStageStateExecutionStageState where
    parseJSON = parseJSONText "ExecutionStageStateExecutionStageState"

instance ToJSON ExecutionStageStateExecutionStageState where
    toJSON = toJSONText

-- | Configuration for VM IPs.
data WorkerPoolIPConfiguration
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

instance Hashable WorkerPoolIPConfiguration

instance FromHttpApiData WorkerPoolIPConfiguration where
    parseQueryParam = \case
        "WORKER_IP_UNSPECIFIED" -> Right WorkerIPUnspecified
        "WORKER_IP_PUBLIC" -> Right WorkerIPPublic
        "WORKER_IP_PRIVATE" -> Right WorkerIPPrivate
        x -> Left ("Unable to parse WorkerPoolIPConfiguration from: " <> x)

instance ToHttpApiData WorkerPoolIPConfiguration where
    toQueryParam = \case
        WorkerIPUnspecified -> "WORKER_IP_UNSPECIFIED"
        WorkerIPPublic -> "WORKER_IP_PUBLIC"
        WorkerIPPrivate -> "WORKER_IP_PRIVATE"

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

-- | The support status for this SDK version.
data SdkVersionSdkSupportStatus
    = Unknown
      -- ^ @UNKNOWN@
      -- Cloud Dataflow is unaware of this version.
    | Supported
      -- ^ @SUPPORTED@
      -- This is a known version of an SDK, and is supported.
    | Stale
      -- ^ @STALE@
      -- A newer version of the SDK family exists, and an update is recommended.
    | Deprecated
      -- ^ @DEPRECATED@
      -- This version of the SDK is deprecated and will eventually be no longer
      -- supported.
    | Unsupported
      -- ^ @UNSUPPORTED@
      -- Support for this SDK version has ended and it should no longer be used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SdkVersionSdkSupportStatus

instance FromHttpApiData SdkVersionSdkSupportStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "SUPPORTED" -> Right Supported
        "STALE" -> Right Stale
        "DEPRECATED" -> Right Deprecated
        "UNSUPPORTED" -> Right Unsupported
        x -> Left ("Unable to parse SdkVersionSdkSupportStatus from: " <> x)

instance ToHttpApiData SdkVersionSdkSupportStatus where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Supported -> "SUPPORTED"
        Stale -> "STALE"
        Deprecated -> "DEPRECATED"
        Unsupported -> "UNSUPPORTED"

instance FromJSON SdkVersionSdkSupportStatus where
    parseJSON = parseJSONText "SdkVersionSdkSupportStatus"

instance ToJSON SdkVersionSdkSupportStatus where
    toJSON = toJSONText
