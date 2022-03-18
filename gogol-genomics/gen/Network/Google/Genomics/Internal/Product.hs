{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Genomics.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Genomics.Internal.Product
  ( -- * Accelerator
    Accelerator (..),
    newAccelerator,

    -- * Action
    Action (..),
    newAction,

    -- * Action_Environment
    Action_Environment (..),
    newAction_Environment,

    -- * Action_Labels
    Action_Labels (..),
    newAction_Labels,

    -- * Action_PortMappings
    Action_PortMappings (..),
    newAction_PortMappings,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CheckInRequest
    CheckInRequest (..),
    newCheckInRequest,

    -- * CheckInRequest_Event
    CheckInRequest_Event (..),
    newCheckInRequest_Event,

    -- * CheckInResponse
    CheckInResponse (..),
    newCheckInResponse,

    -- * CheckInResponse_Features
    CheckInResponse_Features (..),
    newCheckInResponse_Features,

    -- * CheckInResponse_Metadata
    CheckInResponse_Metadata (..),
    newCheckInResponse_Metadata,

    -- * ContainerKilledEvent
    ContainerKilledEvent (..),
    newContainerKilledEvent,

    -- * ContainerStartedEvent
    ContainerStartedEvent (..),
    newContainerStartedEvent,

    -- * ContainerStartedEvent_PortMappings
    ContainerStartedEvent_PortMappings (..),
    newContainerStartedEvent_PortMappings,

    -- * ContainerStoppedEvent
    ContainerStoppedEvent (..),
    newContainerStoppedEvent,

    -- * DelayedEvent
    DelayedEvent (..),
    newDelayedEvent,

    -- * Disk
    Disk (..),
    newDisk,

    -- * DiskStatus
    DiskStatus (..),
    newDiskStatus,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Event
    Event (..),
    newEvent,

    -- * Event_Details
    Event_Details (..),
    newEvent_Details,

    -- * ExistingDisk
    ExistingDisk (..),
    newExistingDisk,

    -- * FailedEvent
    FailedEvent (..),
    newFailedEvent,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Metadata_Labels
    Metadata_Labels (..),
    newMetadata_Labels,

    -- * Mount
    Mount (..),
    newMount,

    -- * NFSMount
    NFSMount (..),
    newNFSMount,

    -- * Network
    Network (..),
    newNetwork,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PersistentDisk
    PersistentDisk (..),
    newPersistentDisk,

    -- * Pipeline
    Pipeline (..),
    newPipeline,

    -- * Pipeline_Environment
    Pipeline_Environment (..),
    newPipeline_Environment,

    -- * PullStartedEvent
    PullStartedEvent (..),
    newPullStartedEvent,

    -- * PullStoppedEvent
    PullStoppedEvent (..),
    newPullStoppedEvent,

    -- * Resources
    Resources (..),
    newResources,

    -- * RunPipelineRequest
    RunPipelineRequest (..),
    newRunPipelineRequest,

    -- * RunPipelineRequest_Labels
    RunPipelineRequest_Labels (..),
    newRunPipelineRequest_Labels,

    -- * RunPipelineResponse
    RunPipelineResponse (..),
    newRunPipelineResponse,

    -- * Secret
    Secret (..),
    newSecret,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimestampedEvent
    TimestampedEvent (..),
    newTimestampedEvent,

    -- * TimestampedEvent_Data
    TimestampedEvent_Data (..),
    newTimestampedEvent_Data,

    -- * UnexpectedExitStatusEvent
    UnexpectedExitStatusEvent (..),
    newUnexpectedExitStatusEvent,

    -- * VirtualMachine
    VirtualMachine (..),
    newVirtualMachine,

    -- * VirtualMachine_Labels
    VirtualMachine_Labels (..),
    newVirtualMachine_Labels,

    -- * Volume
    Volume (..),
    newVolume,

    -- * WorkerAssignedEvent
    WorkerAssignedEvent (..),
    newWorkerAssignedEvent,

    -- * WorkerReleasedEvent
    WorkerReleasedEvent (..),
    newWorkerReleasedEvent,

    -- * WorkerStatus
    WorkerStatus (..),
    newWorkerStatus,

    -- * WorkerStatus_AttachedDisks
    WorkerStatus_AttachedDisks (..),
    newWorkerStatus_AttachedDisks,
  )
where

import Network.Google.Genomics.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Carries information about an accelerator that can be attached to a VM.
--
-- /See:/ 'newAccelerator' smart constructor.
data Accelerator = Accelerator
  { -- | How many accelerators of this type to attach.
    count :: (Core.Maybe Core.Int64),
    -- | The accelerator type string (for example, \"nvidia-tesla-k80\"). Only NVIDIA GPU accelerators are currently supported. If an NVIDIA GPU is attached, the required runtime libraries will be made available to all containers under @\/usr\/local\/nvidia@. The driver version to install must be specified using the NVIDIA driver version parameter on the virtual machine specification. Note that attaching a GPU increases the worker VM startup time by a few minutes.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Accelerator' with the minimum fields required to make a request.
newAccelerator ::
  Accelerator
newAccelerator = Accelerator {count = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Accelerator where
  parseJSON =
    Core.withObject
      "Accelerator"
      ( \o ->
          Accelerator
            Core.<$> (o Core..:? "count") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Accelerator where
  toJSON Accelerator {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Specifies a single action that runs a Docker container.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action
  { -- | If specified, overrides the @CMD@ specified in the container. If the container also has an @ENTRYPOINT@ the values are used as entrypoint arguments. Otherwise, they are used as a command and arguments to run inside the container.
    commands :: (Core.Maybe [Core.Text]),
    -- | If the specified image is hosted on a private registry other than Google Container Registry, the credentials required to pull the image must be specified here as an encrypted secret. The secret must decrypt to a JSON-encoded dictionary containing both @username@ and @password@ keys.
    credentials :: (Core.Maybe Secret),
    -- | The encrypted environment to pass into the container. This environment is merged with values specified in the google.genomics.v2alpha1.Pipeline message, overwriting any duplicate values. The secret must decrypt to a JSON-encoded dictionary where key-value pairs serve as environment variable names and their values. The decoded environment variables can overwrite the values specified by the @environment@ field.
    encryptedEnvironment :: (Core.Maybe Secret),
    -- | If specified, overrides the @ENTRYPOINT@ specified in the container.
    entrypoint :: (Core.Maybe Core.Text),
    -- | The environment to pass into the container. This environment is merged with values specified in the google.genomics.v2alpha1.Pipeline message, overwriting any duplicate values. In addition to the values passed here, a few other values are automatically injected into the environment. These cannot be hidden or overwritten. @GOOGLE_PIPELINE_FAILED@ will be set to \"1\" if the pipeline failed because an action has exited with a non-zero status (and did not have the @IGNORE_EXIT_STATUS@ flag set). This can be used to determine if additional debug or logging actions should execute. @GOOGLE_LAST_EXIT_STATUS@ will be set to the exit status of the last non-background action that executed. This can be used by workflow engine authors to determine whether an individual action has succeeded or failed.
    environment :: (Core.Maybe Action_Environment),
    -- | The set of flags to apply to this action.
    flags :: (Core.Maybe [Action_FlagsItem]),
    -- | Required. The URI to pull the container image from. Note that all images referenced by actions in the pipeline are pulled before the first action runs. If multiple actions reference the same image, it is only pulled once, ensuring that the same image is used for all actions in a single pipeline. The image URI can be either a complete host and image specification (e.g., quay.io\/biocontainers\/samtools), a library and image name (e.g., google\/cloud-sdk) or a bare image name (\'bash\') to pull from the default library. No schema is required in any of these cases. If the specified image is not public, the service account specified for the Virtual Machine must have access to pull the images from GCR, or appropriate credentials must be specified in the google.genomics.v2alpha1.Action.credentials field.
    imageUri :: (Core.Maybe Core.Text),
    -- | Labels to associate with the action. This field is provided to assist workflow engine authors in identifying actions (for example, to indicate what sort of action they perform, such as localization or debugging). They are returned in the operation metadata, but are otherwise ignored.
    labels :: (Core.Maybe Action_Labels),
    -- | A list of mounts to make available to the action. In addition to the values specified here, every action has a special virtual disk mounted under @\/google@ that contains log files and other operational components. - \/google\/logs All logs written during the pipeline execution. - \/google\/logs\/output The combined standard output and standard error of all actions run as part of the pipeline execution. - \/google\/logs\/action\//\/stdout The complete contents of each individual action\'s standard output. - \/google\/logs\/action\//\/stderr The complete contents of each individual action\'s standard error output.
    mounts :: (Core.Maybe [Mount]),
    -- | An optional name for the container. The container hostname will be set to this name, making it useful for inter-container communication. The name must contain only upper and lowercase alphanumeric characters and hyphens and cannot start with a hyphen.
    name :: (Core.Maybe Core.Text),
    -- | An optional identifier for a PID namespace to run the action inside. Multiple actions should use the same string to share a namespace. If unspecified, a separate isolated namespace is used.
    pidNamespace :: (Core.Maybe Core.Text),
    -- | A map of containers to host port mappings for this container. If the container already specifies exposed ports, use the @PUBLISH_EXPOSED_PORTS@ flag instead. The host port number must be less than 65536. If it is zero, an unused random port is assigned. To determine the resulting port number, consult the @ContainerStartedEvent@ in the operation metadata.
    portMappings :: (Core.Maybe Action_PortMappings),
    -- | The maximum amount of time to give the action to complete. If the action fails to complete before the timeout, it will be terminated and the exit status will be non-zero. The pipeline will continue or terminate based on the rules defined by the @ALWAYS_RUN@ and @IGNORE_EXIT_STATUS@ flags.
    timeout :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
newAction ::
  Action
newAction =
  Action
    { commands = Core.Nothing,
      credentials = Core.Nothing,
      encryptedEnvironment = Core.Nothing,
      entrypoint = Core.Nothing,
      environment = Core.Nothing,
      flags = Core.Nothing,
      imageUri = Core.Nothing,
      labels = Core.Nothing,
      mounts = Core.Nothing,
      name = Core.Nothing,
      pidNamespace = Core.Nothing,
      portMappings = Core.Nothing,
      timeout = Core.Nothing
    }

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \o ->
          Action
            Core.<$> (o Core..:? "commands" Core..!= Core.mempty)
            Core.<*> (o Core..:? "credentials")
            Core.<*> (o Core..:? "encryptedEnvironment")
            Core.<*> (o Core..:? "entrypoint")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "flags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "imageUri")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "mounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pidNamespace")
            Core.<*> (o Core..:? "portMappings")
            Core.<*> (o Core..:? "timeout")
      )

instance Core.ToJSON Action where
  toJSON Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("commands" Core..=) Core.<$> commands,
            ("credentials" Core..=) Core.<$> credentials,
            ("encryptedEnvironment" Core..=)
              Core.<$> encryptedEnvironment,
            ("entrypoint" Core..=) Core.<$> entrypoint,
            ("environment" Core..=) Core.<$> environment,
            ("flags" Core..=) Core.<$> flags,
            ("imageUri" Core..=) Core.<$> imageUri,
            ("labels" Core..=) Core.<$> labels,
            ("mounts" Core..=) Core.<$> mounts,
            ("name" Core..=) Core.<$> name,
            ("pidNamespace" Core..=) Core.<$> pidNamespace,
            ("portMappings" Core..=) Core.<$> portMappings,
            ("timeout" Core..=) Core.<$> timeout
          ]
      )

-- | The environment to pass into the container. This environment is merged with values specified in the google.genomics.v2alpha1.Pipeline message, overwriting any duplicate values. In addition to the values passed here, a few other values are automatically injected into the environment. These cannot be hidden or overwritten. @GOOGLE_PIPELINE_FAILED@ will be set to \"1\" if the pipeline failed because an action has exited with a non-zero status (and did not have the @IGNORE_EXIT_STATUS@ flag set). This can be used to determine if additional debug or logging actions should execute. @GOOGLE_LAST_EXIT_STATUS@ will be set to the exit status of the last non-background action that executed. This can be used by workflow engine authors to determine whether an individual action has succeeded or failed.
--
-- /See:/ 'newAction_Environment' smart constructor.
newtype Action_Environment = Action_Environment
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action_Environment' with the minimum fields required to make a request.
newAction_Environment ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Action_Environment
newAction_Environment addtional = Action_Environment {addtional = addtional}

instance Core.FromJSON Action_Environment where
  parseJSON =
    Core.withObject
      "Action_Environment"
      ( \o ->
          Action_Environment Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Action_Environment where
  toJSON Action_Environment {..} = Core.toJSON addtional

-- | Labels to associate with the action. This field is provided to assist workflow engine authors in identifying actions (for example, to indicate what sort of action they perform, such as localization or debugging). They are returned in the operation metadata, but are otherwise ignored.
--
-- /See:/ 'newAction_Labels' smart constructor.
newtype Action_Labels = Action_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action_Labels' with the minimum fields required to make a request.
newAction_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Action_Labels
newAction_Labels addtional = Action_Labels {addtional = addtional}

instance Core.FromJSON Action_Labels where
  parseJSON =
    Core.withObject
      "Action_Labels"
      ( \o ->
          Action_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Action_Labels where
  toJSON Action_Labels {..} = Core.toJSON addtional

-- | A map of containers to host port mappings for this container. If the container already specifies exposed ports, use the @PUBLISH_EXPOSED_PORTS@ flag instead. The host port number must be less than 65536. If it is zero, an unused random port is assigned. To determine the resulting port number, consult the @ContainerStartedEvent@ in the operation metadata.
--
-- /See:/ 'newAction_PortMappings' smart constructor.
newtype Action_PortMappings = Action_PortMappings
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action_PortMappings' with the minimum fields required to make a request.
newAction_PortMappings ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int32 ->
  Action_PortMappings
newAction_PortMappings addtional = Action_PortMappings {addtional = addtional}

instance Core.FromJSON Action_PortMappings where
  parseJSON =
    Core.withObject
      "Action_PortMappings"
      ( \o ->
          Action_PortMappings
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Action_PortMappings where
  toJSON Action_PortMappings {..} =
    Core.toJSON addtional

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | The parameters to the CheckIn method.
--
-- /See:/ 'newCheckInRequest' smart constructor.
data CheckInRequest = CheckInRequest
  { -- | The deadline has expired and the worker needs more time.
    deadlineExpired :: (Core.Maybe Empty),
    -- | A workflow specific event occurred.
    event :: (Core.Maybe CheckInRequest_Event),
    -- | A list of timestamped events.
    events :: (Core.Maybe [TimestampedEvent]),
    -- | The operation has finished with the given result.
    result :: (Core.Maybe Status),
    -- | An SOS report for an unexpected VM failure.
    sosReport :: (Core.Maybe Core.Base64),
    -- | Data about the status of the worker VM.
    workerStatus :: (Core.Maybe WorkerStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckInRequest' with the minimum fields required to make a request.
newCheckInRequest ::
  CheckInRequest
newCheckInRequest =
  CheckInRequest
    { deadlineExpired = Core.Nothing,
      event = Core.Nothing,
      events = Core.Nothing,
      result = Core.Nothing,
      sosReport = Core.Nothing,
      workerStatus = Core.Nothing
    }

instance Core.FromJSON CheckInRequest where
  parseJSON =
    Core.withObject
      "CheckInRequest"
      ( \o ->
          CheckInRequest
            Core.<$> (o Core..:? "deadlineExpired")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "events" Core..!= Core.mempty)
            Core.<*> (o Core..:? "result")
            Core.<*> (o Core..:? "sosReport")
            Core.<*> (o Core..:? "workerStatus")
      )

instance Core.ToJSON CheckInRequest where
  toJSON CheckInRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("deadlineExpired" Core..=)
              Core.<$> deadlineExpired,
            ("event" Core..=) Core.<$> event,
            ("events" Core..=) Core.<$> events,
            ("result" Core..=) Core.<$> result,
            ("sosReport" Core..=) Core.<$> sosReport,
            ("workerStatus" Core..=) Core.<$> workerStatus
          ]
      )

-- | A workflow specific event occurred.
--
-- /See:/ 'newCheckInRequest_Event' smart constructor.
newtype CheckInRequest_Event = CheckInRequest_Event
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckInRequest_Event' with the minimum fields required to make a request.
newCheckInRequest_Event ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  CheckInRequest_Event
newCheckInRequest_Event addtional = CheckInRequest_Event {addtional = addtional}

instance Core.FromJSON CheckInRequest_Event where
  parseJSON =
    Core.withObject
      "CheckInRequest_Event"
      ( \o ->
          CheckInRequest_Event
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CheckInRequest_Event where
  toJSON CheckInRequest_Event {..} =
    Core.toJSON addtional

-- | The response to the CheckIn method.
--
-- /See:/ 'newCheckInResponse' smart constructor.
data CheckInResponse = CheckInResponse
  { -- | The deadline by which the worker must request an extension. The backend will allow for network transmission time and other delays, but the worker must attempt to transmit the extension request no later than the deadline.
    deadline :: (Core.Maybe Core.DateTime'),
    -- | Feature configuration for the operation.
    features :: (Core.Maybe CheckInResponse_Features),
    -- | The metadata that describes the operation assigned to the worker.
    metadata :: (Core.Maybe CheckInResponse_Metadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckInResponse' with the minimum fields required to make a request.
newCheckInResponse ::
  CheckInResponse
newCheckInResponse =
  CheckInResponse
    { deadline = Core.Nothing,
      features = Core.Nothing,
      metadata = Core.Nothing
    }

instance Core.FromJSON CheckInResponse where
  parseJSON =
    Core.withObject
      "CheckInResponse"
      ( \o ->
          CheckInResponse
            Core.<$> (o Core..:? "deadline")
            Core.<*> (o Core..:? "features")
            Core.<*> (o Core..:? "metadata")
      )

instance Core.ToJSON CheckInResponse where
  toJSON CheckInResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deadline" Core..=) Core.<$> deadline,
            ("features" Core..=) Core.<$> features,
            ("metadata" Core..=) Core.<$> metadata
          ]
      )

-- | Feature configuration for the operation.
--
-- /See:/ 'newCheckInResponse_Features' smart constructor.
newtype CheckInResponse_Features = CheckInResponse_Features
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckInResponse_Features' with the minimum fields required to make a request.
newCheckInResponse_Features ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  CheckInResponse_Features
newCheckInResponse_Features addtional =
  CheckInResponse_Features {addtional = addtional}

instance Core.FromJSON CheckInResponse_Features where
  parseJSON =
    Core.withObject
      "CheckInResponse_Features"
      ( \o ->
          CheckInResponse_Features
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CheckInResponse_Features where
  toJSON CheckInResponse_Features {..} =
    Core.toJSON addtional

-- | The metadata that describes the operation assigned to the worker.
--
-- /See:/ 'newCheckInResponse_Metadata' smart constructor.
newtype CheckInResponse_Metadata = CheckInResponse_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckInResponse_Metadata' with the minimum fields required to make a request.
newCheckInResponse_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  CheckInResponse_Metadata
newCheckInResponse_Metadata addtional =
  CheckInResponse_Metadata {addtional = addtional}

instance Core.FromJSON CheckInResponse_Metadata where
  parseJSON =
    Core.withObject
      "CheckInResponse_Metadata"
      ( \o ->
          CheckInResponse_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CheckInResponse_Metadata where
  toJSON CheckInResponse_Metadata {..} =
    Core.toJSON addtional

-- | An event generated when a container is forcibly terminated by the worker. Currently, this only occurs when the container outlives the timeout specified by the user.
--
-- /See:/ 'newContainerKilledEvent' smart constructor.
newtype ContainerKilledEvent = ContainerKilledEvent
  { -- | The numeric ID of the action that started the container.
    actionId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerKilledEvent' with the minimum fields required to make a request.
newContainerKilledEvent ::
  ContainerKilledEvent
newContainerKilledEvent = ContainerKilledEvent {actionId = Core.Nothing}

instance Core.FromJSON ContainerKilledEvent where
  parseJSON =
    Core.withObject
      "ContainerKilledEvent"
      ( \o ->
          ContainerKilledEvent
            Core.<$> (o Core..:? "actionId")
      )

instance Core.ToJSON ContainerKilledEvent where
  toJSON ContainerKilledEvent {..} =
    Core.object
      ( Core.catMaybes
          [("actionId" Core..=) Core.<$> actionId]
      )

-- | An event generated when a container starts.
--
-- /See:/ 'newContainerStartedEvent' smart constructor.
data ContainerStartedEvent = ContainerStartedEvent
  { -- | The numeric ID of the action that started this container.
    actionId :: (Core.Maybe Core.Int32),
    -- | The public IP address that can be used to connect to the container. This field is only populated when at least one port mapping is present. If the instance was created with a private address, this field will be empty even if port mappings exist.
    ipAddress :: (Core.Maybe Core.Text),
    -- | The container-to-host port mappings installed for this container. This set will contain any ports exposed using the @PUBLISH_EXPOSED_PORTS@ flag as well as any specified in the @Action@ definition.
    portMappings :: (Core.Maybe ContainerStartedEvent_PortMappings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerStartedEvent' with the minimum fields required to make a request.
newContainerStartedEvent ::
  ContainerStartedEvent
newContainerStartedEvent =
  ContainerStartedEvent
    { actionId = Core.Nothing,
      ipAddress = Core.Nothing,
      portMappings = Core.Nothing
    }

instance Core.FromJSON ContainerStartedEvent where
  parseJSON =
    Core.withObject
      "ContainerStartedEvent"
      ( \o ->
          ContainerStartedEvent
            Core.<$> (o Core..:? "actionId")
            Core.<*> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "portMappings")
      )

instance Core.ToJSON ContainerStartedEvent where
  toJSON ContainerStartedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionId" Core..=) Core.<$> actionId,
            ("ipAddress" Core..=) Core.<$> ipAddress,
            ("portMappings" Core..=) Core.<$> portMappings
          ]
      )

-- | The container-to-host port mappings installed for this container. This set will contain any ports exposed using the @PUBLISH_EXPOSED_PORTS@ flag as well as any specified in the @Action@ definition.
--
-- /See:/ 'newContainerStartedEvent_PortMappings' smart constructor.
newtype ContainerStartedEvent_PortMappings = ContainerStartedEvent_PortMappings
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerStartedEvent_PortMappings' with the minimum fields required to make a request.
newContainerStartedEvent_PortMappings ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int32 ->
  ContainerStartedEvent_PortMappings
newContainerStartedEvent_PortMappings addtional =
  ContainerStartedEvent_PortMappings {addtional = addtional}

instance
  Core.FromJSON
    ContainerStartedEvent_PortMappings
  where
  parseJSON =
    Core.withObject
      "ContainerStartedEvent_PortMappings"
      ( \o ->
          ContainerStartedEvent_PortMappings
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ContainerStartedEvent_PortMappings
  where
  toJSON ContainerStartedEvent_PortMappings {..} =
    Core.toJSON addtional

-- | An event generated when a container exits.
--
-- /See:/ 'newContainerStoppedEvent' smart constructor.
data ContainerStoppedEvent = ContainerStoppedEvent
  { -- | The numeric ID of the action that started this container.
    actionId :: (Core.Maybe Core.Int32),
    -- | The exit status of the container.
    exitStatus :: (Core.Maybe Core.Int32),
    -- | The tail end of any content written to standard error by the container. If the content emits large amounts of debugging noise or contains sensitive information, you can prevent the content from being printed by setting the @DISABLE_STANDARD_ERROR_CAPTURE@ flag. Note that only a small amount of the end of the stream is captured here. The entire stream is stored in the @\/google\/logs@ directory mounted into each action, and can be copied off the machine as described elsewhere.
    stderr :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerStoppedEvent' with the minimum fields required to make a request.
newContainerStoppedEvent ::
  ContainerStoppedEvent
newContainerStoppedEvent =
  ContainerStoppedEvent
    { actionId = Core.Nothing,
      exitStatus = Core.Nothing,
      stderr = Core.Nothing
    }

instance Core.FromJSON ContainerStoppedEvent where
  parseJSON =
    Core.withObject
      "ContainerStoppedEvent"
      ( \o ->
          ContainerStoppedEvent
            Core.<$> (o Core..:? "actionId")
            Core.<*> (o Core..:? "exitStatus")
            Core.<*> (o Core..:? "stderr")
      )

instance Core.ToJSON ContainerStoppedEvent where
  toJSON ContainerStoppedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionId" Core..=) Core.<$> actionId,
            ("exitStatus" Core..=) Core.<$> exitStatus,
            ("stderr" Core..=) Core.<$> stderr
          ]
      )

-- | An event generated whenever a resource limitation or transient error delays execution of a pipeline that was otherwise ready to run.
--
-- /See:/ 'newDelayedEvent' smart constructor.
data DelayedEvent = DelayedEvent
  { -- | A textual description of the cause of the delay. The string can change without notice because it is often generated by another service (such as Compute Engine).
    cause :: (Core.Maybe Core.Text),
    -- | If the delay was caused by a resource shortage, this field lists the Compute Engine metrics that are preventing this operation from running (for example, @CPUS@ or @INSTANCES@). If the particular metric is not known, a single @UNKNOWN@ metric will be present.
    metrics :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DelayedEvent' with the minimum fields required to make a request.
newDelayedEvent ::
  DelayedEvent
newDelayedEvent = DelayedEvent {cause = Core.Nothing, metrics = Core.Nothing}

instance Core.FromJSON DelayedEvent where
  parseJSON =
    Core.withObject
      "DelayedEvent"
      ( \o ->
          DelayedEvent
            Core.<$> (o Core..:? "cause")
            Core.<*> (o Core..:? "metrics" Core..!= Core.mempty)
      )

instance Core.ToJSON DelayedEvent where
  toJSON DelayedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("cause" Core..=) Core.<$> cause,
            ("metrics" Core..=) Core.<$> metrics
          ]
      )

-- | Carries information about a disk that can be attached to a VM. See https:\/\/cloud.google.com\/compute\/docs\/disks\/performance for more information about disk type, size, and performance considerations. Specify either @Volume@ or @Disk@, but not both.
--
-- /See:/ 'newDisk' smart constructor.
data Disk = Disk
  { -- | A user-supplied name for the disk. Used when mounting the disk into actions. The name must contain only upper and lowercase alphanumeric characters and hyphens and cannot start with a hyphen.
    name :: (Core.Maybe Core.Text),
    -- | The size, in GB, of the disk to attach. If the size is not specified, a default is chosen to ensure reasonable I\/O performance. If the disk type is specified as @local-ssd@, multiple local drives are automatically combined to provide the requested size. Note, however, that each physical SSD is 375GB in size, and no more than 8 drives can be attached to a single instance.
    sizeGb :: (Core.Maybe Core.Int32),
    -- | An optional image to put on the disk before attaching it to the VM.
    sourceImage :: (Core.Maybe Core.Text),
    -- | The Compute Engine disk type. If unspecified, @pd-standard@ is used.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
newDisk ::
  Disk
newDisk =
  Disk
    { name = Core.Nothing,
      sizeGb = Core.Nothing,
      sourceImage = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Disk where
  parseJSON =
    Core.withObject
      "Disk"
      ( \o ->
          Disk
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "sizeGb")
            Core.<*> (o Core..:? "sourceImage")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Disk where
  toJSON Disk {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("sizeGb" Core..=) Core.<$> sizeGb,
            ("sourceImage" Core..=) Core.<$> sourceImage,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The status of a disk on a VM.
--
-- /See:/ 'newDiskStatus' smart constructor.
data DiskStatus = DiskStatus
  { -- | Free disk space.
    freeSpaceBytes :: (Core.Maybe Core.Word64),
    -- | Total disk space.
    totalSpaceBytes :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskStatus' with the minimum fields required to make a request.
newDiskStatus ::
  DiskStatus
newDiskStatus =
  DiskStatus {freeSpaceBytes = Core.Nothing, totalSpaceBytes = Core.Nothing}

instance Core.FromJSON DiskStatus where
  parseJSON =
    Core.withObject
      "DiskStatus"
      ( \o ->
          DiskStatus
            Core.<$> (o Core..:? "freeSpaceBytes")
            Core.<*> (o Core..:? "totalSpaceBytes")
      )

instance Core.ToJSON DiskStatus where
  toJSON DiskStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("freeSpaceBytes" Core..=) Core.. Core.AsText
              Core.<$> freeSpaceBytes,
            ("totalSpaceBytes" Core..=) Core.. Core.AsText
              Core.<$> totalSpaceBytes
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Carries information about events that occur during pipeline execution.
--
-- /See:/ 'newEvent' smart constructor.
data Event = Event
  { -- | A human-readable description of the event. Note that these strings can change at any time without notice. Any application logic must use the information in the @details@ field.
    description :: (Core.Maybe Core.Text),
    -- | Machine-readable details about the event.
    details :: (Core.Maybe Event_Details),
    -- | The time at which the event occurred.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
newEvent ::
  Event
newEvent =
  Event
    { description = Core.Nothing,
      details = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON Event where
  parseJSON =
    Core.withObject
      "Event"
      ( \o ->
          Event
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON Event where
  toJSON Event {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("details" Core..=) Core.<$> details,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | Machine-readable details about the event.
--
-- /See:/ 'newEvent_Details' smart constructor.
newtype Event_Details = Event_Details
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Event_Details' with the minimum fields required to make a request.
newEvent_Details ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Event_Details
newEvent_Details addtional = Event_Details {addtional = addtional}

instance Core.FromJSON Event_Details where
  parseJSON =
    Core.withObject
      "Event_Details"
      ( \o ->
          Event_Details Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Event_Details where
  toJSON Event_Details {..} = Core.toJSON addtional

-- | Configuration for an existing disk to be attached to the VM.
--
-- /See:/ 'newExistingDisk' smart constructor.
newtype ExistingDisk = ExistingDisk
  { -- | If @disk@ contains slashes, the Cloud Life Sciences API assumes that it is a complete URL for the disk. If @disk@ does not contain slashes, the Cloud Life Sciences API assumes that the disk is a zonal disk and a URL will be generated of the form @zones\/\/disks\/@, where \`@is the zone in which the instance is allocated. The disk must be ext4 formatted. If all@Mount@references to this disk have the@read_only@flag set to true, the disk will be attached in@read-only\` mode and can be shared with other instances. Otherwise, the disk will be available for writing but cannot be shared.
    disk :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExistingDisk' with the minimum fields required to make a request.
newExistingDisk ::
  ExistingDisk
newExistingDisk = ExistingDisk {disk = Core.Nothing}

instance Core.FromJSON ExistingDisk where
  parseJSON =
    Core.withObject
      "ExistingDisk"
      (\o -> ExistingDisk Core.<$> (o Core..:? "disk"))

instance Core.ToJSON ExistingDisk where
  toJSON ExistingDisk {..} =
    Core.object
      (Core.catMaybes [("disk" Core..=) Core.<$> disk])

-- | An event generated when the execution of a pipeline has failed. Note that other events can continue to occur after this event.
--
-- /See:/ 'newFailedEvent' smart constructor.
data FailedEvent = FailedEvent
  { -- | The human-readable description of the cause of the failure.
    cause :: (Core.Maybe Core.Text),
    -- | The Google standard error code that best describes this failure.
    code :: (Core.Maybe FailedEvent_Code)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailedEvent' with the minimum fields required to make a request.
newFailedEvent ::
  FailedEvent
newFailedEvent = FailedEvent {cause = Core.Nothing, code = Core.Nothing}

instance Core.FromJSON FailedEvent where
  parseJSON =
    Core.withObject
      "FailedEvent"
      ( \o ->
          FailedEvent
            Core.<$> (o Core..:? "cause") Core.<*> (o Core..:? "code")
      )

instance Core.ToJSON FailedEvent where
  toJSON FailedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("cause" Core..=) Core.<$> cause,
            ("code" Core..=) Core.<$> code
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Carries information about the pipeline execution that is returned in the long running operation\'s metadata field.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
  { -- | The time at which the operation was created by the API.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time at which execution was completed and resources were cleaned up.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The list of events that have happened so far during the execution of this operation.
    events :: (Core.Maybe [Event]),
    -- | The user-defined labels associated with this operation.
    labels :: (Core.Maybe Metadata_Labels),
    -- | The pipeline this operation represents.
    pipeline :: (Core.Maybe Pipeline),
    -- | The first time at which resources were allocated to execute the pipeline.
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata =
  Metadata
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      events = Core.Nothing,
      labels = Core.Nothing,
      pipeline = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      ( \o ->
          Metadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "events" Core..!= Core.mempty)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "pipeline")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("events" Core..=) Core.<$> events,
            ("labels" Core..=) Core.<$> labels,
            ("pipeline" Core..=) Core.<$> pipeline,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The user-defined labels associated with this operation.
--
-- /See:/ 'newMetadata_Labels' smart constructor.
newtype Metadata_Labels = Metadata_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata_Labels' with the minimum fields required to make a request.
newMetadata_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Metadata_Labels
newMetadata_Labels addtional = Metadata_Labels {addtional = addtional}

instance Core.FromJSON Metadata_Labels where
  parseJSON =
    Core.withObject
      "Metadata_Labels"
      ( \o ->
          Metadata_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Metadata_Labels where
  toJSON Metadata_Labels {..} = Core.toJSON addtional

-- | Carries information about a particular disk mount inside a container.
--
-- /See:/ 'newMount' smart constructor.
data Mount = Mount
  { -- | The name of the disk to mount, as specified in the resources section.
    disk :: (Core.Maybe Core.Text),
    -- | The path to mount the disk inside the container.
    path :: (Core.Maybe Core.Text),
    -- | If true, the disk is mounted read-only inside the container.
    readOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Mount' with the minimum fields required to make a request.
newMount ::
  Mount
newMount =
  Mount {disk = Core.Nothing, path = Core.Nothing, readOnly = Core.Nothing}

instance Core.FromJSON Mount where
  parseJSON =
    Core.withObject
      "Mount"
      ( \o ->
          Mount
            Core.<$> (o Core..:? "disk")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "readOnly")
      )

instance Core.ToJSON Mount where
  toJSON Mount {..} =
    Core.object
      ( Core.catMaybes
          [ ("disk" Core..=) Core.<$> disk,
            ("path" Core..=) Core.<$> path,
            ("readOnly" Core..=) Core.<$> readOnly
          ]
      )

-- | Configuration for an @NFSMount@ to be attached to the VM.
--
-- /See:/ 'newNFSMount' smart constructor.
newtype NFSMount = NFSMount
  { -- | A target NFS mount. The target must be specified as \`address:\/mount\".
    target :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NFSMount' with the minimum fields required to make a request.
newNFSMount ::
  NFSMount
newNFSMount = NFSMount {target = Core.Nothing}

instance Core.FromJSON NFSMount where
  parseJSON =
    Core.withObject
      "NFSMount"
      (\o -> NFSMount Core.<$> (o Core..:? "target"))

instance Core.ToJSON NFSMount where
  toJSON NFSMount {..} =
    Core.object
      (Core.catMaybes [("target" Core..=) Core.<$> target])

-- | VM networking options.
--
-- /See:/ 'newNetwork' smart constructor.
data Network = Network
  { -- | The network name to attach the VM\'s network interface to. The value will be prefixed with @global\/networks\/@ unless it contains a @\/@, in which case it is assumed to be a fully specified network resource URL. If unspecified, the global default network is used.
    name :: (Core.Maybe Core.Text),
    -- | If the specified network is configured for custom subnet creation, the name of the subnetwork to attach the instance to must be specified here. The value is prefixed with @regions\/*\/subnetworks\/@ unless it contains a @\/@, in which case it is assumed to be a fully specified subnetwork resource URL. If the @*@ character appears in the value, it is replaced with the region that the virtual machine has been allocated in.
    subnetwork :: (Core.Maybe Core.Text),
    -- | If set to true, do not attach a public IP address to the VM. Note that without a public IP address, additional configuration is required to allow the VM to access Google services. See https:\/\/cloud.google.com\/vpc\/docs\/configure-private-google-access for more information.
    usePrivateAddress :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
newNetwork ::
  Network
newNetwork =
  Network
    { name = Core.Nothing,
      subnetwork = Core.Nothing,
      usePrivateAddress = Core.Nothing
    }

instance Core.FromJSON Network where
  parseJSON =
    Core.withObject
      "Network"
      ( \o ->
          Network
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "usePrivateAddress")
      )

instance Core.ToJSON Network where
  toJSON Network {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("usePrivateAddress" Core..=)
              Core.<$> usePrivateAddress
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | An OperationMetadata or Metadata object. This will always be returned with the Operation.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. For example: @operations\/CJHU7Oi_ChDrveSpBRjfuL-qzoWAgEw@
    name :: (Core.Maybe Core.Text),
    -- | An Empty object.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | An OperationMetadata or Metadata object. This will always be returned with the Operation.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | An Empty object.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | Configuration for a persistent disk to be attached to the VM. See https:\/\/cloud.google.com\/compute\/docs\/disks\/performance for more information about disk type, size, and performance considerations.
--
-- /See:/ 'newPersistentDisk' smart constructor.
data PersistentDisk = PersistentDisk
  { -- | The size, in GB, of the disk to attach. If the size is not specified, a default is chosen to ensure reasonable I\/O performance. If the disk type is specified as @local-ssd@, multiple local drives are automatically combined to provide the requested size. Note, however, that each physical SSD is 375GB in size, and no more than 8 drives can be attached to a single instance.
    sizeGb :: (Core.Maybe Core.Int32),
    -- | An image to put on the disk before attaching it to the VM.
    sourceImage :: (Core.Maybe Core.Text),
    -- | The Compute Engine disk type. If unspecified, @pd-standard@ is used.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersistentDisk' with the minimum fields required to make a request.
newPersistentDisk ::
  PersistentDisk
newPersistentDisk =
  PersistentDisk
    { sizeGb = Core.Nothing,
      sourceImage = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON PersistentDisk where
  parseJSON =
    Core.withObject
      "PersistentDisk"
      ( \o ->
          PersistentDisk
            Core.<$> (o Core..:? "sizeGb")
            Core.<*> (o Core..:? "sourceImage")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON PersistentDisk where
  toJSON PersistentDisk {..} =
    Core.object
      ( Core.catMaybes
          [ ("sizeGb" Core..=) Core.<$> sizeGb,
            ("sourceImage" Core..=) Core.<$> sourceImage,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Specifies a series of actions to execute, expressed as Docker containers.
--
-- /See:/ 'newPipeline' smart constructor.
data Pipeline = Pipeline
  { -- | The list of actions to execute, in the order they are specified.
    actions :: (Core.Maybe [Action]),
    -- | The encrypted environment to pass into every action. Each action can also specify its own encrypted environment. The secret must decrypt to a JSON-encoded dictionary where key-value pairs serve as environment variable names and their values. The decoded environment variables can overwrite the values specified by the @environment@ field.
    encryptedEnvironment :: (Core.Maybe Secret),
    -- | The environment to pass into every action. Each action can also specify additional environment variables but cannot delete an entry from this map (though they can overwrite it with a different value).
    environment :: (Core.Maybe Pipeline_Environment),
    -- | The resources required for execution.
    resources :: (Core.Maybe Resources),
    -- | The maximum amount of time to give the pipeline to complete. This includes the time spent waiting for a worker to be allocated. If the pipeline fails to complete before the timeout, it will be cancelled and the error code will be set to DEADLINE_EXCEEDED. If unspecified, it will default to 7 days.
    timeout :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pipeline' with the minimum fields required to make a request.
newPipeline ::
  Pipeline
newPipeline =
  Pipeline
    { actions = Core.Nothing,
      encryptedEnvironment = Core.Nothing,
      environment = Core.Nothing,
      resources = Core.Nothing,
      timeout = Core.Nothing
    }

instance Core.FromJSON Pipeline where
  parseJSON =
    Core.withObject
      "Pipeline"
      ( \o ->
          Pipeline
            Core.<$> (o Core..:? "actions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "encryptedEnvironment")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "resources")
            Core.<*> (o Core..:? "timeout")
      )

instance Core.ToJSON Pipeline where
  toJSON Pipeline {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("encryptedEnvironment" Core..=)
              Core.<$> encryptedEnvironment,
            ("environment" Core..=) Core.<$> environment,
            ("resources" Core..=) Core.<$> resources,
            ("timeout" Core..=) Core.<$> timeout
          ]
      )

-- | The environment to pass into every action. Each action can also specify additional environment variables but cannot delete an entry from this map (though they can overwrite it with a different value).
--
-- /See:/ 'newPipeline_Environment' smart constructor.
newtype Pipeline_Environment = Pipeline_Environment
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pipeline_Environment' with the minimum fields required to make a request.
newPipeline_Environment ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Pipeline_Environment
newPipeline_Environment addtional = Pipeline_Environment {addtional = addtional}

instance Core.FromJSON Pipeline_Environment where
  parseJSON =
    Core.withObject
      "Pipeline_Environment"
      ( \o ->
          Pipeline_Environment
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Pipeline_Environment where
  toJSON Pipeline_Environment {..} =
    Core.toJSON addtional

-- | An event generated when the worker starts pulling an image.
--
-- /See:/ 'newPullStartedEvent' smart constructor.
newtype PullStartedEvent = PullStartedEvent
  { -- | The URI of the image that was pulled.
    imageUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PullStartedEvent' with the minimum fields required to make a request.
newPullStartedEvent ::
  PullStartedEvent
newPullStartedEvent = PullStartedEvent {imageUri = Core.Nothing}

instance Core.FromJSON PullStartedEvent where
  parseJSON =
    Core.withObject
      "PullStartedEvent"
      ( \o ->
          PullStartedEvent Core.<$> (o Core..:? "imageUri")
      )

instance Core.ToJSON PullStartedEvent where
  toJSON PullStartedEvent {..} =
    Core.object
      ( Core.catMaybes
          [("imageUri" Core..=) Core.<$> imageUri]
      )

-- | An event generated when the worker stops pulling an image.
--
-- /See:/ 'newPullStoppedEvent' smart constructor.
newtype PullStoppedEvent = PullStoppedEvent
  { -- | The URI of the image that was pulled.
    imageUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PullStoppedEvent' with the minimum fields required to make a request.
newPullStoppedEvent ::
  PullStoppedEvent
newPullStoppedEvent = PullStoppedEvent {imageUri = Core.Nothing}

instance Core.FromJSON PullStoppedEvent where
  parseJSON =
    Core.withObject
      "PullStoppedEvent"
      ( \o ->
          PullStoppedEvent Core.<$> (o Core..:? "imageUri")
      )

instance Core.ToJSON PullStoppedEvent where
  toJSON PullStoppedEvent {..} =
    Core.object
      ( Core.catMaybes
          [("imageUri" Core..=) Core.<$> imageUri]
      )

-- | The system resources for the pipeline run. At least one zone or region must be specified or the pipeline run will fail.
--
-- /See:/ 'newResources' smart constructor.
data Resources = Resources
  { -- | The project ID to allocate resources in.
    projectId :: (Core.Maybe Core.Text),
    -- | The list of regions allowed for VM allocation. If set, the @zones@ field must not be set.
    regions :: (Core.Maybe [Core.Text]),
    -- | The virtual machine specification.
    virtualMachine :: (Core.Maybe VirtualMachine),
    -- | The list of zones allowed for VM allocation. If set, the @regions@ field must not be set.
    zones :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
newResources ::
  Resources
newResources =
  Resources
    { projectId = Core.Nothing,
      regions = Core.Nothing,
      virtualMachine = Core.Nothing,
      zones = Core.Nothing
    }

instance Core.FromJSON Resources where
  parseJSON =
    Core.withObject
      "Resources"
      ( \o ->
          Resources
            Core.<$> (o Core..:? "projectId")
            Core.<*> (o Core..:? "regions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "virtualMachine")
            Core.<*> (o Core..:? "zones" Core..!= Core.mempty)
      )

instance Core.ToJSON Resources where
  toJSON Resources {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectId" Core..=) Core.<$> projectId,
            ("regions" Core..=) Core.<$> regions,
            ("virtualMachine" Core..=) Core.<$> virtualMachine,
            ("zones" Core..=) Core.<$> zones
          ]
      )

-- | The arguments to the @RunPipeline@ method. The requesting user must have the @iam.serviceAccounts.actAs@ permission for the Cloud Genomics service account or the request will fail.
--
-- /See:/ 'newRunPipelineRequest' smart constructor.
data RunPipelineRequest = RunPipelineRequest
  { -- | User-defined labels to associate with the returned operation. These labels are not propagated to any Google Cloud Platform resources used by the operation, and can be modified at any time. To associate labels with resources created while executing the operation, see the appropriate resource message (for example, @VirtualMachine@).
    labels :: (Core.Maybe RunPipelineRequest_Labels),
    -- | Required. The description of the pipeline to run.
    pipeline :: (Core.Maybe Pipeline),
    -- | The name of an existing Pub\/Sub topic. The server will publish messages to this topic whenever the status of the operation changes. The Genomics Service Agent account must have publisher permissions to the specified topic or notifications will not be sent.
    pubSubTopic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunPipelineRequest' with the minimum fields required to make a request.
newRunPipelineRequest ::
  RunPipelineRequest
newRunPipelineRequest =
  RunPipelineRequest
    { labels = Core.Nothing,
      pipeline = Core.Nothing,
      pubSubTopic = Core.Nothing
    }

instance Core.FromJSON RunPipelineRequest where
  parseJSON =
    Core.withObject
      "RunPipelineRequest"
      ( \o ->
          RunPipelineRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "pipeline")
            Core.<*> (o Core..:? "pubSubTopic")
      )

instance Core.ToJSON RunPipelineRequest where
  toJSON RunPipelineRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("pipeline" Core..=) Core.<$> pipeline,
            ("pubSubTopic" Core..=) Core.<$> pubSubTopic
          ]
      )

-- | User-defined labels to associate with the returned operation. These labels are not propagated to any Google Cloud Platform resources used by the operation, and can be modified at any time. To associate labels with resources created while executing the operation, see the appropriate resource message (for example, @VirtualMachine@).
--
-- /See:/ 'newRunPipelineRequest_Labels' smart constructor.
newtype RunPipelineRequest_Labels = RunPipelineRequest_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunPipelineRequest_Labels' with the minimum fields required to make a request.
newRunPipelineRequest_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  RunPipelineRequest_Labels
newRunPipelineRequest_Labels addtional =
  RunPipelineRequest_Labels {addtional = addtional}

instance Core.FromJSON RunPipelineRequest_Labels where
  parseJSON =
    Core.withObject
      "RunPipelineRequest_Labels"
      ( \o ->
          RunPipelineRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RunPipelineRequest_Labels where
  toJSON RunPipelineRequest_Labels {..} =
    Core.toJSON addtional

-- | The response to the RunPipeline method, returned in the operation\'s result field on success.
--
-- /See:/ 'newRunPipelineResponse' smart constructor.
data RunPipelineResponse = RunPipelineResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunPipelineResponse' with the minimum fields required to make a request.
newRunPipelineResponse ::
  RunPipelineResponse
newRunPipelineResponse = RunPipelineResponse

instance Core.FromJSON RunPipelineResponse where
  parseJSON =
    Core.withObject
      "RunPipelineResponse"
      (\o -> Core.pure RunPipelineResponse)

instance Core.ToJSON RunPipelineResponse where
  toJSON = Core.const Core.emptyObject

-- | Holds encrypted information that is only decrypted and stored in RAM by the worker VM when running the pipeline.
--
-- /See:/ 'newSecret' smart constructor.
data Secret = Secret
  { -- | The value of the cipherText response from the @encrypt@ method. This field is intentionally unaudited.
    cipherText :: (Core.Maybe Core.Text),
    -- | The name of the Cloud KMS key that will be used to decrypt the secret value. The VM service account must have the required permissions and authentication scopes to invoke the @decrypt@ method on the specified key.
    keyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret' with the minimum fields required to make a request.
newSecret ::
  Secret
newSecret = Secret {cipherText = Core.Nothing, keyName = Core.Nothing}

instance Core.FromJSON Secret where
  parseJSON =
    Core.withObject
      "Secret"
      ( \o ->
          Secret
            Core.<$> (o Core..:? "cipherText")
            Core.<*> (o Core..:? "keyName")
      )

instance Core.ToJSON Secret where
  toJSON Secret {..} =
    Core.object
      ( Core.catMaybes
          [ ("cipherText" Core..=) Core.<$> cipherText,
            ("keyName" Core..=) Core.<$> keyName
          ]
      )

-- | Carries information about a Google Cloud service account.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | Email address of the service account. If not specified, the default Compute Engine service account for the project will be used.
    email :: (Core.Maybe Core.Text),
    -- | List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
    scopes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount = ServiceAccount {email = Core.Nothing, scopes = Core.Nothing}

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "scopes" Core..!= Core.mempty)
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("scopes" Core..=) Core.<$> scopes
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | An event that occured in the operation assigned to the worker and the time of occurance.
--
-- /See:/ 'newTimestampedEvent' smart constructor.
data TimestampedEvent = TimestampedEvent
  { -- | The event data.
    data' :: (Core.Maybe TimestampedEvent_Data),
    -- | The time when the event happened.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampedEvent' with the minimum fields required to make a request.
newTimestampedEvent ::
  TimestampedEvent
newTimestampedEvent =
  TimestampedEvent {data' = Core.Nothing, timestamp = Core.Nothing}

instance Core.FromJSON TimestampedEvent where
  parseJSON =
    Core.withObject
      "TimestampedEvent"
      ( \o ->
          TimestampedEvent
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON TimestampedEvent where
  toJSON TimestampedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | The event data.
--
-- /See:/ 'newTimestampedEvent_Data' smart constructor.
newtype TimestampedEvent_Data = TimestampedEvent_Data
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampedEvent_Data' with the minimum fields required to make a request.
newTimestampedEvent_Data ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  TimestampedEvent_Data
newTimestampedEvent_Data addtional =
  TimestampedEvent_Data {addtional = addtional}

instance Core.FromJSON TimestampedEvent_Data where
  parseJSON =
    Core.withObject
      "TimestampedEvent_Data"
      ( \o ->
          TimestampedEvent_Data
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TimestampedEvent_Data where
  toJSON TimestampedEvent_Data {..} =
    Core.toJSON addtional

-- | An event generated when the execution of a container results in a non-zero exit status that was not otherwise ignored. Execution will continue, but only actions that are flagged as @ALWAYS_RUN@ will be executed. Other actions will be skipped.
--
-- /See:/ 'newUnexpectedExitStatusEvent' smart constructor.
data UnexpectedExitStatusEvent = UnexpectedExitStatusEvent
  { -- | The numeric ID of the action that started the container.
    actionId :: (Core.Maybe Core.Int32),
    -- | The exit status of the container.
    exitStatus :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnexpectedExitStatusEvent' with the minimum fields required to make a request.
newUnexpectedExitStatusEvent ::
  UnexpectedExitStatusEvent
newUnexpectedExitStatusEvent =
  UnexpectedExitStatusEvent {actionId = Core.Nothing, exitStatus = Core.Nothing}

instance Core.FromJSON UnexpectedExitStatusEvent where
  parseJSON =
    Core.withObject
      "UnexpectedExitStatusEvent"
      ( \o ->
          UnexpectedExitStatusEvent
            Core.<$> (o Core..:? "actionId")
            Core.<*> (o Core..:? "exitStatus")
      )

instance Core.ToJSON UnexpectedExitStatusEvent where
  toJSON UnexpectedExitStatusEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionId" Core..=) Core.<$> actionId,
            ("exitStatus" Core..=) Core.<$> exitStatus
          ]
      )

-- | Carries information about a Compute Engine VM resource.
--
-- /See:/ 'newVirtualMachine' smart constructor.
data VirtualMachine = VirtualMachine
  { -- | The list of accelerators to attach to the VM.
    accelerators :: (Core.Maybe [Accelerator]),
    -- | The size of the boot disk, in GB. The boot disk must be large enough to accommodate all of the Docker images from each action in the pipeline at the same time. If not specified, a small but reasonable default value is used.
    bootDiskSizeGb :: (Core.Maybe Core.Int32),
    -- | The host operating system image to use. Currently, only Container-Optimized OS images can be used. The default value is @projects\/cos-cloud\/global\/images\/family\/cos-stable@, which selects the latest stable release of Container-Optimized OS. This option is provided to allow testing against the beta release of the operating system to ensure that the new version does not interact negatively with production pipelines. To test a pipeline against the beta release of Container-Optimized OS, use the value @projects\/cos-cloud\/global\/images\/family\/cos-beta@.
    bootImage :: (Core.Maybe Core.Text),
    -- | The CPU platform to request. An instance based on a newer platform can be allocated, but never one with fewer capabilities. The value of this parameter must be a valid Compute Engine CPU platform name (such as \"Intel Skylake\"). This parameter is only useful for carefully optimized work loads where the CPU platform has a significant impact. For more information about the effect of this parameter, see https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform.
    cpuPlatform :: (Core.Maybe Core.Text),
    -- | The list of disks to create and attach to the VM. Specify either the @volumes[]@ field or the @disks[]@ field, but not both.
    disks :: (Core.Maybe [Disk]),
    -- | The Compute Engine Disk Images to use as a Docker cache. The disks will be mounted into the Docker folder in a way that the images present in the cache will not need to be pulled. The digests of the cached images must match those of the tags used or the latest version will still be pulled. The root directory of the ext4 image must contain @image@ and @overlay2@ directories copied from the Docker directory of a VM where the desired Docker images have already been pulled. Any images pulled that are not cached will be stored on the first cache disk instead of the boot disk. Only a single image is supported.
    dockerCacheImages :: (Core.Maybe [Core.Text]),
    -- | Whether Stackdriver monitoring should be enabled on the VM.
    enableStackdriverMonitoring :: (Core.Maybe Core.Bool),
    -- | Optional set of labels to apply to the VM and any attached disk resources. These labels must adhere to the <https://cloud.google.com/compute/docs/labeling-resources name and value restrictions> on VM labels imposed by Compute Engine. Labels keys with the prefix \'google-\' are reserved for use by Google. Labels applied at creation time to the VM. Applied on a best-effort basis to attached disk resources shortly after VM creation.
    labels :: (Core.Maybe VirtualMachine_Labels),
    -- | Required. The machine type of the virtual machine to create. Must be the short name of a standard machine type (such as \"n1-standard-1\") or a custom machine type (such as \"custom-1-4096\", where \"1\" indicates the number of vCPUs and \"4096\" indicates the memory in MB). See <https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#create Creating an instance with a custom machine type> for more specifications on creating a custom machine type.
    machineType :: (Core.Maybe Core.Text),
    -- | The VM network configuration.
    network :: (Core.Maybe Network),
    -- | The NVIDIA driver version to use when attaching an NVIDIA GPU accelerator. The version specified here must be compatible with the GPU libraries contained in the container being executed, and must be one of the drivers hosted in the @nvidia-drivers-us-public@ bucket on Google Cloud Storage.
    nvidiaDriverVersion :: (Core.Maybe Core.Text),
    -- | If true, allocate a preemptible VM.
    preemptible :: (Core.Maybe Core.Bool),
    -- | If specified, the VM will only be allocated inside the matching reservation. It will fail if the VM parameters don\'t match the reservation.
    reservation :: (Core.Maybe Core.Text),
    -- | The service account to install on the VM. This account does not need any permissions other than those required by the pipeline.
    serviceAccount :: (Core.Maybe ServiceAccount),
    -- | The list of disks and other storage to create or attach to the VM. Specify either the @volumes[]@ field or the @disks[]@ field, but not both.
    volumes :: (Core.Maybe [Volume])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VirtualMachine' with the minimum fields required to make a request.
newVirtualMachine ::
  VirtualMachine
newVirtualMachine =
  VirtualMachine
    { accelerators = Core.Nothing,
      bootDiskSizeGb = Core.Nothing,
      bootImage = Core.Nothing,
      cpuPlatform = Core.Nothing,
      disks = Core.Nothing,
      dockerCacheImages = Core.Nothing,
      enableStackdriverMonitoring = Core.Nothing,
      labels = Core.Nothing,
      machineType = Core.Nothing,
      network = Core.Nothing,
      nvidiaDriverVersion = Core.Nothing,
      preemptible = Core.Nothing,
      reservation = Core.Nothing,
      serviceAccount = Core.Nothing,
      volumes = Core.Nothing
    }

instance Core.FromJSON VirtualMachine where
  parseJSON =
    Core.withObject
      "VirtualMachine"
      ( \o ->
          VirtualMachine
            Core.<$> (o Core..:? "accelerators" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bootDiskSizeGb")
            Core.<*> (o Core..:? "bootImage")
            Core.<*> (o Core..:? "cpuPlatform")
            Core.<*> (o Core..:? "disks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "dockerCacheImages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "enableStackdriverMonitoring")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "nvidiaDriverVersion")
            Core.<*> (o Core..:? "preemptible")
            Core.<*> (o Core..:? "reservation")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "volumes" Core..!= Core.mempty)
      )

instance Core.ToJSON VirtualMachine where
  toJSON VirtualMachine {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("bootDiskSizeGb" Core..=) Core.<$> bootDiskSizeGb,
            ("bootImage" Core..=) Core.<$> bootImage,
            ("cpuPlatform" Core..=) Core.<$> cpuPlatform,
            ("disks" Core..=) Core.<$> disks,
            ("dockerCacheImages" Core..=)
              Core.<$> dockerCacheImages,
            ("enableStackdriverMonitoring" Core..=)
              Core.<$> enableStackdriverMonitoring,
            ("labels" Core..=) Core.<$> labels,
            ("machineType" Core..=) Core.<$> machineType,
            ("network" Core..=) Core.<$> network,
            ("nvidiaDriverVersion" Core..=)
              Core.<$> nvidiaDriverVersion,
            ("preemptible" Core..=) Core.<$> preemptible,
            ("reservation" Core..=) Core.<$> reservation,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("volumes" Core..=) Core.<$> volumes
          ]
      )

-- | Optional set of labels to apply to the VM and any attached disk resources. These labels must adhere to the <https://cloud.google.com/compute/docs/labeling-resources name and value restrictions> on VM labels imposed by Compute Engine. Labels keys with the prefix \'google-\' are reserved for use by Google. Labels applied at creation time to the VM. Applied on a best-effort basis to attached disk resources shortly after VM creation.
--
-- /See:/ 'newVirtualMachine_Labels' smart constructor.
newtype VirtualMachine_Labels = VirtualMachine_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VirtualMachine_Labels' with the minimum fields required to make a request.
newVirtualMachine_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  VirtualMachine_Labels
newVirtualMachine_Labels addtional =
  VirtualMachine_Labels {addtional = addtional}

instance Core.FromJSON VirtualMachine_Labels where
  parseJSON =
    Core.withObject
      "VirtualMachine_Labels"
      ( \o ->
          VirtualMachine_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON VirtualMachine_Labels where
  toJSON VirtualMachine_Labels {..} =
    Core.toJSON addtional

-- | Carries information about storage that can be attached to a VM. Specify either @Volume@ or @Disk@, but not both.
--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume
  { -- | Configuration for a existing disk.
    existingDisk :: (Core.Maybe ExistingDisk),
    -- | Configuration for an NFS mount.
    nfsMount :: (Core.Maybe NFSMount),
    -- | Configuration for a persistent disk.
    persistentDisk :: (Core.Maybe PersistentDisk),
    -- | A user-supplied name for the volume. Used when mounting the volume into @Actions@. The name must contain only upper and lowercase alphanumeric characters and hyphens and cannot start with a hyphen.
    volume :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
newVolume ::
  Volume
newVolume =
  Volume
    { existingDisk = Core.Nothing,
      nfsMount = Core.Nothing,
      persistentDisk = Core.Nothing,
      volume = Core.Nothing
    }

instance Core.FromJSON Volume where
  parseJSON =
    Core.withObject
      "Volume"
      ( \o ->
          Volume
            Core.<$> (o Core..:? "existingDisk")
            Core.<*> (o Core..:? "nfsMount")
            Core.<*> (o Core..:? "persistentDisk")
            Core.<*> (o Core..:? "volume")
      )

instance Core.ToJSON Volume where
  toJSON Volume {..} =
    Core.object
      ( Core.catMaybes
          [ ("existingDisk" Core..=) Core.<$> existingDisk,
            ("nfsMount" Core..=) Core.<$> nfsMount,
            ("persistentDisk" Core..=) Core.<$> persistentDisk,
            ("volume" Core..=) Core.<$> volume
          ]
      )

-- | An event generated after a worker VM has been assigned to run the pipeline.
--
-- /See:/ 'newWorkerAssignedEvent' smart constructor.
data WorkerAssignedEvent = WorkerAssignedEvent
  { -- | The worker\'s instance name.
    instance' :: (Core.Maybe Core.Text),
    -- | The machine type that was assigned for the worker.
    machineType :: (Core.Maybe Core.Text),
    -- | The zone the worker is running in.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerAssignedEvent' with the minimum fields required to make a request.
newWorkerAssignedEvent ::
  WorkerAssignedEvent
newWorkerAssignedEvent =
  WorkerAssignedEvent
    { instance' = Core.Nothing,
      machineType = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON WorkerAssignedEvent where
  parseJSON =
    Core.withObject
      "WorkerAssignedEvent"
      ( \o ->
          WorkerAssignedEvent
            Core.<$> (o Core..:? "instance")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON WorkerAssignedEvent where
  toJSON WorkerAssignedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("instance" Core..=) Core.<$> instance',
            ("machineType" Core..=) Core.<$> machineType,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | An event generated when the worker VM that was assigned to the pipeline has been released (deleted).
--
-- /See:/ 'newWorkerReleasedEvent' smart constructor.
data WorkerReleasedEvent = WorkerReleasedEvent
  { -- | The worker\'s instance name.
    instance' :: (Core.Maybe Core.Text),
    -- | The zone the worker was running in.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerReleasedEvent' with the minimum fields required to make a request.
newWorkerReleasedEvent ::
  WorkerReleasedEvent
newWorkerReleasedEvent =
  WorkerReleasedEvent {instance' = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON WorkerReleasedEvent where
  parseJSON =
    Core.withObject
      "WorkerReleasedEvent"
      ( \o ->
          WorkerReleasedEvent
            Core.<$> (o Core..:? "instance") Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON WorkerReleasedEvent where
  toJSON WorkerReleasedEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("instance" Core..=) Core.<$> instance',
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | The status of the worker VM.
--
-- /See:/ 'newWorkerStatus' smart constructor.
data WorkerStatus = WorkerStatus
  { -- | Status of attached disks.
    attachedDisks :: (Core.Maybe WorkerStatus_AttachedDisks),
    -- | Status of the boot disk.
    bootDisk :: (Core.Maybe DiskStatus),
    -- | Free RAM.
    freeRamBytes :: (Core.Maybe Core.Word64),
    -- | Total RAM.
    totalRamBytes :: (Core.Maybe Core.Word64),
    -- | System uptime.
    uptimeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerStatus' with the minimum fields required to make a request.
newWorkerStatus ::
  WorkerStatus
newWorkerStatus =
  WorkerStatus
    { attachedDisks = Core.Nothing,
      bootDisk = Core.Nothing,
      freeRamBytes = Core.Nothing,
      totalRamBytes = Core.Nothing,
      uptimeSeconds = Core.Nothing
    }

instance Core.FromJSON WorkerStatus where
  parseJSON =
    Core.withObject
      "WorkerStatus"
      ( \o ->
          WorkerStatus
            Core.<$> (o Core..:? "attachedDisks")
            Core.<*> (o Core..:? "bootDisk")
            Core.<*> (o Core..:? "freeRamBytes")
            Core.<*> (o Core..:? "totalRamBytes")
            Core.<*> (o Core..:? "uptimeSeconds")
      )

instance Core.ToJSON WorkerStatus where
  toJSON WorkerStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachedDisks" Core..=) Core.<$> attachedDisks,
            ("bootDisk" Core..=) Core.<$> bootDisk,
            ("freeRamBytes" Core..=) Core.. Core.AsText
              Core.<$> freeRamBytes,
            ("totalRamBytes" Core..=) Core.. Core.AsText
              Core.<$> totalRamBytes,
            ("uptimeSeconds" Core..=) Core.. Core.AsText
              Core.<$> uptimeSeconds
          ]
      )

-- | Status of attached disks.
--
-- /See:/ 'newWorkerStatus_AttachedDisks' smart constructor.
newtype WorkerStatus_AttachedDisks = WorkerStatus_AttachedDisks
  { -- |
    addtional :: (Core.HashMap Core.Text DiskStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerStatus_AttachedDisks' with the minimum fields required to make a request.
newWorkerStatus_AttachedDisks ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text DiskStatus ->
  WorkerStatus_AttachedDisks
newWorkerStatus_AttachedDisks addtional =
  WorkerStatus_AttachedDisks {addtional = addtional}

instance Core.FromJSON WorkerStatus_AttachedDisks where
  parseJSON =
    Core.withObject
      "WorkerStatus_AttachedDisks"
      ( \o ->
          WorkerStatus_AttachedDisks
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkerStatus_AttachedDisks where
  toJSON WorkerStatus_AttachedDisks {..} =
    Core.toJSON addtional
