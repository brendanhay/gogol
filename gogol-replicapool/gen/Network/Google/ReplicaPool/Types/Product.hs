{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPool.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPool.Types.Product where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types.Sum

-- | The current status of a Replica.
--
-- /See:/ 'replicaStatus' smart constructor.
data ReplicaStatus =
  ReplicaStatus'
    { _rsState :: !(Maybe Text)
    , _rsTemplateVersion :: !(Maybe Text)
    , _rsVMLink :: !(Maybe Text)
    , _rsVMStartTime :: !(Maybe Text)
    , _rsDetails :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicaStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsState'
--
-- * 'rsTemplateVersion'
--
-- * 'rsVMLink'
--
-- * 'rsVMStartTime'
--
-- * 'rsDetails'
replicaStatus
    :: ReplicaStatus
replicaStatus =
  ReplicaStatus'
    { _rsState = Nothing
    , _rsTemplateVersion = Nothing
    , _rsVMLink = Nothing
    , _rsVMStartTime = Nothing
    , _rsDetails = Nothing
    }


-- | [Output Only] The state of the Replica.
rsState :: Lens' ReplicaStatus (Maybe Text)
rsState = lens _rsState (\ s a -> s{_rsState = a})

-- | [Output Only] The template used to build the replica.
rsTemplateVersion :: Lens' ReplicaStatus (Maybe Text)
rsTemplateVersion
  = lens _rsTemplateVersion
      (\ s a -> s{_rsTemplateVersion = a})

-- | [Output Only] Link to the virtual machine that this Replica represents.
rsVMLink :: Lens' ReplicaStatus (Maybe Text)
rsVMLink = lens _rsVMLink (\ s a -> s{_rsVMLink = a})

-- | [Output Only] The time that this Replica got to the RUNNING state, in
-- RFC 3339 format. If the start time is unknown, UNKNOWN is returned.
rsVMStartTime :: Lens' ReplicaStatus (Maybe Text)
rsVMStartTime
  = lens _rsVMStartTime
      (\ s a -> s{_rsVMStartTime = a})

-- | [Output Only] Human-readable details about the current state of the
-- replica
rsDetails :: Lens' ReplicaStatus (Maybe Text)
rsDetails
  = lens _rsDetails (\ s a -> s{_rsDetails = a})

instance FromJSON ReplicaStatus where
        parseJSON
          = withObject "ReplicaStatus"
              (\ o ->
                 ReplicaStatus' <$>
                   (o .:? "state") <*> (o .:? "templateVersion") <*>
                     (o .:? "vmLink")
                     <*> (o .:? "vmStartTime")
                     <*> (o .:? "details"))

instance ToJSON ReplicaStatus where
        toJSON ReplicaStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _rsState,
                  ("templateVersion" .=) <$> _rsTemplateVersion,
                  ("vmLink" .=) <$> _rsVMLink,
                  ("vmStartTime" .=) <$> _rsVMStartTime,
                  ("details" .=) <$> _rsDetails])

-- | Specifies how to attach a disk to a Replica.
--
-- /See:/ 'diskAttachment' smart constructor.
data DiskAttachment =
  DiskAttachment'
    { _daDeviceName :: !(Maybe Text)
    , _daIndex :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daDeviceName'
--
-- * 'daIndex'
diskAttachment
    :: DiskAttachment
diskAttachment = DiskAttachment' {_daDeviceName = Nothing, _daIndex = Nothing}


-- | The device name of this disk.
daDeviceName :: Lens' DiskAttachment (Maybe Text)
daDeviceName
  = lens _daDeviceName (\ s a -> s{_daDeviceName = a})

-- | A zero-based index to assign to this disk, where 0 is reserved for the
-- boot disk. If not specified, this is assigned by the server.
daIndex :: Lens' DiskAttachment (Maybe Word32)
daIndex
  = lens _daIndex (\ s a -> s{_daIndex = a}) .
      mapping _Coerce

instance FromJSON DiskAttachment where
        parseJSON
          = withObject "DiskAttachment"
              (\ o ->
                 DiskAttachment' <$>
                   (o .:? "deviceName") <*> (o .:? "index"))

instance ToJSON DiskAttachment where
        toJSON DiskAttachment'{..}
          = object
              (catMaybes
                 [("deviceName" .=) <$> _daDeviceName,
                  ("index" .=) <$> _daIndex])

--
-- /See:/ 'poolsDeleteRequest' smart constructor.
newtype PoolsDeleteRequest =
  PoolsDeleteRequest'
    { _pdrAbandonInstances :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsDeleteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdrAbandonInstances'
poolsDeleteRequest
    :: PoolsDeleteRequest
poolsDeleteRequest = PoolsDeleteRequest' {_pdrAbandonInstances = Nothing}


-- | If there are instances you would like to keep, you can specify them
-- here. These instances won\'t be deleted, but the associated replica
-- objects will be removed.
pdrAbandonInstances :: Lens' PoolsDeleteRequest [Text]
pdrAbandonInstances
  = lens _pdrAbandonInstances
      (\ s a -> s{_pdrAbandonInstances = a})
      . _Default
      . _Coerce

instance FromJSON PoolsDeleteRequest where
        parseJSON
          = withObject "PoolsDeleteRequest"
              (\ o ->
                 PoolsDeleteRequest' <$>
                   (o .:? "abandonInstances" .!= mempty))

instance ToJSON PoolsDeleteRequest where
        toJSON PoolsDeleteRequest'{..}
          = object
              (catMaybes
                 [("abandonInstances" .=) <$> _pdrAbandonInstances])

--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck =
  HealthCheck'
    { _hcHealthyThreshold :: !(Maybe (Textual Int32))
    , _hcPath :: !(Maybe Text)
    , _hcCheckIntervalSec :: !(Maybe (Textual Int32))
    , _hcName :: !(Maybe Text)
    , _hcHost :: !(Maybe Text)
    , _hcTimeoutSec :: !(Maybe (Textual Int32))
    , _hcDescription :: !(Maybe Text)
    , _hcUnhealthyThreshold :: !(Maybe (Textual Int32))
    , _hcPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcHealthyThreshold'
--
-- * 'hcPath'
--
-- * 'hcCheckIntervalSec'
--
-- * 'hcName'
--
-- * 'hcHost'
--
-- * 'hcTimeoutSec'
--
-- * 'hcDescription'
--
-- * 'hcUnhealthyThreshold'
--
-- * 'hcPort'
healthCheck
    :: HealthCheck
healthCheck =
  HealthCheck'
    { _hcHealthyThreshold = Nothing
    , _hcPath = Nothing
    , _hcCheckIntervalSec = Nothing
    , _hcName = Nothing
    , _hcHost = Nothing
    , _hcTimeoutSec = Nothing
    , _hcDescription = Nothing
    , _hcUnhealthyThreshold = Nothing
    , _hcPort = Nothing
    }


-- | The number of consecutive health check requests that need to succeed
-- before the replica is considered healthy again. The default value is 2.
hcHealthyThreshold :: Lens' HealthCheck (Maybe Int32)
hcHealthyThreshold
  = lens _hcHealthyThreshold
      (\ s a -> s{_hcHealthyThreshold = a})
      . mapping _Coerce

-- | The localhost request path to send this health check, in the format
-- \/path\/to\/use. For example, \/healthcheck.
hcPath :: Lens' HealthCheck (Maybe Text)
hcPath = lens _hcPath (\ s a -> s{_hcPath = a})

-- | How often (in seconds) to make HTTP requests for this healthcheck. The
-- default value is 5 seconds.
hcCheckIntervalSec :: Lens' HealthCheck (Maybe Int32)
hcCheckIntervalSec
  = lens _hcCheckIntervalSec
      (\ s a -> s{_hcCheckIntervalSec = a})
      . mapping _Coerce

-- | The name of this health check.
hcName :: Lens' HealthCheck (Maybe Text)
hcName = lens _hcName (\ s a -> s{_hcName = a})

-- | The value of the host header in the HTTP health check request. If left
-- empty (default value), the localhost IP 127.0.0.1 will be used.
hcHost :: Lens' HealthCheck (Maybe Text)
hcHost = lens _hcHost (\ s a -> s{_hcHost = a})

-- | How long (in seconds) to wait before a timeout failure for this
-- healthcheck. The default value is 5 seconds.
hcTimeoutSec :: Lens' HealthCheck (Maybe Int32)
hcTimeoutSec
  = lens _hcTimeoutSec (\ s a -> s{_hcTimeoutSec = a})
      . mapping _Coerce

-- | The description for this health check.
hcDescription :: Lens' HealthCheck (Maybe Text)
hcDescription
  = lens _hcDescription
      (\ s a -> s{_hcDescription = a})

-- | The number of consecutive health check requests that need to fail in
-- order to consider the replica unhealthy. The default value is 2.
hcUnhealthyThreshold :: Lens' HealthCheck (Maybe Int32)
hcUnhealthyThreshold
  = lens _hcUnhealthyThreshold
      (\ s a -> s{_hcUnhealthyThreshold = a})
      . mapping _Coerce

-- | The TCP port for the health check requests.
hcPort :: Lens' HealthCheck (Maybe Int32)
hcPort
  = lens _hcPort (\ s a -> s{_hcPort = a}) .
      mapping _Coerce

instance FromJSON HealthCheck where
        parseJSON
          = withObject "HealthCheck"
              (\ o ->
                 HealthCheck' <$>
                   (o .:? "healthyThreshold") <*> (o .:? "path") <*>
                     (o .:? "checkIntervalSec")
                     <*> (o .:? "name")
                     <*> (o .:? "host")
                     <*> (o .:? "timeoutSec")
                     <*> (o .:? "description")
                     <*> (o .:? "unhealthyThreshold")
                     <*> (o .:? "port"))

instance ToJSON HealthCheck where
        toJSON HealthCheck'{..}
          = object
              (catMaybes
                 [("healthyThreshold" .=) <$> _hcHealthyThreshold,
                  ("path" .=) <$> _hcPath,
                  ("checkIntervalSec" .=) <$> _hcCheckIntervalSec,
                  ("name" .=) <$> _hcName, ("host" .=) <$> _hcHost,
                  ("timeoutSec" .=) <$> _hcTimeoutSec,
                  ("description" .=) <$> _hcDescription,
                  ("unhealthyThreshold" .=) <$> _hcUnhealthyThreshold,
                  ("port" .=) <$> _hcPort])

-- | A Compute Engine Instance tag, identical to the tags on the
-- corresponding Compute Engine Instance resource.
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tFingerPrint :: !(Maybe Text)
    , _tItems :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tFingerPrint'
--
-- * 'tItems'
tag
    :: Tag
tag = Tag' {_tFingerPrint = Nothing, _tItems = Nothing}


-- | The fingerprint of the tag. Required for updating the list of tags.
tFingerPrint :: Lens' Tag (Maybe Text)
tFingerPrint
  = lens _tFingerPrint (\ s a -> s{_tFingerPrint = a})

-- | Items contained in this tag.
tItems :: Lens' Tag [Text]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ o ->
                 Tag' <$>
                   (o .:? "fingerPrint") <*> (o .:? "items" .!= mempty))

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("fingerPrint" .=) <$> _tFingerPrint,
                  ("items" .=) <$> _tItems])

-- | Initialization parameters for creating a new disk.
--
-- /See:/ 'newDiskInitializeParams' smart constructor.
data NewDiskInitializeParams =
  NewDiskInitializeParams'
    { _ndipSourceImage :: !(Maybe Text)
    , _ndipDiskSizeGb :: !(Maybe (Textual Int64))
    , _ndipDiskType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NewDiskInitializeParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndipSourceImage'
--
-- * 'ndipDiskSizeGb'
--
-- * 'ndipDiskType'
newDiskInitializeParams
    :: NewDiskInitializeParams
newDiskInitializeParams =
  NewDiskInitializeParams'
    { _ndipSourceImage = Nothing
    , _ndipDiskSizeGb = Nothing
    , _ndipDiskType = Nothing
    }


-- | The name or fully-qualified URL of a source image to use to create this
-- disk. If you provide a name of the source image, Replica Pool will look
-- for an image with that name in your project. If you are specifying an
-- image provided by Compute Engine, you will need to provide the full URL
-- with the correct project, such as:
-- http:\/\/www.googleapis.com\/compute\/v1\/projects\/debian-cloud\/
-- global\/images\/debian-wheezy-7-vYYYYMMDD
ndipSourceImage :: Lens' NewDiskInitializeParams (Maybe Text)
ndipSourceImage
  = lens _ndipSourceImage
      (\ s a -> s{_ndipSourceImage = a})

-- | The size of the created disk in gigabytes.
ndipDiskSizeGb :: Lens' NewDiskInitializeParams (Maybe Int64)
ndipDiskSizeGb
  = lens _ndipDiskSizeGb
      (\ s a -> s{_ndipDiskSizeGb = a})
      . mapping _Coerce

-- | Name of the disk type resource describing which disk type to use to
-- create the disk. For example \'pd-ssd\' or \'pd-standard\'. Default is
-- \'pd-standard\'
ndipDiskType :: Lens' NewDiskInitializeParams (Maybe Text)
ndipDiskType
  = lens _ndipDiskType (\ s a -> s{_ndipDiskType = a})

instance FromJSON NewDiskInitializeParams where
        parseJSON
          = withObject "NewDiskInitializeParams"
              (\ o ->
                 NewDiskInitializeParams' <$>
                   (o .:? "sourceImage") <*> (o .:? "diskSizeGb") <*>
                     (o .:? "diskType"))

instance ToJSON NewDiskInitializeParams where
        toJSON NewDiskInitializeParams'{..}
          = object
              (catMaybes
                 [("sourceImage" .=) <$> _ndipSourceImage,
                  ("diskSizeGb" .=) <$> _ndipDiskSizeGb,
                  ("diskType" .=) <$> _ndipDiskType])

-- | A Compute Engine metadata item, defined as a key:value pair. Identical
-- to the metadata on the corresponding Compute Engine resource.
--
-- /See:/ 'metadataItem' smart constructor.
data MetadataItem =
  MetadataItem'
    { _miValue :: !(Maybe Text)
    , _miKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetadataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miValue'
--
-- * 'miKey'
metadataItem
    :: MetadataItem
metadataItem = MetadataItem' {_miValue = Nothing, _miKey = Nothing}


-- | A metadata value.
miValue :: Lens' MetadataItem (Maybe Text)
miValue = lens _miValue (\ s a -> s{_miValue = a})

-- | A metadata key.
miKey :: Lens' MetadataItem (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

instance FromJSON MetadataItem where
        parseJSON
          = withObject "MetadataItem"
              (\ o ->
                 MetadataItem' <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON MetadataItem where
        toJSON MetadataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _miValue, ("key" .=) <$> _miKey])

-- | An individual Replica within a Pool. Replicas are automatically created
-- by the replica pool, using the template provided by the user. You cannot
-- directly create replicas.
--
-- /See:/ 'replica' smart constructor.
data Replica =
  Replica'
    { _rStatus :: !(Maybe ReplicaStatus)
    , _rSelfLink :: !(Maybe Text)
    , _rName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Replica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rSelfLink'
--
-- * 'rName'
replica
    :: Replica
replica = Replica' {_rStatus = Nothing, _rSelfLink = Nothing, _rName = Nothing}


-- | [Output Only] Last known status of the Replica.
rStatus :: Lens' Replica (Maybe ReplicaStatus)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | [Output Only] The self-link of the Replica.
rSelfLink :: Lens' Replica (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | [Output Only] The name of the Replica object.
rName :: Lens' Replica (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

instance FromJSON Replica where
        parseJSON
          = withObject "Replica"
              (\ o ->
                 Replica' <$>
                   (o .:? "status") <*> (o .:? "selfLink") <*>
                     (o .:? "name"))

instance ToJSON Replica where
        toJSON Replica'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rStatus,
                  ("selfLink" .=) <$> _rSelfLink,
                  ("name" .=) <$> _rName])

-- | A Compute Engine NetworkInterface resource. Identical to the
-- NetworkInterface on the corresponding Compute Engine resource.
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface =
  NetworkInterface'
    { _niNetwork :: !(Maybe Text)
    , _niNetworkIP :: !(Maybe Text)
    , _niAccessConfigs :: !(Maybe [AccessConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niNetwork'
--
-- * 'niNetworkIP'
--
-- * 'niAccessConfigs'
networkInterface
    :: NetworkInterface
networkInterface =
  NetworkInterface'
    {_niNetwork = Nothing, _niNetworkIP = Nothing, _niAccessConfigs = Nothing}


-- | Name the Network resource to which this interface applies.
niNetwork :: Lens' NetworkInterface (Maybe Text)
niNetwork
  = lens _niNetwork (\ s a -> s{_niNetwork = a})

-- | An optional IPV4 internal network address to assign to the instance for
-- this network interface.
niNetworkIP :: Lens' NetworkInterface (Maybe Text)
niNetworkIP
  = lens _niNetworkIP (\ s a -> s{_niNetworkIP = a})

-- | An array of configurations for this interface. This specifies how this
-- interface is configured to interact with other network services.
niAccessConfigs :: Lens' NetworkInterface [AccessConfig]
niAccessConfigs
  = lens _niAccessConfigs
      (\ s a -> s{_niAccessConfigs = a})
      . _Default
      . _Coerce

instance FromJSON NetworkInterface where
        parseJSON
          = withObject "NetworkInterface"
              (\ o ->
                 NetworkInterface' <$>
                   (o .:? "network") <*> (o .:? "networkIp") <*>
                     (o .:? "accessConfigs" .!= mempty))

instance ToJSON NetworkInterface where
        toJSON NetworkInterface'{..}
          = object
              (catMaybes
                 [("network" .=) <$> _niNetwork,
                  ("networkIp" .=) <$> _niNetworkIP,
                  ("accessConfigs" .=) <$> _niAccessConfigs])

-- | A pre-existing persistent disk that will be attached to every Replica in
-- the Pool in READ_ONLY mode.
--
-- /See:/ 'existingDisk' smart constructor.
data ExistingDisk =
  ExistingDisk'
    { _edAttachment :: !(Maybe DiskAttachment)
    , _edSource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExistingDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edAttachment'
--
-- * 'edSource'
existingDisk
    :: ExistingDisk
existingDisk = ExistingDisk' {_edAttachment = Nothing, _edSource = Nothing}


-- | How the disk will be attached to the Replica.
edAttachment :: Lens' ExistingDisk (Maybe DiskAttachment)
edAttachment
  = lens _edAttachment (\ s a -> s{_edAttachment = a})

-- | The name of the Persistent Disk resource. The Persistent Disk resource
-- must be in the same zone as the Pool.
edSource :: Lens' ExistingDisk (Maybe Text)
edSource = lens _edSource (\ s a -> s{_edSource = a})

instance FromJSON ExistingDisk where
        parseJSON
          = withObject "ExistingDisk"
              (\ o ->
                 ExistingDisk' <$>
                   (o .:? "attachment") <*> (o .:? "source"))

instance ToJSON ExistingDisk where
        toJSON ExistingDisk'{..}
          = object
              (catMaybes
                 [("attachment" .=) <$> _edAttachment,
                  ("source" .=) <$> _edSource])

-- | An action that gets executed during initialization of the replicas.
--
-- /See:/ 'action' smart constructor.
data Action =
  Action'
    { _aCommands :: !(Maybe [Text])
    , _aTimeoutMilliSeconds :: !(Maybe (Textual Int32))
    , _aEnvVariables :: !(Maybe [EnvVariable])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCommands'
--
-- * 'aTimeoutMilliSeconds'
--
-- * 'aEnvVariables'
action
    :: Action
action =
  Action'
    { _aCommands = Nothing
    , _aTimeoutMilliSeconds = Nothing
    , _aEnvVariables = Nothing
    }


-- | A list of commands to run, one per line. If any command fails, the whole
-- action is considered a failure and no further actions are run. This also
-- marks the virtual machine or replica as a failure.
aCommands :: Lens' Action [Text]
aCommands
  = lens _aCommands (\ s a -> s{_aCommands = a}) .
      _Default
      . _Coerce

-- | If an action\'s commands on a particular replica do not finish in the
-- specified timeoutMilliSeconds, the replica is considered to be in a
-- FAILING state. No efforts are made to stop any processes that were
-- spawned or created as the result of running the action\'s commands. The
-- default is the max allowed value, 1 hour (i.e. 3600000 milliseconds).
aTimeoutMilliSeconds :: Lens' Action (Maybe Int32)
aTimeoutMilliSeconds
  = lens _aTimeoutMilliSeconds
      (\ s a -> s{_aTimeoutMilliSeconds = a})
      . mapping _Coerce

-- | A list of environment variables to use for the commands in this action.
aEnvVariables :: Lens' Action [EnvVariable]
aEnvVariables
  = lens _aEnvVariables
      (\ s a -> s{_aEnvVariables = a})
      . _Default
      . _Coerce

instance FromJSON Action where
        parseJSON
          = withObject "Action"
              (\ o ->
                 Action' <$>
                   (o .:? "commands" .!= mempty) <*>
                     (o .:? "timeoutMilliSeconds")
                     <*> (o .:? "envVariables" .!= mempty))

instance ToJSON Action where
        toJSON Action'{..}
          = object
              (catMaybes
                 [("commands" .=) <$> _aCommands,
                  ("timeoutMilliSeconds" .=) <$> _aTimeoutMilliSeconds,
                  ("envVariables" .=) <$> _aEnvVariables])

--
-- /See:/ 'pool' smart constructor.
data Pool =
  Pool'
    { _pResourceViews :: !(Maybe [Text])
    , _pNumReplicas :: !(Maybe (Textual Int32))
    , _pTargetPool :: !(Maybe Text)
    , _pAutoRestart :: !(Maybe Bool)
    , _pBaseInstanceName :: !(Maybe Text)
    , _pInitialNumReplicas :: !(Maybe (Textual Int32))
    , _pCurrentNumReplicas :: !(Maybe (Textual Int32))
    , _pSelfLink :: !(Maybe Text)
    , _pName :: !(Maybe Text)
    , _pLabels :: !(Maybe [Label])
    , _pType :: !(Maybe Text)
    , _pTemplate :: !(Maybe Template)
    , _pTargetPools :: !(Maybe [Text])
    , _pDescription :: !(Maybe Text)
    , _pHealthChecks :: !(Maybe [HealthCheck])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Pool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pResourceViews'
--
-- * 'pNumReplicas'
--
-- * 'pTargetPool'
--
-- * 'pAutoRestart'
--
-- * 'pBaseInstanceName'
--
-- * 'pInitialNumReplicas'
--
-- * 'pCurrentNumReplicas'
--
-- * 'pSelfLink'
--
-- * 'pName'
--
-- * 'pLabels'
--
-- * 'pType'
--
-- * 'pTemplate'
--
-- * 'pTargetPools'
--
-- * 'pDescription'
--
-- * 'pHealthChecks'
pool
    :: Pool
pool =
  Pool'
    { _pResourceViews = Nothing
    , _pNumReplicas = Nothing
    , _pTargetPool = Nothing
    , _pAutoRestart = Nothing
    , _pBaseInstanceName = Nothing
    , _pInitialNumReplicas = Nothing
    , _pCurrentNumReplicas = Nothing
    , _pSelfLink = Nothing
    , _pName = Nothing
    , _pLabels = Nothing
    , _pType = Nothing
    , _pTemplate = Nothing
    , _pTargetPools = Nothing
    , _pDescription = Nothing
    , _pHealthChecks = Nothing
    }


-- | The list of resource views that should be updated with all the replicas
-- that are managed by this pool.
pResourceViews :: Lens' Pool [Text]
pResourceViews
  = lens _pResourceViews
      (\ s a -> s{_pResourceViews = a})
      . _Default
      . _Coerce

-- | Deprecated! Use initial_num_replicas instead.
pNumReplicas :: Lens' Pool (Maybe Int32)
pNumReplicas
  = lens _pNumReplicas (\ s a -> s{_pNumReplicas = a})
      . mapping _Coerce

-- | Deprecated, please use target_pools instead.
pTargetPool :: Lens' Pool (Maybe Text)
pTargetPool
  = lens _pTargetPool (\ s a -> s{_pTargetPool = a})

-- | Whether replicas in this pool should be restarted if they experience a
-- failure. The default value is true.
pAutoRestart :: Lens' Pool (Maybe Bool)
pAutoRestart
  = lens _pAutoRestart (\ s a -> s{_pAutoRestart = a})

-- | The base instance name to use for the replicas in this pool. This must
-- match the regex [a-z]([-a-z0-9]*[a-z0-9])?. If specified, the instances
-- in this replica pool will be named in the format -. The postfix will be
-- a four character alphanumeric identifier generated by the service. If
-- this is not specified by the user, a random base instance name is
-- generated by the service.
pBaseInstanceName :: Lens' Pool (Maybe Text)
pBaseInstanceName
  = lens _pBaseInstanceName
      (\ s a -> s{_pBaseInstanceName = a})

-- | The initial number of replicas this pool should have. You must provide a
-- value greater than or equal to 0.
pInitialNumReplicas :: Lens' Pool (Maybe Int32)
pInitialNumReplicas
  = lens _pInitialNumReplicas
      (\ s a -> s{_pInitialNumReplicas = a})
      . mapping _Coerce

-- | [Output Only] The current number of replicas in the pool.
pCurrentNumReplicas :: Lens' Pool (Maybe Int32)
pCurrentNumReplicas
  = lens _pCurrentNumReplicas
      (\ s a -> s{_pCurrentNumReplicas = a})
      . mapping _Coerce

-- | [Output Only] A self-link to the replica pool.
pSelfLink :: Lens' Pool (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | The name of the replica pool. Must follow the regex
-- [a-z]([-a-z0-9]*[a-z0-9])? and be 1-28 characters long.
pName :: Lens' Pool (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | A list of labels to attach to this replica pool and all created virtual
-- machines in this replica pool.
pLabels :: Lens' Pool [Label]
pLabels
  = lens _pLabels (\ s a -> s{_pLabels = a}) . _Default
      . _Coerce

-- | Deprecated! Do not set.
pType :: Lens' Pool (Maybe Text)
pType = lens _pType (\ s a -> s{_pType = a})

-- | The template to use when creating replicas in this pool. This template
-- is used during initial instance creation of the pool, when growing the
-- pool in size, or when a replica restarts.
pTemplate :: Lens' Pool (Maybe Template)
pTemplate
  = lens _pTemplate (\ s a -> s{_pTemplate = a})

-- | A list of target pools to update with the replicas that are managed by
-- this pool. If specified, the replicas in this replica pool will be added
-- to the specified target pools for load balancing purposes. The replica
-- pool must live in the same region as the specified target pools. These
-- values must be the target pool resource names, and not fully qualified
-- URLs.
pTargetPools :: Lens' Pool [Text]
pTargetPools
  = lens _pTargetPools (\ s a -> s{_pTargetPools = a})
      . _Default
      . _Coerce

-- | An optional description of the replica pool.
pDescription :: Lens' Pool (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

-- | Deprecated. Please use template[].healthChecks instead.
pHealthChecks :: Lens' Pool [HealthCheck]
pHealthChecks
  = lens _pHealthChecks
      (\ s a -> s{_pHealthChecks = a})
      . _Default
      . _Coerce

instance FromJSON Pool where
        parseJSON
          = withObject "Pool"
              (\ o ->
                 Pool' <$>
                   (o .:? "resourceViews" .!= mempty) <*>
                     (o .:? "numReplicas")
                     <*> (o .:? "targetPool")
                     <*> (o .:? "autoRestart")
                     <*> (o .:? "baseInstanceName")
                     <*> (o .:? "initialNumReplicas")
                     <*> (o .:? "currentNumReplicas")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "template")
                     <*> (o .:? "targetPools" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "healthChecks" .!= mempty))

instance ToJSON Pool where
        toJSON Pool'{..}
          = object
              (catMaybes
                 [("resourceViews" .=) <$> _pResourceViews,
                  ("numReplicas" .=) <$> _pNumReplicas,
                  ("targetPool" .=) <$> _pTargetPool,
                  ("autoRestart" .=) <$> _pAutoRestart,
                  ("baseInstanceName" .=) <$> _pBaseInstanceName,
                  ("initialNumReplicas" .=) <$> _pInitialNumReplicas,
                  ("currentNumReplicas" .=) <$> _pCurrentNumReplicas,
                  ("selfLink" .=) <$> _pSelfLink,
                  ("name" .=) <$> _pName, ("labels" .=) <$> _pLabels,
                  ("type" .=) <$> _pType,
                  ("template" .=) <$> _pTemplate,
                  ("targetPools" .=) <$> _pTargetPools,
                  ("description" .=) <$> _pDescription,
                  ("healthChecks" .=) <$> _pHealthChecks])

-- | A Compute Engine service account, identical to the Compute Engine
-- resource.
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


-- | The service account email address, for example:
-- 123845678986\'project.gserviceaccount.com
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | The list of OAuth2 scopes to obtain for the service account, for
-- example: https:\/\/www.googleapis.com\/auth\/devstorage.full_control
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

-- | Parameters for creating a Compute Engine Instance resource. Most fields
-- are identical to the corresponding Compute Engine resource.
--
-- /See:/ 'vMParams' smart constructor.
data VMParams =
  VMParams'
    { _vmpServiceAccounts :: !(Maybe [ServiceAccount])
    , _vmpNetworkInterfaces :: !(Maybe [NetworkInterface])
    , _vmpBaseInstanceName :: !(Maybe Text)
    , _vmpOnHostMaintenance :: !(Maybe Text)
    , _vmpMachineType :: !(Maybe Text)
    , _vmpMetadata :: !(Maybe Metadata)
    , _vmpDisksToAttach :: !(Maybe [ExistingDisk])
    , _vmpCanIPForward :: !(Maybe Bool)
    , _vmpDescription :: !(Maybe Text)
    , _vmpDisksToCreate :: !(Maybe [NewDisk])
    , _vmpTags :: !(Maybe Tag)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VMParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmpServiceAccounts'
--
-- * 'vmpNetworkInterfaces'
--
-- * 'vmpBaseInstanceName'
--
-- * 'vmpOnHostMaintenance'
--
-- * 'vmpMachineType'
--
-- * 'vmpMetadata'
--
-- * 'vmpDisksToAttach'
--
-- * 'vmpCanIPForward'
--
-- * 'vmpDescription'
--
-- * 'vmpDisksToCreate'
--
-- * 'vmpTags'
vMParams
    :: VMParams
vMParams =
  VMParams'
    { _vmpServiceAccounts = Nothing
    , _vmpNetworkInterfaces = Nothing
    , _vmpBaseInstanceName = Nothing
    , _vmpOnHostMaintenance = Nothing
    , _vmpMachineType = Nothing
    , _vmpMetadata = Nothing
    , _vmpDisksToAttach = Nothing
    , _vmpCanIPForward = Nothing
    , _vmpDescription = Nothing
    , _vmpDisksToCreate = Nothing
    , _vmpTags = Nothing
    }


-- | A list of Service Accounts to enable for this instance.
vmpServiceAccounts :: Lens' VMParams [ServiceAccount]
vmpServiceAccounts
  = lens _vmpServiceAccounts
      (\ s a -> s{_vmpServiceAccounts = a})
      . _Default
      . _Coerce

-- | A list of network interfaces for the instance. Currently only one
-- interface is supported by Google Compute Engine, ONE_TO_ONE_NAT.
vmpNetworkInterfaces :: Lens' VMParams [NetworkInterface]
vmpNetworkInterfaces
  = lens _vmpNetworkInterfaces
      (\ s a -> s{_vmpNetworkInterfaces = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use baseInstanceName instead.
vmpBaseInstanceName :: Lens' VMParams (Maybe Text)
vmpBaseInstanceName
  = lens _vmpBaseInstanceName
      (\ s a -> s{_vmpBaseInstanceName = a})

vmpOnHostMaintenance :: Lens' VMParams (Maybe Text)
vmpOnHostMaintenance
  = lens _vmpOnHostMaintenance
      (\ s a -> s{_vmpOnHostMaintenance = a})

-- | The machine type for this instance. The resource name (e.g.
-- n1-standard-1).
vmpMachineType :: Lens' VMParams (Maybe Text)
vmpMachineType
  = lens _vmpMachineType
      (\ s a -> s{_vmpMachineType = a})

-- | The metadata key\/value pairs assigned to this instance.
vmpMetadata :: Lens' VMParams (Maybe Metadata)
vmpMetadata
  = lens _vmpMetadata (\ s a -> s{_vmpMetadata = a})

-- | A list of existing Persistent Disk resources to attach to each replica
-- in the pool. Each disk will be attached in read-only mode to every
-- replica.
vmpDisksToAttach :: Lens' VMParams [ExistingDisk]
vmpDisksToAttach
  = lens _vmpDisksToAttach
      (\ s a -> s{_vmpDisksToAttach = a})
      . _Default
      . _Coerce

-- | Enables IP Forwarding, which allows this instance to receive packets
-- destined for a different IP address, and send packets with a different
-- source IP. See IP Forwarding for more information.
vmpCanIPForward :: Lens' VMParams (Maybe Bool)
vmpCanIPForward
  = lens _vmpCanIPForward
      (\ s a -> s{_vmpCanIPForward = a})

-- | An optional textual description of the instance.
vmpDescription :: Lens' VMParams (Maybe Text)
vmpDescription
  = lens _vmpDescription
      (\ s a -> s{_vmpDescription = a})

-- | A list of Disk resources to create and attach to each Replica in the
-- Pool. Currently, you can only define one disk and it must be a root
-- persistent disk. Note that Replica Pool will create a root persistent
-- disk for each replica.
vmpDisksToCreate :: Lens' VMParams [NewDisk]
vmpDisksToCreate
  = lens _vmpDisksToCreate
      (\ s a -> s{_vmpDisksToCreate = a})
      . _Default
      . _Coerce

-- | A list of tags to apply to the Google Compute Engine instance to
-- identify resources.
vmpTags :: Lens' VMParams (Maybe Tag)
vmpTags = lens _vmpTags (\ s a -> s{_vmpTags = a})

instance FromJSON VMParams where
        parseJSON
          = withObject "VMParams"
              (\ o ->
                 VMParams' <$>
                   (o .:? "serviceAccounts" .!= mempty) <*>
                     (o .:? "networkInterfaces" .!= mempty)
                     <*> (o .:? "baseInstanceName")
                     <*> (o .:? "onHostMaintenance")
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "disksToAttach" .!= mempty)
                     <*> (o .:? "canIpForward")
                     <*> (o .:? "description")
                     <*> (o .:? "disksToCreate" .!= mempty)
                     <*> (o .:? "tags"))

instance ToJSON VMParams where
        toJSON VMParams'{..}
          = object
              (catMaybes
                 [("serviceAccounts" .=) <$> _vmpServiceAccounts,
                  ("networkInterfaces" .=) <$> _vmpNetworkInterfaces,
                  ("baseInstanceName" .=) <$> _vmpBaseInstanceName,
                  ("onHostMaintenance" .=) <$> _vmpOnHostMaintenance,
                  ("machineType" .=) <$> _vmpMachineType,
                  ("metadata" .=) <$> _vmpMetadata,
                  ("disksToAttach" .=) <$> _vmpDisksToAttach,
                  ("canIpForward" .=) <$> _vmpCanIPForward,
                  ("description" .=) <$> _vmpDescription,
                  ("disksToCreate" .=) <$> _vmpDisksToCreate,
                  ("tags" .=) <$> _vmpTags])

--
-- /See:/ 'replicasListResponse' smart constructor.
data ReplicasListResponse =
  ReplicasListResponse'
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrResources :: !(Maybe [Replica])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicasListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrNextPageToken'
--
-- * 'rlrResources'
replicasListResponse
    :: ReplicasListResponse
replicasListResponse =
  ReplicasListResponse' {_rlrNextPageToken = Nothing, _rlrResources = Nothing}


rlrNextPageToken :: Lens' ReplicasListResponse (Maybe Text)
rlrNextPageToken
  = lens _rlrNextPageToken
      (\ s a -> s{_rlrNextPageToken = a})

rlrResources :: Lens' ReplicasListResponse [Replica]
rlrResources
  = lens _rlrResources (\ s a -> s{_rlrResources = a})
      . _Default
      . _Coerce

instance FromJSON ReplicasListResponse where
        parseJSON
          = withObject "ReplicasListResponse"
              (\ o ->
                 ReplicasListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ReplicasListResponse where
        toJSON ReplicasListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlrNextPageToken,
                  ("resources" .=) <$> _rlrResources])

-- | A Compute Engine metadata entry. Identical to the metadata on the
-- corresponding Compute Engine resource.
--
-- /See:/ 'metadata' smart constructor.
data Metadata =
  Metadata'
    { _mFingerPrint :: !(Maybe Text)
    , _mItems :: !(Maybe [MetadataItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mFingerPrint'
--
-- * 'mItems'
metadata
    :: Metadata
metadata = Metadata' {_mFingerPrint = Nothing, _mItems = Nothing}


-- | The fingerprint of the metadata. Required for updating the metadata
-- entries for this instance.
mFingerPrint :: Lens' Metadata (Maybe Text)
mFingerPrint
  = lens _mFingerPrint (\ s a -> s{_mFingerPrint = a})

-- | A list of metadata items.
mItems :: Lens' Metadata [MetadataItem]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata' <$>
                   (o .:? "fingerPrint") <*> (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata'{..}
          = object
              (catMaybes
                 [("fingerPrint" .=) <$> _mFingerPrint,
                  ("items" .=) <$> _mItems])

-- | The template used for creating replicas in the pool.
--
-- /See:/ 'template' smart constructor.
data Template =
  Template'
    { _tAction :: !(Maybe Action)
    , _tVMParams :: !(Maybe VMParams)
    , _tVersion :: !(Maybe Text)
    , _tHealthChecks :: !(Maybe [HealthCheck])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Template' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tAction'
--
-- * 'tVMParams'
--
-- * 'tVersion'
--
-- * 'tHealthChecks'
template
    :: Template
template =
  Template'
    { _tAction = Nothing
    , _tVMParams = Nothing
    , _tVersion = Nothing
    , _tHealthChecks = Nothing
    }


-- | An action to run during initialization of your replicas. An action is
-- run as shell commands which are executed one after the other in the same
-- bash shell, so any state established by one command is inherited by
-- later commands.
tAction :: Lens' Template (Maybe Action)
tAction = lens _tAction (\ s a -> s{_tAction = a})

-- | The virtual machine parameters to use for creating replicas. You can
-- define settings such as the machine type and the image of replicas in
-- this pool. This is required if replica type is SMART_VM.
tVMParams :: Lens' Template (Maybe VMParams)
tVMParams
  = lens _tVMParams (\ s a -> s{_tVMParams = a})

-- | A free-form string describing the version of this template. You can
-- provide any versioning string you would like. For example, version1 or
-- template-v1.
tVersion :: Lens' Template (Maybe Text)
tVersion = lens _tVersion (\ s a -> s{_tVersion = a})

-- | A list of HTTP Health Checks to configure for this replica pool and all
-- virtual machines in this replica pool.
tHealthChecks :: Lens' Template [HealthCheck]
tHealthChecks
  = lens _tHealthChecks
      (\ s a -> s{_tHealthChecks = a})
      . _Default
      . _Coerce

instance FromJSON Template where
        parseJSON
          = withObject "Template"
              (\ o ->
                 Template' <$>
                   (o .:? "action") <*> (o .:? "vmParams") <*>
                     (o .:? "version")
                     <*> (o .:? "healthChecks" .!= mempty))

instance ToJSON Template where
        toJSON Template'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _tAction,
                  ("vmParams" .=) <$> _tVMParams,
                  ("version" .=) <$> _tVersion,
                  ("healthChecks" .=) <$> _tHealthChecks])

-- | An environment variable to set for an action.
--
-- /See:/ 'envVariable' smart constructor.
data EnvVariable =
  EnvVariable'
    { _evValue :: !(Maybe Text)
    , _evName :: !(Maybe Text)
    , _evHidden :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evValue'
--
-- * 'evName'
--
-- * 'evHidden'
envVariable
    :: EnvVariable
envVariable =
  EnvVariable' {_evValue = Nothing, _evName = Nothing, _evHidden = Nothing}


-- | The value of the variable.
evValue :: Lens' EnvVariable (Maybe Text)
evValue = lens _evValue (\ s a -> s{_evValue = a})

-- | The name of the environment variable.
evName :: Lens' EnvVariable (Maybe Text)
evName = lens _evName (\ s a -> s{_evName = a})

-- | Deprecated, do not use.
evHidden :: Lens' EnvVariable (Maybe Bool)
evHidden = lens _evHidden (\ s a -> s{_evHidden = a})

instance FromJSON EnvVariable where
        parseJSON
          = withObject "EnvVariable"
              (\ o ->
                 EnvVariable' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "hidden"))

instance ToJSON EnvVariable where
        toJSON EnvVariable'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _evValue, ("name" .=) <$> _evName,
                  ("hidden" .=) <$> _evHidden])

--
-- /See:/ 'replicasDeleteRequest' smart constructor.
newtype ReplicasDeleteRequest =
  ReplicasDeleteRequest'
    { _rdrAbandonInstance :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicasDeleteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrAbandonInstance'
replicasDeleteRequest
    :: ReplicasDeleteRequest
replicasDeleteRequest = ReplicasDeleteRequest' {_rdrAbandonInstance = Nothing}


-- | Whether the instance resource represented by this replica should be
-- deleted or abandoned. If abandoned, the replica will be deleted but the
-- virtual machine instance will remain. By default, this is set to false
-- and the instance will be deleted along with the replica.
rdrAbandonInstance :: Lens' ReplicasDeleteRequest (Maybe Bool)
rdrAbandonInstance
  = lens _rdrAbandonInstance
      (\ s a -> s{_rdrAbandonInstance = a})

instance FromJSON ReplicasDeleteRequest where
        parseJSON
          = withObject "ReplicasDeleteRequest"
              (\ o ->
                 ReplicasDeleteRequest' <$> (o .:? "abandonInstance"))

instance ToJSON ReplicasDeleteRequest where
        toJSON ReplicasDeleteRequest'{..}
          = object
              (catMaybes
                 [("abandonInstance" .=) <$> _rdrAbandonInstance])

-- | A Compute Engine network accessConfig. Identical to the accessConfig on
-- corresponding Compute Engine resource.
--
-- /See:/ 'accessConfig' smart constructor.
data AccessConfig =
  AccessConfig'
    { _acName :: !(Maybe Text)
    , _acNATIP :: !(Maybe Text)
    , _acType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acName'
--
-- * 'acNATIP'
--
-- * 'acType'
accessConfig
    :: AccessConfig
accessConfig =
  AccessConfig' {_acName = Nothing, _acNATIP = Nothing, _acType = Nothing}


-- | Name of this access configuration.
acName :: Lens' AccessConfig (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | An external IP address associated with this instance.
acNATIP :: Lens' AccessConfig (Maybe Text)
acNATIP = lens _acNATIP (\ s a -> s{_acNATIP = a})

-- | Type of this access configuration file. Currently only ONE_TO_ONE_NAT is
-- supported.
acType :: Lens' AccessConfig (Maybe Text)
acType = lens _acType (\ s a -> s{_acType = a})

instance FromJSON AccessConfig where
        parseJSON
          = withObject "AccessConfig"
              (\ o ->
                 AccessConfig' <$>
                   (o .:? "name") <*> (o .:? "natIp") <*>
                     (o .:? "type"))

instance ToJSON AccessConfig where
        toJSON AccessConfig'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _acName, ("natIp" .=) <$> _acNATIP,
                  ("type" .=) <$> _acType])

-- | A label to apply to this replica pool.
--
-- /See:/ 'label' smart constructor.
data Label =
  Label'
    { _lValue :: !(Maybe Text)
    , _lKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Label' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lValue'
--
-- * 'lKey'
label
    :: Label
label = Label' {_lValue = Nothing, _lKey = Nothing}


-- | The value of this label.
lValue :: Lens' Label (Maybe Text)
lValue = lens _lValue (\ s a -> s{_lValue = a})

-- | The key for this label.
lKey :: Lens' Label (Maybe Text)
lKey = lens _lKey (\ s a -> s{_lKey = a})

instance FromJSON Label where
        parseJSON
          = withObject "Label"
              (\ o -> Label' <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON Label where
        toJSON Label'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _lValue, ("key" .=) <$> _lKey])

--
-- /See:/ 'poolsListResponse' smart constructor.
data PoolsListResponse =
  PoolsListResponse'
    { _plrNextPageToken :: !(Maybe Text)
    , _plrResources :: !(Maybe [Pool])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrResources'
poolsListResponse
    :: PoolsListResponse
poolsListResponse =
  PoolsListResponse' {_plrNextPageToken = Nothing, _plrResources = Nothing}


plrNextPageToken :: Lens' PoolsListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

plrResources :: Lens' PoolsListResponse [Pool]
plrResources
  = lens _plrResources (\ s a -> s{_plrResources = a})
      . _Default
      . _Coerce

instance FromJSON PoolsListResponse where
        parseJSON
          = withObject "PoolsListResponse"
              (\ o ->
                 PoolsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON PoolsListResponse where
        toJSON PoolsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  ("resources" .=) <$> _plrResources])

-- | A Persistent Disk resource that will be created and attached to each
-- Replica in the Pool. Each Replica will have a unique persistent disk
-- that is created and attached to that Replica in READ_WRITE mode.
--
-- /See:/ 'newDisk' smart constructor.
data NewDisk =
  NewDisk'
    { _ndBoot :: !(Maybe Bool)
    , _ndAutoDelete :: !(Maybe Bool)
    , _ndAttachment :: !(Maybe DiskAttachment)
    , _ndInitializeParams :: !(Maybe NewDiskInitializeParams)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NewDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndBoot'
--
-- * 'ndAutoDelete'
--
-- * 'ndAttachment'
--
-- * 'ndInitializeParams'
newDisk
    :: NewDisk
newDisk =
  NewDisk'
    { _ndBoot = Nothing
    , _ndAutoDelete = Nothing
    , _ndAttachment = Nothing
    , _ndInitializeParams = Nothing
    }


-- | If true, indicates that this is the root persistent disk.
ndBoot :: Lens' NewDisk (Maybe Bool)
ndBoot = lens _ndBoot (\ s a -> s{_ndBoot = a})

-- | If true, then this disk will be deleted when the instance is deleted.
-- The default value is true.
ndAutoDelete :: Lens' NewDisk (Maybe Bool)
ndAutoDelete
  = lens _ndAutoDelete (\ s a -> s{_ndAutoDelete = a})

-- | How the disk will be attached to the Replica.
ndAttachment :: Lens' NewDisk (Maybe DiskAttachment)
ndAttachment
  = lens _ndAttachment (\ s a -> s{_ndAttachment = a})

-- | Create the new disk using these parameters. The name of the disk will be
-- -
ndInitializeParams :: Lens' NewDisk (Maybe NewDiskInitializeParams)
ndInitializeParams
  = lens _ndInitializeParams
      (\ s a -> s{_ndInitializeParams = a})

instance FromJSON NewDisk where
        parseJSON
          = withObject "NewDisk"
              (\ o ->
                 NewDisk' <$>
                   (o .:? "boot") <*> (o .:? "autoDelete") <*>
                     (o .:? "attachment")
                     <*> (o .:? "initializeParams"))

instance ToJSON NewDisk where
        toJSON NewDisk'{..}
          = object
              (catMaybes
                 [("boot" .=) <$> _ndBoot,
                  ("autoDelete" .=) <$> _ndAutoDelete,
                  ("attachment" .=) <$> _ndAttachment,
                  ("initializeParams" .=) <$> _ndInitializeParams])
