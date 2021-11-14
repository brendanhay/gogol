{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Genomics
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads, processes, queries, and searches Genomics data in the cloud.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference>
module Network.Google.Genomics
    (
    -- * Service Configuration
      genomicsService

    -- * OAuth Scopes
    , genomicsScope
    , cloudPlatformScope

    -- * API Declaration
    , GenomicsAPI

    -- * Resources

    -- ** genomics.pipelines.run
    , module Network.Google.Resource.Genomics.Pipelines.Run

    -- ** genomics.projects.operations.cancel
    , module Network.Google.Resource.Genomics.Projects.Operations.Cancel

    -- ** genomics.projects.operations.get
    , module Network.Google.Resource.Genomics.Projects.Operations.Get

    -- ** genomics.projects.operations.list
    , module Network.Google.Resource.Genomics.Projects.Operations.List

    -- ** genomics.projects.workers.checkIn
    , module Network.Google.Resource.Genomics.Projects.Workers.CheckIn

    -- ** genomics.workers.checkIn
    , module Network.Google.Resource.Genomics.Workers.CheckIn

    -- * Types

    -- ** ContainerStartedEventPortMAppings
    , ContainerStartedEventPortMAppings
    , containerStartedEventPortMAppings
    , csepmaAddtional

    -- ** ActionFlagsItem
    , ActionFlagsItem (..)

    -- ** Event
    , Event
    , event
    , eDetails
    , eTimestamp
    , eDescription

    -- ** CheckInRequestEvent
    , CheckInRequestEvent
    , checkInRequestEvent
    , cireAddtional

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** RunPipelineRequestLabels
    , RunPipelineRequestLabels
    , runPipelineRequestLabels
    , rprlAddtional

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** FailedEvent
    , FailedEvent
    , failedEvent
    , feCause
    , feCode

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** WorkerStatus
    , WorkerStatus
    , workerStatus
    , wsTotalRamBytes
    , wsAttachedDisks
    , wsUptimeSeconds
    , wsBootDisk
    , wsFreeRamBytes

    -- ** ContainerStoppedEvent
    , ContainerStoppedEvent
    , containerStoppedEvent
    , cseExitStatus
    , cseActionId
    , cseStderr

    -- ** CheckInResponse
    , CheckInResponse
    , checkInResponse
    , cirFeatures
    , cirDeadline
    , cirMetadata

    -- ** WorkerAssignedEvent
    , WorkerAssignedEvent
    , workerAssignedEvent
    , waeZone
    , waeMachineType
    , waeInstance

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** Disk
    , Disk
    , disk
    , dSourceImage
    , dSizeGb
    , dName
    , dType

    -- ** UnexpectedExitStatusEvent
    , UnexpectedExitStatusEvent
    , unexpectedExitStatusEvent
    , ueseExitStatus
    , ueseActionId

    -- ** DelayedEvent
    , DelayedEvent
    , delayedEvent
    , deMetrics
    , deCause

    -- ** ActionPortMAppings
    , ActionPortMAppings
    , actionPortMAppings
    , apmaAddtional

    -- ** MetadataLabels
    , MetadataLabels
    , metadataLabels
    , mlAddtional

    -- ** CheckInRequest
    , CheckInRequest
    , checkInRequest
    , cirEvent
    , cirWorkerStatus
    , cirResult
    , cirEvents
    , cirDeadlineExpired
    , cirSosReport

    -- ** PersistentDisk
    , PersistentDisk
    , persistentDisk
    , pdSourceImage
    , pdSizeGb
    , pdType

    -- ** ContainerKilledEvent
    , ContainerKilledEvent
    , containerKilledEvent
    , ckeActionId

    -- ** PullStoppedEvent
    , PullStoppedEvent
    , pullStoppedEvent
    , pseImageURI

    -- ** Volume
    , Volume
    , volume
    , vPersistentDisk
    , vVolume
    , vExistingDisk
    , vNfsMount

    -- ** ActionLabels
    , ActionLabels
    , actionLabels
    , alAddtional

    -- ** TimestampedEventData
    , TimestampedEventData
    , timestampedEventData
    , tedAddtional

    -- ** TimestampedEvent
    , TimestampedEvent
    , timestampedEvent
    , teData
    , teTimestamp

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Network
    , Network
    , network
    , nUsePrivateAddress
    , nName
    , nSubnetwork

    -- ** EventDetails
    , EventDetails
    , eventDetails
    , edAddtional

    -- ** ExistingDisk
    , ExistingDisk
    , existingDisk
    , edDisk

    -- ** Action
    , Action
    , action
    , aCommands
    , aFlags
    , aEnvironment
    , aCredentials
    , aEntrypoint
    , aPortMAppings
    , aMounts
    , aImageURI
    , aName
    , aLabels
    , aEncryptedEnvironment
    , aTimeout
    , aPidNamespace

    -- ** Secret
    , Secret
    , secret
    , sKeyName
    , sCipherText

    -- ** WorkerStatusAttachedDisks
    , WorkerStatusAttachedDisks
    , workerStatusAttachedDisks
    , wsadAddtional

    -- ** Resources
    , Resources
    , resources
    , rZones
    , rRegions
    , rVirtualMachine
    , rProjectId

    -- ** DiskStatus
    , DiskStatus
    , diskStatus
    , dsTotalSpaceBytes
    , dsFreeSpaceBytes

    -- ** VirtualMachineLabels
    , VirtualMachineLabels
    , virtualMachineLabels
    , vmlAddtional

    -- ** VirtualMachine
    , VirtualMachine
    , virtualMachine
    , vmDockerCacheImages
    , vmReservation
    , vmNetwork
    , vmCPUPlatform
    , vmServiceAccount
    , vmAccelerators
    , vmMachineType
    , vmEnableStackdriverMonitoring
    , vmLabels
    , vmVolumes
    , vmBootDiskSizeGb
    , vmDisks
    , vmBootImage
    , vmNvidiaDriverVersion
    , vmPreemptible

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** CheckInResponseMetadata
    , CheckInResponseMetadata
    , checkInResponseMetadata
    , cirmAddtional

    -- ** Accelerator
    , Accelerator
    , accelerator
    , aCount
    , aType

    -- ** PipelineEnvironment
    , PipelineEnvironment
    , pipelineEnvironment
    , peAddtional

    -- ** WorkerReleasedEvent
    , WorkerReleasedEvent
    , workerReleasedEvent
    , wreZone
    , wreInstance

    -- ** ContainerStartedEvent
    , ContainerStartedEvent
    , containerStartedEvent
    , cIPAddress
    , cActionId
    , cPortMAppings

    -- ** FailedEventCode
    , FailedEventCode (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** RunPipelineRequest
    , RunPipelineRequest
    , runPipelineRequest
    , rprPipeline
    , rprPubSubTopic
    , rprLabels

    -- ** Pipeline
    , Pipeline
    , pipeline
    , pActions
    , pEnvironment
    , pResources
    , pEncryptedEnvironment
    , pTimeout

    -- ** Metadata
    , Metadata
    , metadata
    , mStartTime
    , mEvents
    , mEndTime
    , mPipeline
    , mLabels
    , mCreateTime

    -- ** CheckInResponseFeatures
    , CheckInResponseFeatures
    , checkInResponseFeatures
    , cirfAddtional

    -- ** Mount
    , Mount
    , mount
    , mPath
    , mDisk
    , mReadOnly

    -- ** PullStartedEvent
    , PullStartedEvent
    , pullStartedEvent
    , pImageURI

    -- ** RunPipelineResponse
    , RunPipelineResponse
    , runPipelineResponse

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** ActionEnvironment
    , ActionEnvironment
    , actionEnvironment
    , aeAddtional

    -- ** NFSMount
    , NFSMount
    , nFSMount
    , nfsmTarget

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Genomics.Types
import Network.Google.Resource.Genomics.Pipelines.Run
import Network.Google.Resource.Genomics.Projects.Operations.Cancel
import Network.Google.Resource.Genomics.Projects.Operations.Get
import Network.Google.Resource.Genomics.Projects.Operations.List
import Network.Google.Resource.Genomics.Projects.Workers.CheckIn
import Network.Google.Resource.Genomics.Workers.CheckIn

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Genomics API service.
type GenomicsAPI =
     PipelinesRunResource :<|> WorkersCheckInResource :<|>
       ProjectsWorkersCheckInResource
       :<|> ProjectsOperationsListResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsOperationsCancelResource
