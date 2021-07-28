{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Product where

import Network.Google.Genomics.Types.Sum
import Network.Google.Prelude

-- | The container-to-host port mappings installed for this container. This
-- set will contain any ports exposed using the \`PUBLISH_EXPOSED_PORTS\`
-- flag as well as any specified in the \`Action\` definition.
--
-- /See:/ 'containerStartedEventPortMAppings' smart constructor.
newtype ContainerStartedEventPortMAppings =
  ContainerStartedEventPortMAppings'
    { _csepmaAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerStartedEventPortMAppings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csepmaAddtional'
containerStartedEventPortMAppings
    :: HashMap Text Int32 -- ^ 'csepmaAddtional'
    -> ContainerStartedEventPortMAppings
containerStartedEventPortMAppings pCsepmaAddtional_ =
  ContainerStartedEventPortMAppings'
    {_csepmaAddtional = _Coerce # pCsepmaAddtional_}


csepmaAddtional :: Lens' ContainerStartedEventPortMAppings (HashMap Text Int32)
csepmaAddtional
  = lens _csepmaAddtional
      (\ s a -> s{_csepmaAddtional = a})
      . _Coerce

instance FromJSON ContainerStartedEventPortMAppings
         where
        parseJSON
          = withObject "ContainerStartedEventPortMAppings"
              (\ o ->
                 ContainerStartedEventPortMAppings' <$>
                   (parseJSONObject o))

instance ToJSON ContainerStartedEventPortMAppings
         where
        toJSON = toJSON . _csepmaAddtional

-- | Carries information about events that occur during pipeline execution.
--
-- /See:/ 'event' smart constructor.
data Event =
  Event'
    { _eDetails :: !(Maybe EventDetails)
    , _eTimestamp :: !(Maybe DateTime')
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDetails'
--
-- * 'eTimestamp'
--
-- * 'eDescription'
event
    :: Event
event =
  Event' {_eDetails = Nothing, _eTimestamp = Nothing, _eDescription = Nothing}


-- | Machine-readable details about the event.
eDetails :: Lens' Event (Maybe EventDetails)
eDetails = lens _eDetails (\ s a -> s{_eDetails = a})

-- | The time at which the event occurred.
eTimestamp :: Lens' Event (Maybe UTCTime)
eTimestamp
  = lens _eTimestamp (\ s a -> s{_eTimestamp = a}) .
      mapping _DateTime

-- | A human-readable description of the event. Note that these strings can
-- change at any time without notice. Any application logic must use the
-- information in the \`details\` field.
eDescription :: Lens' Event (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event' <$>
                   (o .:? "details") <*> (o .:? "timestamp") <*>
                     (o .:? "description"))

instance ToJSON Event where
        toJSON Event'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _eDetails,
                  ("timestamp" .=) <$> _eTimestamp,
                  ("description" .=) <$> _eDescription])

-- | A workflow specific event occurred.
--
-- /See:/ 'checkInRequestEvent' smart constructor.
newtype CheckInRequestEvent =
  CheckInRequestEvent'
    { _cireAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckInRequestEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cireAddtional'
checkInRequestEvent
    :: HashMap Text JSONValue -- ^ 'cireAddtional'
    -> CheckInRequestEvent
checkInRequestEvent pCireAddtional_ =
  CheckInRequestEvent' {_cireAddtional = _Coerce # pCireAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
cireAddtional :: Lens' CheckInRequestEvent (HashMap Text JSONValue)
cireAddtional
  = lens _cireAddtional
      (\ s a -> s{_cireAddtional = a})
      . _Coerce

instance FromJSON CheckInRequestEvent where
        parseJSON
          = withObject "CheckInRequestEvent"
              (\ o -> CheckInRequestEvent' <$> (parseJSONObject o))

instance ToJSON CheckInRequestEvent where
        toJSON = toJSON . _cireAddtional

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | User-defined labels to associate with the returned operation. These
-- labels are not propagated to any Google Cloud Platform resources used by
-- the operation, and can be modified at any time. To associate labels with
-- resources created while executing the operation, see the appropriate
-- resource message (for example, \`VirtualMachine\`).
--
-- /See:/ 'runPipelineRequestLabels' smart constructor.
newtype RunPipelineRequestLabels =
  RunPipelineRequestLabels'
    { _rprlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunPipelineRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprlAddtional'
runPipelineRequestLabels
    :: HashMap Text Text -- ^ 'rprlAddtional'
    -> RunPipelineRequestLabels
runPipelineRequestLabels pRprlAddtional_ =
  RunPipelineRequestLabels' {_rprlAddtional = _Coerce # pRprlAddtional_}


rprlAddtional :: Lens' RunPipelineRequestLabels (HashMap Text Text)
rprlAddtional
  = lens _rprlAddtional
      (\ s a -> s{_rprlAddtional = a})
      . _Coerce

instance FromJSON RunPipelineRequestLabels where
        parseJSON
          = withObject "RunPipelineRequestLabels"
              (\ o ->
                 RunPipelineRequestLabels' <$> (parseJSONObject o))

instance ToJSON RunPipelineRequestLabels where
        toJSON = toJSON . _rprlAddtional

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | An event generated when the execution of a pipeline has failed. Note
-- that other events can continue to occur after this event.
--
-- /See:/ 'failedEvent' smart constructor.
data FailedEvent =
  FailedEvent'
    { _feCause :: !(Maybe Text)
    , _feCode :: !(Maybe FailedEventCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feCause'
--
-- * 'feCode'
failedEvent
    :: FailedEvent
failedEvent = FailedEvent' {_feCause = Nothing, _feCode = Nothing}


-- | The human-readable description of the cause of the failure.
feCause :: Lens' FailedEvent (Maybe Text)
feCause = lens _feCause (\ s a -> s{_feCause = a})

-- | The Google standard error code that best describes this failure.
feCode :: Lens' FailedEvent (Maybe FailedEventCode)
feCode = lens _feCode (\ s a -> s{_feCode = a})

instance FromJSON FailedEvent where
        parseJSON
          = withObject "FailedEvent"
              (\ o ->
                 FailedEvent' <$> (o .:? "cause") <*> (o .:? "code"))

instance ToJSON FailedEvent where
        toJSON FailedEvent'{..}
          = object
              (catMaybes
                 [("cause" .=) <$> _feCause, ("code" .=) <$> _feCode])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | The status of the worker VM.
--
-- /See:/ 'workerStatus' smart constructor.
data WorkerStatus =
  WorkerStatus'
    { _wsTotalRamBytes :: !(Maybe (Textual Word64))
    , _wsAttachedDisks :: !(Maybe WorkerStatusAttachedDisks)
    , _wsUptimeSeconds :: !(Maybe (Textual Int64))
    , _wsBootDisk :: !(Maybe DiskStatus)
    , _wsFreeRamBytes :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsTotalRamBytes'
--
-- * 'wsAttachedDisks'
--
-- * 'wsUptimeSeconds'
--
-- * 'wsBootDisk'
--
-- * 'wsFreeRamBytes'
workerStatus
    :: WorkerStatus
workerStatus =
  WorkerStatus'
    { _wsTotalRamBytes = Nothing
    , _wsAttachedDisks = Nothing
    , _wsUptimeSeconds = Nothing
    , _wsBootDisk = Nothing
    , _wsFreeRamBytes = Nothing
    }


-- | Total RAM.
wsTotalRamBytes :: Lens' WorkerStatus (Maybe Word64)
wsTotalRamBytes
  = lens _wsTotalRamBytes
      (\ s a -> s{_wsTotalRamBytes = a})
      . mapping _Coerce

-- | Status of attached disks.
wsAttachedDisks :: Lens' WorkerStatus (Maybe WorkerStatusAttachedDisks)
wsAttachedDisks
  = lens _wsAttachedDisks
      (\ s a -> s{_wsAttachedDisks = a})

-- | System uptime.
wsUptimeSeconds :: Lens' WorkerStatus (Maybe Int64)
wsUptimeSeconds
  = lens _wsUptimeSeconds
      (\ s a -> s{_wsUptimeSeconds = a})
      . mapping _Coerce

-- | Status of the boot disk.
wsBootDisk :: Lens' WorkerStatus (Maybe DiskStatus)
wsBootDisk
  = lens _wsBootDisk (\ s a -> s{_wsBootDisk = a})

-- | Free RAM.
wsFreeRamBytes :: Lens' WorkerStatus (Maybe Word64)
wsFreeRamBytes
  = lens _wsFreeRamBytes
      (\ s a -> s{_wsFreeRamBytes = a})
      . mapping _Coerce

instance FromJSON WorkerStatus where
        parseJSON
          = withObject "WorkerStatus"
              (\ o ->
                 WorkerStatus' <$>
                   (o .:? "totalRamBytes") <*> (o .:? "attachedDisks")
                     <*> (o .:? "uptimeSeconds")
                     <*> (o .:? "bootDisk")
                     <*> (o .:? "freeRamBytes"))

instance ToJSON WorkerStatus where
        toJSON WorkerStatus'{..}
          = object
              (catMaybes
                 [("totalRamBytes" .=) <$> _wsTotalRamBytes,
                  ("attachedDisks" .=) <$> _wsAttachedDisks,
                  ("uptimeSeconds" .=) <$> _wsUptimeSeconds,
                  ("bootDisk" .=) <$> _wsBootDisk,
                  ("freeRamBytes" .=) <$> _wsFreeRamBytes])

-- | An event generated when a container exits.
--
-- /See:/ 'containerStoppedEvent' smart constructor.
data ContainerStoppedEvent =
  ContainerStoppedEvent'
    { _cseExitStatus :: !(Maybe (Textual Int32))
    , _cseActionId :: !(Maybe (Textual Int32))
    , _cseStderr :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerStoppedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cseExitStatus'
--
-- * 'cseActionId'
--
-- * 'cseStderr'
containerStoppedEvent
    :: ContainerStoppedEvent
containerStoppedEvent =
  ContainerStoppedEvent'
    {_cseExitStatus = Nothing, _cseActionId = Nothing, _cseStderr = Nothing}


-- | The exit status of the container.
cseExitStatus :: Lens' ContainerStoppedEvent (Maybe Int32)
cseExitStatus
  = lens _cseExitStatus
      (\ s a -> s{_cseExitStatus = a})
      . mapping _Coerce

-- | The numeric ID of the action that started this container.
cseActionId :: Lens' ContainerStoppedEvent (Maybe Int32)
cseActionId
  = lens _cseActionId (\ s a -> s{_cseActionId = a}) .
      mapping _Coerce

-- | The tail end of any content written to standard error by the container.
-- If the content emits large amounts of debugging noise or contains
-- sensitive information, you can prevent the content from being printed by
-- setting the \`DISABLE_STANDARD_ERROR_CAPTURE\` flag. Note that only a
-- small amount of the end of the stream is captured here. The entire
-- stream is stored in the \`\/google\/logs\` directory mounted into each
-- action, and can be copied off the machine as described elsewhere.
cseStderr :: Lens' ContainerStoppedEvent (Maybe Text)
cseStderr
  = lens _cseStderr (\ s a -> s{_cseStderr = a})

instance FromJSON ContainerStoppedEvent where
        parseJSON
          = withObject "ContainerStoppedEvent"
              (\ o ->
                 ContainerStoppedEvent' <$>
                   (o .:? "exitStatus") <*> (o .:? "actionId") <*>
                     (o .:? "stderr"))

instance ToJSON ContainerStoppedEvent where
        toJSON ContainerStoppedEvent'{..}
          = object
              (catMaybes
                 [("exitStatus" .=) <$> _cseExitStatus,
                  ("actionId" .=) <$> _cseActionId,
                  ("stderr" .=) <$> _cseStderr])

-- | The response to the CheckIn method.
--
-- /See:/ 'checkInResponse' smart constructor.
data CheckInResponse =
  CheckInResponse'
    { _cirFeatures :: !(Maybe CheckInResponseFeatures)
    , _cirDeadline :: !(Maybe DateTime')
    , _cirMetadata :: !(Maybe CheckInResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckInResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirFeatures'
--
-- * 'cirDeadline'
--
-- * 'cirMetadata'
checkInResponse
    :: CheckInResponse
checkInResponse =
  CheckInResponse'
    {_cirFeatures = Nothing, _cirDeadline = Nothing, _cirMetadata = Nothing}


-- | Feature configuration for the operation.
cirFeatures :: Lens' CheckInResponse (Maybe CheckInResponseFeatures)
cirFeatures
  = lens _cirFeatures (\ s a -> s{_cirFeatures = a})

-- | The deadline by which the worker must request an extension. The backend
-- will allow for network transmission time and other delays, but the
-- worker must attempt to transmit the extension request no later than the
-- deadline.
cirDeadline :: Lens' CheckInResponse (Maybe UTCTime)
cirDeadline
  = lens _cirDeadline (\ s a -> s{_cirDeadline = a}) .
      mapping _DateTime

-- | The metadata that describes the operation assigned to the worker.
cirMetadata :: Lens' CheckInResponse (Maybe CheckInResponseMetadata)
cirMetadata
  = lens _cirMetadata (\ s a -> s{_cirMetadata = a})

instance FromJSON CheckInResponse where
        parseJSON
          = withObject "CheckInResponse"
              (\ o ->
                 CheckInResponse' <$>
                   (o .:? "features") <*> (o .:? "deadline") <*>
                     (o .:? "metadata"))

instance ToJSON CheckInResponse where
        toJSON CheckInResponse'{..}
          = object
              (catMaybes
                 [("features" .=) <$> _cirFeatures,
                  ("deadline" .=) <$> _cirDeadline,
                  ("metadata" .=) <$> _cirMetadata])

-- | An event generated after a worker VM has been assigned to run the
-- pipeline.
--
-- /See:/ 'workerAssignedEvent' smart constructor.
data WorkerAssignedEvent =
  WorkerAssignedEvent'
    { _waeZone :: !(Maybe Text)
    , _waeMachineType :: !(Maybe Text)
    , _waeInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerAssignedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waeZone'
--
-- * 'waeMachineType'
--
-- * 'waeInstance'
workerAssignedEvent
    :: WorkerAssignedEvent
workerAssignedEvent =
  WorkerAssignedEvent'
    {_waeZone = Nothing, _waeMachineType = Nothing, _waeInstance = Nothing}


-- | The zone the worker is running in.
waeZone :: Lens' WorkerAssignedEvent (Maybe Text)
waeZone = lens _waeZone (\ s a -> s{_waeZone = a})

-- | The machine type that was assigned for the worker.
waeMachineType :: Lens' WorkerAssignedEvent (Maybe Text)
waeMachineType
  = lens _waeMachineType
      (\ s a -> s{_waeMachineType = a})

-- | The worker\'s instance name.
waeInstance :: Lens' WorkerAssignedEvent (Maybe Text)
waeInstance
  = lens _waeInstance (\ s a -> s{_waeInstance = a})

instance FromJSON WorkerAssignedEvent where
        parseJSON
          = withObject "WorkerAssignedEvent"
              (\ o ->
                 WorkerAssignedEvent' <$>
                   (o .:? "zone") <*> (o .:? "machineType") <*>
                     (o .:? "instance"))

instance ToJSON WorkerAssignedEvent where
        toJSON WorkerAssignedEvent'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _waeZone,
                  ("machineType" .=) <$> _waeMachineType,
                  ("instance" .=) <$> _waeInstance])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | An Empty object.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. For example:
-- \`operations\/CJHU7Oi_ChDrveSpBRjfuL-qzoWAgEw\`
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | An OperationMetadata or Metadata object. This will always be returned
-- with the Operation.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Carries information about a disk that can be attached to a VM. See
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/performance for more
-- information about disk type, size, and performance considerations.
-- Specify either \`Volume\` or \`Disk\`, but not both.
--
-- /See:/ 'disk' smart constructor.
data Disk =
  Disk'
    { _dSourceImage :: !(Maybe Text)
    , _dSizeGb :: !(Maybe (Textual Int32))
    , _dName :: !(Maybe Text)
    , _dType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSourceImage'
--
-- * 'dSizeGb'
--
-- * 'dName'
--
-- * 'dType'
disk
    :: Disk
disk =
  Disk'
    { _dSourceImage = Nothing
    , _dSizeGb = Nothing
    , _dName = Nothing
    , _dType = Nothing
    }


-- | An optional image to put on the disk before attaching it to the VM.
dSourceImage :: Lens' Disk (Maybe Text)
dSourceImage
  = lens _dSourceImage (\ s a -> s{_dSourceImage = a})

-- | The size, in GB, of the disk to attach. If the size is not specified, a
-- default is chosen to ensure reasonable I\/O performance. If the disk
-- type is specified as \`local-ssd\`, multiple local drives are
-- automatically combined to provide the requested size. Note, however,
-- that each physical SSD is 375GB in size, and no more than 8 drives can
-- be attached to a single instance.
dSizeGb :: Lens' Disk (Maybe Int32)
dSizeGb
  = lens _dSizeGb (\ s a -> s{_dSizeGb = a}) .
      mapping _Coerce

-- | A user-supplied name for the disk. Used when mounting the disk into
-- actions. The name must contain only upper and lowercase alphanumeric
-- characters and hyphens and cannot start with a hyphen.
dName :: Lens' Disk (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The Compute Engine disk type. If unspecified, \`pd-standard\` is used.
dType :: Lens' Disk (Maybe Text)
dType = lens _dType (\ s a -> s{_dType = a})

instance FromJSON Disk where
        parseJSON
          = withObject "Disk"
              (\ o ->
                 Disk' <$>
                   (o .:? "sourceImage") <*> (o .:? "sizeGb") <*>
                     (o .:? "name")
                     <*> (o .:? "type"))

instance ToJSON Disk where
        toJSON Disk'{..}
          = object
              (catMaybes
                 [("sourceImage" .=) <$> _dSourceImage,
                  ("sizeGb" .=) <$> _dSizeGb, ("name" .=) <$> _dName,
                  ("type" .=) <$> _dType])

-- | An event generated when the execution of a container results in a
-- non-zero exit status that was not otherwise ignored. Execution will
-- continue, but only actions that are flagged as \`ALWAYS_RUN\` will be
-- executed. Other actions will be skipped.
--
-- /See:/ 'unexpectedExitStatusEvent' smart constructor.
data UnexpectedExitStatusEvent =
  UnexpectedExitStatusEvent'
    { _ueseExitStatus :: !(Maybe (Textual Int32))
    , _ueseActionId :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnexpectedExitStatusEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueseExitStatus'
--
-- * 'ueseActionId'
unexpectedExitStatusEvent
    :: UnexpectedExitStatusEvent
unexpectedExitStatusEvent =
  UnexpectedExitStatusEvent'
    {_ueseExitStatus = Nothing, _ueseActionId = Nothing}


-- | The exit status of the container.
ueseExitStatus :: Lens' UnexpectedExitStatusEvent (Maybe Int32)
ueseExitStatus
  = lens _ueseExitStatus
      (\ s a -> s{_ueseExitStatus = a})
      . mapping _Coerce

-- | The numeric ID of the action that started the container.
ueseActionId :: Lens' UnexpectedExitStatusEvent (Maybe Int32)
ueseActionId
  = lens _ueseActionId (\ s a -> s{_ueseActionId = a})
      . mapping _Coerce

instance FromJSON UnexpectedExitStatusEvent where
        parseJSON
          = withObject "UnexpectedExitStatusEvent"
              (\ o ->
                 UnexpectedExitStatusEvent' <$>
                   (o .:? "exitStatus") <*> (o .:? "actionId"))

instance ToJSON UnexpectedExitStatusEvent where
        toJSON UnexpectedExitStatusEvent'{..}
          = object
              (catMaybes
                 [("exitStatus" .=) <$> _ueseExitStatus,
                  ("actionId" .=) <$> _ueseActionId])

-- | An event generated whenever a resource limitation or transient error
-- delays execution of a pipeline that was otherwise ready to run.
--
-- /See:/ 'delayedEvent' smart constructor.
data DelayedEvent =
  DelayedEvent'
    { _deMetrics :: !(Maybe [Text])
    , _deCause :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DelayedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deMetrics'
--
-- * 'deCause'
delayedEvent
    :: DelayedEvent
delayedEvent = DelayedEvent' {_deMetrics = Nothing, _deCause = Nothing}


-- | If the delay was caused by a resource shortage, this field lists the
-- Compute Engine metrics that are preventing this operation from running
-- (for example, \`CPUS\` or \`INSTANCES\`). If the particular metric is
-- not known, a single \`UNKNOWN\` metric will be present.
deMetrics :: Lens' DelayedEvent [Text]
deMetrics
  = lens _deMetrics (\ s a -> s{_deMetrics = a}) .
      _Default
      . _Coerce

-- | A textual description of the cause of the delay. The string can change
-- without notice because it is often generated by another service (such as
-- Compute Engine).
deCause :: Lens' DelayedEvent (Maybe Text)
deCause = lens _deCause (\ s a -> s{_deCause = a})

instance FromJSON DelayedEvent where
        parseJSON
          = withObject "DelayedEvent"
              (\ o ->
                 DelayedEvent' <$>
                   (o .:? "metrics" .!= mempty) <*> (o .:? "cause"))

instance ToJSON DelayedEvent where
        toJSON DelayedEvent'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _deMetrics,
                  ("cause" .=) <$> _deCause])

-- | A map of containers to host port mappings for this container. If the
-- container already specifies exposed ports, use the
-- \`PUBLISH_EXPOSED_PORTS\` flag instead. The host port number must be
-- less than 65536. If it is zero, an unused random port is assigned. To
-- determine the resulting port number, consult the
-- \`ContainerStartedEvent\` in the operation metadata.
--
-- /See:/ 'actionPortMAppings' smart constructor.
newtype ActionPortMAppings =
  ActionPortMAppings'
    { _apmaAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionPortMAppings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apmaAddtional'
actionPortMAppings
    :: HashMap Text Int32 -- ^ 'apmaAddtional'
    -> ActionPortMAppings
actionPortMAppings pApmaAddtional_ =
  ActionPortMAppings' {_apmaAddtional = _Coerce # pApmaAddtional_}


apmaAddtional :: Lens' ActionPortMAppings (HashMap Text Int32)
apmaAddtional
  = lens _apmaAddtional
      (\ s a -> s{_apmaAddtional = a})
      . _Coerce

instance FromJSON ActionPortMAppings where
        parseJSON
          = withObject "ActionPortMAppings"
              (\ o -> ActionPortMAppings' <$> (parseJSONObject o))

instance ToJSON ActionPortMAppings where
        toJSON = toJSON . _apmaAddtional

-- | The user-defined labels associated with this operation.
--
-- /See:/ 'metadataLabels' smart constructor.
newtype MetadataLabels =
  MetadataLabels'
    { _mlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetadataLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlAddtional'
metadataLabels
    :: HashMap Text Text -- ^ 'mlAddtional'
    -> MetadataLabels
metadataLabels pMlAddtional_ =
  MetadataLabels' {_mlAddtional = _Coerce # pMlAddtional_}


mlAddtional :: Lens' MetadataLabels (HashMap Text Text)
mlAddtional
  = lens _mlAddtional (\ s a -> s{_mlAddtional = a}) .
      _Coerce

instance FromJSON MetadataLabels where
        parseJSON
          = withObject "MetadataLabels"
              (\ o -> MetadataLabels' <$> (parseJSONObject o))

instance ToJSON MetadataLabels where
        toJSON = toJSON . _mlAddtional

-- | The parameters to the CheckIn method.
--
-- /See:/ 'checkInRequest' smart constructor.
data CheckInRequest =
  CheckInRequest'
    { _cirEvent :: !(Maybe CheckInRequestEvent)
    , _cirWorkerStatus :: !(Maybe WorkerStatus)
    , _cirResult :: !(Maybe Status)
    , _cirEvents :: !(Maybe [TimestampedEvent])
    , _cirDeadlineExpired :: !(Maybe Empty)
    , _cirSosReport :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckInRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirEvent'
--
-- * 'cirWorkerStatus'
--
-- * 'cirResult'
--
-- * 'cirEvents'
--
-- * 'cirDeadlineExpired'
--
-- * 'cirSosReport'
checkInRequest
    :: CheckInRequest
checkInRequest =
  CheckInRequest'
    { _cirEvent = Nothing
    , _cirWorkerStatus = Nothing
    , _cirResult = Nothing
    , _cirEvents = Nothing
    , _cirDeadlineExpired = Nothing
    , _cirSosReport = Nothing
    }


-- | A workflow specific event occurred.
cirEvent :: Lens' CheckInRequest (Maybe CheckInRequestEvent)
cirEvent = lens _cirEvent (\ s a -> s{_cirEvent = a})

-- | Data about the status of the worker VM.
cirWorkerStatus :: Lens' CheckInRequest (Maybe WorkerStatus)
cirWorkerStatus
  = lens _cirWorkerStatus
      (\ s a -> s{_cirWorkerStatus = a})

-- | The operation has finished with the given result.
cirResult :: Lens' CheckInRequest (Maybe Status)
cirResult
  = lens _cirResult (\ s a -> s{_cirResult = a})

-- | A list of timestamped events.
cirEvents :: Lens' CheckInRequest [TimestampedEvent]
cirEvents
  = lens _cirEvents (\ s a -> s{_cirEvents = a}) .
      _Default
      . _Coerce

-- | The deadline has expired and the worker needs more time.
cirDeadlineExpired :: Lens' CheckInRequest (Maybe Empty)
cirDeadlineExpired
  = lens _cirDeadlineExpired
      (\ s a -> s{_cirDeadlineExpired = a})

-- | An SOS report for an unexpected VM failure.
cirSosReport :: Lens' CheckInRequest (Maybe ByteString)
cirSosReport
  = lens _cirSosReport (\ s a -> s{_cirSosReport = a})
      . mapping _Bytes

instance FromJSON CheckInRequest where
        parseJSON
          = withObject "CheckInRequest"
              (\ o ->
                 CheckInRequest' <$>
                   (o .:? "event") <*> (o .:? "workerStatus") <*>
                     (o .:? "result")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "deadlineExpired")
                     <*> (o .:? "sosReport"))

instance ToJSON CheckInRequest where
        toJSON CheckInRequest'{..}
          = object
              (catMaybes
                 [("event" .=) <$> _cirEvent,
                  ("workerStatus" .=) <$> _cirWorkerStatus,
                  ("result" .=) <$> _cirResult,
                  ("events" .=) <$> _cirEvents,
                  ("deadlineExpired" .=) <$> _cirDeadlineExpired,
                  ("sosReport" .=) <$> _cirSosReport])

-- | Configuration for a persistent disk to be attached to the VM. See
-- https:\/\/cloud.google.com\/compute\/docs\/disks\/performance for more
-- information about disk type, size, and performance considerations.
--
-- /See:/ 'persistentDisk' smart constructor.
data PersistentDisk =
  PersistentDisk'
    { _pdSourceImage :: !(Maybe Text)
    , _pdSizeGb :: !(Maybe (Textual Int32))
    , _pdType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersistentDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdSourceImage'
--
-- * 'pdSizeGb'
--
-- * 'pdType'
persistentDisk
    :: PersistentDisk
persistentDisk =
  PersistentDisk'
    {_pdSourceImage = Nothing, _pdSizeGb = Nothing, _pdType = Nothing}


-- | An image to put on the disk before attaching it to the VM.
pdSourceImage :: Lens' PersistentDisk (Maybe Text)
pdSourceImage
  = lens _pdSourceImage
      (\ s a -> s{_pdSourceImage = a})

-- | The size, in GB, of the disk to attach. If the size is not specified, a
-- default is chosen to ensure reasonable I\/O performance. If the disk
-- type is specified as \`local-ssd\`, multiple local drives are
-- automatically combined to provide the requested size. Note, however,
-- that each physical SSD is 375GB in size, and no more than 8 drives can
-- be attached to a single instance.
pdSizeGb :: Lens' PersistentDisk (Maybe Int32)
pdSizeGb
  = lens _pdSizeGb (\ s a -> s{_pdSizeGb = a}) .
      mapping _Coerce

-- | The Compute Engine disk type. If unspecified, \`pd-standard\` is used.
pdType :: Lens' PersistentDisk (Maybe Text)
pdType = lens _pdType (\ s a -> s{_pdType = a})

instance FromJSON PersistentDisk where
        parseJSON
          = withObject "PersistentDisk"
              (\ o ->
                 PersistentDisk' <$>
                   (o .:? "sourceImage") <*> (o .:? "sizeGb") <*>
                     (o .:? "type"))

instance ToJSON PersistentDisk where
        toJSON PersistentDisk'{..}
          = object
              (catMaybes
                 [("sourceImage" .=) <$> _pdSourceImage,
                  ("sizeGb" .=) <$> _pdSizeGb,
                  ("type" .=) <$> _pdType])

-- | An event generated when a container is forcibly terminated by the
-- worker. Currently, this only occurs when the container outlives the
-- timeout specified by the user.
--
-- /See:/ 'containerKilledEvent' smart constructor.
newtype ContainerKilledEvent =
  ContainerKilledEvent'
    { _ckeActionId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerKilledEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckeActionId'
containerKilledEvent
    :: ContainerKilledEvent
containerKilledEvent = ContainerKilledEvent' {_ckeActionId = Nothing}


-- | The numeric ID of the action that started the container.
ckeActionId :: Lens' ContainerKilledEvent (Maybe Int32)
ckeActionId
  = lens _ckeActionId (\ s a -> s{_ckeActionId = a}) .
      mapping _Coerce

instance FromJSON ContainerKilledEvent where
        parseJSON
          = withObject "ContainerKilledEvent"
              (\ o -> ContainerKilledEvent' <$> (o .:? "actionId"))

instance ToJSON ContainerKilledEvent where
        toJSON ContainerKilledEvent'{..}
          = object
              (catMaybes [("actionId" .=) <$> _ckeActionId])

-- | An event generated when the worker stops pulling an image.
--
-- /See:/ 'pullStoppedEvent' smart constructor.
newtype PullStoppedEvent =
  PullStoppedEvent'
    { _pseImageURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullStoppedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pseImageURI'
pullStoppedEvent
    :: PullStoppedEvent
pullStoppedEvent = PullStoppedEvent' {_pseImageURI = Nothing}


-- | The URI of the image that was pulled.
pseImageURI :: Lens' PullStoppedEvent (Maybe Text)
pseImageURI
  = lens _pseImageURI (\ s a -> s{_pseImageURI = a})

instance FromJSON PullStoppedEvent where
        parseJSON
          = withObject "PullStoppedEvent"
              (\ o -> PullStoppedEvent' <$> (o .:? "imageUri"))

instance ToJSON PullStoppedEvent where
        toJSON PullStoppedEvent'{..}
          = object
              (catMaybes [("imageUri" .=) <$> _pseImageURI])

-- | Carries information about storage that can be attached to a VM. Specify
-- either \`Volume\` or \`Disk\`, but not both.
--
-- /See:/ 'volume' smart constructor.
data Volume =
  Volume'
    { _vPersistentDisk :: !(Maybe PersistentDisk)
    , _vVolume :: !(Maybe Text)
    , _vExistingDisk :: !(Maybe ExistingDisk)
    , _vNfsMount :: !(Maybe NFSMount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vPersistentDisk'
--
-- * 'vVolume'
--
-- * 'vExistingDisk'
--
-- * 'vNfsMount'
volume
    :: Volume
volume =
  Volume'
    { _vPersistentDisk = Nothing
    , _vVolume = Nothing
    , _vExistingDisk = Nothing
    , _vNfsMount = Nothing
    }


-- | Configuration for a persistent disk.
vPersistentDisk :: Lens' Volume (Maybe PersistentDisk)
vPersistentDisk
  = lens _vPersistentDisk
      (\ s a -> s{_vPersistentDisk = a})

-- | A user-supplied name for the volume. Used when mounting the volume into
-- \`Actions\`. The name must contain only upper and lowercase alphanumeric
-- characters and hyphens and cannot start with a hyphen.
vVolume :: Lens' Volume (Maybe Text)
vVolume = lens _vVolume (\ s a -> s{_vVolume = a})

-- | Configuration for a existing disk.
vExistingDisk :: Lens' Volume (Maybe ExistingDisk)
vExistingDisk
  = lens _vExistingDisk
      (\ s a -> s{_vExistingDisk = a})

-- | Configuration for an NFS mount.
vNfsMount :: Lens' Volume (Maybe NFSMount)
vNfsMount
  = lens _vNfsMount (\ s a -> s{_vNfsMount = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ o ->
                 Volume' <$>
                   (o .:? "persistentDisk") <*> (o .:? "volume") <*>
                     (o .:? "existingDisk")
                     <*> (o .:? "nfsMount"))

instance ToJSON Volume where
        toJSON Volume'{..}
          = object
              (catMaybes
                 [("persistentDisk" .=) <$> _vPersistentDisk,
                  ("volume" .=) <$> _vVolume,
                  ("existingDisk" .=) <$> _vExistingDisk,
                  ("nfsMount" .=) <$> _vNfsMount])

-- | Labels to associate with the action. This field is provided to assist
-- workflow engine authors in identifying actions (for example, to indicate
-- what sort of action they perform, such as localization or debugging).
-- They are returned in the operation metadata, but are otherwise ignored.
--
-- /See:/ 'actionLabels' smart constructor.
newtype ActionLabels =
  ActionLabels'
    { _alAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alAddtional'
actionLabels
    :: HashMap Text Text -- ^ 'alAddtional'
    -> ActionLabels
actionLabels pAlAddtional_ =
  ActionLabels' {_alAddtional = _Coerce # pAlAddtional_}


alAddtional :: Lens' ActionLabels (HashMap Text Text)
alAddtional
  = lens _alAddtional (\ s a -> s{_alAddtional = a}) .
      _Coerce

instance FromJSON ActionLabels where
        parseJSON
          = withObject "ActionLabels"
              (\ o -> ActionLabels' <$> (parseJSONObject o))

instance ToJSON ActionLabels where
        toJSON = toJSON . _alAddtional

-- | The event data.
--
-- /See:/ 'timestampedEventData' smart constructor.
newtype TimestampedEventData =
  TimestampedEventData'
    { _tedAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampedEventData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tedAddtional'
timestampedEventData
    :: HashMap Text JSONValue -- ^ 'tedAddtional'
    -> TimestampedEventData
timestampedEventData pTedAddtional_ =
  TimestampedEventData' {_tedAddtional = _Coerce # pTedAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
tedAddtional :: Lens' TimestampedEventData (HashMap Text JSONValue)
tedAddtional
  = lens _tedAddtional (\ s a -> s{_tedAddtional = a})
      . _Coerce

instance FromJSON TimestampedEventData where
        parseJSON
          = withObject "TimestampedEventData"
              (\ o ->
                 TimestampedEventData' <$> (parseJSONObject o))

instance ToJSON TimestampedEventData where
        toJSON = toJSON . _tedAddtional

-- | An event that occured in the operation assigned to the worker and the
-- time of occurance.
--
-- /See:/ 'timestampedEvent' smart constructor.
data TimestampedEvent =
  TimestampedEvent'
    { _teData :: !(Maybe TimestampedEventData)
    , _teTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teData'
--
-- * 'teTimestamp'
timestampedEvent
    :: TimestampedEvent
timestampedEvent = TimestampedEvent' {_teData = Nothing, _teTimestamp = Nothing}


-- | The event data.
teData :: Lens' TimestampedEvent (Maybe TimestampedEventData)
teData = lens _teData (\ s a -> s{_teData = a})

-- | The time when the event happened.
teTimestamp :: Lens' TimestampedEvent (Maybe UTCTime)
teTimestamp
  = lens _teTimestamp (\ s a -> s{_teTimestamp = a}) .
      mapping _DateTime

instance FromJSON TimestampedEvent where
        parseJSON
          = withObject "TimestampedEvent"
              (\ o ->
                 TimestampedEvent' <$>
                   (o .:? "data") <*> (o .:? "timestamp"))

instance ToJSON TimestampedEvent where
        toJSON TimestampedEvent'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _teData,
                  ("timestamp" .=) <$> _teTimestamp])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | VM networking options.
--
-- /See:/ 'network' smart constructor.
data Network =
  Network'
    { _nUsePrivateAddress :: !(Maybe Bool)
    , _nName :: !(Maybe Text)
    , _nSubnetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nUsePrivateAddress'
--
-- * 'nName'
--
-- * 'nSubnetwork'
network
    :: Network
network =
  Network'
    {_nUsePrivateAddress = Nothing, _nName = Nothing, _nSubnetwork = Nothing}


-- | If set to true, do not attach a public IP address to the VM. Note that
-- without a public IP address, additional configuration is required to
-- allow the VM to access Google services. See
-- https:\/\/cloud.google.com\/vpc\/docs\/configure-private-google-access
-- for more information.
nUsePrivateAddress :: Lens' Network (Maybe Bool)
nUsePrivateAddress
  = lens _nUsePrivateAddress
      (\ s a -> s{_nUsePrivateAddress = a})

-- | The network name to attach the VM\'s network interface to. The value
-- will be prefixed with \`global\/networks\/\` unless it contains a
-- \`\/\`, in which case it is assumed to be a fully specified network
-- resource URL. If unspecified, the global default network is used.
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | If the specified network is configured for custom subnet creation, the
-- name of the subnetwork to attach the instance to must be specified here.
-- The value is prefixed with \`regions\/*\/subnetworks\/\` unless it
-- contains a \`\/\`, in which case it is assumed to be a fully specified
-- subnetwork resource URL. If the \`*\` character appears in the value, it
-- is replaced with the region that the virtual machine has been allocated
-- in.
nSubnetwork :: Lens' Network (Maybe Text)
nSubnetwork
  = lens _nSubnetwork (\ s a -> s{_nSubnetwork = a})

instance FromJSON Network where
        parseJSON
          = withObject "Network"
              (\ o ->
                 Network' <$>
                   (o .:? "usePrivateAddress") <*> (o .:? "name") <*>
                     (o .:? "subnetwork"))

instance ToJSON Network where
        toJSON Network'{..}
          = object
              (catMaybes
                 [("usePrivateAddress" .=) <$> _nUsePrivateAddress,
                  ("name" .=) <$> _nName,
                  ("subnetwork" .=) <$> _nSubnetwork])

-- | Machine-readable details about the event.
--
-- /See:/ 'eventDetails' smart constructor.
newtype EventDetails =
  EventDetails'
    { _edAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edAddtional'
eventDetails
    :: HashMap Text JSONValue -- ^ 'edAddtional'
    -> EventDetails
eventDetails pEdAddtional_ =
  EventDetails' {_edAddtional = _Coerce # pEdAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
edAddtional :: Lens' EventDetails (HashMap Text JSONValue)
edAddtional
  = lens _edAddtional (\ s a -> s{_edAddtional = a}) .
      _Coerce

instance FromJSON EventDetails where
        parseJSON
          = withObject "EventDetails"
              (\ o -> EventDetails' <$> (parseJSONObject o))

instance ToJSON EventDetails where
        toJSON = toJSON . _edAddtional

-- | Configuration for an existing disk to be attached to the VM.
--
-- /See:/ 'existingDisk' smart constructor.
newtype ExistingDisk =
  ExistingDisk'
    { _edDisk :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExistingDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edDisk'
existingDisk
    :: ExistingDisk
existingDisk = ExistingDisk' {_edDisk = Nothing}


-- | If \`disk\` contains slashes, the Cloud Life Sciences API assumes that
-- it is a complete URL for the disk. If \`disk\` does not contain slashes,
-- the Cloud Life Sciences API assumes that the disk is a zonal disk and a
-- URL will be generated of the form \`zones\/\/disks\/\`, where \`\` is
-- the zone in which the instance is allocated. The disk must be ext4
-- formatted. If all \`Mount\` references to this disk have the
-- \`read_only\` flag set to true, the disk will be attached in
-- \`read-only\` mode and can be shared with other instances. Otherwise,
-- the disk will be available for writing but cannot be shared.
edDisk :: Lens' ExistingDisk (Maybe Text)
edDisk = lens _edDisk (\ s a -> s{_edDisk = a})

instance FromJSON ExistingDisk where
        parseJSON
          = withObject "ExistingDisk"
              (\ o -> ExistingDisk' <$> (o .:? "disk"))

instance ToJSON ExistingDisk where
        toJSON ExistingDisk'{..}
          = object (catMaybes [("disk" .=) <$> _edDisk])

-- | Specifies a single action that runs a Docker container.
--
-- /See:/ 'action' smart constructor.
data Action =
  Action'
    { _aCommands :: !(Maybe [Text])
    , _aFlags :: !(Maybe [ActionFlagsItem])
    , _aEnvironment :: !(Maybe ActionEnvironment)
    , _aCredentials :: !(Maybe Secret)
    , _aEntrypoint :: !(Maybe Text)
    , _aPortMAppings :: !(Maybe ActionPortMAppings)
    , _aMounts :: !(Maybe [Mount])
    , _aImageURI :: !(Maybe Text)
    , _aName :: !(Maybe Text)
    , _aLabels :: !(Maybe ActionLabels)
    , _aEncryptedEnvironment :: !(Maybe Secret)
    , _aTimeout :: !(Maybe GDuration)
    , _aPidNamespace :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCommands'
--
-- * 'aFlags'
--
-- * 'aEnvironment'
--
-- * 'aCredentials'
--
-- * 'aEntrypoint'
--
-- * 'aPortMAppings'
--
-- * 'aMounts'
--
-- * 'aImageURI'
--
-- * 'aName'
--
-- * 'aLabels'
--
-- * 'aEncryptedEnvironment'
--
-- * 'aTimeout'
--
-- * 'aPidNamespace'
action
    :: Action
action =
  Action'
    { _aCommands = Nothing
    , _aFlags = Nothing
    , _aEnvironment = Nothing
    , _aCredentials = Nothing
    , _aEntrypoint = Nothing
    , _aPortMAppings = Nothing
    , _aMounts = Nothing
    , _aImageURI = Nothing
    , _aName = Nothing
    , _aLabels = Nothing
    , _aEncryptedEnvironment = Nothing
    , _aTimeout = Nothing
    , _aPidNamespace = Nothing
    }


-- | If specified, overrides the \`CMD\` specified in the container. If the
-- container also has an \`ENTRYPOINT\` the values are used as entrypoint
-- arguments. Otherwise, they are used as a command and arguments to run
-- inside the container.
aCommands :: Lens' Action [Text]
aCommands
  = lens _aCommands (\ s a -> s{_aCommands = a}) .
      _Default
      . _Coerce

-- | The set of flags to apply to this action.
aFlags :: Lens' Action [ActionFlagsItem]
aFlags
  = lens _aFlags (\ s a -> s{_aFlags = a}) . _Default .
      _Coerce

-- | The environment to pass into the container. This environment is merged
-- with values specified in the google.genomics.v2alpha1.Pipeline message,
-- overwriting any duplicate values. In addition to the values passed here,
-- a few other values are automatically injected into the environment.
-- These cannot be hidden or overwritten. \`GOOGLE_PIPELINE_FAILED\` will
-- be set to \"1\" if the pipeline failed because an action has exited with
-- a non-zero status (and did not have the \`IGNORE_EXIT_STATUS\` flag
-- set). This can be used to determine if additional debug or logging
-- actions should execute. \`GOOGLE_LAST_EXIT_STATUS\` will be set to the
-- exit status of the last non-background action that executed. This can be
-- used by workflow engine authors to determine whether an individual
-- action has succeeded or failed.
aEnvironment :: Lens' Action (Maybe ActionEnvironment)
aEnvironment
  = lens _aEnvironment (\ s a -> s{_aEnvironment = a})

-- | If the specified image is hosted on a private registry other than Google
-- Container Registry, the credentials required to pull the image must be
-- specified here as an encrypted secret. The secret must decrypt to a
-- JSON-encoded dictionary containing both \`username\` and \`password\`
-- keys.
aCredentials :: Lens' Action (Maybe Secret)
aCredentials
  = lens _aCredentials (\ s a -> s{_aCredentials = a})

-- | If specified, overrides the \`ENTRYPOINT\` specified in the container.
aEntrypoint :: Lens' Action (Maybe Text)
aEntrypoint
  = lens _aEntrypoint (\ s a -> s{_aEntrypoint = a})

-- | A map of containers to host port mappings for this container. If the
-- container already specifies exposed ports, use the
-- \`PUBLISH_EXPOSED_PORTS\` flag instead. The host port number must be
-- less than 65536. If it is zero, an unused random port is assigned. To
-- determine the resulting port number, consult the
-- \`ContainerStartedEvent\` in the operation metadata.
aPortMAppings :: Lens' Action (Maybe ActionPortMAppings)
aPortMAppings
  = lens _aPortMAppings
      (\ s a -> s{_aPortMAppings = a})

-- | A list of mounts to make available to the action. In addition to the
-- values specified here, every action has a special virtual disk mounted
-- under \`\/google\` that contains log files and other operational
-- components. - \/google\/logs All logs written during the pipeline
-- execution. - \/google\/logs\/output The combined standard output and
-- standard error of all actions run as part of the pipeline execution. -
-- \/google\/logs\/action\/*\/stdout The complete contents of each
-- individual action\'s standard output. -
-- \/google\/logs\/action\/*\/stderr The complete contents of each
-- individual action\'s standard error output.
aMounts :: Lens' Action [Mount]
aMounts
  = lens _aMounts (\ s a -> s{_aMounts = a}) . _Default
      . _Coerce

-- | Required. The URI to pull the container image from. Note that all images
-- referenced by actions in the pipeline are pulled before the first action
-- runs. If multiple actions reference the same image, it is only pulled
-- once, ensuring that the same image is used for all actions in a single
-- pipeline. The image URI can be either a complete host and image
-- specification (e.g., quay.io\/biocontainers\/samtools), a library and
-- image name (e.g., google\/cloud-sdk) or a bare image name (\'bash\') to
-- pull from the default library. No schema is required in any of these
-- cases. If the specified image is not public, the service account
-- specified for the Virtual Machine must have access to pull the images
-- from GCR, or appropriate credentials must be specified in the
-- google.genomics.v2alpha1.Action.credentials field.
aImageURI :: Lens' Action (Maybe Text)
aImageURI
  = lens _aImageURI (\ s a -> s{_aImageURI = a})

-- | An optional name for the container. The container hostname will be set
-- to this name, making it useful for inter-container communication. The
-- name must contain only upper and lowercase alphanumeric characters and
-- hyphens and cannot start with a hyphen.
aName :: Lens' Action (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Labels to associate with the action. This field is provided to assist
-- workflow engine authors in identifying actions (for example, to indicate
-- what sort of action they perform, such as localization or debugging).
-- They are returned in the operation metadata, but are otherwise ignored.
aLabels :: Lens' Action (Maybe ActionLabels)
aLabels = lens _aLabels (\ s a -> s{_aLabels = a})

-- | The encrypted environment to pass into the container. This environment
-- is merged with values specified in the google.genomics.v2alpha1.Pipeline
-- message, overwriting any duplicate values. The secret must decrypt to a
-- JSON-encoded dictionary where key-value pairs serve as environment
-- variable names and their values. The decoded environment variables can
-- overwrite the values specified by the \`environment\` field.
aEncryptedEnvironment :: Lens' Action (Maybe Secret)
aEncryptedEnvironment
  = lens _aEncryptedEnvironment
      (\ s a -> s{_aEncryptedEnvironment = a})

-- | The maximum amount of time to give the action to complete. If the action
-- fails to complete before the timeout, it will be terminated and the exit
-- status will be non-zero. The pipeline will continue or terminate based
-- on the rules defined by the \`ALWAYS_RUN\` and \`IGNORE_EXIT_STATUS\`
-- flags.
aTimeout :: Lens' Action (Maybe Scientific)
aTimeout
  = lens _aTimeout (\ s a -> s{_aTimeout = a}) .
      mapping _GDuration

-- | An optional identifier for a PID namespace to run the action inside.
-- Multiple actions should use the same string to share a namespace. If
-- unspecified, a separate isolated namespace is used.
aPidNamespace :: Lens' Action (Maybe Text)
aPidNamespace
  = lens _aPidNamespace
      (\ s a -> s{_aPidNamespace = a})

instance FromJSON Action where
        parseJSON
          = withObject "Action"
              (\ o ->
                 Action' <$>
                   (o .:? "commands" .!= mempty) <*>
                     (o .:? "flags" .!= mempty)
                     <*> (o .:? "environment")
                     <*> (o .:? "credentials")
                     <*> (o .:? "entrypoint")
                     <*> (o .:? "portMappings")
                     <*> (o .:? "mounts" .!= mempty)
                     <*> (o .:? "imageUri")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "encryptedEnvironment")
                     <*> (o .:? "timeout")
                     <*> (o .:? "pidNamespace"))

instance ToJSON Action where
        toJSON Action'{..}
          = object
              (catMaybes
                 [("commands" .=) <$> _aCommands,
                  ("flags" .=) <$> _aFlags,
                  ("environment" .=) <$> _aEnvironment,
                  ("credentials" .=) <$> _aCredentials,
                  ("entrypoint" .=) <$> _aEntrypoint,
                  ("portMappings" .=) <$> _aPortMAppings,
                  ("mounts" .=) <$> _aMounts,
                  ("imageUri" .=) <$> _aImageURI,
                  ("name" .=) <$> _aName, ("labels" .=) <$> _aLabels,
                  ("encryptedEnvironment" .=) <$>
                    _aEncryptedEnvironment,
                  ("timeout" .=) <$> _aTimeout,
                  ("pidNamespace" .=) <$> _aPidNamespace])

-- | Holds encrypted information that is only decrypted and stored in RAM by
-- the worker VM when running the pipeline.
--
-- /See:/ 'secret' smart constructor.
data Secret =
  Secret'
    { _sKeyName :: !(Maybe Text)
    , _sCipherText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Secret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKeyName'
--
-- * 'sCipherText'
secret
    :: Secret
secret = Secret' {_sKeyName = Nothing, _sCipherText = Nothing}


-- | The name of the Cloud KMS key that will be used to decrypt the secret
-- value. The VM service account must have the required permissions and
-- authentication scopes to invoke the \`decrypt\` method on the specified
-- key.
sKeyName :: Lens' Secret (Maybe Text)
sKeyName = lens _sKeyName (\ s a -> s{_sKeyName = a})

-- | The value of the cipherText response from the \`encrypt\` method. This
-- field is intentionally unaudited.
sCipherText :: Lens' Secret (Maybe Text)
sCipherText
  = lens _sCipherText (\ s a -> s{_sCipherText = a})

instance FromJSON Secret where
        parseJSON
          = withObject "Secret"
              (\ o ->
                 Secret' <$>
                   (o .:? "keyName") <*> (o .:? "cipherText"))

instance ToJSON Secret where
        toJSON Secret'{..}
          = object
              (catMaybes
                 [("keyName" .=) <$> _sKeyName,
                  ("cipherText" .=) <$> _sCipherText])

-- | Status of attached disks.
--
-- /See:/ 'workerStatusAttachedDisks' smart constructor.
newtype WorkerStatusAttachedDisks =
  WorkerStatusAttachedDisks'
    { _wsadAddtional :: HashMap Text DiskStatus
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerStatusAttachedDisks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsadAddtional'
workerStatusAttachedDisks
    :: HashMap Text DiskStatus -- ^ 'wsadAddtional'
    -> WorkerStatusAttachedDisks
workerStatusAttachedDisks pWsadAddtional_ =
  WorkerStatusAttachedDisks' {_wsadAddtional = _Coerce # pWsadAddtional_}


wsadAddtional :: Lens' WorkerStatusAttachedDisks (HashMap Text DiskStatus)
wsadAddtional
  = lens _wsadAddtional
      (\ s a -> s{_wsadAddtional = a})
      . _Coerce

instance FromJSON WorkerStatusAttachedDisks where
        parseJSON
          = withObject "WorkerStatusAttachedDisks"
              (\ o ->
                 WorkerStatusAttachedDisks' <$> (parseJSONObject o))

instance ToJSON WorkerStatusAttachedDisks where
        toJSON = toJSON . _wsadAddtional

-- | The system resources for the pipeline run. At least one zone or region
-- must be specified or the pipeline run will fail.
--
-- /See:/ 'resources' smart constructor.
data Resources =
  Resources'
    { _rZones :: !(Maybe [Text])
    , _rRegions :: !(Maybe [Text])
    , _rVirtualMachine :: !(Maybe VirtualMachine)
    , _rProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rZones'
--
-- * 'rRegions'
--
-- * 'rVirtualMachine'
--
-- * 'rProjectId'
resources
    :: Resources
resources =
  Resources'
    { _rZones = Nothing
    , _rRegions = Nothing
    , _rVirtualMachine = Nothing
    , _rProjectId = Nothing
    }


-- | The list of zones allowed for VM allocation. If set, the \`regions\`
-- field must not be set.
rZones :: Lens' Resources [Text]
rZones
  = lens _rZones (\ s a -> s{_rZones = a}) . _Default .
      _Coerce

-- | The list of regions allowed for VM allocation. If set, the \`zones\`
-- field must not be set.
rRegions :: Lens' Resources [Text]
rRegions
  = lens _rRegions (\ s a -> s{_rRegions = a}) .
      _Default
      . _Coerce

-- | The virtual machine specification.
rVirtualMachine :: Lens' Resources (Maybe VirtualMachine)
rVirtualMachine
  = lens _rVirtualMachine
      (\ s a -> s{_rVirtualMachine = a})

-- | The project ID to allocate resources in.
rProjectId :: Lens' Resources (Maybe Text)
rProjectId
  = lens _rProjectId (\ s a -> s{_rProjectId = a})

instance FromJSON Resources where
        parseJSON
          = withObject "Resources"
              (\ o ->
                 Resources' <$>
                   (o .:? "zones" .!= mempty) <*>
                     (o .:? "regions" .!= mempty)
                     <*> (o .:? "virtualMachine")
                     <*> (o .:? "projectId"))

instance ToJSON Resources where
        toJSON Resources'{..}
          = object
              (catMaybes
                 [("zones" .=) <$> _rZones,
                  ("regions" .=) <$> _rRegions,
                  ("virtualMachine" .=) <$> _rVirtualMachine,
                  ("projectId" .=) <$> _rProjectId])

-- | The status of a disk on a VM.
--
-- /See:/ 'diskStatus' smart constructor.
data DiskStatus =
  DiskStatus'
    { _dsTotalSpaceBytes :: !(Maybe (Textual Word64))
    , _dsFreeSpaceBytes :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsTotalSpaceBytes'
--
-- * 'dsFreeSpaceBytes'
diskStatus
    :: DiskStatus
diskStatus =
  DiskStatus' {_dsTotalSpaceBytes = Nothing, _dsFreeSpaceBytes = Nothing}


-- | Total disk space.
dsTotalSpaceBytes :: Lens' DiskStatus (Maybe Word64)
dsTotalSpaceBytes
  = lens _dsTotalSpaceBytes
      (\ s a -> s{_dsTotalSpaceBytes = a})
      . mapping _Coerce

-- | Free disk space.
dsFreeSpaceBytes :: Lens' DiskStatus (Maybe Word64)
dsFreeSpaceBytes
  = lens _dsFreeSpaceBytes
      (\ s a -> s{_dsFreeSpaceBytes = a})
      . mapping _Coerce

instance FromJSON DiskStatus where
        parseJSON
          = withObject "DiskStatus"
              (\ o ->
                 DiskStatus' <$>
                   (o .:? "totalSpaceBytes") <*>
                     (o .:? "freeSpaceBytes"))

instance ToJSON DiskStatus where
        toJSON DiskStatus'{..}
          = object
              (catMaybes
                 [("totalSpaceBytes" .=) <$> _dsTotalSpaceBytes,
                  ("freeSpaceBytes" .=) <$> _dsFreeSpaceBytes])

-- | Optional set of labels to apply to the VM and any attached disk
-- resources. These labels must adhere to the [name and value
-- restrictions](https:\/\/cloud.google.com\/compute\/docs\/labeling-resources)
-- on VM labels imposed by Compute Engine. Labels keys with the prefix
-- \'google-\' are reserved for use by Google. Labels applied at creation
-- time to the VM. Applied on a best-effort basis to attached disk
-- resources shortly after VM creation.
--
-- /See:/ 'virtualMachineLabels' smart constructor.
newtype VirtualMachineLabels =
  VirtualMachineLabels'
    { _vmlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VirtualMachineLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmlAddtional'
virtualMachineLabels
    :: HashMap Text Text -- ^ 'vmlAddtional'
    -> VirtualMachineLabels
virtualMachineLabels pVmlAddtional_ =
  VirtualMachineLabels' {_vmlAddtional = _Coerce # pVmlAddtional_}


vmlAddtional :: Lens' VirtualMachineLabels (HashMap Text Text)
vmlAddtional
  = lens _vmlAddtional (\ s a -> s{_vmlAddtional = a})
      . _Coerce

instance FromJSON VirtualMachineLabels where
        parseJSON
          = withObject "VirtualMachineLabels"
              (\ o ->
                 VirtualMachineLabels' <$> (parseJSONObject o))

instance ToJSON VirtualMachineLabels where
        toJSON = toJSON . _vmlAddtional

-- | Carries information about a Compute Engine VM resource.
--
-- /See:/ 'virtualMachine' smart constructor.
data VirtualMachine =
  VirtualMachine'
    { _vmDockerCacheImages :: !(Maybe [Text])
    , _vmReservation :: !(Maybe Text)
    , _vmNetwork :: !(Maybe Network)
    , _vmCPUPlatform :: !(Maybe Text)
    , _vmServiceAccount :: !(Maybe ServiceAccount)
    , _vmAccelerators :: !(Maybe [Accelerator])
    , _vmMachineType :: !(Maybe Text)
    , _vmEnableStackdriverMonitoring :: !(Maybe Bool)
    , _vmLabels :: !(Maybe VirtualMachineLabels)
    , _vmVolumes :: !(Maybe [Volume])
    , _vmBootDiskSizeGb :: !(Maybe (Textual Int32))
    , _vmDisks :: !(Maybe [Disk])
    , _vmBootImage :: !(Maybe Text)
    , _vmNvidiaDriverVersion :: !(Maybe Text)
    , _vmPreemptible :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VirtualMachine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmDockerCacheImages'
--
-- * 'vmReservation'
--
-- * 'vmNetwork'
--
-- * 'vmCPUPlatform'
--
-- * 'vmServiceAccount'
--
-- * 'vmAccelerators'
--
-- * 'vmMachineType'
--
-- * 'vmEnableStackdriverMonitoring'
--
-- * 'vmLabels'
--
-- * 'vmVolumes'
--
-- * 'vmBootDiskSizeGb'
--
-- * 'vmDisks'
--
-- * 'vmBootImage'
--
-- * 'vmNvidiaDriverVersion'
--
-- * 'vmPreemptible'
virtualMachine
    :: VirtualMachine
virtualMachine =
  VirtualMachine'
    { _vmDockerCacheImages = Nothing
    , _vmReservation = Nothing
    , _vmNetwork = Nothing
    , _vmCPUPlatform = Nothing
    , _vmServiceAccount = Nothing
    , _vmAccelerators = Nothing
    , _vmMachineType = Nothing
    , _vmEnableStackdriverMonitoring = Nothing
    , _vmLabels = Nothing
    , _vmVolumes = Nothing
    , _vmBootDiskSizeGb = Nothing
    , _vmDisks = Nothing
    , _vmBootImage = Nothing
    , _vmNvidiaDriverVersion = Nothing
    , _vmPreemptible = Nothing
    }


-- | The Compute Engine Disk Images to use as a Docker cache. The disks will
-- be mounted into the Docker folder in a way that the images present in
-- the cache will not need to be pulled. The digests of the cached images
-- must match those of the tags used or the latest version will still be
-- pulled. The root directory of the ext4 image must contain \`image\` and
-- \`overlay2\` directories copied from the Docker directory of a VM where
-- the desired Docker images have already been pulled. Any images pulled
-- that are not cached will be stored on the first cache disk instead of
-- the boot disk. Only a single image is supported.
vmDockerCacheImages :: Lens' VirtualMachine [Text]
vmDockerCacheImages
  = lens _vmDockerCacheImages
      (\ s a -> s{_vmDockerCacheImages = a})
      . _Default
      . _Coerce

-- | If specified, the VM will only be allocated inside the matching
-- reservation. It will fail if the VM parameters don\'t match the
-- reservation.
vmReservation :: Lens' VirtualMachine (Maybe Text)
vmReservation
  = lens _vmReservation
      (\ s a -> s{_vmReservation = a})

-- | The VM network configuration.
vmNetwork :: Lens' VirtualMachine (Maybe Network)
vmNetwork
  = lens _vmNetwork (\ s a -> s{_vmNetwork = a})

-- | The CPU platform to request. An instance based on a newer platform can
-- be allocated, but never one with fewer capabilities. The value of this
-- parameter must be a valid Compute Engine CPU platform name (such as
-- \"Intel Skylake\"). This parameter is only useful for carefully
-- optimized work loads where the CPU platform has a significant impact.
-- For more information about the effect of this parameter, see
-- https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform.
vmCPUPlatform :: Lens' VirtualMachine (Maybe Text)
vmCPUPlatform
  = lens _vmCPUPlatform
      (\ s a -> s{_vmCPUPlatform = a})

-- | The service account to install on the VM. This account does not need any
-- permissions other than those required by the pipeline.
vmServiceAccount :: Lens' VirtualMachine (Maybe ServiceAccount)
vmServiceAccount
  = lens _vmServiceAccount
      (\ s a -> s{_vmServiceAccount = a})

-- | The list of accelerators to attach to the VM.
vmAccelerators :: Lens' VirtualMachine [Accelerator]
vmAccelerators
  = lens _vmAccelerators
      (\ s a -> s{_vmAccelerators = a})
      . _Default
      . _Coerce

-- | Required. The machine type of the virtual machine to create. Must be the
-- short name of a standard machine type (such as \"n1-standard-1\") or a
-- custom machine type (such as \"custom-1-4096\", where \"1\" indicates
-- the number of vCPUs and \"4096\" indicates the memory in MB). See
-- [Creating an instance with a custom machine
-- type](https:\/\/cloud.google.com\/compute\/docs\/instances\/creating-instance-with-custom-machine-type#create)
-- for more specifications on creating a custom machine type.
vmMachineType :: Lens' VirtualMachine (Maybe Text)
vmMachineType
  = lens _vmMachineType
      (\ s a -> s{_vmMachineType = a})

-- | Whether Stackdriver monitoring should be enabled on the VM.
vmEnableStackdriverMonitoring :: Lens' VirtualMachine (Maybe Bool)
vmEnableStackdriverMonitoring
  = lens _vmEnableStackdriverMonitoring
      (\ s a -> s{_vmEnableStackdriverMonitoring = a})

-- | Optional set of labels to apply to the VM and any attached disk
-- resources. These labels must adhere to the [name and value
-- restrictions](https:\/\/cloud.google.com\/compute\/docs\/labeling-resources)
-- on VM labels imposed by Compute Engine. Labels keys with the prefix
-- \'google-\' are reserved for use by Google. Labels applied at creation
-- time to the VM. Applied on a best-effort basis to attached disk
-- resources shortly after VM creation.
vmLabels :: Lens' VirtualMachine (Maybe VirtualMachineLabels)
vmLabels = lens _vmLabels (\ s a -> s{_vmLabels = a})

-- | The list of disks and other storage to create or attach to the VM.
-- Specify either the \`volumes[]\` field or the \`disks[]\` field, but not
-- both.
vmVolumes :: Lens' VirtualMachine [Volume]
vmVolumes
  = lens _vmVolumes (\ s a -> s{_vmVolumes = a}) .
      _Default
      . _Coerce

-- | The size of the boot disk, in GB. The boot disk must be large enough to
-- accommodate all of the Docker images from each action in the pipeline at
-- the same time. If not specified, a small but reasonable default value is
-- used.
vmBootDiskSizeGb :: Lens' VirtualMachine (Maybe Int32)
vmBootDiskSizeGb
  = lens _vmBootDiskSizeGb
      (\ s a -> s{_vmBootDiskSizeGb = a})
      . mapping _Coerce

-- | The list of disks to create and attach to the VM. Specify either the
-- \`volumes[]\` field or the \`disks[]\` field, but not both.
vmDisks :: Lens' VirtualMachine [Disk]
vmDisks
  = lens _vmDisks (\ s a -> s{_vmDisks = a}) . _Default
      . _Coerce

-- | The host operating system image to use. Currently, only
-- Container-Optimized OS images can be used. The default value is
-- \`projects\/cos-cloud\/global\/images\/family\/cos-stable\`, which
-- selects the latest stable release of Container-Optimized OS. This option
-- is provided to allow testing against the beta release of the operating
-- system to ensure that the new version does not interact negatively with
-- production pipelines. To test a pipeline against the beta release of
-- Container-Optimized OS, use the value
-- \`projects\/cos-cloud\/global\/images\/family\/cos-beta\`.
vmBootImage :: Lens' VirtualMachine (Maybe Text)
vmBootImage
  = lens _vmBootImage (\ s a -> s{_vmBootImage = a})

-- | The NVIDIA driver version to use when attaching an NVIDIA GPU
-- accelerator. The version specified here must be compatible with the GPU
-- libraries contained in the container being executed, and must be one of
-- the drivers hosted in the \`nvidia-drivers-us-public\` bucket on Google
-- Cloud Storage.
vmNvidiaDriverVersion :: Lens' VirtualMachine (Maybe Text)
vmNvidiaDriverVersion
  = lens _vmNvidiaDriverVersion
      (\ s a -> s{_vmNvidiaDriverVersion = a})

-- | If true, allocate a preemptible VM.
vmPreemptible :: Lens' VirtualMachine (Maybe Bool)
vmPreemptible
  = lens _vmPreemptible
      (\ s a -> s{_vmPreemptible = a})

instance FromJSON VirtualMachine where
        parseJSON
          = withObject "VirtualMachine"
              (\ o ->
                 VirtualMachine' <$>
                   (o .:? "dockerCacheImages" .!= mempty) <*>
                     (o .:? "reservation")
                     <*> (o .:? "network")
                     <*> (o .:? "cpuPlatform")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "machineType")
                     <*> (o .:? "enableStackdriverMonitoring")
                     <*> (o .:? "labels")
                     <*> (o .:? "volumes" .!= mempty)
                     <*> (o .:? "bootDiskSizeGb")
                     <*> (o .:? "disks" .!= mempty)
                     <*> (o .:? "bootImage")
                     <*> (o .:? "nvidiaDriverVersion")
                     <*> (o .:? "preemptible"))

instance ToJSON VirtualMachine where
        toJSON VirtualMachine'{..}
          = object
              (catMaybes
                 [("dockerCacheImages" .=) <$> _vmDockerCacheImages,
                  ("reservation" .=) <$> _vmReservation,
                  ("network" .=) <$> _vmNetwork,
                  ("cpuPlatform" .=) <$> _vmCPUPlatform,
                  ("serviceAccount" .=) <$> _vmServiceAccount,
                  ("accelerators" .=) <$> _vmAccelerators,
                  ("machineType" .=) <$> _vmMachineType,
                  ("enableStackdriverMonitoring" .=) <$>
                    _vmEnableStackdriverMonitoring,
                  ("labels" .=) <$> _vmLabels,
                  ("volumes" .=) <$> _vmVolumes,
                  ("bootDiskSizeGb" .=) <$> _vmBootDiskSizeGb,
                  ("disks" .=) <$> _vmDisks,
                  ("bootImage" .=) <$> _vmBootImage,
                  ("nvidiaDriverVersion" .=) <$>
                    _vmNvidiaDriverVersion,
                  ("preemptible" .=) <$> _vmPreemptible])

-- | Carries information about a Google Cloud service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount =
  ServiceAccount'
    { _saEmail :: !(Maybe Text)
    , _saScopes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saScopes'
serviceAccount
    :: ServiceAccount
serviceAccount = ServiceAccount' {_saEmail = Nothing, _saScopes = Nothing}


-- | Email address of the service account. If not specified, the default
-- Compute Engine service account for the project will be used.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | List of scopes to be enabled for this service account on the VM, in
-- addition to the cloud-platform API scope that will be added by default.
saScopes :: Lens' ServiceAccount [Text]
saScopes
  = lens _saScopes (\ s a -> s{_saScopes = a}) .
      _Default
      . _Coerce

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount' <$>
                   (o .:? "email") <*> (o .:? "scopes" .!= mempty))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail,
                  ("scopes" .=) <$> _saScopes])

-- | The metadata that describes the operation assigned to the worker.
--
-- /See:/ 'checkInResponseMetadata' smart constructor.
newtype CheckInResponseMetadata =
  CheckInResponseMetadata'
    { _cirmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckInResponseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirmAddtional'
checkInResponseMetadata
    :: HashMap Text JSONValue -- ^ 'cirmAddtional'
    -> CheckInResponseMetadata
checkInResponseMetadata pCirmAddtional_ =
  CheckInResponseMetadata' {_cirmAddtional = _Coerce # pCirmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
cirmAddtional :: Lens' CheckInResponseMetadata (HashMap Text JSONValue)
cirmAddtional
  = lens _cirmAddtional
      (\ s a -> s{_cirmAddtional = a})
      . _Coerce

instance FromJSON CheckInResponseMetadata where
        parseJSON
          = withObject "CheckInResponseMetadata"
              (\ o ->
                 CheckInResponseMetadata' <$> (parseJSONObject o))

instance ToJSON CheckInResponseMetadata where
        toJSON = toJSON . _cirmAddtional

-- | Carries information about an accelerator that can be attached to a VM.
--
-- /See:/ 'accelerator' smart constructor.
data Accelerator =
  Accelerator'
    { _aCount :: !(Maybe (Textual Int64))
    , _aType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Accelerator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCount'
--
-- * 'aType'
accelerator
    :: Accelerator
accelerator = Accelerator' {_aCount = Nothing, _aType = Nothing}


-- | How many accelerators of this type to attach.
aCount :: Lens' Accelerator (Maybe Int64)
aCount
  = lens _aCount (\ s a -> s{_aCount = a}) .
      mapping _Coerce

-- | The accelerator type string (for example, \"nvidia-tesla-k80\"). Only
-- NVIDIA GPU accelerators are currently supported. If an NVIDIA GPU is
-- attached, the required runtime libraries will be made available to all
-- containers under \`\/usr\/local\/nvidia\`. The driver version to install
-- must be specified using the NVIDIA driver version parameter on the
-- virtual machine specification. Note that attaching a GPU increases the
-- worker VM startup time by a few minutes.
aType :: Lens' Accelerator (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

instance FromJSON Accelerator where
        parseJSON
          = withObject "Accelerator"
              (\ o ->
                 Accelerator' <$> (o .:? "count") <*> (o .:? "type"))

instance ToJSON Accelerator where
        toJSON Accelerator'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _aCount, ("type" .=) <$> _aType])

-- | The environment to pass into every action. Each action can also specify
-- additional environment variables but cannot delete an entry from this
-- map (though they can overwrite it with a different value).
--
-- /See:/ 'pipelineEnvironment' smart constructor.
newtype PipelineEnvironment =
  PipelineEnvironment'
    { _peAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PipelineEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peAddtional'
pipelineEnvironment
    :: HashMap Text Text -- ^ 'peAddtional'
    -> PipelineEnvironment
pipelineEnvironment pPeAddtional_ =
  PipelineEnvironment' {_peAddtional = _Coerce # pPeAddtional_}


peAddtional :: Lens' PipelineEnvironment (HashMap Text Text)
peAddtional
  = lens _peAddtional (\ s a -> s{_peAddtional = a}) .
      _Coerce

instance FromJSON PipelineEnvironment where
        parseJSON
          = withObject "PipelineEnvironment"
              (\ o -> PipelineEnvironment' <$> (parseJSONObject o))

instance ToJSON PipelineEnvironment where
        toJSON = toJSON . _peAddtional

-- | An event generated when the worker VM that was assigned to the pipeline
-- has been released (deleted).
--
-- /See:/ 'workerReleasedEvent' smart constructor.
data WorkerReleasedEvent =
  WorkerReleasedEvent'
    { _wreZone :: !(Maybe Text)
    , _wreInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerReleasedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wreZone'
--
-- * 'wreInstance'
workerReleasedEvent
    :: WorkerReleasedEvent
workerReleasedEvent =
  WorkerReleasedEvent' {_wreZone = Nothing, _wreInstance = Nothing}


-- | The zone the worker was running in.
wreZone :: Lens' WorkerReleasedEvent (Maybe Text)
wreZone = lens _wreZone (\ s a -> s{_wreZone = a})

-- | The worker\'s instance name.
wreInstance :: Lens' WorkerReleasedEvent (Maybe Text)
wreInstance
  = lens _wreInstance (\ s a -> s{_wreInstance = a})

instance FromJSON WorkerReleasedEvent where
        parseJSON
          = withObject "WorkerReleasedEvent"
              (\ o ->
                 WorkerReleasedEvent' <$>
                   (o .:? "zone") <*> (o .:? "instance"))

instance ToJSON WorkerReleasedEvent where
        toJSON WorkerReleasedEvent'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _wreZone,
                  ("instance" .=) <$> _wreInstance])

-- | An event generated when a container starts.
--
-- /See:/ 'containerStartedEvent' smart constructor.
data ContainerStartedEvent =
  ContainerStartedEvent'
    { _cIPAddress :: !(Maybe Text)
    , _cActionId :: !(Maybe (Textual Int32))
    , _cPortMAppings :: !(Maybe ContainerStartedEventPortMAppings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerStartedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cIPAddress'
--
-- * 'cActionId'
--
-- * 'cPortMAppings'
containerStartedEvent
    :: ContainerStartedEvent
containerStartedEvent =
  ContainerStartedEvent'
    {_cIPAddress = Nothing, _cActionId = Nothing, _cPortMAppings = Nothing}


-- | The public IP address that can be used to connect to the container. This
-- field is only populated when at least one port mapping is present. If
-- the instance was created with a private address, this field will be
-- empty even if port mappings exist.
cIPAddress :: Lens' ContainerStartedEvent (Maybe Text)
cIPAddress
  = lens _cIPAddress (\ s a -> s{_cIPAddress = a})

-- | The numeric ID of the action that started this container.
cActionId :: Lens' ContainerStartedEvent (Maybe Int32)
cActionId
  = lens _cActionId (\ s a -> s{_cActionId = a}) .
      mapping _Coerce

-- | The container-to-host port mappings installed for this container. This
-- set will contain any ports exposed using the \`PUBLISH_EXPOSED_PORTS\`
-- flag as well as any specified in the \`Action\` definition.
cPortMAppings :: Lens' ContainerStartedEvent (Maybe ContainerStartedEventPortMAppings)
cPortMAppings
  = lens _cPortMAppings
      (\ s a -> s{_cPortMAppings = a})

instance FromJSON ContainerStartedEvent where
        parseJSON
          = withObject "ContainerStartedEvent"
              (\ o ->
                 ContainerStartedEvent' <$>
                   (o .:? "ipAddress") <*> (o .:? "actionId") <*>
                     (o .:? "portMappings"))

instance ToJSON ContainerStartedEvent where
        toJSON ContainerStartedEvent'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _cIPAddress,
                  ("actionId" .=) <$> _cActionId,
                  ("portMappings" .=) <$> _cPortMAppings])

-- | The arguments to the \`RunPipeline\` method. The requesting user must
-- have the \`iam.serviceAccounts.actAs\` permission for the Cloud Genomics
-- service account or the request will fail.
--
-- /See:/ 'runPipelineRequest' smart constructor.
data RunPipelineRequest =
  RunPipelineRequest'
    { _rprPipeline :: !(Maybe Pipeline)
    , _rprPubSubTopic :: !(Maybe Text)
    , _rprLabels :: !(Maybe RunPipelineRequestLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunPipelineRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprPipeline'
--
-- * 'rprPubSubTopic'
--
-- * 'rprLabels'
runPipelineRequest
    :: RunPipelineRequest
runPipelineRequest =
  RunPipelineRequest'
    {_rprPipeline = Nothing, _rprPubSubTopic = Nothing, _rprLabels = Nothing}


-- | Required. The description of the pipeline to run.
rprPipeline :: Lens' RunPipelineRequest (Maybe Pipeline)
rprPipeline
  = lens _rprPipeline (\ s a -> s{_rprPipeline = a})

-- | The name of an existing Pub\/Sub topic. The server will publish messages
-- to this topic whenever the status of the operation changes. The Genomics
-- Service Agent account must have publisher permissions to the specified
-- topic or notifications will not be sent.
rprPubSubTopic :: Lens' RunPipelineRequest (Maybe Text)
rprPubSubTopic
  = lens _rprPubSubTopic
      (\ s a -> s{_rprPubSubTopic = a})

-- | User-defined labels to associate with the returned operation. These
-- labels are not propagated to any Google Cloud Platform resources used by
-- the operation, and can be modified at any time. To associate labels with
-- resources created while executing the operation, see the appropriate
-- resource message (for example, \`VirtualMachine\`).
rprLabels :: Lens' RunPipelineRequest (Maybe RunPipelineRequestLabels)
rprLabels
  = lens _rprLabels (\ s a -> s{_rprLabels = a})

instance FromJSON RunPipelineRequest where
        parseJSON
          = withObject "RunPipelineRequest"
              (\ o ->
                 RunPipelineRequest' <$>
                   (o .:? "pipeline") <*> (o .:? "pubSubTopic") <*>
                     (o .:? "labels"))

instance ToJSON RunPipelineRequest where
        toJSON RunPipelineRequest'{..}
          = object
              (catMaybes
                 [("pipeline" .=) <$> _rprPipeline,
                  ("pubSubTopic" .=) <$> _rprPubSubTopic,
                  ("labels" .=) <$> _rprLabels])

-- | Specifies a series of actions to execute, expressed as Docker
-- containers.
--
-- /See:/ 'pipeline' smart constructor.
data Pipeline =
  Pipeline'
    { _pActions :: !(Maybe [Action])
    , _pEnvironment :: !(Maybe PipelineEnvironment)
    , _pResources :: !(Maybe Resources)
    , _pEncryptedEnvironment :: !(Maybe Secret)
    , _pTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Pipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pActions'
--
-- * 'pEnvironment'
--
-- * 'pResources'
--
-- * 'pEncryptedEnvironment'
--
-- * 'pTimeout'
pipeline
    :: Pipeline
pipeline =
  Pipeline'
    { _pActions = Nothing
    , _pEnvironment = Nothing
    , _pResources = Nothing
    , _pEncryptedEnvironment = Nothing
    , _pTimeout = Nothing
    }


-- | The list of actions to execute, in the order they are specified.
pActions :: Lens' Pipeline [Action]
pActions
  = lens _pActions (\ s a -> s{_pActions = a}) .
      _Default
      . _Coerce

-- | The environment to pass into every action. Each action can also specify
-- additional environment variables but cannot delete an entry from this
-- map (though they can overwrite it with a different value).
pEnvironment :: Lens' Pipeline (Maybe PipelineEnvironment)
pEnvironment
  = lens _pEnvironment (\ s a -> s{_pEnvironment = a})

-- | The resources required for execution.
pResources :: Lens' Pipeline (Maybe Resources)
pResources
  = lens _pResources (\ s a -> s{_pResources = a})

-- | The encrypted environment to pass into every action. Each action can
-- also specify its own encrypted environment. The secret must decrypt to a
-- JSON-encoded dictionary where key-value pairs serve as environment
-- variable names and their values. The decoded environment variables can
-- overwrite the values specified by the \`environment\` field.
pEncryptedEnvironment :: Lens' Pipeline (Maybe Secret)
pEncryptedEnvironment
  = lens _pEncryptedEnvironment
      (\ s a -> s{_pEncryptedEnvironment = a})

-- | The maximum amount of time to give the pipeline to complete. This
-- includes the time spent waiting for a worker to be allocated. If the
-- pipeline fails to complete before the timeout, it will be cancelled and
-- the error code will be set to DEADLINE_EXCEEDED. If unspecified, it will
-- default to 7 days.
pTimeout :: Lens' Pipeline (Maybe Scientific)
pTimeout
  = lens _pTimeout (\ s a -> s{_pTimeout = a}) .
      mapping _GDuration

instance FromJSON Pipeline where
        parseJSON
          = withObject "Pipeline"
              (\ o ->
                 Pipeline' <$>
                   (o .:? "actions" .!= mempty) <*>
                     (o .:? "environment")
                     <*> (o .:? "resources")
                     <*> (o .:? "encryptedEnvironment")
                     <*> (o .:? "timeout"))

instance ToJSON Pipeline where
        toJSON Pipeline'{..}
          = object
              (catMaybes
                 [("actions" .=) <$> _pActions,
                  ("environment" .=) <$> _pEnvironment,
                  ("resources" .=) <$> _pResources,
                  ("encryptedEnvironment" .=) <$>
                    _pEncryptedEnvironment,
                  ("timeout" .=) <$> _pTimeout])

-- | Carries information about the pipeline execution that is returned in the
-- long running operation\'s metadata field.
--
-- /See:/ 'metadata' smart constructor.
data Metadata =
  Metadata'
    { _mStartTime :: !(Maybe DateTime')
    , _mEvents :: !(Maybe [Event])
    , _mEndTime :: !(Maybe DateTime')
    , _mPipeline :: !(Maybe Pipeline)
    , _mLabels :: !(Maybe MetadataLabels)
    , _mCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mStartTime'
--
-- * 'mEvents'
--
-- * 'mEndTime'
--
-- * 'mPipeline'
--
-- * 'mLabels'
--
-- * 'mCreateTime'
metadata
    :: Metadata
metadata =
  Metadata'
    { _mStartTime = Nothing
    , _mEvents = Nothing
    , _mEndTime = Nothing
    , _mPipeline = Nothing
    , _mLabels = Nothing
    , _mCreateTime = Nothing
    }


-- | The first time at which resources were allocated to execute the
-- pipeline.
mStartTime :: Lens' Metadata (Maybe UTCTime)
mStartTime
  = lens _mStartTime (\ s a -> s{_mStartTime = a}) .
      mapping _DateTime

-- | The list of events that have happened so far during the execution of
-- this operation.
mEvents :: Lens' Metadata [Event]
mEvents
  = lens _mEvents (\ s a -> s{_mEvents = a}) . _Default
      . _Coerce

-- | The time at which execution was completed and resources were cleaned up.
mEndTime :: Lens' Metadata (Maybe UTCTime)
mEndTime
  = lens _mEndTime (\ s a -> s{_mEndTime = a}) .
      mapping _DateTime

-- | The pipeline this operation represents.
mPipeline :: Lens' Metadata (Maybe Pipeline)
mPipeline
  = lens _mPipeline (\ s a -> s{_mPipeline = a})

-- | The user-defined labels associated with this operation.
mLabels :: Lens' Metadata (Maybe MetadataLabels)
mLabels = lens _mLabels (\ s a -> s{_mLabels = a})

-- | The time at which the operation was created by the API.
mCreateTime :: Lens' Metadata (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata' <$>
                   (o .:? "startTime") <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "endTime")
                     <*> (o .:? "pipeline")
                     <*> (o .:? "labels")
                     <*> (o .:? "createTime"))

instance ToJSON Metadata where
        toJSON Metadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _mStartTime,
                  ("events" .=) <$> _mEvents,
                  ("endTime" .=) <$> _mEndTime,
                  ("pipeline" .=) <$> _mPipeline,
                  ("labels" .=) <$> _mLabels,
                  ("createTime" .=) <$> _mCreateTime])

-- | Feature configuration for the operation.
--
-- /See:/ 'checkInResponseFeatures' smart constructor.
newtype CheckInResponseFeatures =
  CheckInResponseFeatures'
    { _cirfAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckInResponseFeatures' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirfAddtional'
checkInResponseFeatures
    :: HashMap Text JSONValue -- ^ 'cirfAddtional'
    -> CheckInResponseFeatures
checkInResponseFeatures pCirfAddtional_ =
  CheckInResponseFeatures' {_cirfAddtional = _Coerce # pCirfAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
cirfAddtional :: Lens' CheckInResponseFeatures (HashMap Text JSONValue)
cirfAddtional
  = lens _cirfAddtional
      (\ s a -> s{_cirfAddtional = a})
      . _Coerce

instance FromJSON CheckInResponseFeatures where
        parseJSON
          = withObject "CheckInResponseFeatures"
              (\ o ->
                 CheckInResponseFeatures' <$> (parseJSONObject o))

instance ToJSON CheckInResponseFeatures where
        toJSON = toJSON . _cirfAddtional

-- | Carries information about a particular disk mount inside a container.
--
-- /See:/ 'mount' smart constructor.
data Mount =
  Mount'
    { _mPath :: !(Maybe Text)
    , _mDisk :: !(Maybe Text)
    , _mReadOnly :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Mount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mPath'
--
-- * 'mDisk'
--
-- * 'mReadOnly'
mount
    :: Mount
mount = Mount' {_mPath = Nothing, _mDisk = Nothing, _mReadOnly = Nothing}


-- | The path to mount the disk inside the container.
mPath :: Lens' Mount (Maybe Text)
mPath = lens _mPath (\ s a -> s{_mPath = a})

-- | The name of the disk to mount, as specified in the resources section.
mDisk :: Lens' Mount (Maybe Text)
mDisk = lens _mDisk (\ s a -> s{_mDisk = a})

-- | If true, the disk is mounted read-only inside the container.
mReadOnly :: Lens' Mount (Maybe Bool)
mReadOnly
  = lens _mReadOnly (\ s a -> s{_mReadOnly = a})

instance FromJSON Mount where
        parseJSON
          = withObject "Mount"
              (\ o ->
                 Mount' <$>
                   (o .:? "path") <*> (o .:? "disk") <*>
                     (o .:? "readOnly"))

instance ToJSON Mount where
        toJSON Mount'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _mPath, ("disk" .=) <$> _mDisk,
                  ("readOnly" .=) <$> _mReadOnly])

-- | An event generated when the worker starts pulling an image.
--
-- /See:/ 'pullStartedEvent' smart constructor.
newtype PullStartedEvent =
  PullStartedEvent'
    { _pImageURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullStartedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pImageURI'
pullStartedEvent
    :: PullStartedEvent
pullStartedEvent = PullStartedEvent' {_pImageURI = Nothing}


-- | The URI of the image that was pulled.
pImageURI :: Lens' PullStartedEvent (Maybe Text)
pImageURI
  = lens _pImageURI (\ s a -> s{_pImageURI = a})

instance FromJSON PullStartedEvent where
        parseJSON
          = withObject "PullStartedEvent"
              (\ o -> PullStartedEvent' <$> (o .:? "imageUri"))

instance ToJSON PullStartedEvent where
        toJSON PullStartedEvent'{..}
          = object (catMaybes [("imageUri" .=) <$> _pImageURI])

-- | The response to the RunPipeline method, returned in the operation\'s
-- result field on success.
--
-- /See:/ 'runPipelineResponse' smart constructor.
data RunPipelineResponse =
  RunPipelineResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunPipelineResponse' with the minimum fields required to make a request.
--
runPipelineResponse
    :: RunPipelineResponse
runPipelineResponse = RunPipelineResponse'


instance FromJSON RunPipelineResponse where
        parseJSON
          = withObject "RunPipelineResponse"
              (\ o -> pure RunPipelineResponse')

instance ToJSON RunPipelineResponse where
        toJSON = const emptyObject

-- | An OperationMetadata or Metadata object. This will always be returned
-- with the Operation.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | The environment to pass into the container. This environment is merged
-- with values specified in the google.genomics.v2alpha1.Pipeline message,
-- overwriting any duplicate values. In addition to the values passed here,
-- a few other values are automatically injected into the environment.
-- These cannot be hidden or overwritten. \`GOOGLE_PIPELINE_FAILED\` will
-- be set to \"1\" if the pipeline failed because an action has exited with
-- a non-zero status (and did not have the \`IGNORE_EXIT_STATUS\` flag
-- set). This can be used to determine if additional debug or logging
-- actions should execute. \`GOOGLE_LAST_EXIT_STATUS\` will be set to the
-- exit status of the last non-background action that executed. This can be
-- used by workflow engine authors to determine whether an individual
-- action has succeeded or failed.
--
-- /See:/ 'actionEnvironment' smart constructor.
newtype ActionEnvironment =
  ActionEnvironment'
    { _aeAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeAddtional'
actionEnvironment
    :: HashMap Text Text -- ^ 'aeAddtional'
    -> ActionEnvironment
actionEnvironment pAeAddtional_ =
  ActionEnvironment' {_aeAddtional = _Coerce # pAeAddtional_}


aeAddtional :: Lens' ActionEnvironment (HashMap Text Text)
aeAddtional
  = lens _aeAddtional (\ s a -> s{_aeAddtional = a}) .
      _Coerce

instance FromJSON ActionEnvironment where
        parseJSON
          = withObject "ActionEnvironment"
              (\ o -> ActionEnvironment' <$> (parseJSONObject o))

instance ToJSON ActionEnvironment where
        toJSON = toJSON . _aeAddtional

-- | Configuration for an \`NFSMount\` to be attached to the VM.
--
-- /See:/ 'nFSMount' smart constructor.
newtype NFSMount =
  NFSMount'
    { _nfsmTarget :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NFSMount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nfsmTarget'
nFSMount
    :: NFSMount
nFSMount = NFSMount' {_nfsmTarget = Nothing}


-- | A target NFS mount. The target must be specified as \`address:\/mount\".
nfsmTarget :: Lens' NFSMount (Maybe Text)
nfsmTarget
  = lens _nfsmTarget (\ s a -> s{_nfsmTarget = a})

instance FromJSON NFSMount where
        parseJSON
          = withObject "NFSMount"
              (\ o -> NFSMount' <$> (o .:? "target"))

instance ToJSON NFSMount where
        toJSON NFSMount'{..}
          = object (catMaybes [("target" .=) <$> _nfsmTarget])

-- | An Empty object.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional
