{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataflow.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataflow.Types.Product where

import           Network.Google.Dataflow.Types.Sum
import           Network.Google.Prelude

-- | A progress measurement of a WorkItem by a worker.
--
-- /See:/ 'approximateProgress' smart constructor.
data ApproximateProgress = ApproximateProgress
    { _apRemainingTime   :: !(Maybe Text)
    , _apPercentComplete :: !(Maybe Float)
    , _apPosition        :: !(Maybe (Maybe Position))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApproximateProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apRemainingTime'
--
-- * 'apPercentComplete'
--
-- * 'apPosition'
approximateProgress
    :: ApproximateProgress
approximateProgress =
    ApproximateProgress
    { _apRemainingTime = Nothing
    , _apPercentComplete = Nothing
    , _apPosition = Nothing
    }

-- | Completion as an estimated time remaining.
apRemainingTime :: Lens' ApproximateProgress (Maybe Text)
apRemainingTime
  = lens _apRemainingTime
      (\ s a -> s{_apRemainingTime = a})

-- | Completion as percentage of the work, from 0.0 (beginning, nothing
-- complete), to 1.0 (end of the work range, entire WorkItem complete).
apPercentComplete :: Lens' ApproximateProgress (Maybe Float)
apPercentComplete
  = lens _apPercentComplete
      (\ s a -> s{_apPercentComplete = a})

-- | A Position within the work to represent a progress.
apPosition :: Lens' ApproximateProgress (Maybe (Maybe Position))
apPosition
  = lens _apPosition (\ s a -> s{_apPosition = a})

-- | Settings for WorkerPool autoscaling.
--
-- /See:/ 'autoscalingSettings' smart constructor.
data AutoscalingSettings = AutoscalingSettings
    { _asMaxNumWorkers :: !(Maybe Int32)
    , _asAlgorithm     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asMaxNumWorkers'
--
-- * 'asAlgorithm'
autoscalingSettings
    :: AutoscalingSettings
autoscalingSettings =
    AutoscalingSettings
    { _asMaxNumWorkers = Nothing
    , _asAlgorithm = Nothing
    }

-- | The maximum number of workers to cap scaling at.
asMaxNumWorkers :: Lens' AutoscalingSettings (Maybe Int32)
asMaxNumWorkers
  = lens _asMaxNumWorkers
      (\ s a -> s{_asMaxNumWorkers = a})

-- | The algorithm to use for autoscaling.
asAlgorithm :: Lens' AutoscalingSettings (Maybe Text)
asAlgorithm
  = lens _asAlgorithm (\ s a -> s{_asAlgorithm = a})

-- | All configuration data for a particular Computation.
--
-- /See:/ 'computationTopology' smart constructor.
data ComputationTopology = ComputationTopology
    { _ctStateFamilies   :: !(Maybe [Maybe StateFamilyConfig])
    , _ctUserStageName   :: !(Maybe Text)
    , _ctInputs          :: !(Maybe [Maybe StreamLocation])
    , _ctKeyRanges       :: !(Maybe [Maybe KeyRangeLocation])
    , _ctOutputs         :: !(Maybe [Maybe StreamLocation])
    , _ctComputationId   :: !(Maybe Text)
    , _ctSystemStageName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ComputationTopology' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctStateFamilies'
--
-- * 'ctUserStageName'
--
-- * 'ctInputs'
--
-- * 'ctKeyRanges'
--
-- * 'ctOutputs'
--
-- * 'ctComputationId'
--
-- * 'ctSystemStageName'
computationTopology
    :: ComputationTopology
computationTopology =
    ComputationTopology
    { _ctStateFamilies = Nothing
    , _ctUserStageName = Nothing
    , _ctInputs = Nothing
    , _ctKeyRanges = Nothing
    , _ctOutputs = Nothing
    , _ctComputationId = Nothing
    , _ctSystemStageName = Nothing
    }

-- | The state family values.
ctStateFamilies :: Lens' ComputationTopology [Maybe StateFamilyConfig]
ctStateFamilies
  = lens _ctStateFamilies
      (\ s a -> s{_ctStateFamilies = a})
      . _Default
      . _Coerce

-- | The user stage name.
ctUserStageName :: Lens' ComputationTopology (Maybe Text)
ctUserStageName
  = lens _ctUserStageName
      (\ s a -> s{_ctUserStageName = a})

-- | The inputs to the computation.
ctInputs :: Lens' ComputationTopology [Maybe StreamLocation]
ctInputs
  = lens _ctInputs (\ s a -> s{_ctInputs = a}) .
      _Default
      . _Coerce

-- | The key ranges processed by the computation.
ctKeyRanges :: Lens' ComputationTopology [Maybe KeyRangeLocation]
ctKeyRanges
  = lens _ctKeyRanges (\ s a -> s{_ctKeyRanges = a}) .
      _Default
      . _Coerce

-- | The outputs from the computation.
ctOutputs :: Lens' ComputationTopology [Maybe StreamLocation]
ctOutputs
  = lens _ctOutputs (\ s a -> s{_ctOutputs = a}) .
      _Default
      . _Coerce

-- | The ID of the computation.
ctComputationId :: Lens' ComputationTopology (Maybe Text)
ctComputationId
  = lens _ctComputationId
      (\ s a -> s{_ctComputationId = a})

-- | The system stage name.
ctSystemStageName :: Lens' ComputationTopology (Maybe Text)
ctSystemStageName
  = lens _ctSystemStageName
      (\ s a -> s{_ctSystemStageName = a})

-- | A position that encapsulates an inner position and an index for the
-- inner position. A ConcatPosition can be used by a reader of a source
-- that encapsulates a set of other sources.
--
-- /See:/ 'concatPosition' smart constructor.
data ConcatPosition = ConcatPosition
    { _cpIndex    :: !(Maybe Int32)
    , _cpPosition :: !(Maybe (Maybe Position))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConcatPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpIndex'
--
-- * 'cpPosition'
concatPosition
    :: ConcatPosition
concatPosition =
    ConcatPosition
    { _cpIndex = Nothing
    , _cpPosition = Nothing
    }

-- | Index of the inner source.
cpIndex :: Lens' ConcatPosition (Maybe Int32)
cpIndex = lens _cpIndex (\ s a -> s{_cpIndex = a})

-- | Position within the inner source.
cpPosition :: Lens' ConcatPosition (Maybe (Maybe Position))
cpPosition
  = lens _cpPosition (\ s a -> s{_cpPosition = a})

-- | Identifies the location of a custom souce.
--
-- /See:/ 'customSourceLocation' smart constructor.
newtype CustomSourceLocation = CustomSourceLocation
    { _cslStateful :: Maybe Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomSourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslStateful'
customSourceLocation
    :: CustomSourceLocation
customSourceLocation =
    CustomSourceLocation
    { _cslStateful = Nothing
    }

-- | Whether this source is stateful.
cslStateful :: Lens' CustomSourceLocation (Maybe Bool)
cslStateful
  = lens _cslStateful (\ s a -> s{_cslStateful = a})

-- | Data disk assignment for a given VM instance.
--
-- /See:/ 'dataDiskAssignment' smart constructor.
data DataDiskAssignment = DataDiskAssignment
    { _ddaVmInstance :: !(Maybe Text)
    , _ddaDataDisks  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataDiskAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddaVmInstance'
--
-- * 'ddaDataDisks'
dataDiskAssignment
    :: DataDiskAssignment
dataDiskAssignment =
    DataDiskAssignment
    { _ddaVmInstance = Nothing
    , _ddaDataDisks = Nothing
    }

-- | VM instance name the data disks mounted to, for example
-- \"myproject-1014-104817-4c2-harness-0\".
ddaVmInstance :: Lens' DataDiskAssignment (Maybe Text)
ddaVmInstance
  = lens _ddaVmInstance
      (\ s a -> s{_ddaVmInstance = a})

-- | Mounted data disks. The order is important a data disk\'s 0-based index
-- in this list defines which persistent directory the disk is mounted to,
-- for example the list of { \"myproject-1014-104817-4c2-harness-0-disk-0\"
-- }, { \"myproject-1014-104817-4c2-harness-0-disk-1\" }.
ddaDataDisks :: Lens' DataDiskAssignment [Text]
ddaDataDisks
  = lens _ddaDataDisks (\ s a -> s{_ddaDataDisks = a})
      . _Default
      . _Coerce

-- | Specification of one of the bundles produced as a result of splitting a
-- Source (e.g. when executing a SourceSplitRequest, or when splitting an
-- active task using WorkItemStatus.dynamic_source_split), relative to the
-- source being split.
--
-- /See:/ 'derivedSource' smart constructor.
data DerivedSource = DerivedSource
    { _dsDerivationMode :: !(Maybe Text)
    , _dsSource         :: !(Maybe (Maybe Source))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DerivedSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsDerivationMode'
--
-- * 'dsSource'
derivedSource
    :: DerivedSource
derivedSource =
    DerivedSource
    { _dsDerivationMode = Nothing
    , _dsSource = Nothing
    }

-- | What source to base the produced source on (if any).
dsDerivationMode :: Lens' DerivedSource (Maybe Text)
dsDerivationMode
  = lens _dsDerivationMode
      (\ s a -> s{_dsDerivationMode = a})

-- | Specification of the source.
dsSource :: Lens' DerivedSource (Maybe (Maybe Source))
dsSource = lens _dsSource (\ s a -> s{_dsSource = a})

-- | Describes the data disk used by a workflow job.
--
-- /See:/ 'disk' smart constructor.
data Disk = Disk
    { _dSizeGb     :: !(Maybe Int32)
    , _dDiskType   :: !(Maybe Text)
    , _dMountPoint :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSizeGb'
--
-- * 'dDiskType'
--
-- * 'dMountPoint'
disk
    :: Disk
disk =
    Disk
    { _dSizeGb = Nothing
    , _dDiskType = Nothing
    , _dMountPoint = Nothing
    }

-- | Size of disk in GB. If zero or unspecified, the service will attempt to
-- choose a reasonable default.
dSizeGb :: Lens' Disk (Maybe Int32)
dSizeGb = lens _dSizeGb (\ s a -> s{_dSizeGb = a})

-- | Disk storage type, as defined by Google Compute Engine. This must be a
-- disk type appropriate to the project and zone in which the workers will
-- run. If unknown or unspecified, the service will attempt to choose a
-- reasonable default. For example, the standard persistent disk type is a
-- resource name typically ending in \"pd-standard\". If SSD persistent
-- disks are available, the resource name typically ends with \"pd-ssd\".
-- The actual valid values are defined the Google Compute Engine API, not
-- by the Dataflow API; consult the Google Compute Engine documentation for
-- more information about determining the set of available disk types for a
-- particular project and zone. Google Compute Engine Disk types are local
-- to a particular project in a particular zone, and so the resource name
-- will typically look something like this:
-- compute.googleapis.com\/projects\/ \/zones\/\/diskTypes\/pd-standard
dDiskType :: Lens' Disk (Maybe Text)
dDiskType
  = lens _dDiskType (\ s a -> s{_dDiskType = a})

-- | Directory in a VM where disk is mounted.
dMountPoint :: Lens' Disk (Maybe Text)
dMountPoint
  = lens _dMountPoint (\ s a -> s{_dMountPoint = a})

-- | When a task splits using WorkItemStatus.dynamic_source_split, this
-- message describes the two parts of the split relative to the description
-- of the current task\'s input.
--
-- /See:/ 'dynamicSourceSplit' smart constructor.
data DynamicSourceSplit = DynamicSourceSplit
    { _dssResidual :: !(Maybe (Maybe DerivedSource))
    , _dssPrimary  :: !(Maybe (Maybe DerivedSource))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicSourceSplit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssResidual'
--
-- * 'dssPrimary'
dynamicSourceSplit
    :: DynamicSourceSplit
dynamicSourceSplit =
    DynamicSourceSplit
    { _dssResidual = Nothing
    , _dssPrimary = Nothing
    }

-- | Residual part (returned to the pool of work). Specified relative to the
-- previously-current source.
dssResidual :: Lens' DynamicSourceSplit (Maybe (Maybe DerivedSource))
dssResidual
  = lens _dssResidual (\ s a -> s{_dssResidual = a})

-- | Primary part (continued to be processed by worker). Specified relative
-- to the previously-current source. Becomes current.
dssPrimary :: Lens' DynamicSourceSplit (Maybe (Maybe DerivedSource))
dssPrimary
  = lens _dssPrimary (\ s a -> s{_dssPrimary = a})

-- | Describes the environment in which a Dataflow Job runs.
--
-- /See:/ 'environment' smart constructor.
data Environment = Environment
    { _eDataset                  :: !(Maybe Text)
    , _eExperiments              :: !(Maybe [Text])
    , _eWorkerPools              :: !(Maybe [Maybe WorkerPool])
    , _eClusterManagerApiService :: !(Maybe Text)
    , _eVersion                  :: !(Maybe EnvironmentVersion)
    , _eInternalExperiments      :: !(Maybe EnvironmentInternalExperiments)
    , _eTempStoragePrefix        :: !(Maybe Text)
    , _eUserAgent                :: !(Maybe EnvironmentUserAgent)
    , _eSdkPipelineOptions       :: !(Maybe EnvironmentSdkPipelineOptions)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDataset'
--
-- * 'eExperiments'
--
-- * 'eWorkerPools'
--
-- * 'eClusterManagerApiService'
--
-- * 'eVersion'
--
-- * 'eInternalExperiments'
--
-- * 'eTempStoragePrefix'
--
-- * 'eUserAgent'
--
-- * 'eSdkPipelineOptions'
environment
    :: Environment
environment =
    Environment
    { _eDataset = Nothing
    , _eExperiments = Nothing
    , _eWorkerPools = Nothing
    , _eClusterManagerApiService = Nothing
    , _eVersion = Nothing
    , _eInternalExperiments = Nothing
    , _eTempStoragePrefix = Nothing
    , _eUserAgent = Nothing
    , _eSdkPipelineOptions = Nothing
    }

-- | The dataset for the current project where various workflow related
-- tables are stored. The supported resource type is: Google BigQuery:
-- bigquery.googleapis.com\/{dataset}
eDataset :: Lens' Environment (Maybe Text)
eDataset = lens _eDataset (\ s a -> s{_eDataset = a})

-- | The list of experiments to enable.
eExperiments :: Lens' Environment [Text]
eExperiments
  = lens _eExperiments (\ s a -> s{_eExperiments = a})
      . _Default
      . _Coerce

-- | Worker pools. At least one \"harness\" worker pool must be specified in
-- order for the job to have workers.
eWorkerPools :: Lens' Environment [Maybe WorkerPool]
eWorkerPools
  = lens _eWorkerPools (\ s a -> s{_eWorkerPools = a})
      . _Default
      . _Coerce

-- | The type of cluster manager API to use. If unknown or unspecified, the
-- service will attempt to choose a reasonable default. This should be in
-- the form of the API service name, e.g. \"compute.googleapis.com\".
eClusterManagerApiService :: Lens' Environment (Maybe Text)
eClusterManagerApiService
  = lens _eClusterManagerApiService
      (\ s a -> s{_eClusterManagerApiService = a})

-- | A structure describing which components and their versions of the
-- service are required in order to run the job.
eVersion :: Lens' Environment (Maybe EnvironmentVersion)
eVersion = lens _eVersion (\ s a -> s{_eVersion = a})

-- | Experimental settings.
eInternalExperiments :: Lens' Environment (Maybe EnvironmentInternalExperiments)
eInternalExperiments
  = lens _eInternalExperiments
      (\ s a -> s{_eInternalExperiments = a})

-- | The prefix of the resources the system should use for temporary storage.
-- The system will append the suffix \"\/temp-{JOBNAME} to this resource
-- prefix, where {JOBNAME} is the value of the job_name field. The
-- resulting bucket and object prefix is used as the prefix of the
-- resources used to store temporary data needed during the job execution.
-- NOTE: This will override the value in taskrunner_settings. The supported
-- resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
eTempStoragePrefix :: Lens' Environment (Maybe Text)
eTempStoragePrefix
  = lens _eTempStoragePrefix
      (\ s a -> s{_eTempStoragePrefix = a})

-- | A description of the process that generated the request.
eUserAgent :: Lens' Environment (Maybe EnvironmentUserAgent)
eUserAgent
  = lens _eUserAgent (\ s a -> s{_eUserAgent = a})

-- | The Dataflow SDK pipeline options specified by the user. These options
-- are passed through the service and are used to recreate the SDK pipeline
-- options on the worker in a language agnostic and platform independent
-- way.
eSdkPipelineOptions :: Lens' Environment (Maybe EnvironmentSdkPipelineOptions)
eSdkPipelineOptions
  = lens _eSdkPipelineOptions
      (\ s a -> s{_eSdkPipelineOptions = a})

-- | Experimental settings.
--
-- /See:/ 'environmentInternalExperiments' smart constructor.
data EnvironmentInternalExperiments =
    EnvironmentInternalExperiments
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnvironmentInternalExperiments' with the minimum fields required to make a request.
--
environmentInternalExperiments
    :: EnvironmentInternalExperiments
environmentInternalExperiments = EnvironmentInternalExperiments

-- | The Dataflow SDK pipeline options specified by the user. These options
-- are passed through the service and are used to recreate the SDK pipeline
-- options on the worker in a language agnostic and platform independent
-- way.
--
-- /See:/ 'environmentSdkPipelineOptions' smart constructor.
data EnvironmentSdkPipelineOptions =
    EnvironmentSdkPipelineOptions
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnvironmentSdkPipelineOptions' with the minimum fields required to make a request.
--
environmentSdkPipelineOptions
    :: EnvironmentSdkPipelineOptions
environmentSdkPipelineOptions = EnvironmentSdkPipelineOptions

-- | A description of the process that generated the request.
--
-- /See:/ 'environmentUserAgent' smart constructor.
data EnvironmentUserAgent =
    EnvironmentUserAgent
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnvironmentUserAgent' with the minimum fields required to make a request.
--
environmentUserAgent
    :: EnvironmentUserAgent
environmentUserAgent = EnvironmentUserAgent

-- | A structure describing which components and their versions of the
-- service are required in order to run the job.
--
-- /See:/ 'environmentVersion' smart constructor.
data EnvironmentVersion =
    EnvironmentVersion
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnvironmentVersion' with the minimum fields required to make a request.
--
environmentVersion
    :: EnvironmentVersion
environmentVersion = EnvironmentVersion

-- | An instruction that copies its inputs (zero or more) to its (single)
-- output.
--
-- /See:/ 'flattenInstruction' smart constructor.
newtype FlattenInstruction = FlattenInstruction
    { _fiInputs :: Maybe [Maybe InstructionInput]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlattenInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiInputs'
flattenInstruction
    :: FlattenInstruction
flattenInstruction =
    FlattenInstruction
    { _fiInputs = Nothing
    }

-- | Describes the inputs to the flatten instruction.
fiInputs :: Lens' FlattenInstruction [Maybe InstructionInput]
fiInputs
  = lens _fiInputs (\ s a -> s{_fiInputs = a}) .
      _Default
      . _Coerce

-- | An input of an instruction, as a reference to an output of a producer
-- instruction.
--
-- /See:/ 'instructionInput' smart constructor.
data InstructionInput = InstructionInput
    { _iiProducerInstructionIndex :: !(Maybe Int32)
    , _iiOutputNum                :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstructionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProducerInstructionIndex'
--
-- * 'iiOutputNum'
instructionInput
    :: InstructionInput
instructionInput =
    InstructionInput
    { _iiProducerInstructionIndex = Nothing
    , _iiOutputNum = Nothing
    }

-- | The index (origin zero) of the parallel instruction that produces the
-- output to be consumed by this input. This index is relative to the list
-- of instructions in this input\'s instruction\'s containing MapTask.
iiProducerInstructionIndex :: Lens' InstructionInput (Maybe Int32)
iiProducerInstructionIndex
  = lens _iiProducerInstructionIndex
      (\ s a -> s{_iiProducerInstructionIndex = a})

-- | The output index (origin zero) within the producer.
iiOutputNum :: Lens' InstructionInput (Maybe Int32)
iiOutputNum
  = lens _iiOutputNum (\ s a -> s{_iiOutputNum = a})

-- | An output of an instruction.
--
-- /See:/ 'instructionOutput' smart constructor.
data InstructionOutput = InstructionOutput
    { _ioCodec      :: !(Maybe InstructionOutputCodec)
    , _ioName       :: !(Maybe Text)
    , _ioSystemName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstructionOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioCodec'
--
-- * 'ioName'
--
-- * 'ioSystemName'
instructionOutput
    :: InstructionOutput
instructionOutput =
    InstructionOutput
    { _ioCodec = Nothing
    , _ioName = Nothing
    , _ioSystemName = Nothing
    }

-- | The codec to use to encode data being written via this output.
ioCodec :: Lens' InstructionOutput (Maybe InstructionOutputCodec)
ioCodec = lens _ioCodec (\ s a -> s{_ioCodec = a})

-- | The user-provided name of this output.
ioName :: Lens' InstructionOutput (Maybe Text)
ioName = lens _ioName (\ s a -> s{_ioName = a})

-- | System-defined name of this output. Unique across the workflow.
ioSystemName :: Lens' InstructionOutput (Maybe Text)
ioSystemName
  = lens _ioSystemName (\ s a -> s{_ioSystemName = a})

-- | The codec to use to encode data being written via this output.
--
-- /See:/ 'instructionOutputCodec' smart constructor.
data InstructionOutputCodec =
    InstructionOutputCodec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstructionOutputCodec' with the minimum fields required to make a request.
--
instructionOutputCodec
    :: InstructionOutputCodec
instructionOutputCodec = InstructionOutputCodec

-- | Defines a job to be run by the Dataflow service.
--
-- /See:/ 'job' smart constructor.
data Job = Job
    { _jobRequestedState       :: !(Maybe Text)
    , _jobEnvironment          :: !(Maybe (Maybe Environment))
    , _jobClientRequestId      :: !(Maybe Text)
    , _jobCurrentState         :: !(Maybe Text)
    , _jobReplacedByJobId      :: !(Maybe Text)
    , _jobSteps                :: !(Maybe [Maybe Step])
    , _jobExecutionInfo        :: !(Maybe (Maybe JobExecutionInfo))
    , _jobName                 :: !(Maybe Text)
    , _jobTransformNameMapping :: !(Maybe JobTransformNameMapping)
    , _jobId                   :: !(Maybe Text)
    , _jobProjectId            :: !(Maybe Text)
    , _jobType                 :: !(Maybe Text)
    , _jobCurrentStateTime     :: !(Maybe Text)
    , _jobReplaceJobId         :: !(Maybe Text)
    , _jobCreateTime           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobRequestedState'
--
-- * 'jobEnvironment'
--
-- * 'jobClientRequestId'
--
-- * 'jobCurrentState'
--
-- * 'jobReplacedByJobId'
--
-- * 'jobSteps'
--
-- * 'jobExecutionInfo'
--
-- * 'jobName'
--
-- * 'jobTransformNameMapping'
--
-- * 'jobId'
--
-- * 'jobProjectId'
--
-- * 'jobType'
--
-- * 'jobCurrentStateTime'
--
-- * 'jobReplaceJobId'
--
-- * 'jobCreateTime'
job
    :: Job
job =
    Job
    { _jobRequestedState = Nothing
    , _jobEnvironment = Nothing
    , _jobClientRequestId = Nothing
    , _jobCurrentState = Nothing
    , _jobReplacedByJobId = Nothing
    , _jobSteps = Nothing
    , _jobExecutionInfo = Nothing
    , _jobName = Nothing
    , _jobTransformNameMapping = Nothing
    , _jobId = Nothing
    , _jobProjectId = Nothing
    , _jobType = Nothing
    , _jobCurrentStateTime = Nothing
    , _jobReplaceJobId = Nothing
    , _jobCreateTime = Nothing
    }

-- | The job\'s requested state. UpdateJob may be used to switch between the
-- JOB_STATE_STOPPED and JOB_STATE_RUNNING states, by setting
-- requested_state. UpdateJob may also be used to directly set a job\'s
-- requested state to JOB_STATE_CANCELLED or JOB_STATE_DONE, irrevocably
-- terminating the job if it has not already reached a terminal state.
jobRequestedState :: Lens' Job (Maybe Text)
jobRequestedState
  = lens _jobRequestedState
      (\ s a -> s{_jobRequestedState = a})

-- | Environment for the job.
jobEnvironment :: Lens' Job (Maybe (Maybe Environment))
jobEnvironment
  = lens _jobEnvironment
      (\ s a -> s{_jobEnvironment = a})

-- | Client\'s unique identifier of the job, re-used by SDK across retried
-- attempts. If this field is set, the service will ensure its uniqueness.
-- That is, the request to create a job will fail if the service has
-- knowledge of a previously submitted job with the same client\'s id and
-- job name. The caller may, for example, use this field to ensure
-- idempotence of job creation across retried attempts to create a job. By
-- default, the field is empty and, in that case, the service ignores it.
jobClientRequestId :: Lens' Job (Maybe Text)
jobClientRequestId
  = lens _jobClientRequestId
      (\ s a -> s{_jobClientRequestId = a})

-- | The current state of the job. Jobs are created in the JOB_STATE_STOPPED
-- state unless otherwise specified. A job in the JOB_STATE_RUNNING state
-- may asynchronously enter a terminal state. Once a job has reached a
-- terminal state, no further state updates may be made. This field may be
-- mutated by the Dataflow service; callers cannot mutate it.
jobCurrentState :: Lens' Job (Maybe Text)
jobCurrentState
  = lens _jobCurrentState
      (\ s a -> s{_jobCurrentState = a})

-- | If another job is an update of this job (and thus, this job is in
-- JOB_STATE_UPDATED), this field will contain the ID of that job.
jobReplacedByJobId :: Lens' Job (Maybe Text)
jobReplacedByJobId
  = lens _jobReplacedByJobId
      (\ s a -> s{_jobReplacedByJobId = a})

-- | The top-level steps that constitute the entire job.
jobSteps :: Lens' Job [Maybe Step]
jobSteps
  = lens _jobSteps (\ s a -> s{_jobSteps = a}) .
      _Default
      . _Coerce

-- | Information about how the Dataflow service will actually run the job.
jobExecutionInfo :: Lens' Job (Maybe (Maybe JobExecutionInfo))
jobExecutionInfo
  = lens _jobExecutionInfo
      (\ s a -> s{_jobExecutionInfo = a})

-- | The user-specified Dataflow job name. Only one Job with a given name may
-- exist in a project at any given time. If a caller attempts to create a
-- Job with the same name as an already-existing Job, the attempt will
-- return the existing Job. The name must match the regular expression
-- [a-z]([-a-z0-9]{0,38}[a-z0-9])?
jobName :: Lens' Job (Maybe Text)
jobName = lens _jobName (\ s a -> s{_jobName = a})

-- | Map of transform name prefixes of the job to be replaced to the
-- corresponding name prefixes of the new job.
jobTransformNameMapping :: Lens' Job (Maybe JobTransformNameMapping)
jobTransformNameMapping
  = lens _jobTransformNameMapping
      (\ s a -> s{_jobTransformNameMapping = a})

-- | The unique ID of this job. This field is set by the Dataflow service
-- when the Job is created, and is immutable for the life of the Job.
jobId :: Lens' Job (Maybe Text)
jobId = lens _jobId (\ s a -> s{_jobId = a})

-- | The project which owns the job.
jobProjectId :: Lens' Job (Maybe Text)
jobProjectId
  = lens _jobProjectId (\ s a -> s{_jobProjectId = a})

-- | The type of dataflow job.
jobType :: Lens' Job (Maybe Text)
jobType = lens _jobType (\ s a -> s{_jobType = a})

-- | The timestamp associated with the current state.
jobCurrentStateTime :: Lens' Job (Maybe Text)
jobCurrentStateTime
  = lens _jobCurrentStateTime
      (\ s a -> s{_jobCurrentStateTime = a})

-- | If this job is an update of an existing job, this field will be the ID
-- of the job it replaced. When sending a CreateJobRequest, you can update
-- a job by specifying it here. The job named here will be stopped, and its
-- intermediate state transferred to this job.
jobReplaceJobId :: Lens' Job (Maybe Text)
jobReplaceJobId
  = lens _jobReplaceJobId
      (\ s a -> s{_jobReplaceJobId = a})

-- | Timestamp when job was initially created. Immutable, set by the Dataflow
-- service.
jobCreateTime :: Lens' Job (Maybe Text)
jobCreateTime
  = lens _jobCreateTime
      (\ s a -> s{_jobCreateTime = a})

-- | Additional information about how a Dataflow job will be executed which
-- isn’t contained in the submitted job.
--
-- /See:/ 'jobExecutionInfo' smart constructor.
newtype JobExecutionInfo = JobExecutionInfo
    { _jeiStages :: Maybe JobExecutionInfoStages
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobExecutionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeiStages'
jobExecutionInfo
    :: JobExecutionInfo
jobExecutionInfo =
    JobExecutionInfo
    { _jeiStages = Nothing
    }

-- | A mapping from each stage to the information about that stage.
jeiStages :: Lens' JobExecutionInfo (Maybe JobExecutionInfoStages)
jeiStages
  = lens _jeiStages (\ s a -> s{_jeiStages = a})

-- | A mapping from each stage to the information about that stage.
--
-- /See:/ 'jobExecutionInfoStages' smart constructor.
data JobExecutionInfoStages =
    JobExecutionInfoStages
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobExecutionInfoStages' with the minimum fields required to make a request.
--
jobExecutionInfoStages
    :: JobExecutionInfoStages
jobExecutionInfoStages = JobExecutionInfoStages

-- | Contains information about how a particular
-- [google.dataflow.v1beta3.Step][google.dataflow.v1beta3.Step] will be
-- executed.
--
-- /See:/ 'jobExecutionStageInfo' smart constructor.
newtype JobExecutionStageInfo = JobExecutionStageInfo
    { _jesiStepName :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobExecutionStageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jesiStepName'
jobExecutionStageInfo
    :: JobExecutionStageInfo
jobExecutionStageInfo =
    JobExecutionStageInfo
    { _jesiStepName = Nothing
    }

-- | The steps associated with the execution stage. Note that stages may have
-- several steps, and that a given step might be run by more than one
-- stage.
jesiStepName :: Lens' JobExecutionStageInfo [Text]
jesiStepName
  = lens _jesiStepName (\ s a -> s{_jesiStepName = a})
      . _Default
      . _Coerce

-- | A particular message pertaining to a Dataflow job.
--
-- /See:/ 'jobMessage' smart constructor.
data JobMessage = JobMessage
    { _jmTime              :: !(Maybe Text)
    , _jmMessageText       :: !(Maybe Text)
    , _jmMessageImportance :: !(Maybe Text)
    , _jmId                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmTime'
--
-- * 'jmMessageText'
--
-- * 'jmMessageImportance'
--
-- * 'jmId'
jobMessage
    :: JobMessage
jobMessage =
    JobMessage
    { _jmTime = Nothing
    , _jmMessageText = Nothing
    , _jmMessageImportance = Nothing
    , _jmId = Nothing
    }

-- | The timestamp of the message.
jmTime :: Lens' JobMessage (Maybe Text)
jmTime = lens _jmTime (\ s a -> s{_jmTime = a})

-- | The text of the message.
jmMessageText :: Lens' JobMessage (Maybe Text)
jmMessageText
  = lens _jmMessageText
      (\ s a -> s{_jmMessageText = a})

-- | Importance level of the message.
jmMessageImportance :: Lens' JobMessage (Maybe Text)
jmMessageImportance
  = lens _jmMessageImportance
      (\ s a -> s{_jmMessageImportance = a})

-- | Identifies the message. This is automatically generated by the service;
-- the caller should treat it as an opaque string.
jmId :: Lens' JobMessage (Maybe Text)
jmId = lens _jmId (\ s a -> s{_jmId = a})

-- | JobMetrics contains a collection of metrics descibing the detailed
-- progress of a Dataflow job. Metrics correspond to user-defined and
-- system-defined metrics in the job. This resource captures only the most
-- recent values of each metric; time-series data can be queried for them
-- (under the same metric names) from Cloud Monitoring.
--
-- /See:/ 'jobMetrics' smart constructor.
data JobMetrics = JobMetrics
    { _jmMetrics    :: !(Maybe [Maybe MetricUpdate])
    , _jmMetricTime :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmMetrics'
--
-- * 'jmMetricTime'
jobMetrics
    :: JobMetrics
jobMetrics =
    JobMetrics
    { _jmMetrics = Nothing
    , _jmMetricTime = Nothing
    }

-- | All metrics for this job.
jmMetrics :: Lens' JobMetrics [Maybe MetricUpdate]
jmMetrics
  = lens _jmMetrics (\ s a -> s{_jmMetrics = a}) .
      _Default
      . _Coerce

-- | Timestamp as of which metric values are current.
jmMetricTime :: Lens' JobMetrics (Maybe Text)
jmMetricTime
  = lens _jmMetricTime (\ s a -> s{_jmMetricTime = a})

-- | Map of transform name prefixes of the job to be replaced to the
-- corresponding name prefixes of the new job.
--
-- /See:/ 'jobTransformNameMapping' smart constructor.
data JobTransformNameMapping =
    JobTransformNameMapping
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobTransformNameMapping' with the minimum fields required to make a request.
--
jobTransformNameMapping
    :: JobTransformNameMapping
jobTransformNameMapping = JobTransformNameMapping

-- | Data disk assignment information for a specific key-range of a sharded
-- computation. Currently we only support UTF-8 character splits to
-- simplify encoding into JSON.
--
-- /See:/ 'keyRangeDataDiskAssignment' smart constructor.
data KeyRangeDataDiskAssignment = KeyRangeDataDiskAssignment
    { _krddaDataDisk :: !(Maybe Text)
    , _krddaStart    :: !(Maybe Text)
    , _krddaEnd      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeyRangeDataDiskAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krddaDataDisk'
--
-- * 'krddaStart'
--
-- * 'krddaEnd'
keyRangeDataDiskAssignment
    :: KeyRangeDataDiskAssignment
keyRangeDataDiskAssignment =
    KeyRangeDataDiskAssignment
    { _krddaDataDisk = Nothing
    , _krddaStart = Nothing
    , _krddaEnd = Nothing
    }

-- | The name of the data disk where data for this range is stored. This name
-- is local to the Google Cloud Platform project and uniquely identifies
-- the disk within that project, for example
-- \"myproject-1014-104817-4c2-harness-0-disk-1\".
krddaDataDisk :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaDataDisk
  = lens _krddaDataDisk
      (\ s a -> s{_krddaDataDisk = a})

-- | The start (inclusive) of the key range.
krddaStart :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaStart
  = lens _krddaStart (\ s a -> s{_krddaStart = a})

-- | The end (exclusive) of the key range.
krddaEnd :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaEnd = lens _krddaEnd (\ s a -> s{_krddaEnd = a})

-- | Location information for a specific key-range of a sharded computation.
-- Currently we only support UTF-8 character splits to simplify encoding
-- into JSON.
--
-- /See:/ 'keyRangeLocation' smart constructor.
data KeyRangeLocation = KeyRangeLocation
    { _krlPersistentDirectory :: !(Maybe Text)
    , _krlDataDisk            :: !(Maybe Text)
    , _krlStart               :: !(Maybe Text)
    , _krlDeliveryEndpoint    :: !(Maybe Text)
    , _krlEnd                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeyRangeLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krlPersistentDirectory'
--
-- * 'krlDataDisk'
--
-- * 'krlStart'
--
-- * 'krlDeliveryEndpoint'
--
-- * 'krlEnd'
keyRangeLocation
    :: KeyRangeLocation
keyRangeLocation =
    KeyRangeLocation
    { _krlPersistentDirectory = Nothing
    , _krlDataDisk = Nothing
    , _krlStart = Nothing
    , _krlDeliveryEndpoint = Nothing
    , _krlEnd = Nothing
    }

-- | The location of the persistent state for this range, as a persistent
-- directory in the worker local filesystem.
krlPersistentDirectory :: Lens' KeyRangeLocation (Maybe Text)
krlPersistentDirectory
  = lens _krlPersistentDirectory
      (\ s a -> s{_krlPersistentDirectory = a})

-- | The name of the data disk where data for this range is stored. This name
-- is local to the Google Cloud Platform project and uniquely identifies
-- the disk within that project, for example
-- \"myproject-1014-104817-4c2-harness-0-disk-1\".
krlDataDisk :: Lens' KeyRangeLocation (Maybe Text)
krlDataDisk
  = lens _krlDataDisk (\ s a -> s{_krlDataDisk = a})

-- | The start (inclusive) of the key range.
krlStart :: Lens' KeyRangeLocation (Maybe Text)
krlStart = lens _krlStart (\ s a -> s{_krlStart = a})

-- | The physical location of this range assignment to be used for streaming
-- computation cross-worker message delivery.
krlDeliveryEndpoint :: Lens' KeyRangeLocation (Maybe Text)
krlDeliveryEndpoint
  = lens _krlDeliveryEndpoint
      (\ s a -> s{_krlDeliveryEndpoint = a})

-- | The end (exclusive) of the key range.
krlEnd :: Lens' KeyRangeLocation (Maybe Text)
krlEnd = lens _krlEnd (\ s a -> s{_krlEnd = a})

-- | Request to lease WorkItems.
--
-- /See:/ 'leaseWorkItemRequest' smart constructor.
data LeaseWorkItemRequest = LeaseWorkItemRequest
    { _lwirWorkItemTypes          :: !(Maybe [Text])
    , _lwirCurrentWorkerTime      :: !(Maybe Text)
    , _lwirWorkerCapabilities     :: !(Maybe [Text])
    , _lwirRequestedLeaseDuration :: !(Maybe Text)
    , _lwirWorkerId               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaseWorkItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwirWorkItemTypes'
--
-- * 'lwirCurrentWorkerTime'
--
-- * 'lwirWorkerCapabilities'
--
-- * 'lwirRequestedLeaseDuration'
--
-- * 'lwirWorkerId'
leaseWorkItemRequest
    :: LeaseWorkItemRequest
leaseWorkItemRequest =
    LeaseWorkItemRequest
    { _lwirWorkItemTypes = Nothing
    , _lwirCurrentWorkerTime = Nothing
    , _lwirWorkerCapabilities = Nothing
    , _lwirRequestedLeaseDuration = Nothing
    , _lwirWorkerId = Nothing
    }

-- | Filter for WorkItem type.
lwirWorkItemTypes :: Lens' LeaseWorkItemRequest [Text]
lwirWorkItemTypes
  = lens _lwirWorkItemTypes
      (\ s a -> s{_lwirWorkItemTypes = a})
      . _Default
      . _Coerce

-- | The current timestamp at the worker.
lwirCurrentWorkerTime :: Lens' LeaseWorkItemRequest (Maybe Text)
lwirCurrentWorkerTime
  = lens _lwirCurrentWorkerTime
      (\ s a -> s{_lwirCurrentWorkerTime = a})

-- | Worker capabilities. WorkItems might be limited to workers with specific
-- capabilities.
lwirWorkerCapabilities :: Lens' LeaseWorkItemRequest [Text]
lwirWorkerCapabilities
  = lens _lwirWorkerCapabilities
      (\ s a -> s{_lwirWorkerCapabilities = a})
      . _Default
      . _Coerce

-- | The initial lease period.
lwirRequestedLeaseDuration :: Lens' LeaseWorkItemRequest (Maybe Text)
lwirRequestedLeaseDuration
  = lens _lwirRequestedLeaseDuration
      (\ s a -> s{_lwirRequestedLeaseDuration = a})

-- | Identifies the worker leasing work -- typically the ID of the virtual
-- machine running the worker.
lwirWorkerId :: Lens' LeaseWorkItemRequest (Maybe Text)
lwirWorkerId
  = lens _lwirWorkerId (\ s a -> s{_lwirWorkerId = a})

-- | Response to a request to lease WorkItems.
--
-- /See:/ 'leaseWorkItemResponse' smart constructor.
newtype LeaseWorkItemResponse = LeaseWorkItemResponse
    { _lwirWorkItems :: Maybe [Maybe WorkItem]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaseWorkItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwirWorkItems'
leaseWorkItemResponse
    :: LeaseWorkItemResponse
leaseWorkItemResponse =
    LeaseWorkItemResponse
    { _lwirWorkItems = Nothing
    }

-- | A list of the leased WorkItems.
lwirWorkItems :: Lens' LeaseWorkItemResponse [Maybe WorkItem]
lwirWorkItems
  = lens _lwirWorkItems
      (\ s a -> s{_lwirWorkItems = a})
      . _Default
      . _Coerce

-- | Response to a request to list job messages.
--
-- /See:/ 'listJobMessagesResponse' smart constructor.
data ListJobMessagesResponse = ListJobMessagesResponse
    { _ljmrJobMessages   :: !(Maybe [Maybe JobMessage])
    , _ljmrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListJobMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljmrJobMessages'
--
-- * 'ljmrNextPageToken'
listJobMessagesResponse
    :: ListJobMessagesResponse
listJobMessagesResponse =
    ListJobMessagesResponse
    { _ljmrJobMessages = Nothing
    , _ljmrNextPageToken = Nothing
    }

-- | Messages in ascending timestamp order.
ljmrJobMessages :: Lens' ListJobMessagesResponse [Maybe JobMessage]
ljmrJobMessages
  = lens _ljmrJobMessages
      (\ s a -> s{_ljmrJobMessages = a})
      . _Default
      . _Coerce

-- | The token to obtain the next page of results if there are more.
ljmrNextPageToken :: Lens' ListJobMessagesResponse (Maybe Text)
ljmrNextPageToken
  = lens _ljmrNextPageToken
      (\ s a -> s{_ljmrNextPageToken = a})

-- | Response to a request to list Dataflow jobs. This may be a partial
-- response, depending on the page size in the ListJobsRequest.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs          :: !(Maybe [Maybe Job])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
    ListJobsResponse
    { _ljrNextPageToken = Nothing
    , _ljrJobs = Nothing
    }

-- | Set if there may be more results than fit in this response.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | A subset of the requested job information.
ljrJobs :: Lens' ListJobsResponse [Maybe Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

-- | MapTask consists of an ordered set of instructions, each of which
-- describes one particular low-level operation for the worker to perform
-- in order to accomplish the MapTask\'s WorkItem. Each instruction must
-- appear in the list before any instructions which depends on its output.
--
-- /See:/ 'mapTask' smart constructor.
data MapTask = MapTask
    { _mtInstructions :: !(Maybe [Maybe ParallelInstruction])
    , _mtSystemName   :: !(Maybe Text)
    , _mtStageName    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtInstructions'
--
-- * 'mtSystemName'
--
-- * 'mtStageName'
mapTask
    :: MapTask
mapTask =
    MapTask
    { _mtInstructions = Nothing
    , _mtSystemName = Nothing
    , _mtStageName = Nothing
    }

-- | The instructions in the MapTask.
mtInstructions :: Lens' MapTask [Maybe ParallelInstruction]
mtInstructions
  = lens _mtInstructions
      (\ s a -> s{_mtInstructions = a})
      . _Default
      . _Coerce

-- | System-defined name of this MapTask. Unique across the workflow.
mtSystemName :: Lens' MapTask (Maybe Text)
mtSystemName
  = lens _mtSystemName (\ s a -> s{_mtSystemName = a})

-- | System-defined name of the stage containing this MapTask. Unique across
-- the workflow.
mtStageName :: Lens' MapTask (Maybe Text)
mtStageName
  = lens _mtStageName (\ s a -> s{_mtStageName = a})

-- | Identifies a metric, by describing the source which generated the
-- metric.
--
-- /See:/ 'metricStructuredName' smart constructor.
data MetricStructuredName = MetricStructuredName
    { _msnOrigin  :: !(Maybe Text)
    , _msnContext :: !(Maybe MetricStructuredNameContext)
    , _msnName    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricStructuredName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msnOrigin'
--
-- * 'msnContext'
--
-- * 'msnName'
metricStructuredName
    :: MetricStructuredName
metricStructuredName =
    MetricStructuredName
    { _msnOrigin = Nothing
    , _msnContext = Nothing
    , _msnName = Nothing
    }

-- | Origin (namespace) of metric name. May be blank for user-define metrics;
-- will be \"dataflow\" for metrics defined by the Dataflow service or SDK.
msnOrigin :: Lens' MetricStructuredName (Maybe Text)
msnOrigin
  = lens _msnOrigin (\ s a -> s{_msnOrigin = a})

-- | Zero or more labeled fields which identify the part of the job this
-- metric is associated with, such as the name of a step or collection. For
-- example, built-in counters associated with steps will have
-- context[\'step\'] = . Counters associated with PCollections in the SDK
-- will have context[\'pcollection\'] = .
msnContext :: Lens' MetricStructuredName (Maybe MetricStructuredNameContext)
msnContext
  = lens _msnContext (\ s a -> s{_msnContext = a})

-- | Worker-defined metric name.
msnName :: Lens' MetricStructuredName (Maybe Text)
msnName = lens _msnName (\ s a -> s{_msnName = a})

-- | Zero or more labeled fields which identify the part of the job this
-- metric is associated with, such as the name of a step or collection. For
-- example, built-in counters associated with steps will have
-- context[\'step\'] = . Counters associated with PCollections in the SDK
-- will have context[\'pcollection\'] = .
--
-- /See:/ 'metricStructuredNameContext' smart constructor.
data MetricStructuredNameContext =
    MetricStructuredNameContext
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricStructuredNameContext' with the minimum fields required to make a request.
--
metricStructuredNameContext
    :: MetricStructuredNameContext
metricStructuredNameContext = MetricStructuredNameContext

-- | Describes the state of a metric.
--
-- /See:/ 'metricUpdate' smart constructor.
data MetricUpdate = MetricUpdate
    { _muMeanSum    :: !(Maybe (Either Text Int64))
    , _muInternal   :: !(Maybe (Either Text Int64))
    , _muSet        :: !(Maybe (Either Text Int64))
    , _muCumulative :: !(Maybe Bool)
    , _muKind       :: !(Maybe Text)
    , _muUpdateTime :: !(Maybe Text)
    , _muMeanCount  :: !(Maybe (Either Text Int64))
    , _muName       :: !(Maybe (Maybe MetricStructuredName))
    , _muScalar     :: !(Maybe (Either Text Int64))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muMeanSum'
--
-- * 'muInternal'
--
-- * 'muSet'
--
-- * 'muCumulative'
--
-- * 'muKind'
--
-- * 'muUpdateTime'
--
-- * 'muMeanCount'
--
-- * 'muName'
--
-- * 'muScalar'
metricUpdate
    :: MetricUpdate
metricUpdate =
    MetricUpdate
    { _muMeanSum = Nothing
    , _muInternal = Nothing
    , _muSet = Nothing
    , _muCumulative = Nothing
    , _muKind = Nothing
    , _muUpdateTime = Nothing
    , _muMeanCount = Nothing
    , _muName = Nothing
    , _muScalar = Nothing
    }

-- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This
-- holds the sum of the aggregated values and is used in combination with
-- mean_count below to obtain the actual mean aggregate value. The only
-- possible value types are Long and Double.
muMeanSum :: Lens' MetricUpdate (Maybe (Either Text Int64))
muMeanSum
  = lens _muMeanSum (\ s a -> s{_muMeanSum = a})

-- | Worker-computed aggregate value for internal use by the Dataflow
-- service.
muInternal :: Lens' MetricUpdate (Maybe (Either Text Int64))
muInternal
  = lens _muInternal (\ s a -> s{_muInternal = a})

-- | Worker-computed aggregate value for the \"Set\" aggregation kind. The
-- only possible value type is a list of Values whose type can be Long,
-- Double, or String, according to the metric\'s type. All Values in the
-- list must be of the same type.
muSet :: Lens' MetricUpdate (Maybe (Either Text Int64))
muSet = lens _muSet (\ s a -> s{_muSet = a})

-- | True if this metric is reported as the total cumulative aggregate value
-- accumulated since the worker started working on this WorkItem. By
-- default this is false, indicating that this metric is reported as a
-- delta that is not associated with any WorkItem.
muCumulative :: Lens' MetricUpdate (Maybe Bool)
muCumulative
  = lens _muCumulative (\ s a -> s{_muCumulative = a})

-- | Metric aggregation kind. The possible metric aggregation kinds are
-- \"Sum\", \"Max\", \"Min\", \"Mean\", \"Set\", \"And\", and \"Or\". The
-- specified aggregation kind is case-insensitive. If omitted, this is not
-- an aggregated value but instead a single metric sample value.
muKind :: Lens' MetricUpdate (Maybe Text)
muKind = lens _muKind (\ s a -> s{_muKind = a})

-- | Timestamp associated with the metric value. Optional when workers are
-- reporting work progress; it will be filled in responses from the metrics
-- API.
muUpdateTime :: Lens' MetricUpdate (Maybe Text)
muUpdateTime
  = lens _muUpdateTime (\ s a -> s{_muUpdateTime = a})

-- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This
-- holds the count of the aggregated values and is used in combination with
-- mean_sum above to obtain the actual mean aggregate value. The only
-- possible value type is Long.
muMeanCount :: Lens' MetricUpdate (Maybe (Either Text Int64))
muMeanCount
  = lens _muMeanCount (\ s a -> s{_muMeanCount = a})

-- | Name of the metric.
muName :: Lens' MetricUpdate (Maybe (Maybe MetricStructuredName))
muName = lens _muName (\ s a -> s{_muName = a})

-- | Worker-computed aggregate value for aggregation kinds \"Sum\", \"Max\",
-- \"Min\", \"And\", and \"Or\". The possible value types are Long, Double,
-- and Boolean.
muScalar :: Lens' MetricUpdate (Maybe (Either Text Int64))
muScalar = lens _muScalar (\ s a -> s{_muScalar = a})

-- | Describes mounted data disk.
--
-- /See:/ 'mountedDataDisk' smart constructor.
newtype MountedDataDisk = MountedDataDisk
    { _mddDataDisk :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MountedDataDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddDataDisk'
mountedDataDisk
    :: MountedDataDisk
mountedDataDisk =
    MountedDataDisk
    { _mddDataDisk = Nothing
    }

-- | The name of the data disk. This name is local to the Google Cloud
-- Platform project and uniquely identifies the disk within that project,
-- for example \"myproject-1014-104817-4c2-harness-0-disk-1\".
mddDataDisk :: Lens' MountedDataDisk (Maybe Text)
mddDataDisk
  = lens _mddDataDisk (\ s a -> s{_mddDataDisk = a})

-- | Information about an output of a multi-output DoFn.
--
-- /See:/ 'multiOutputInfo' smart constructor.
newtype MultiOutputInfo = MultiOutputInfo
    { _moiTag :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MultiOutputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moiTag'
multiOutputInfo
    :: MultiOutputInfo
multiOutputInfo =
    MultiOutputInfo
    { _moiTag = Nothing
    }

-- | The id of the tag the user code will emit to this output by; this should
-- correspond to the tag of some SideInputInfo.
moiTag :: Lens' MultiOutputInfo (Maybe Text)
moiTag = lens _moiTag (\ s a -> s{_moiTag = a})

-- | Packages that need to be installed in order for a worker to run the
-- steps of the Dataflow job which will be assigned to its worker pool.
-- This is the mechanism by which the SDK causes code to be loaded onto the
-- workers. For example, the Dataflow Java SDK might use this to install
-- jars containing the user\'s code and all of the various dependencies
-- (libraries, data files, etc) required in order for that code to run.
--
-- /See:/ 'package' smart constructor.
data Package = Package
    { _pLocation :: !(Maybe Text)
    , _pName     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Package' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pLocation'
--
-- * 'pName'
package
    :: Package
package =
    Package
    { _pLocation = Nothing
    , _pName = Nothing
    }

-- | The resource to read the package from. The supported resource type is:
-- Google Cloud Storage: storage.googleapis.com\/{bucket}
-- bucket.storage.googleapis.com\/
pLocation :: Lens' Package (Maybe Text)
pLocation
  = lens _pLocation (\ s a -> s{_pLocation = a})

-- | The name of the package.
pName :: Lens' Package (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | An instruction that does a ParDo operation. Takes one main input and
-- zero or more side inputs, and produces zero or more outputs. Runs user
-- code.
--
-- /See:/ 'parDoInstruction' smart constructor.
data ParDoInstruction = ParDoInstruction
    { _pdiNumOutputs       :: !(Maybe Int32)
    , _pdiMultiOutputInfos :: !(Maybe [Maybe MultiOutputInfo])
    , _pdiSideInputs       :: !(Maybe [Maybe SideInputInfo])
    , _pdiInput            :: !(Maybe (Maybe InstructionInput))
    , _pdiUserFn           :: !(Maybe ParDoInstructionUserFn)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParDoInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdiNumOutputs'
--
-- * 'pdiMultiOutputInfos'
--
-- * 'pdiSideInputs'
--
-- * 'pdiInput'
--
-- * 'pdiUserFn'
parDoInstruction
    :: ParDoInstruction
parDoInstruction =
    ParDoInstruction
    { _pdiNumOutputs = Nothing
    , _pdiMultiOutputInfos = Nothing
    , _pdiSideInputs = Nothing
    , _pdiInput = Nothing
    , _pdiUserFn = Nothing
    }

-- | The number of outputs.
pdiNumOutputs :: Lens' ParDoInstruction (Maybe Int32)
pdiNumOutputs
  = lens _pdiNumOutputs
      (\ s a -> s{_pdiNumOutputs = a})

-- | Information about each of the outputs, if user_fn is a MultiDoFn.
pdiMultiOutputInfos :: Lens' ParDoInstruction [Maybe MultiOutputInfo]
pdiMultiOutputInfos
  = lens _pdiMultiOutputInfos
      (\ s a -> s{_pdiMultiOutputInfos = a})
      . _Default
      . _Coerce

-- | Zero or more side inputs.
pdiSideInputs :: Lens' ParDoInstruction [Maybe SideInputInfo]
pdiSideInputs
  = lens _pdiSideInputs
      (\ s a -> s{_pdiSideInputs = a})
      . _Default
      . _Coerce

-- | The input.
pdiInput :: Lens' ParDoInstruction (Maybe (Maybe InstructionInput))
pdiInput = lens _pdiInput (\ s a -> s{_pdiInput = a})

-- | The user function to invoke.
pdiUserFn :: Lens' ParDoInstruction (Maybe ParDoInstructionUserFn)
pdiUserFn
  = lens _pdiUserFn (\ s a -> s{_pdiUserFn = a})

-- | The user function to invoke.
--
-- /See:/ 'parDoInstructionUserFn' smart constructor.
data ParDoInstructionUserFn =
    ParDoInstructionUserFn
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParDoInstructionUserFn' with the minimum fields required to make a request.
--
parDoInstructionUserFn
    :: ParDoInstructionUserFn
parDoInstructionUserFn = ParDoInstructionUserFn

-- | Describes a particular operation comprising a MapTask.
--
-- /See:/ 'parallelInstruction' smart constructor.
data ParallelInstruction = ParallelInstruction
    { _piRead              :: !(Maybe (Maybe ReadInstruction))
    , _piWrite             :: !(Maybe (Maybe WriteInstruction))
    , _piParDo             :: !(Maybe (Maybe ParDoInstruction))
    , _piPartialGroupByKey :: !(Maybe (Maybe PartialGroupByKeyInstruction))
    , _piOutputs           :: !(Maybe [Maybe InstructionOutput])
    , _piName              :: !(Maybe Text)
    , _piSystemName        :: !(Maybe Text)
    , _piFlatten           :: !(Maybe (Maybe FlattenInstruction))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParallelInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piRead'
--
-- * 'piWrite'
--
-- * 'piParDo'
--
-- * 'piPartialGroupByKey'
--
-- * 'piOutputs'
--
-- * 'piName'
--
-- * 'piSystemName'
--
-- * 'piFlatten'
parallelInstruction
    :: ParallelInstruction
parallelInstruction =
    ParallelInstruction
    { _piRead = Nothing
    , _piWrite = Nothing
    , _piParDo = Nothing
    , _piPartialGroupByKey = Nothing
    , _piOutputs = Nothing
    , _piName = Nothing
    , _piSystemName = Nothing
    , _piFlatten = Nothing
    }

-- | Additional information for Read instructions.
piRead :: Lens' ParallelInstruction (Maybe (Maybe ReadInstruction))
piRead = lens _piRead (\ s a -> s{_piRead = a})

-- | Additional information for Write instructions.
piWrite :: Lens' ParallelInstruction (Maybe (Maybe WriteInstruction))
piWrite = lens _piWrite (\ s a -> s{_piWrite = a})

-- | Additional information for ParDo instructions.
piParDo :: Lens' ParallelInstruction (Maybe (Maybe ParDoInstruction))
piParDo = lens _piParDo (\ s a -> s{_piParDo = a})

-- | Additional information for PartialGroupByKey instructions.
piPartialGroupByKey :: Lens' ParallelInstruction (Maybe (Maybe PartialGroupByKeyInstruction))
piPartialGroupByKey
  = lens _piPartialGroupByKey
      (\ s a -> s{_piPartialGroupByKey = a})

-- | Describes the outputs of the instruction.
piOutputs :: Lens' ParallelInstruction [Maybe InstructionOutput]
piOutputs
  = lens _piOutputs (\ s a -> s{_piOutputs = a}) .
      _Default
      . _Coerce

-- | User-provided name of this operation.
piName :: Lens' ParallelInstruction (Maybe Text)
piName = lens _piName (\ s a -> s{_piName = a})

-- | System-defined name of this operation. Unique across the workflow.
piSystemName :: Lens' ParallelInstruction (Maybe Text)
piSystemName
  = lens _piSystemName (\ s a -> s{_piSystemName = a})

-- | Additional information for Flatten instructions.
piFlatten :: Lens' ParallelInstruction (Maybe (Maybe FlattenInstruction))
piFlatten
  = lens _piFlatten (\ s a -> s{_piFlatten = a})

-- | An instruction that does a partial group-by-key. One input and one
-- output.
--
-- /See:/ 'partialGroupByKeyInstruction' smart constructor.
data PartialGroupByKeyInstruction = PartialGroupByKeyInstruction
    { _pgbkiValueCombiningFn  :: !(Maybe PartialGroupByKeyInstructionValueCombiningFn)
    , _pgbkiInput             :: !(Maybe (Maybe InstructionInput))
    , _pgbkiInputElementCodec :: !(Maybe PartialGroupByKeyInstructionInputElementCodec)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartialGroupByKeyInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbkiValueCombiningFn'
--
-- * 'pgbkiInput'
--
-- * 'pgbkiInputElementCodec'
partialGroupByKeyInstruction
    :: PartialGroupByKeyInstruction
partialGroupByKeyInstruction =
    PartialGroupByKeyInstruction
    { _pgbkiValueCombiningFn = Nothing
    , _pgbkiInput = Nothing
    , _pgbkiInputElementCodec = Nothing
    }

-- | The value combining function to invoke.
pgbkiValueCombiningFn :: Lens' PartialGroupByKeyInstruction (Maybe PartialGroupByKeyInstructionValueCombiningFn)
pgbkiValueCombiningFn
  = lens _pgbkiValueCombiningFn
      (\ s a -> s{_pgbkiValueCombiningFn = a})

-- | Describes the input to the partial group-by-key instruction.
pgbkiInput :: Lens' PartialGroupByKeyInstruction (Maybe (Maybe InstructionInput))
pgbkiInput
  = lens _pgbkiInput (\ s a -> s{_pgbkiInput = a})

-- | The codec to use for interpreting an element in the input PTable.
pgbkiInputElementCodec :: Lens' PartialGroupByKeyInstruction (Maybe PartialGroupByKeyInstructionInputElementCodec)
pgbkiInputElementCodec
  = lens _pgbkiInputElementCodec
      (\ s a -> s{_pgbkiInputElementCodec = a})

-- | The codec to use for interpreting an element in the input PTable.
--
-- /See:/ 'partialGroupByKeyInstructionInputElementCodec' smart constructor.
data PartialGroupByKeyInstructionInputElementCodec =
    PartialGroupByKeyInstructionInputElementCodec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartialGroupByKeyInstructionInputElementCodec' with the minimum fields required to make a request.
--
partialGroupByKeyInstructionInputElementCodec
    :: PartialGroupByKeyInstructionInputElementCodec
partialGroupByKeyInstructionInputElementCodec =
    PartialGroupByKeyInstructionInputElementCodec

-- | The value combining function to invoke.
--
-- /See:/ 'partialGroupByKeyInstructionValueCombiningFn' smart constructor.
data PartialGroupByKeyInstructionValueCombiningFn =
    PartialGroupByKeyInstructionValueCombiningFn
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartialGroupByKeyInstructionValueCombiningFn' with the minimum fields required to make a request.
--
partialGroupByKeyInstructionValueCombiningFn
    :: PartialGroupByKeyInstructionValueCombiningFn
partialGroupByKeyInstructionValueCombiningFn =
    PartialGroupByKeyInstructionValueCombiningFn

-- | Position defines a position within a collection of data. The value can
-- be either the end position, a key (used with ordered collections), a
-- byte offset, or a record index.
--
-- /See:/ 'position' smart constructor.
data Position = Position
    { _pByteOffset      :: !(Maybe Int64)
    , _pConcatPosition  :: !(Maybe (Maybe ConcatPosition))
    , _pRecordIndex     :: !(Maybe Int64)
    , _pShufflePosition :: !(Maybe Text)
    , _pKey             :: !(Maybe Text)
    , _pEnd             :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pByteOffset'
--
-- * 'pConcatPosition'
--
-- * 'pRecordIndex'
--
-- * 'pShufflePosition'
--
-- * 'pKey'
--
-- * 'pEnd'
position
    :: Position
position =
    Position
    { _pByteOffset = Nothing
    , _pConcatPosition = Nothing
    , _pRecordIndex = Nothing
    , _pShufflePosition = Nothing
    , _pKey = Nothing
    , _pEnd = Nothing
    }

-- | Position is a byte offset.
pByteOffset :: Lens' Position (Maybe Int64)
pByteOffset
  = lens _pByteOffset (\ s a -> s{_pByteOffset = a})

-- | CloudPosition is a concat position.
pConcatPosition :: Lens' Position (Maybe (Maybe ConcatPosition))
pConcatPosition
  = lens _pConcatPosition
      (\ s a -> s{_pConcatPosition = a})

-- | Position is a record index.
pRecordIndex :: Lens' Position (Maybe Int64)
pRecordIndex
  = lens _pRecordIndex (\ s a -> s{_pRecordIndex = a})

-- | CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
-- sharding).
pShufflePosition :: Lens' Position (Maybe Text)
pShufflePosition
  = lens _pShufflePosition
      (\ s a -> s{_pShufflePosition = a})

-- | Position is a string key, ordered lexicographically.
pKey :: Lens' Position (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | Position is past all other positions. Also useful for the end position
-- of an unbounded range.
pEnd :: Lens' Position (Maybe Bool)
pEnd = lens _pEnd (\ s a -> s{_pEnd = a})

-- | Identifies a pubsub location to use for transferring data into or out of
-- a streaming Dataflow job.
--
-- /See:/ 'pubsubLocation' smart constructor.
data PubsubLocation = PubsubLocation
    { _plTrackingSubscription :: !(Maybe Text)
    , _plDropLateData         :: !(Maybe Bool)
    , _plTimestampLabel       :: !(Maybe Text)
    , _plIdLabel              :: !(Maybe Text)
    , _plTopic                :: !(Maybe Text)
    , _plSubscription         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PubsubLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plTrackingSubscription'
--
-- * 'plDropLateData'
--
-- * 'plTimestampLabel'
--
-- * 'plIdLabel'
--
-- * 'plTopic'
--
-- * 'plSubscription'
pubsubLocation
    :: PubsubLocation
pubsubLocation =
    PubsubLocation
    { _plTrackingSubscription = Nothing
    , _plDropLateData = Nothing
    , _plTimestampLabel = Nothing
    , _plIdLabel = Nothing
    , _plTopic = Nothing
    , _plSubscription = Nothing
    }

-- | If set, specifies the pubsub subscription that will be used for tracking
-- custom time timestamps for watermark estimation.
plTrackingSubscription :: Lens' PubsubLocation (Maybe Text)
plTrackingSubscription
  = lens _plTrackingSubscription
      (\ s a -> s{_plTrackingSubscription = a})

-- | Indicates whether the pipeline allows late-arriving data.
plDropLateData :: Lens' PubsubLocation (Maybe Bool)
plDropLateData
  = lens _plDropLateData
      (\ s a -> s{_plDropLateData = a})

-- | If set, contains a pubsub label from which to extract record timestamps.
-- If left empty, record timestamps will be generated upon arrival.
plTimestampLabel :: Lens' PubsubLocation (Maybe Text)
plTimestampLabel
  = lens _plTimestampLabel
      (\ s a -> s{_plTimestampLabel = a})

-- | If set, contains a pubsub label from which to extract record ids. If
-- left empty, record deduplication will be strictly best effort.
plIdLabel :: Lens' PubsubLocation (Maybe Text)
plIdLabel
  = lens _plIdLabel (\ s a -> s{_plIdLabel = a})

-- | A pubsub topic, in the form of \"pubsub.googleapis.com\/topics\/ \/\"
plTopic :: Lens' PubsubLocation (Maybe Text)
plTopic = lens _plTopic (\ s a -> s{_plTopic = a})

-- | A pubsub subscription, in the form of
-- \"pubsub.googleapis.com\/subscriptions\/ \/\"
plSubscription :: Lens' PubsubLocation (Maybe Text)
plSubscription
  = lens _plSubscription
      (\ s a -> s{_plSubscription = a})

-- | An instruction that reads records. Takes no inputs, produces one output.
--
-- /See:/ 'readInstruction' smart constructor.
newtype ReadInstruction = ReadInstruction
    { _riSource :: Maybe (Maybe Source)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riSource'
readInstruction
    :: ReadInstruction
readInstruction =
    ReadInstruction
    { _riSource = Nothing
    }

-- | The source to read from.
riSource :: Lens' ReadInstruction (Maybe (Maybe Source))
riSource = lens _riSource (\ s a -> s{_riSource = a})

-- | Request to report the status of WorkItems.
--
-- /See:/ 'reportWorkItemStatusRequest' smart constructor.
data ReportWorkItemStatusRequest = ReportWorkItemStatusRequest
    { _rwisrCurrentWorkerTime :: !(Maybe Text)
    , _rwisrWorkItemStatuses  :: !(Maybe [Maybe WorkItemStatus])
    , _rwisrWorkerId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportWorkItemStatusRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwisrCurrentWorkerTime'
--
-- * 'rwisrWorkItemStatuses'
--
-- * 'rwisrWorkerId'
reportWorkItemStatusRequest
    :: ReportWorkItemStatusRequest
reportWorkItemStatusRequest =
    ReportWorkItemStatusRequest
    { _rwisrCurrentWorkerTime = Nothing
    , _rwisrWorkItemStatuses = Nothing
    , _rwisrWorkerId = Nothing
    }

-- | The current timestamp at the worker.
rwisrCurrentWorkerTime :: Lens' ReportWorkItemStatusRequest (Maybe Text)
rwisrCurrentWorkerTime
  = lens _rwisrCurrentWorkerTime
      (\ s a -> s{_rwisrCurrentWorkerTime = a})

-- | The order is unimportant, except that the order of the
-- WorkItemServiceState messages in the ReportWorkItemStatusResponse
-- corresponds to the order of WorkItemStatus messages here.
rwisrWorkItemStatuses :: Lens' ReportWorkItemStatusRequest [Maybe WorkItemStatus]
rwisrWorkItemStatuses
  = lens _rwisrWorkItemStatuses
      (\ s a -> s{_rwisrWorkItemStatuses = a})
      . _Default
      . _Coerce

-- | The ID of the worker reporting the WorkItem status. If this does not
-- match the ID of the worker which the Dataflow service believes currently
-- has the lease on the WorkItem, the report will be dropped (with an error
-- response).
rwisrWorkerId :: Lens' ReportWorkItemStatusRequest (Maybe Text)
rwisrWorkerId
  = lens _rwisrWorkerId
      (\ s a -> s{_rwisrWorkerId = a})

-- | Response from a request to report the status of WorkItems.
--
-- /See:/ 'reportWorkItemStatusResponse' smart constructor.
newtype ReportWorkItemStatusResponse = ReportWorkItemStatusResponse
    { _rwisrWorkItemServiceStates :: Maybe [Maybe WorkItemServiceState]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportWorkItemStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwisrWorkItemServiceStates'
reportWorkItemStatusResponse
    :: ReportWorkItemStatusResponse
reportWorkItemStatusResponse =
    ReportWorkItemStatusResponse
    { _rwisrWorkItemServiceStates = Nothing
    }

-- | A set of messages indicating the service-side state for each WorkItem
-- whose status was reported, in the same order as the WorkItemStatus
-- messages in the ReportWorkItemStatusRequest which resulting in this
-- response.
rwisrWorkItemServiceStates :: Lens' ReportWorkItemStatusResponse [Maybe WorkItemServiceState]
rwisrWorkItemServiceStates
  = lens _rwisrWorkItemServiceStates
      (\ s a -> s{_rwisrWorkItemServiceStates = a})
      . _Default
      . _Coerce

-- | Describes a particular function to invoke.
--
-- /See:/ 'seqMapTask' smart constructor.
data SeqMapTask = SeqMapTask
    { _smtInputs      :: !(Maybe [Maybe SideInputInfo])
    , _smtName        :: !(Maybe Text)
    , _smtOutputInfos :: !(Maybe [Maybe SeqMapTaskOutputInfo])
    , _smtSystemName  :: !(Maybe Text)
    , _smtStageName   :: !(Maybe Text)
    , _smtUserFn      :: !(Maybe SeqMapTaskUserFn)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SeqMapTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtInputs'
--
-- * 'smtName'
--
-- * 'smtOutputInfos'
--
-- * 'smtSystemName'
--
-- * 'smtStageName'
--
-- * 'smtUserFn'
seqMapTask
    :: SeqMapTask
seqMapTask =
    SeqMapTask
    { _smtInputs = Nothing
    , _smtName = Nothing
    , _smtOutputInfos = Nothing
    , _smtSystemName = Nothing
    , _smtStageName = Nothing
    , _smtUserFn = Nothing
    }

-- | Information about each of the inputs.
smtInputs :: Lens' SeqMapTask [Maybe SideInputInfo]
smtInputs
  = lens _smtInputs (\ s a -> s{_smtInputs = a}) .
      _Default
      . _Coerce

-- | The user-provided name of the SeqDo operation.
smtName :: Lens' SeqMapTask (Maybe Text)
smtName = lens _smtName (\ s a -> s{_smtName = a})

-- | Information about each of the outputs.
smtOutputInfos :: Lens' SeqMapTask [Maybe SeqMapTaskOutputInfo]
smtOutputInfos
  = lens _smtOutputInfos
      (\ s a -> s{_smtOutputInfos = a})
      . _Default
      . _Coerce

-- | System-defined name of the SeqDo operation. Unique across the workflow.
smtSystemName :: Lens' SeqMapTask (Maybe Text)
smtSystemName
  = lens _smtSystemName
      (\ s a -> s{_smtSystemName = a})

-- | System-defined name of the stage containing the SeqDo operation. Unique
-- across the workflow.
smtStageName :: Lens' SeqMapTask (Maybe Text)
smtStageName
  = lens _smtStageName (\ s a -> s{_smtStageName = a})

-- | The user function to invoke.
smtUserFn :: Lens' SeqMapTask (Maybe SeqMapTaskUserFn)
smtUserFn
  = lens _smtUserFn (\ s a -> s{_smtUserFn = a})

-- | Information about an output of a SeqMapTask.
--
-- /See:/ 'seqMapTaskOutputInfo' smart constructor.
data SeqMapTaskOutputInfo = SeqMapTaskOutputInfo
    { _smtoiSink :: !(Maybe (Maybe Sink))
    , _smtoiTag  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SeqMapTaskOutputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtoiSink'
--
-- * 'smtoiTag'
seqMapTaskOutputInfo
    :: SeqMapTaskOutputInfo
seqMapTaskOutputInfo =
    SeqMapTaskOutputInfo
    { _smtoiSink = Nothing
    , _smtoiTag = Nothing
    }

-- | The sink to write the output value to.
smtoiSink :: Lens' SeqMapTaskOutputInfo (Maybe (Maybe Sink))
smtoiSink
  = lens _smtoiSink (\ s a -> s{_smtoiSink = a})

-- | The id of the TupleTag the user code will tag the output value by.
smtoiTag :: Lens' SeqMapTaskOutputInfo (Maybe Text)
smtoiTag = lens _smtoiTag (\ s a -> s{_smtoiTag = a})

-- | The user function to invoke.
--
-- /See:/ 'seqMapTaskUserFn' smart constructor.
data SeqMapTaskUserFn =
    SeqMapTaskUserFn
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SeqMapTaskUserFn' with the minimum fields required to make a request.
--
seqMapTaskUserFn
    :: SeqMapTaskUserFn
seqMapTaskUserFn = SeqMapTaskUserFn

-- | A task which consists of a shell command for the worker to execute.
--
-- /See:/ 'shellTask' smart constructor.
data ShellTask = ShellTask
    { _stCommand  :: !(Maybe Text)
    , _stExitCode :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShellTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stCommand'
--
-- * 'stExitCode'
shellTask
    :: ShellTask
shellTask =
    ShellTask
    { _stCommand = Nothing
    , _stExitCode = Nothing
    }

-- | The shell command to run.
stCommand :: Lens' ShellTask (Maybe Text)
stCommand
  = lens _stCommand (\ s a -> s{_stCommand = a})

-- | Exit code for the task.
stExitCode :: Lens' ShellTask (Maybe Int32)
stExitCode
  = lens _stExitCode (\ s a -> s{_stExitCode = a})

-- | Information about a side input of a DoFn or an input of a SeqDoFn.
--
-- /See:/ 'sideInputInfo' smart constructor.
data SideInputInfo = SideInputInfo
    { _siiTag     :: !(Maybe Text)
    , _siiKind    :: !(Maybe SideInputInfoKind)
    , _siiSources :: !(Maybe [Maybe Source])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SideInputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siiTag'
--
-- * 'siiKind'
--
-- * 'siiSources'
sideInputInfo
    :: SideInputInfo
sideInputInfo =
    SideInputInfo
    { _siiTag = Nothing
    , _siiKind = Nothing
    , _siiSources = Nothing
    }

-- | The id of the tag the user code will access this side input by; this
-- should correspond to the tag of some MultiOutputInfo.
siiTag :: Lens' SideInputInfo (Maybe Text)
siiTag = lens _siiTag (\ s a -> s{_siiTag = a})

-- | How to interpret the source element(s) as a side input value.
siiKind :: Lens' SideInputInfo (Maybe SideInputInfoKind)
siiKind = lens _siiKind (\ s a -> s{_siiKind = a})

-- | The source(s) to read element(s) from to get the value of this side
-- input. If more than one source, then the elements are taken from the
-- sources, in the specified order if order matters. At least one source is
-- required.
siiSources :: Lens' SideInputInfo [Maybe Source]
siiSources
  = lens _siiSources (\ s a -> s{_siiSources = a}) .
      _Default
      . _Coerce

-- | How to interpret the source element(s) as a side input value.
--
-- /See:/ 'sideInputInfoKind' smart constructor.
data SideInputInfoKind =
    SideInputInfoKind
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SideInputInfoKind' with the minimum fields required to make a request.
--
sideInputInfoKind
    :: SideInputInfoKind
sideInputInfoKind = SideInputInfoKind

-- | A sink that records can be encoded and written to.
--
-- /See:/ 'sink' smart constructor.
data Sink = Sink
    { _sinCodec :: !(Maybe SinkCodec)
    , _sinSpec  :: !(Maybe SinkSpec)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Sink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sinCodec'
--
-- * 'sinSpec'
sink
    :: Sink
sink =
    Sink
    { _sinCodec = Nothing
    , _sinSpec = Nothing
    }

-- | The codec to use to encode data written to the sink.
sinCodec :: Lens' Sink (Maybe SinkCodec)
sinCodec = lens _sinCodec (\ s a -> s{_sinCodec = a})

-- | The sink to write to, plus its parameters.
sinSpec :: Lens' Sink (Maybe SinkSpec)
sinSpec = lens _sinSpec (\ s a -> s{_sinSpec = a})

-- | The codec to use to encode data written to the sink.
--
-- /See:/ 'sinkCodec' smart constructor.
data SinkCodec =
    SinkCodec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SinkCodec' with the minimum fields required to make a request.
--
sinkCodec
    :: SinkCodec
sinkCodec = SinkCodec

-- | The sink to write to, plus its parameters.
--
-- /See:/ 'sinkSpec' smart constructor.
data SinkSpec =
    SinkSpec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SinkSpec' with the minimum fields required to make a request.
--
sinkSpec
    :: SinkSpec
sinkSpec = SinkSpec

-- | A source that records can be read and decoded from.
--
-- /See:/ 'source' smart constructor.
data Source = Source
    { _sDoesNotNeedSplitting :: !(Maybe Bool)
    , _sBaseSpecs            :: !(Maybe [SourceItemBaseSpecs])
    , _sCodec                :: !(Maybe SourceCodec)
    , _sSpec                 :: !(Maybe SourceSpec)
    , _sMetadata             :: !(Maybe (Maybe SourceMetadata))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDoesNotNeedSplitting'
--
-- * 'sBaseSpecs'
--
-- * 'sCodec'
--
-- * 'sSpec'
--
-- * 'sMetadata'
source
    :: Source
source =
    Source
    { _sDoesNotNeedSplitting = Nothing
    , _sBaseSpecs = Nothing
    , _sCodec = Nothing
    , _sSpec = Nothing
    , _sMetadata = Nothing
    }

-- | Setting this value to true hints to the framework that the source
-- doesn\'t need splitting, and using SourceSplitRequest on it would yield
-- SOURCE_SPLIT_OUTCOME_USE_CURRENT. E.g. a file splitter may set this to
-- true when splitting a single file into a set of byte ranges of
-- appropriate size, and set this to false when splitting a filepattern
-- into individual files. However, for efficiency, a file splitter may
-- decide to produce file subranges directly from the filepattern to avoid
-- a splitting round-trip. See SourceSplitRequest for an overview of the
-- splitting process. This field is meaningful only in the Source objects
-- populated by the user (e.g. when filling in a DerivedSource). Source
-- objects supplied by the framework to the user don\'t have this field
-- populated.
sDoesNotNeedSplitting :: Lens' Source (Maybe Bool)
sDoesNotNeedSplitting
  = lens _sDoesNotNeedSplitting
      (\ s a -> s{_sDoesNotNeedSplitting = a})

-- | While splitting, sources may specify the produced bundles as differences
-- against another source, in order to save backend-side memory and allow
-- bigger jobs. For details, see SourceSplitRequest. To support this use
-- case, the full set of parameters of the source is logically obtained by
-- taking the latest explicitly specified value of each parameter in the
-- order: base_specs (later items win), spec (overrides anything in
-- base_specs).
sBaseSpecs :: Lens' Source [SourceItemBaseSpecs]
sBaseSpecs
  = lens _sBaseSpecs (\ s a -> s{_sBaseSpecs = a}) .
      _Default
      . _Coerce

-- | The codec to use to decode data read from the source.
sCodec :: Lens' Source (Maybe SourceCodec)
sCodec = lens _sCodec (\ s a -> s{_sCodec = a})

-- | The source to read from, plus its parameters.
sSpec :: Lens' Source (Maybe SourceSpec)
sSpec = lens _sSpec (\ s a -> s{_sSpec = a})

-- | Optionally, metadata for this source can be supplied right away,
-- avoiding a SourceGetMetadataOperation roundtrip (see
-- SourceOperationRequest). This field is meaningful only in the Source
-- objects populated by the user (e.g. when filling in a DerivedSource).
-- Source objects supplied by the framework to the user don\'t have this
-- field populated.
sMetadata :: Lens' Source (Maybe (Maybe SourceMetadata))
sMetadata
  = lens _sMetadata (\ s a -> s{_sMetadata = a})

-- | The codec to use to decode data read from the source.
--
-- /See:/ 'sourceCodec' smart constructor.
data SourceCodec =
    SourceCodec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceCodec' with the minimum fields required to make a request.
--
sourceCodec
    :: SourceCodec
sourceCodec = SourceCodec

-- | DEPRECATED in favor of DynamicSourceSplit.
--
-- /See:/ 'sourceFork' smart constructor.
data SourceFork = SourceFork
    { _sfResidual       :: !(Maybe (Maybe SourceSplitShard))
    , _sfPrimarySource  :: !(Maybe (Maybe DerivedSource))
    , _sfPrimary        :: !(Maybe (Maybe SourceSplitShard))
    , _sfResidualSource :: !(Maybe (Maybe DerivedSource))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceFork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfResidual'
--
-- * 'sfPrimarySource'
--
-- * 'sfPrimary'
--
-- * 'sfResidualSource'
sourceFork
    :: SourceFork
sourceFork =
    SourceFork
    { _sfResidual = Nothing
    , _sfPrimarySource = Nothing
    , _sfPrimary = Nothing
    , _sfResidualSource = Nothing
    }

-- | DEPRECATED
sfResidual :: Lens' SourceFork (Maybe (Maybe SourceSplitShard))
sfResidual
  = lens _sfResidual (\ s a -> s{_sfResidual = a})

-- | DEPRECATED
sfPrimarySource :: Lens' SourceFork (Maybe (Maybe DerivedSource))
sfPrimarySource
  = lens _sfPrimarySource
      (\ s a -> s{_sfPrimarySource = a})

-- | DEPRECATED
sfPrimary :: Lens' SourceFork (Maybe (Maybe SourceSplitShard))
sfPrimary
  = lens _sfPrimary (\ s a -> s{_sfPrimary = a})

-- | DEPRECATED
sfResidualSource :: Lens' SourceFork (Maybe (Maybe DerivedSource))
sfResidualSource
  = lens _sfResidualSource
      (\ s a -> s{_sfResidualSource = a})

-- | A request to compute the SourceMetadata of a Source.
--
-- /See:/ 'sourceGetMetadataRequest' smart constructor.
newtype SourceGetMetadataRequest = SourceGetMetadataRequest
    { _sgmrSource :: Maybe (Maybe Source)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceGetMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgmrSource'
sourceGetMetadataRequest
    :: SourceGetMetadataRequest
sourceGetMetadataRequest =
    SourceGetMetadataRequest
    { _sgmrSource = Nothing
    }

-- | Specification of the source whose metadata should be computed.
sgmrSource :: Lens' SourceGetMetadataRequest (Maybe (Maybe Source))
sgmrSource
  = lens _sgmrSource (\ s a -> s{_sgmrSource = a})

-- | The result of a SourceGetMetadataOperation.
--
-- /See:/ 'sourceGetMetadataResponse' smart constructor.
newtype SourceGetMetadataResponse = SourceGetMetadataResponse
    { _sgmrMetadata :: Maybe (Maybe SourceMetadata)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceGetMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgmrMetadata'
sourceGetMetadataResponse
    :: SourceGetMetadataResponse
sourceGetMetadataResponse =
    SourceGetMetadataResponse
    { _sgmrMetadata = Nothing
    }

-- | The computed metadata.
sgmrMetadata :: Lens' SourceGetMetadataResponse (Maybe (Maybe SourceMetadata))
sgmrMetadata
  = lens _sgmrMetadata (\ s a -> s{_sgmrMetadata = a})

--
-- /See:/ 'sourceItemBaseSpecs' smart constructor.
data SourceItemBaseSpecs =
    SourceItemBaseSpecs
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceItemBaseSpecs' with the minimum fields required to make a request.
--
sourceItemBaseSpecs
    :: SourceItemBaseSpecs
sourceItemBaseSpecs = SourceItemBaseSpecs

-- | Metadata about a Source useful for automatically optimizing and tuning
-- the pipeline, etc.
--
-- /See:/ 'sourceMetadata' smart constructor.
data SourceMetadata = SourceMetadata
    { _smEstimatedSizeBytes :: !(Maybe Int64)
    , _smProducesSortedKeys :: !(Maybe Bool)
    , _smInfinite           :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smEstimatedSizeBytes'
--
-- * 'smProducesSortedKeys'
--
-- * 'smInfinite'
sourceMetadata
    :: SourceMetadata
sourceMetadata =
    SourceMetadata
    { _smEstimatedSizeBytes = Nothing
    , _smProducesSortedKeys = Nothing
    , _smInfinite = Nothing
    }

-- | An estimate of the total size (in bytes) of the data that would be read
-- from this source. This estimate is in terms of external storage size,
-- before any decompression or other processing done by the reader.
smEstimatedSizeBytes :: Lens' SourceMetadata (Maybe Int64)
smEstimatedSizeBytes
  = lens _smEstimatedSizeBytes
      (\ s a -> s{_smEstimatedSizeBytes = a})

-- | Whether this source is known to produce key\/value pairs with the
-- (encoded) keys in lexicographically sorted order.
smProducesSortedKeys :: Lens' SourceMetadata (Maybe Bool)
smProducesSortedKeys
  = lens _smProducesSortedKeys
      (\ s a -> s{_smProducesSortedKeys = a})

-- | Specifies that the size of this source is known to be infinite (this is
-- a streaming source).
smInfinite :: Lens' SourceMetadata (Maybe Bool)
smInfinite
  = lens _smInfinite (\ s a -> s{_smInfinite = a})

-- | A work item that represents the different operations that can be
-- performed on a user-defined Source specification.
--
-- /See:/ 'sourceOperationRequest' smart constructor.
data SourceOperationRequest = SourceOperationRequest
    { _sorSplit       :: !(Maybe (Maybe SourceSplitRequest))
    , _sorGetMetadata :: !(Maybe (Maybe SourceGetMetadataRequest))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceOperationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sorSplit'
--
-- * 'sorGetMetadata'
sourceOperationRequest
    :: SourceOperationRequest
sourceOperationRequest =
    SourceOperationRequest
    { _sorSplit = Nothing
    , _sorGetMetadata = Nothing
    }

-- | Information about a request to split a source.
sorSplit :: Lens' SourceOperationRequest (Maybe (Maybe SourceSplitRequest))
sorSplit = lens _sorSplit (\ s a -> s{_sorSplit = a})

-- | Information about a request to get metadata about a source.
sorGetMetadata :: Lens' SourceOperationRequest (Maybe (Maybe SourceGetMetadataRequest))
sorGetMetadata
  = lens _sorGetMetadata
      (\ s a -> s{_sorGetMetadata = a})

-- | The result of a SourceOperationRequest, specified in
-- ReportWorkItemStatusRequest.source_operation when the work item is
-- completed.
--
-- /See:/ 'sourceOperationResponse' smart constructor.
data SourceOperationResponse = SourceOperationResponse
    { _sSplit       :: !(Maybe (Maybe SourceSplitResponse))
    , _sGetMetadata :: !(Maybe (Maybe SourceGetMetadataResponse))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSplit'
--
-- * 'sGetMetadata'
sourceOperationResponse
    :: SourceOperationResponse
sourceOperationResponse =
    SourceOperationResponse
    { _sSplit = Nothing
    , _sGetMetadata = Nothing
    }

-- | A response to a request to split a source.
sSplit :: Lens' SourceOperationResponse (Maybe (Maybe SourceSplitResponse))
sSplit = lens _sSplit (\ s a -> s{_sSplit = a})

-- | A response to a request to get metadata about a source.
sGetMetadata :: Lens' SourceOperationResponse (Maybe (Maybe SourceGetMetadataResponse))
sGetMetadata
  = lens _sGetMetadata (\ s a -> s{_sGetMetadata = a})

-- | The source to read from, plus its parameters.
--
-- /See:/ 'sourceSpec' smart constructor.
data SourceSpec =
    SourceSpec
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceSpec' with the minimum fields required to make a request.
--
sourceSpec
    :: SourceSpec
sourceSpec = SourceSpec

-- | Hints for splitting a Source into bundles (parts for parallel
-- processing) using SourceSplitRequest.
--
-- /See:/ 'sourceSplitOptions' smart constructor.
data SourceSplitOptions = SourceSplitOptions
    { _ssoDesiredShardSizeBytes  :: !(Maybe Int64)
    , _ssoDesiredBundleSizeBytes :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceSplitOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssoDesiredShardSizeBytes'
--
-- * 'ssoDesiredBundleSizeBytes'
sourceSplitOptions
    :: SourceSplitOptions
sourceSplitOptions =
    SourceSplitOptions
    { _ssoDesiredShardSizeBytes = Nothing
    , _ssoDesiredBundleSizeBytes = Nothing
    }

-- | DEPRECATED in favor of desired_bundle_size_bytes.
ssoDesiredShardSizeBytes :: Lens' SourceSplitOptions (Maybe Int64)
ssoDesiredShardSizeBytes
  = lens _ssoDesiredShardSizeBytes
      (\ s a -> s{_ssoDesiredShardSizeBytes = a})

-- | The source should be split into a set of bundles where the estimated
-- size of each is approximately this many bytes.
ssoDesiredBundleSizeBytes :: Lens' SourceSplitOptions (Maybe Int64)
ssoDesiredBundleSizeBytes
  = lens _ssoDesiredBundleSizeBytes
      (\ s a -> s{_ssoDesiredBundleSizeBytes = a})

-- | Represents the operation to split a high-level Source specification into
-- bundles (parts for parallel processing). At a high level, splitting of a
-- source into bundles happens as follows: SourceSplitRequest is applied to
-- the source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further
-- splitting happens and the source is used \"as is\". Otherwise, splitting
-- is applied recursively to each produced DerivedSource. As an
-- optimization, for any Source, if its does_not_need_splitting is true,
-- the framework assumes that splitting this source would return
-- SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn\'t initiate a
-- SourceSplitRequest. This applies both to the initial source being split
-- and to bundles produced from it.
--
-- /See:/ 'sourceSplitRequest' smart constructor.
data SourceSplitRequest = SourceSplitRequest
    { _ssrSource  :: !(Maybe (Maybe Source))
    , _ssrOptions :: !(Maybe (Maybe SourceSplitOptions))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceSplitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrSource'
--
-- * 'ssrOptions'
sourceSplitRequest
    :: SourceSplitRequest
sourceSplitRequest =
    SourceSplitRequest
    { _ssrSource = Nothing
    , _ssrOptions = Nothing
    }

-- | Specification of the source to be split.
ssrSource :: Lens' SourceSplitRequest (Maybe (Maybe Source))
ssrSource
  = lens _ssrSource (\ s a -> s{_ssrSource = a})

-- | Hints for tuning the splitting process.
ssrOptions :: Lens' SourceSplitRequest (Maybe (Maybe SourceSplitOptions))
ssrOptions
  = lens _ssrOptions (\ s a -> s{_ssrOptions = a})

-- | The response to a SourceSplitRequest.
--
-- /See:/ 'sourceSplitResponse' smart constructor.
data SourceSplitResponse = SourceSplitResponse
    { _ssrBundles :: !(Maybe [Maybe DerivedSource])
    , _ssrShards  :: !(Maybe [Maybe SourceSplitShard])
    , _ssrOutcome :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceSplitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrBundles'
--
-- * 'ssrShards'
--
-- * 'ssrOutcome'
sourceSplitResponse
    :: SourceSplitResponse
sourceSplitResponse =
    SourceSplitResponse
    { _ssrBundles = Nothing
    , _ssrShards = Nothing
    , _ssrOutcome = Nothing
    }

-- | If outcome is SPLITTING_HAPPENED, then this is a list of bundles into
-- which the source was split. Otherwise this field is ignored. This list
-- can be empty, which means the source represents an empty input.
ssrBundles :: Lens' SourceSplitResponse [Maybe DerivedSource]
ssrBundles
  = lens _ssrBundles (\ s a -> s{_ssrBundles = a}) .
      _Default
      . _Coerce

-- | DEPRECATED in favor of bundles.
ssrShards :: Lens' SourceSplitResponse [Maybe SourceSplitShard]
ssrShards
  = lens _ssrShards (\ s a -> s{_ssrShards = a}) .
      _Default
      . _Coerce

-- | Indicates whether splitting happened and produced a list of bundles. If
-- this is USE_CURRENT_SOURCE_AS_IS, the current source should be processed
-- \"as is\" without splitting. \"bundles\" is ignored in this case. If
-- this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles
-- into which the source was split.
ssrOutcome :: Lens' SourceSplitResponse (Maybe Text)
ssrOutcome
  = lens _ssrOutcome (\ s a -> s{_ssrOutcome = a})

-- | DEPRECATED in favor of DerivedSource.
--
-- /See:/ 'sourceSplitShard' smart constructor.
data SourceSplitShard = SourceSplitShard
    { _sssDerivationMode :: !(Maybe Text)
    , _sssSource         :: !(Maybe (Maybe Source))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceSplitShard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssDerivationMode'
--
-- * 'sssSource'
sourceSplitShard
    :: SourceSplitShard
sourceSplitShard =
    SourceSplitShard
    { _sssDerivationMode = Nothing
    , _sssSource = Nothing
    }

-- | DEPRECATED
sssDerivationMode :: Lens' SourceSplitShard (Maybe Text)
sssDerivationMode
  = lens _sssDerivationMode
      (\ s a -> s{_sssDerivationMode = a})

-- | DEPRECATED
sssSource :: Lens' SourceSplitShard (Maybe (Maybe Source))
sssSource
  = lens _sssSource (\ s a -> s{_sssSource = a})

-- | State family configuration.
--
-- /See:/ 'stateFamilyConfig' smart constructor.
data StateFamilyConfig = StateFamilyConfig
    { _sfcIsRead      :: !(Maybe Bool)
    , _sfcStateFamily :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StateFamilyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfcIsRead'
--
-- * 'sfcStateFamily'
stateFamilyConfig
    :: StateFamilyConfig
stateFamilyConfig =
    StateFamilyConfig
    { _sfcIsRead = Nothing
    , _sfcStateFamily = Nothing
    }

-- | If true, this family corresponds to a read operation.
sfcIsRead :: Lens' StateFamilyConfig (Maybe Bool)
sfcIsRead
  = lens _sfcIsRead (\ s a -> s{_sfcIsRead = a})

-- | The state family value.
sfcStateFamily :: Lens' StateFamilyConfig (Maybe Text)
sfcStateFamily
  = lens _sfcStateFamily
      (\ s a -> s{_sfcStateFamily = a})

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of [google.rpc.Code][],
-- but it may accept additional error codes if needed. The error message
-- should be a developer-facing English message that helps developers
-- *understand* and *resolve* the error. If a localized user-facing error
-- message is needed, put the localized message in the error details or
-- localize it in the client. The optional error details may contain
-- arbitrary information about the error. There is a predefined set of
-- error detail types in the package \`google.rpc\` which can be used for
-- common error conditions. # Language mapping The \`Status\` message is
-- the logical representation of the error model, but it is not necessarily
-- the actual wire format. When the \`Status\` message is exposed in
-- different client libraries and different wire protocols, it can be
-- mapped differently. For example, it will likely be mapped to some
-- exceptions in Java, but more likely mapped to some error codes in C. #
-- Other uses The error model and the \`Status\` message can be used in a
-- variety of environments, either with or without APIs, to provide a
-- consistent developer experience across different environments. Example
-- uses of this error model include: - Partial errors. If a service needs
-- to return partial errors to the client, it may embed the \`Status\` in
-- the normal response to indicate the partial errors. - Workflow errors. A
-- typical workflow has multiple steps. Each step may have a \`Status\`
-- message for error reporting purpose. - Batch operations. If a client
-- uses batch request and batch response, the \`Status\` message should be
-- used directly inside batch response, one for each error sub-response. -
-- Asynchronous operations. If an API call embeds asynchronous operation
-- results in its response, the status of those operations should be
-- represented directly using the \`Status\` message. - Logging. If some
-- API errors are stored in logs, the message \`Status\` could be used
-- directly after any stripping needed for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status
    { _sDetails :: !(Maybe [StatusItemDetails])
    , _sCode    :: !(Maybe Int32)
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusItemDetails]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of [google.rpc.Code][].
sCode :: Lens' Status (Maybe Int32)
sCode = lens _sCode (\ s a -> s{_sCode = a})

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- [google.rpc.Status.details][google.rpc.Status.details] field, or
-- localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

--
-- /See:/ 'statusItemDetails' smart constructor.
data StatusItemDetails =
    StatusItemDetails
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusItemDetails' with the minimum fields required to make a request.
--
statusItemDetails
    :: StatusItemDetails
statusItemDetails = StatusItemDetails

-- | Defines a particular step within a Dataflow job. A job consists of
-- multiple steps, each of which performs some specific operation as part
-- of the overall job. Data is typically passed from one step to another as
-- part of the job. Here\'s an example of a sequence of steps which
-- together implement a Map-Reduce job: * Read a collection of data from
-- some source, parsing the collection\'s elements. * Validate the
-- elements. * Apply a user-defined function to map each element to some
-- value and extract an element-specific key value. * Group elements with
-- the same key into a single element with that key, transforming a
-- multiply-keyed collection into a uniquely-keyed collection. * Write the
-- elements out to some data sink. (Note that the Dataflow service may be
-- used to run many different types of jobs, not just Map-Reduce).
--
-- /See:/ 'step' smart constructor.
data Step = Step
    { _sKind       :: !(Maybe Text)
    , _sName       :: !(Maybe Text)
    , _sProperties :: !(Maybe StepProperties)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Step' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sName'
--
-- * 'sProperties'
step
    :: Step
step =
    Step
    { _sKind = Nothing
    , _sName = Nothing
    , _sProperties = Nothing
    }

-- | The kind of step in the dataflow Job.
sKind :: Lens' Step (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Name identifying the step. This must be unique for each step with
-- respect to all other steps in the dataflow Job.
sName :: Lens' Step (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Named properties associated with the step. Each kind of predefined step
-- has its own required set of properties.
sProperties :: Lens' Step (Maybe StepProperties)
sProperties
  = lens _sProperties (\ s a -> s{_sProperties = a})

-- | Named properties associated with the step. Each kind of predefined step
-- has its own required set of properties.
--
-- /See:/ 'stepProperties' smart constructor.
data StepProperties =
    StepProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StepProperties' with the minimum fields required to make a request.
--
stepProperties
    :: StepProperties
stepProperties = StepProperties

-- | Describes a stream of data, either as input to be processed or as output
-- of a streaming Dataflow job.
--
-- /See:/ 'streamLocation' smart constructor.
data StreamLocation = StreamLocation
    { _slStreamingStageLocation :: !(Maybe (Maybe StreamingStageLocation))
    , _slSideInputLocation      :: !(Maybe (Maybe StreamingSideInputLocation))
    , _slCustomSourceLocation   :: !(Maybe (Maybe CustomSourceLocation))
    , _slPubsubLocation         :: !(Maybe (Maybe PubsubLocation))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slStreamingStageLocation'
--
-- * 'slSideInputLocation'
--
-- * 'slCustomSourceLocation'
--
-- * 'slPubsubLocation'
streamLocation
    :: StreamLocation
streamLocation =
    StreamLocation
    { _slStreamingStageLocation = Nothing
    , _slSideInputLocation = Nothing
    , _slCustomSourceLocation = Nothing
    , _slPubsubLocation = Nothing
    }

-- | The stream is part of another computation within the current streaming
-- Dataflow job.
slStreamingStageLocation :: Lens' StreamLocation (Maybe (Maybe StreamingStageLocation))
slStreamingStageLocation
  = lens _slStreamingStageLocation
      (\ s a -> s{_slStreamingStageLocation = a})

-- | The stream is a streaming side input.
slSideInputLocation :: Lens' StreamLocation (Maybe (Maybe StreamingSideInputLocation))
slSideInputLocation
  = lens _slSideInputLocation
      (\ s a -> s{_slSideInputLocation = a})

-- | The stream is a custom source.
slCustomSourceLocation :: Lens' StreamLocation (Maybe (Maybe CustomSourceLocation))
slCustomSourceLocation
  = lens _slCustomSourceLocation
      (\ s a -> s{_slCustomSourceLocation = a})

-- | The stream is a pubsub stream.
slPubsubLocation :: Lens' StreamLocation (Maybe (Maybe PubsubLocation))
slPubsubLocation
  = lens _slPubsubLocation
      (\ s a -> s{_slPubsubLocation = a})

-- | Describes full or partial data disk assignment information of the
-- computation ranges.
--
-- /See:/ 'streamingComputationRanges' smart constructor.
data StreamingComputationRanges = StreamingComputationRanges
    { _scrRangeAssignments :: !(Maybe [Maybe KeyRangeDataDiskAssignment])
    , _scrComputationId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamingComputationRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrRangeAssignments'
--
-- * 'scrComputationId'
streamingComputationRanges
    :: StreamingComputationRanges
streamingComputationRanges =
    StreamingComputationRanges
    { _scrRangeAssignments = Nothing
    , _scrComputationId = Nothing
    }

-- | Data disk assignments for ranges from this computation.
scrRangeAssignments :: Lens' StreamingComputationRanges [Maybe KeyRangeDataDiskAssignment]
scrRangeAssignments
  = lens _scrRangeAssignments
      (\ s a -> s{_scrRangeAssignments = a})
      . _Default
      . _Coerce

-- | The ID of the computation.
scrComputationId :: Lens' StreamingComputationRanges (Maybe Text)
scrComputationId
  = lens _scrComputationId
      (\ s a -> s{_scrComputationId = a})

-- | A task which describes what action should be performed for the specified
-- streaming computation ranges.
--
-- /See:/ 'streamingComputationTask' smart constructor.
data StreamingComputationTask = StreamingComputationTask
    { _sctTaskType          :: !(Maybe Text)
    , _sctDataDisks         :: !(Maybe [Maybe MountedDataDisk])
    , _sctComputationRanges :: !(Maybe [Maybe StreamingComputationRanges])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamingComputationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctTaskType'
--
-- * 'sctDataDisks'
--
-- * 'sctComputationRanges'
streamingComputationTask
    :: StreamingComputationTask
streamingComputationTask =
    StreamingComputationTask
    { _sctTaskType = Nothing
    , _sctDataDisks = Nothing
    , _sctComputationRanges = Nothing
    }

-- | A type of streaming computation task.
sctTaskType :: Lens' StreamingComputationTask (Maybe Text)
sctTaskType
  = lens _sctTaskType (\ s a -> s{_sctTaskType = a})

-- | Describes the set of data disks this task should apply to.
sctDataDisks :: Lens' StreamingComputationTask [Maybe MountedDataDisk]
sctDataDisks
  = lens _sctDataDisks (\ s a -> s{_sctDataDisks = a})
      . _Default
      . _Coerce

-- | Contains ranges of a streaming computation this task should apply to.
sctComputationRanges :: Lens' StreamingComputationTask [Maybe StreamingComputationRanges]
sctComputationRanges
  = lens _sctComputationRanges
      (\ s a -> s{_sctComputationRanges = a})
      . _Default
      . _Coerce

-- | A task which initializes part of a streaming Dataflow job.
--
-- /See:/ 'streamingSetupTask' smart constructor.
data StreamingSetupTask = StreamingSetupTask
    { _sstStreamingComputationTopology :: !(Maybe (Maybe TopologyConfig))
    , _sstReceiveWorkPort              :: !(Maybe Int32)
    , _sstWorkerHarnessPort            :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamingSetupTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sstStreamingComputationTopology'
--
-- * 'sstReceiveWorkPort'
--
-- * 'sstWorkerHarnessPort'
streamingSetupTask
    :: StreamingSetupTask
streamingSetupTask =
    StreamingSetupTask
    { _sstStreamingComputationTopology = Nothing
    , _sstReceiveWorkPort = Nothing
    , _sstWorkerHarnessPort = Nothing
    }

-- | The global topology of the streaming Dataflow job.
sstStreamingComputationTopology :: Lens' StreamingSetupTask (Maybe (Maybe TopologyConfig))
sstStreamingComputationTopology
  = lens _sstStreamingComputationTopology
      (\ s a -> s{_sstStreamingComputationTopology = a})

-- | The TCP port on which the worker should listen for messages from other
-- streaming computation workers.
sstReceiveWorkPort :: Lens' StreamingSetupTask (Maybe Int32)
sstReceiveWorkPort
  = lens _sstReceiveWorkPort
      (\ s a -> s{_sstReceiveWorkPort = a})

-- | The TCP port used by the worker to communicate with the Dataflow worker
-- harness.
sstWorkerHarnessPort :: Lens' StreamingSetupTask (Maybe Int32)
sstWorkerHarnessPort
  = lens _sstWorkerHarnessPort
      (\ s a -> s{_sstWorkerHarnessPort = a})

-- | Identifies the location of a streaming side input.
--
-- /See:/ 'streamingSideInputLocation' smart constructor.
data StreamingSideInputLocation = StreamingSideInputLocation
    { _ssilTag         :: !(Maybe Text)
    , _ssilStateFamily :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamingSideInputLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssilTag'
--
-- * 'ssilStateFamily'
streamingSideInputLocation
    :: StreamingSideInputLocation
streamingSideInputLocation =
    StreamingSideInputLocation
    { _ssilTag = Nothing
    , _ssilStateFamily = Nothing
    }

-- | Identifies the particular side input within the streaming Dataflow job.
ssilTag :: Lens' StreamingSideInputLocation (Maybe Text)
ssilTag = lens _ssilTag (\ s a -> s{_ssilTag = a})

-- | Identifies the state family where this side input is stored.
ssilStateFamily :: Lens' StreamingSideInputLocation (Maybe Text)
ssilStateFamily
  = lens _ssilStateFamily
      (\ s a -> s{_ssilStateFamily = a})

-- | Identifies the location of a streaming computation stage, for
-- stage-to-stage communication.
--
-- /See:/ 'streamingStageLocation' smart constructor.
newtype StreamingStageLocation = StreamingStageLocation
    { _sslStreamId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreamingStageLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslStreamId'
streamingStageLocation
    :: StreamingStageLocation
streamingStageLocation =
    StreamingStageLocation
    { _sslStreamId = Nothing
    }

-- | Identifies the particular stream within the streaming Dataflow job.
sslStreamId :: Lens' StreamingStageLocation (Maybe Text)
sslStreamId
  = lens _sslStreamId (\ s a -> s{_sslStreamId = a})

-- | Taskrunner configuration settings.
--
-- /See:/ 'taskRunnerSettings' smart constructor.
data TaskRunnerSettings = TaskRunnerSettings
    { _trsContinueOnException      :: !(Maybe Bool)
    , _trsHarnessCommand           :: !(Maybe Text)
    , _trsWorkflowFileName         :: !(Maybe Text)
    , _trsTaskGroup                :: !(Maybe Text)
    , _trsAlsologtostderr          :: !(Maybe Bool)
    , _trsDataflowApiVersion       :: !(Maybe Text)
    , _trsLogDir                   :: !(Maybe Text)
    , _trsCommandlinesFileName     :: !(Maybe Text)
    , _trsVmId                     :: !(Maybe Text)
    , _trsBaseUrl                  :: !(Maybe Text)
    , _trsOauthScopes              :: !(Maybe [Text])
    , _trsTaskUser                 :: !(Maybe Text)
    , _trsStreamingWorkerMainClass :: !(Maybe Text)
    , _trsBaseTaskDir              :: !(Maybe Text)
    , _trsLogUploadLocation        :: !(Maybe Text)
    , _trsTempStoragePrefix        :: !(Maybe Text)
    , _trsLogToSerialconsole       :: !(Maybe Bool)
    , _trsParallelWorkerSettings   :: !(Maybe (Maybe WorkerSettings))
    , _trsLanguageHint             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskRunnerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsContinueOnException'
--
-- * 'trsHarnessCommand'
--
-- * 'trsWorkflowFileName'
--
-- * 'trsTaskGroup'
--
-- * 'trsAlsologtostderr'
--
-- * 'trsDataflowApiVersion'
--
-- * 'trsLogDir'
--
-- * 'trsCommandlinesFileName'
--
-- * 'trsVmId'
--
-- * 'trsBaseUrl'
--
-- * 'trsOauthScopes'
--
-- * 'trsTaskUser'
--
-- * 'trsStreamingWorkerMainClass'
--
-- * 'trsBaseTaskDir'
--
-- * 'trsLogUploadLocation'
--
-- * 'trsTempStoragePrefix'
--
-- * 'trsLogToSerialconsole'
--
-- * 'trsParallelWorkerSettings'
--
-- * 'trsLanguageHint'
taskRunnerSettings
    :: TaskRunnerSettings
taskRunnerSettings =
    TaskRunnerSettings
    { _trsContinueOnException = Nothing
    , _trsHarnessCommand = Nothing
    , _trsWorkflowFileName = Nothing
    , _trsTaskGroup = Nothing
    , _trsAlsologtostderr = Nothing
    , _trsDataflowApiVersion = Nothing
    , _trsLogDir = Nothing
    , _trsCommandlinesFileName = Nothing
    , _trsVmId = Nothing
    , _trsBaseUrl = Nothing
    , _trsOauthScopes = Nothing
    , _trsTaskUser = Nothing
    , _trsStreamingWorkerMainClass = Nothing
    , _trsBaseTaskDir = Nothing
    , _trsLogUploadLocation = Nothing
    , _trsTempStoragePrefix = Nothing
    , _trsLogToSerialconsole = Nothing
    , _trsParallelWorkerSettings = Nothing
    , _trsLanguageHint = Nothing
    }

-- | Do we continue taskrunner if an exception is hit?
trsContinueOnException :: Lens' TaskRunnerSettings (Maybe Bool)
trsContinueOnException
  = lens _trsContinueOnException
      (\ s a -> s{_trsContinueOnException = a})

-- | Command to launch the worker harness.
trsHarnessCommand :: Lens' TaskRunnerSettings (Maybe Text)
trsHarnessCommand
  = lens _trsHarnessCommand
      (\ s a -> s{_trsHarnessCommand = a})

-- | Store the workflow in this file.
trsWorkflowFileName :: Lens' TaskRunnerSettings (Maybe Text)
trsWorkflowFileName
  = lens _trsWorkflowFileName
      (\ s a -> s{_trsWorkflowFileName = a})

-- | The UNIX group ID on the worker VM to use for tasks launched by
-- taskrunner; e.g. \"wheel\".
trsTaskGroup :: Lens' TaskRunnerSettings (Maybe Text)
trsTaskGroup
  = lens _trsTaskGroup (\ s a -> s{_trsTaskGroup = a})

-- | Also send taskrunner log info to stderr?
trsAlsologtostderr :: Lens' TaskRunnerSettings (Maybe Bool)
trsAlsologtostderr
  = lens _trsAlsologtostderr
      (\ s a -> s{_trsAlsologtostderr = a})

-- | API version of endpoint, e.g. \"v1b3\"
trsDataflowApiVersion :: Lens' TaskRunnerSettings (Maybe Text)
trsDataflowApiVersion
  = lens _trsDataflowApiVersion
      (\ s a -> s{_trsDataflowApiVersion = a})

-- | Directory on the VM to store logs.
trsLogDir :: Lens' TaskRunnerSettings (Maybe Text)
trsLogDir
  = lens _trsLogDir (\ s a -> s{_trsLogDir = a})

-- | Store preprocessing commands in this file.
trsCommandlinesFileName :: Lens' TaskRunnerSettings (Maybe Text)
trsCommandlinesFileName
  = lens _trsCommandlinesFileName
      (\ s a -> s{_trsCommandlinesFileName = a})

-- | ID string of VM.
trsVmId :: Lens' TaskRunnerSettings (Maybe Text)
trsVmId = lens _trsVmId (\ s a -> s{_trsVmId = a})

-- | The base URL for the taskrunner to use when accessing Google Cloud APIs.
-- When workers access Google Cloud APIs, they logically do so via relative
-- URLs. If this field is specified, it supplies the base URL to use for
-- resolving these relative URLs. The normative algorithm used is defined
-- by RFC 1808, \"Relative Uniform Resource Locators\". If not specified,
-- the default value is \"http:\/\/www.googleapis.com\/\"
trsBaseUrl :: Lens' TaskRunnerSettings (Maybe Text)
trsBaseUrl
  = lens _trsBaseUrl (\ s a -> s{_trsBaseUrl = a})

-- | OAuth2 scopes to be requested by the taskrunner in order to access the
-- dataflow API.
trsOauthScopes :: Lens' TaskRunnerSettings [Text]
trsOauthScopes
  = lens _trsOauthScopes
      (\ s a -> s{_trsOauthScopes = a})
      . _Default
      . _Coerce

-- | The UNIX user ID on the worker VM to use for tasks launched by
-- taskrunner; e.g. \"root\".
trsTaskUser :: Lens' TaskRunnerSettings (Maybe Text)
trsTaskUser
  = lens _trsTaskUser (\ s a -> s{_trsTaskUser = a})

-- | Streaming worker main class name.
trsStreamingWorkerMainClass :: Lens' TaskRunnerSettings (Maybe Text)
trsStreamingWorkerMainClass
  = lens _trsStreamingWorkerMainClass
      (\ s a -> s{_trsStreamingWorkerMainClass = a})

-- | Location on the worker for task-specific subdirectories.
trsBaseTaskDir :: Lens' TaskRunnerSettings (Maybe Text)
trsBaseTaskDir
  = lens _trsBaseTaskDir
      (\ s a -> s{_trsBaseTaskDir = a})

-- | Indicates where to put logs. If this is not specified, the logs will not
-- be uploaded. The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
trsLogUploadLocation :: Lens' TaskRunnerSettings (Maybe Text)
trsLogUploadLocation
  = lens _trsLogUploadLocation
      (\ s a -> s{_trsLogUploadLocation = a})

-- | The prefix of the resources the taskrunner should use for temporary
-- storage. The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
trsTempStoragePrefix :: Lens' TaskRunnerSettings (Maybe Text)
trsTempStoragePrefix
  = lens _trsTempStoragePrefix
      (\ s a -> s{_trsTempStoragePrefix = a})

-- | Send taskrunner log into to Google Compute Engine VM serial console?
trsLogToSerialconsole :: Lens' TaskRunnerSettings (Maybe Bool)
trsLogToSerialconsole
  = lens _trsLogToSerialconsole
      (\ s a -> s{_trsLogToSerialconsole = a})

-- | Settings to pass to the parallel worker harness.
trsParallelWorkerSettings :: Lens' TaskRunnerSettings (Maybe (Maybe WorkerSettings))
trsParallelWorkerSettings
  = lens _trsParallelWorkerSettings
      (\ s a -> s{_trsParallelWorkerSettings = a})

-- | Suggested backend language.
trsLanguageHint :: Lens' TaskRunnerSettings (Maybe Text)
trsLanguageHint
  = lens _trsLanguageHint
      (\ s a -> s{_trsLanguageHint = a})

-- | Global topology of the streaming Dataflow job, including all
-- computations and their sharded locations.
--
-- /See:/ 'topologyConfig' smart constructor.
data TopologyConfig = TopologyConfig
    { _tcDataDiskAssignments           :: !(Maybe [Maybe DataDiskAssignment])
    , _tcUserStageToComputationNameMap :: !(Maybe TopologyConfigUserStageToComputationNameMap)
    , _tcComputations                  :: !(Maybe [Maybe ComputationTopology])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TopologyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcDataDiskAssignments'
--
-- * 'tcUserStageToComputationNameMap'
--
-- * 'tcComputations'
topologyConfig
    :: TopologyConfig
topologyConfig =
    TopologyConfig
    { _tcDataDiskAssignments = Nothing
    , _tcUserStageToComputationNameMap = Nothing
    , _tcComputations = Nothing
    }

-- | The disks assigned to a streaming Dataflow job.
tcDataDiskAssignments :: Lens' TopologyConfig [Maybe DataDiskAssignment]
tcDataDiskAssignments
  = lens _tcDataDiskAssignments
      (\ s a -> s{_tcDataDiskAssignments = a})
      . _Default
      . _Coerce

-- | Maps user stage names to stable computation names.
tcUserStageToComputationNameMap :: Lens' TopologyConfig (Maybe TopologyConfigUserStageToComputationNameMap)
tcUserStageToComputationNameMap
  = lens _tcUserStageToComputationNameMap
      (\ s a -> s{_tcUserStageToComputationNameMap = a})

-- | The computations associated with a streaming Dataflow job.
tcComputations :: Lens' TopologyConfig [Maybe ComputationTopology]
tcComputations
  = lens _tcComputations
      (\ s a -> s{_tcComputations = a})
      . _Default
      . _Coerce

-- | Maps user stage names to stable computation names.
--
-- /See:/ 'topologyConfigUserStageToComputationNameMap' smart constructor.
data TopologyConfigUserStageToComputationNameMap =
    TopologyConfigUserStageToComputationNameMap
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TopologyConfigUserStageToComputationNameMap' with the minimum fields required to make a request.
--
topologyConfigUserStageToComputationNameMap
    :: TopologyConfigUserStageToComputationNameMap
topologyConfigUserStageToComputationNameMap =
    TopologyConfigUserStageToComputationNameMap

-- | WorkItem represents basic information about a WorkItem to be executed in
-- the cloud.
--
-- /See:/ 'workItem' smart constructor.
data WorkItem = WorkItem
    { _wiJobId                    :: !(Maybe Text)
    , _wiReportStatusInterval     :: !(Maybe Text)
    , _wiShellTask                :: !(Maybe (Maybe ShellTask))
    , _wiStreamingSetupTask       :: !(Maybe (Maybe StreamingSetupTask))
    , _wiInitialReportIndex       :: !(Maybe Int64)
    , _wiMapTask                  :: !(Maybe (Maybe MapTask))
    , _wiPackages                 :: !(Maybe [Maybe Package])
    , _wiStreamingComputationTask :: !(Maybe (Maybe StreamingComputationTask))
    , _wiSourceOperationTask      :: !(Maybe (Maybe SourceOperationRequest))
    , _wiId                       :: !(Maybe Int64)
    , _wiProjectId                :: !(Maybe Text)
    , _wiLeaseExpireTime          :: !(Maybe Text)
    , _wiConfiguration            :: !(Maybe Text)
    , _wiSeqMapTask               :: !(Maybe (Maybe SeqMapTask))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiJobId'
--
-- * 'wiReportStatusInterval'
--
-- * 'wiShellTask'
--
-- * 'wiStreamingSetupTask'
--
-- * 'wiInitialReportIndex'
--
-- * 'wiMapTask'
--
-- * 'wiPackages'
--
-- * 'wiStreamingComputationTask'
--
-- * 'wiSourceOperationTask'
--
-- * 'wiId'
--
-- * 'wiProjectId'
--
-- * 'wiLeaseExpireTime'
--
-- * 'wiConfiguration'
--
-- * 'wiSeqMapTask'
workItem
    :: WorkItem
workItem =
    WorkItem
    { _wiJobId = Nothing
    , _wiReportStatusInterval = Nothing
    , _wiShellTask = Nothing
    , _wiStreamingSetupTask = Nothing
    , _wiInitialReportIndex = Nothing
    , _wiMapTask = Nothing
    , _wiPackages = Nothing
    , _wiStreamingComputationTask = Nothing
    , _wiSourceOperationTask = Nothing
    , _wiId = Nothing
    , _wiProjectId = Nothing
    , _wiLeaseExpireTime = Nothing
    , _wiConfiguration = Nothing
    , _wiSeqMapTask = Nothing
    }

-- | Identifies the workflow job this WorkItem belongs to.
wiJobId :: Lens' WorkItem (Maybe Text)
wiJobId = lens _wiJobId (\ s a -> s{_wiJobId = a})

-- | Recommended reporting interval.
wiReportStatusInterval :: Lens' WorkItem (Maybe Text)
wiReportStatusInterval
  = lens _wiReportStatusInterval
      (\ s a -> s{_wiReportStatusInterval = a})

-- | Additional information for ShellTask WorkItems.
wiShellTask :: Lens' WorkItem (Maybe (Maybe ShellTask))
wiShellTask
  = lens _wiShellTask (\ s a -> s{_wiShellTask = a})

-- | Additional information for StreamingSetupTask WorkItems.
wiStreamingSetupTask :: Lens' WorkItem (Maybe (Maybe StreamingSetupTask))
wiStreamingSetupTask
  = lens _wiStreamingSetupTask
      (\ s a -> s{_wiStreamingSetupTask = a})

-- | The initial index to use when reporting the status of the WorkItem.
wiInitialReportIndex :: Lens' WorkItem (Maybe Int64)
wiInitialReportIndex
  = lens _wiInitialReportIndex
      (\ s a -> s{_wiInitialReportIndex = a})

-- | Additional information for MapTask WorkItems.
wiMapTask :: Lens' WorkItem (Maybe (Maybe MapTask))
wiMapTask
  = lens _wiMapTask (\ s a -> s{_wiMapTask = a})

-- | Any required packages that need to be fetched in order to execute this
-- WorkItem.
wiPackages :: Lens' WorkItem [Maybe Package]
wiPackages
  = lens _wiPackages (\ s a -> s{_wiPackages = a}) .
      _Default
      . _Coerce

-- | Additional information for StreamingComputationTask WorkItems.
wiStreamingComputationTask :: Lens' WorkItem (Maybe (Maybe StreamingComputationTask))
wiStreamingComputationTask
  = lens _wiStreamingComputationTask
      (\ s a -> s{_wiStreamingComputationTask = a})

-- | Additional information for source operation WorkItems.
wiSourceOperationTask :: Lens' WorkItem (Maybe (Maybe SourceOperationRequest))
wiSourceOperationTask
  = lens _wiSourceOperationTask
      (\ s a -> s{_wiSourceOperationTask = a})

-- | Identifies this WorkItem.
wiId :: Lens' WorkItem (Maybe Int64)
wiId = lens _wiId (\ s a -> s{_wiId = a})

-- | Identifies the cloud project this WorkItem belongs to.
wiProjectId :: Lens' WorkItem (Maybe Text)
wiProjectId
  = lens _wiProjectId (\ s a -> s{_wiProjectId = a})

-- | Time when the lease on this [Work][] will expire.
wiLeaseExpireTime :: Lens' WorkItem (Maybe Text)
wiLeaseExpireTime
  = lens _wiLeaseExpireTime
      (\ s a -> s{_wiLeaseExpireTime = a})

-- | Work item-specific configuration as an opaque blob.
wiConfiguration :: Lens' WorkItem (Maybe Text)
wiConfiguration
  = lens _wiConfiguration
      (\ s a -> s{_wiConfiguration = a})

-- | Additional information for SeqMapTask WorkItems.
wiSeqMapTask :: Lens' WorkItem (Maybe (Maybe SeqMapTask))
wiSeqMapTask
  = lens _wiSeqMapTask (\ s a -> s{_wiSeqMapTask = a})

-- | The Dataflow service\'s idea of the current state of a WorkItem being
-- processed by a worker.
--
-- /See:/ 'workItemServiceState' smart constructor.
data WorkItemServiceState = WorkItemServiceState
    { _wissNextReportIndex       :: !(Maybe Int64)
    , _wissReportStatusInterval  :: !(Maybe Text)
    , _wissHarnessData           :: !(Maybe WorkItemServiceStateHarnessData)
    , _wissSuggestedStopPoint    :: !(Maybe (Maybe ApproximateProgress))
    , _wissSuggestedStopPosition :: !(Maybe (Maybe Position))
    , _wissLeaseExpireTime       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkItemServiceState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wissNextReportIndex'
--
-- * 'wissReportStatusInterval'
--
-- * 'wissHarnessData'
--
-- * 'wissSuggestedStopPoint'
--
-- * 'wissSuggestedStopPosition'
--
-- * 'wissLeaseExpireTime'
workItemServiceState
    :: WorkItemServiceState
workItemServiceState =
    WorkItemServiceState
    { _wissNextReportIndex = Nothing
    , _wissReportStatusInterval = Nothing
    , _wissHarnessData = Nothing
    , _wissSuggestedStopPoint = Nothing
    , _wissSuggestedStopPosition = Nothing
    , _wissLeaseExpireTime = Nothing
    }

-- | The index value to use for the next report sent by the worker. Note: If
-- the report call fails for whatever reason, the worker should reuse this
-- index for subsequent report attempts.
wissNextReportIndex :: Lens' WorkItemServiceState (Maybe Int64)
wissNextReportIndex
  = lens _wissNextReportIndex
      (\ s a -> s{_wissNextReportIndex = a})

-- | New recommended reporting interval.
wissReportStatusInterval :: Lens' WorkItemServiceState (Maybe Text)
wissReportStatusInterval
  = lens _wissReportStatusInterval
      (\ s a -> s{_wissReportStatusInterval = a})

-- | Other data returned by the service, specific to the particular worker
-- harness.
wissHarnessData :: Lens' WorkItemServiceState (Maybe WorkItemServiceStateHarnessData)
wissHarnessData
  = lens _wissHarnessData
      (\ s a -> s{_wissHarnessData = a})

-- | The progress point in the WorkItem where the Dataflow service suggests
-- that the worker truncate the task.
wissSuggestedStopPoint :: Lens' WorkItemServiceState (Maybe (Maybe ApproximateProgress))
wissSuggestedStopPoint
  = lens _wissSuggestedStopPoint
      (\ s a -> s{_wissSuggestedStopPoint = a})

-- | Obsolete, always empty.
wissSuggestedStopPosition :: Lens' WorkItemServiceState (Maybe (Maybe Position))
wissSuggestedStopPosition
  = lens _wissSuggestedStopPosition
      (\ s a -> s{_wissSuggestedStopPosition = a})

-- | Time at which the current lease will expire.
wissLeaseExpireTime :: Lens' WorkItemServiceState (Maybe Text)
wissLeaseExpireTime
  = lens _wissLeaseExpireTime
      (\ s a -> s{_wissLeaseExpireTime = a})

-- | Other data returned by the service, specific to the particular worker
-- harness.
--
-- /See:/ 'workItemServiceStateHarnessData' smart constructor.
data WorkItemServiceStateHarnessData =
    WorkItemServiceStateHarnessData
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkItemServiceStateHarnessData' with the minimum fields required to make a request.
--
workItemServiceStateHarnessData
    :: WorkItemServiceStateHarnessData
workItemServiceStateHarnessData = WorkItemServiceStateHarnessData

-- | Conveys a worker\'s progress through the work described by a WorkItem.
--
-- /See:/ 'workItemStatus' smart constructor.
data WorkItemStatus = WorkItemStatus
    { _wisProgress                :: !(Maybe (Maybe ApproximateProgress))
    , _wisSourceOperationResponse :: !(Maybe (Maybe SourceOperationResponse))
    , _wisStopPosition            :: !(Maybe (Maybe Position))
    , _wisDynamicSourceSplit      :: !(Maybe (Maybe DynamicSourceSplit))
    , _wisCompleted               :: !(Maybe Bool)
    , _wisSourceFork              :: !(Maybe (Maybe SourceFork))
    , _wisReportIndex             :: !(Maybe Int64)
    , _wisRequestedLeaseDuration  :: !(Maybe Text)
    , _wisErrors                  :: !(Maybe [Maybe Status])
    , _wisMetricUpdates           :: !(Maybe [Maybe MetricUpdate])
    , _wisWorkItemId              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkItemStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wisProgress'
--
-- * 'wisSourceOperationResponse'
--
-- * 'wisStopPosition'
--
-- * 'wisDynamicSourceSplit'
--
-- * 'wisCompleted'
--
-- * 'wisSourceFork'
--
-- * 'wisReportIndex'
--
-- * 'wisRequestedLeaseDuration'
--
-- * 'wisErrors'
--
-- * 'wisMetricUpdates'
--
-- * 'wisWorkItemId'
workItemStatus
    :: WorkItemStatus
workItemStatus =
    WorkItemStatus
    { _wisProgress = Nothing
    , _wisSourceOperationResponse = Nothing
    , _wisStopPosition = Nothing
    , _wisDynamicSourceSplit = Nothing
    , _wisCompleted = Nothing
    , _wisSourceFork = Nothing
    , _wisReportIndex = Nothing
    , _wisRequestedLeaseDuration = Nothing
    , _wisErrors = Nothing
    , _wisMetricUpdates = Nothing
    , _wisWorkItemId = Nothing
    }

-- | The WorkItem\'s approximate progress.
wisProgress :: Lens' WorkItemStatus (Maybe (Maybe ApproximateProgress))
wisProgress
  = lens _wisProgress (\ s a -> s{_wisProgress = a})

-- | If the work item represented a SourceOperationRequest, and the work is
-- completed, contains the result of the operation.
wisSourceOperationResponse :: Lens' WorkItemStatus (Maybe (Maybe SourceOperationResponse))
wisSourceOperationResponse
  = lens _wisSourceOperationResponse
      (\ s a -> s{_wisSourceOperationResponse = a})

-- | A worker may split an active map task in two parts, \"primary\" and
-- \"residual\", continuing to process the primary part and returning the
-- residual part into the pool of available work. This event is called a
-- \"dynamic split\" and is critical to the dynamic work rebalancing
-- feature. The two obtained sub-tasks are called \"parts\" of the split.
-- The parts, if concatenated, must represent the same input as would be
-- read by the current task if the split did not happen. The exact way in
-- which the original task is decomposed into the two parts is specified
-- either as a position demarcating them (stop_position), or explicitly as
-- two DerivedSources, if this task consumes a user-defined source type
-- (dynamic_source_split). The \"current\" task is adjusted as a result of
-- the split: after a task with range [A, B) sends a stop_position update
-- at C, its range is considered to be [A, C), e.g.: * Progress should be
-- interpreted relative to the new range, e.g. \"75% completed\" means
-- \"75% of [A, C) completed\" * The worker should interpret
-- proposed_stop_position relative to the new range, e.g. \"split at 68%\"
-- should be interpreted as \"split at 68% of [A, C)\". * If the worker
-- chooses to split again using stop_position, only stop_positions in [A,
-- C) will be accepted. * Etc. dynamic_source_split has similar semantics:
-- e.g., if a task with source S splits using dynamic_source_split into {P,
-- R} (where P and R must be together equivalent to S), then subsequent
-- progress and proposed_stop_position should be interpreted relative to P,
-- and in a potential subsequent dynamic_source_split into {P\', R\'}, P\'
-- and R\' must be together equivalent to P, etc.
wisStopPosition :: Lens' WorkItemStatus (Maybe (Maybe Position))
wisStopPosition
  = lens _wisStopPosition
      (\ s a -> s{_wisStopPosition = a})

-- | See documentation of stop_position.
wisDynamicSourceSplit :: Lens' WorkItemStatus (Maybe (Maybe DynamicSourceSplit))
wisDynamicSourceSplit
  = lens _wisDynamicSourceSplit
      (\ s a -> s{_wisDynamicSourceSplit = a})

-- | True if the WorkItem was completed (successfully or unsuccessfully).
wisCompleted :: Lens' WorkItemStatus (Maybe Bool)
wisCompleted
  = lens _wisCompleted (\ s a -> s{_wisCompleted = a})

-- | DEPRECATED in favor of dynamic_source_split.
wisSourceFork :: Lens' WorkItemStatus (Maybe (Maybe SourceFork))
wisSourceFork
  = lens _wisSourceFork
      (\ s a -> s{_wisSourceFork = a})

-- | The report index. When a WorkItem is leased, the lease will contain an
-- initial report index. When a WorkItem\'s status is reported to the
-- system, the report should be sent with that report index, and the
-- response will contain the index the worker should use for the next
-- report. Reports received with unexpected index values will be rejected
-- by the service. In order to preserve idempotency, the worker should not
-- alter the contents of a report, even if the worker must submit the same
-- report multiple times before getting back a response. The worker should
-- not submit a subsequent report until the response for the previous
-- report had been received from the service.
wisReportIndex :: Lens' WorkItemStatus (Maybe Int64)
wisReportIndex
  = lens _wisReportIndex
      (\ s a -> s{_wisReportIndex = a})

-- | Amount of time the worker requests for its lease.
wisRequestedLeaseDuration :: Lens' WorkItemStatus (Maybe Text)
wisRequestedLeaseDuration
  = lens _wisRequestedLeaseDuration
      (\ s a -> s{_wisRequestedLeaseDuration = a})

-- | Specifies errors which occurred during processing. If errors are
-- provided, and completed = true, then the WorkItem is considered to have
-- failed.
wisErrors :: Lens' WorkItemStatus [Maybe Status]
wisErrors
  = lens _wisErrors (\ s a -> s{_wisErrors = a}) .
      _Default
      . _Coerce

-- | Worker output metrics (counters) for this WorkItem.
wisMetricUpdates :: Lens' WorkItemStatus [Maybe MetricUpdate]
wisMetricUpdates
  = lens _wisMetricUpdates
      (\ s a -> s{_wisMetricUpdates = a})
      . _Default
      . _Coerce

-- | Identifies the WorkItem.
wisWorkItemId :: Lens' WorkItemStatus (Maybe Text)
wisWorkItemId
  = lens _wisWorkItemId
      (\ s a -> s{_wisWorkItemId = a})

-- | Describes one particular pool of Dataflow workers to be instantiated by
-- the Dataflow service in order to perform the computations required by a
-- job. Note that a workflow job may use multiple pools, in order to match
-- the various computational requirements of the various stages of the job.
--
-- /See:/ 'workerPool' smart constructor.
data WorkerPool = WorkerPool
    { _wpAutoscalingSettings :: !(Maybe (Maybe AutoscalingSettings))
    , _wpDiskSizeGb          :: !(Maybe Int32)
    , _wpKind                :: !(Maybe Text)
    , _wpTaskrunnerSettings  :: !(Maybe (Maybe TaskRunnerSettings))
    , _wpNumWorkers          :: !(Maybe Int32)
    , _wpNetwork             :: !(Maybe Text)
    , _wpZone                :: !(Maybe Text)
    , _wpPackages            :: !(Maybe [Maybe Package])
    , _wpOnHostMaintenance   :: !(Maybe Text)
    , _wpDiskSourceImage     :: !(Maybe Text)
    , _wpMachineType         :: !(Maybe Text)
    , _wpMetadata            :: !(Maybe WorkerPoolMetadata)
    , _wpDiskType            :: !(Maybe Text)
    , _wpTeardownPolicy      :: !(Maybe Text)
    , _wpDefaultPackageSet   :: !(Maybe Text)
    , _wpPoolArgs            :: !(Maybe WorkerPoolPoolArgs)
    , _wpDataDisks           :: !(Maybe [Maybe Disk])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpAutoscalingSettings'
--
-- * 'wpDiskSizeGb'
--
-- * 'wpKind'
--
-- * 'wpTaskrunnerSettings'
--
-- * 'wpNumWorkers'
--
-- * 'wpNetwork'
--
-- * 'wpZone'
--
-- * 'wpPackages'
--
-- * 'wpOnHostMaintenance'
--
-- * 'wpDiskSourceImage'
--
-- * 'wpMachineType'
--
-- * 'wpMetadata'
--
-- * 'wpDiskType'
--
-- * 'wpTeardownPolicy'
--
-- * 'wpDefaultPackageSet'
--
-- * 'wpPoolArgs'
--
-- * 'wpDataDisks'
workerPool
    :: WorkerPool
workerPool =
    WorkerPool
    { _wpAutoscalingSettings = Nothing
    , _wpDiskSizeGb = Nothing
    , _wpKind = Nothing
    , _wpTaskrunnerSettings = Nothing
    , _wpNumWorkers = Nothing
    , _wpNetwork = Nothing
    , _wpZone = Nothing
    , _wpPackages = Nothing
    , _wpOnHostMaintenance = Nothing
    , _wpDiskSourceImage = Nothing
    , _wpMachineType = Nothing
    , _wpMetadata = Nothing
    , _wpDiskType = Nothing
    , _wpTeardownPolicy = Nothing
    , _wpDefaultPackageSet = Nothing
    , _wpPoolArgs = Nothing
    , _wpDataDisks = Nothing
    }

-- | Settings for autoscaling of this WorkerPool.
wpAutoscalingSettings :: Lens' WorkerPool (Maybe (Maybe AutoscalingSettings))
wpAutoscalingSettings
  = lens _wpAutoscalingSettings
      (\ s a -> s{_wpAutoscalingSettings = a})

-- | Size of root disk for VMs, in GB. If zero or unspecified, the service
-- will attempt to choose a reasonable default.
wpDiskSizeGb :: Lens' WorkerPool (Maybe Int32)
wpDiskSizeGb
  = lens _wpDiskSizeGb (\ s a -> s{_wpDiskSizeGb = a})

-- | The kind of the worker pool; currently only \'harness\' and \'shuffle\'
-- are supported.
wpKind :: Lens' WorkerPool (Maybe Text)
wpKind = lens _wpKind (\ s a -> s{_wpKind = a})

-- | Settings passed through to Google Compute Engine workers when using the
-- standard Dataflow task runner. Users should ignore this field.
wpTaskrunnerSettings :: Lens' WorkerPool (Maybe (Maybe TaskRunnerSettings))
wpTaskrunnerSettings
  = lens _wpTaskrunnerSettings
      (\ s a -> s{_wpTaskrunnerSettings = a})

-- | Number of Google Compute Engine workers in this pool needed to execute
-- the job. If zero or unspecified, the service will attempt to choose a
-- reasonable default.
wpNumWorkers :: Lens' WorkerPool (Maybe Int32)
wpNumWorkers
  = lens _wpNumWorkers (\ s a -> s{_wpNumWorkers = a})

-- | Network to which VMs will be assigned. If empty or unspecified, the
-- service will use the network \"default\".
wpNetwork :: Lens' WorkerPool (Maybe Text)
wpNetwork
  = lens _wpNetwork (\ s a -> s{_wpNetwork = a})

-- | Zone to run the worker pools in (e.g. \"us-central1-b\"). If empty or
-- unspecified, the service will attempt to choose a reasonable default.
wpZone :: Lens' WorkerPool (Maybe Text)
wpZone = lens _wpZone (\ s a -> s{_wpZone = a})

-- | Packages to be installed on workers.
wpPackages :: Lens' WorkerPool [Maybe Package]
wpPackages
  = lens _wpPackages (\ s a -> s{_wpPackages = a}) .
      _Default
      . _Coerce

-- | The action to take on host maintenance, as defined by the Google Compute
-- Engine API.
wpOnHostMaintenance :: Lens' WorkerPool (Maybe Text)
wpOnHostMaintenance
  = lens _wpOnHostMaintenance
      (\ s a -> s{_wpOnHostMaintenance = a})

-- | Fully qualified source image for disks.
wpDiskSourceImage :: Lens' WorkerPool (Maybe Text)
wpDiskSourceImage
  = lens _wpDiskSourceImage
      (\ s a -> s{_wpDiskSourceImage = a})

-- | Machine type (e.g. \"n1-standard-1\"). If empty or unspecified, the
-- service will attempt to choose a reasonable default.
wpMachineType :: Lens' WorkerPool (Maybe Text)
wpMachineType
  = lens _wpMachineType
      (\ s a -> s{_wpMachineType = a})

-- | Metadata to set on the Google Compute Engine VMs.
wpMetadata :: Lens' WorkerPool (Maybe WorkerPoolMetadata)
wpMetadata
  = lens _wpMetadata (\ s a -> s{_wpMetadata = a})

-- | Type of root disk for VMs. If empty or unspecified, the service will
-- attempt to choose a reasonable default.
wpDiskType :: Lens' WorkerPool (Maybe Text)
wpDiskType
  = lens _wpDiskType (\ s a -> s{_wpDiskType = a})

-- | Sets the policy for determining when to turndown worker pool. Allowed
-- values are: TEARDOWN_ALWAYS, TEARDOWN_ON_SUCCESS, and TEARDOWN_NEVER.
-- TEARDOWN_ALWAYS means workers are always torn down regardless of whether
-- the job succeeds. TEARDOWN_ON_SUCCESS means workers are torn down if the
-- job succeeds. TEARDOWN_NEVER means the workers are never torn down. If
-- the workers are not torn down by the service, they will continue to run
-- and use Google Compute Engine VM resources in the user\'s project until
-- they are explicitly terminated by the user. Because of this, Google
-- recommends using the TEARDOWN_ALWAYS policy except for small, manually
-- supervised test jobs. If unknown or unspecified, the service will
-- attempt to choose a reasonable default.
wpTeardownPolicy :: Lens' WorkerPool (Maybe Text)
wpTeardownPolicy
  = lens _wpTeardownPolicy
      (\ s a -> s{_wpTeardownPolicy = a})

-- | The default package set to install. This allows the service to select a
-- default set of packages which are useful to worker harnesses written in
-- a particular language.
wpDefaultPackageSet :: Lens' WorkerPool (Maybe Text)
wpDefaultPackageSet
  = lens _wpDefaultPackageSet
      (\ s a -> s{_wpDefaultPackageSet = a})

-- | Extra arguments for this worker pool.
wpPoolArgs :: Lens' WorkerPool (Maybe WorkerPoolPoolArgs)
wpPoolArgs
  = lens _wpPoolArgs (\ s a -> s{_wpPoolArgs = a})

-- | Data disks that are used by a VM in this workflow.
wpDataDisks :: Lens' WorkerPool [Maybe Disk]
wpDataDisks
  = lens _wpDataDisks (\ s a -> s{_wpDataDisks = a}) .
      _Default
      . _Coerce

-- | Metadata to set on the Google Compute Engine VMs.
--
-- /See:/ 'workerPoolMetadata' smart constructor.
data WorkerPoolMetadata =
    WorkerPoolMetadata
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerPoolMetadata' with the minimum fields required to make a request.
--
workerPoolMetadata
    :: WorkerPoolMetadata
workerPoolMetadata = WorkerPoolMetadata

-- | Extra arguments for this worker pool.
--
-- /See:/ 'workerPoolPoolArgs' smart constructor.
data WorkerPoolPoolArgs =
    WorkerPoolPoolArgs
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerPoolPoolArgs' with the minimum fields required to make a request.
--
workerPoolPoolArgs
    :: WorkerPoolPoolArgs
workerPoolPoolArgs = WorkerPoolPoolArgs

-- | Provides data to pass through to the worker harness.
--
-- /See:/ 'workerSettings' smart constructor.
data WorkerSettings = WorkerSettings
    { _wsServicePath        :: !(Maybe Text)
    , _wsBaseUrl            :: !(Maybe Text)
    , _wsShuffleServicePath :: !(Maybe Text)
    , _wsTempStoragePrefix  :: !(Maybe Text)
    , _wsReportingEnabled   :: !(Maybe Bool)
    , _wsWorkerId           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsServicePath'
--
-- * 'wsBaseUrl'
--
-- * 'wsShuffleServicePath'
--
-- * 'wsTempStoragePrefix'
--
-- * 'wsReportingEnabled'
--
-- * 'wsWorkerId'
workerSettings
    :: WorkerSettings
workerSettings =
    WorkerSettings
    { _wsServicePath = Nothing
    , _wsBaseUrl = Nothing
    , _wsShuffleServicePath = Nothing
    , _wsTempStoragePrefix = Nothing
    , _wsReportingEnabled = Nothing
    , _wsWorkerId = Nothing
    }

-- | The Dataflow service path relative to the root URL, for example,
-- \"dataflow\/v1b3\/projects\".
wsServicePath :: Lens' WorkerSettings (Maybe Text)
wsServicePath
  = lens _wsServicePath
      (\ s a -> s{_wsServicePath = a})

-- | The base URL for accessing Google Cloud APIs. When workers access Google
-- Cloud APIs, they logically do so via relative URLs. If this field is
-- specified, it supplies the base URL to use for resolving these relative
-- URLs. The normative algorithm used is defined by RFC 1808, \"Relative
-- Uniform Resource Locators\". If not specified, the default value is
-- \"http:\/\/www.googleapis.com\/\"
wsBaseUrl :: Lens' WorkerSettings (Maybe Text)
wsBaseUrl
  = lens _wsBaseUrl (\ s a -> s{_wsBaseUrl = a})

-- | The Shuffle service path relative to the root URL, for example,
-- \"shuffle\/v1beta1\".
wsShuffleServicePath :: Lens' WorkerSettings (Maybe Text)
wsShuffleServicePath
  = lens _wsShuffleServicePath
      (\ s a -> s{_wsShuffleServicePath = a})

-- | The prefix of the resources the system should use for temporary storage.
-- The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
wsTempStoragePrefix :: Lens' WorkerSettings (Maybe Text)
wsTempStoragePrefix
  = lens _wsTempStoragePrefix
      (\ s a -> s{_wsTempStoragePrefix = a})

-- | Send work progress updates to service.
wsReportingEnabled :: Lens' WorkerSettings (Maybe Bool)
wsReportingEnabled
  = lens _wsReportingEnabled
      (\ s a -> s{_wsReportingEnabled = a})

-- | ID of the worker running this pipeline.
wsWorkerId :: Lens' WorkerSettings (Maybe Text)
wsWorkerId
  = lens _wsWorkerId (\ s a -> s{_wsWorkerId = a})

-- | An instruction that writes records. Takes one input, produces no
-- outputs.
--
-- /See:/ 'writeInstruction' smart constructor.
data WriteInstruction = WriteInstruction
    { _wiSink  :: !(Maybe (Maybe Sink))
    , _wiInput :: !(Maybe (Maybe InstructionInput))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WriteInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiSink'
--
-- * 'wiInput'
writeInstruction
    :: WriteInstruction
writeInstruction =
    WriteInstruction
    { _wiSink = Nothing
    , _wiInput = Nothing
    }

-- | The sink to write to.
wiSink :: Lens' WriteInstruction (Maybe (Maybe Sink))
wiSink = lens _wiSink (\ s a -> s{_wiSink = a})

-- | The input.
wiInput :: Lens' WriteInstruction (Maybe (Maybe InstructionInput))
wiInput = lens _wiInput (\ s a -> s{_wiInput = a})
