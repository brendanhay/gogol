{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Product where

import           Network.Google.Compute.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'addressesScopedList' smart constructor.
data AddressesScopedList = AddressesScopedList
    { _aslAddresses :: !(Maybe [Address])
    , _aslWarning   :: !(Maybe AddressesScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslAddresses'
--
-- * 'aslWarning'
addressesScopedList
    :: AddressesScopedList
addressesScopedList =
    AddressesScopedList
    { _aslAddresses = Nothing
    , _aslWarning = Nothing
    }

-- | [Output Only] List of addresses contained in this scope.
aslAddresses :: Lens' AddressesScopedList [Address]
aslAddresses
  = lens _aslAddresses (\ s a -> s{_aslAddresses = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
aslWarning :: Lens' AddressesScopedList (Maybe AddressesScopedListWarning)
aslWarning
  = lens _aslWarning (\ s a -> s{_aslWarning = a})

instance FromJSON AddressesScopedList where
        parseJSON
          = withObject "AddressesScopedList"
              (\ o ->
                 AddressesScopedList <$>
                   (o .:? "addresses" .!= mempty) <*> (o .:? "warning"))

instance ToJSON AddressesScopedList where
        toJSON AddressesScopedList{..}
          = object
              (catMaybes
                 [("addresses" .=) <$> _aslAddresses,
                  ("warning" .=) <$> _aslWarning])

--
-- /See:/ 'operationWarningsItemDataItem' smart constructor.
data OperationWarningsItemDataItem = OperationWarningsItemDataItem
    { _owidiValue :: !(Maybe Text)
    , _owidiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationWarningsItemDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owidiValue'
--
-- * 'owidiKey'
operationWarningsItemDataItem
    :: OperationWarningsItemDataItem
operationWarningsItemDataItem =
    OperationWarningsItemDataItem
    { _owidiValue = Nothing
    , _owidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
owidiValue :: Lens' OperationWarningsItemDataItem (Maybe Text)
owidiValue
  = lens _owidiValue (\ s a -> s{_owidiValue = a})

-- | [Output Only] A key for the warning data.
owidiKey :: Lens' OperationWarningsItemDataItem (Maybe Text)
owidiKey = lens _owidiKey (\ s a -> s{_owidiKey = a})

instance FromJSON OperationWarningsItemDataItem where
        parseJSON
          = withObject "OperationWarningsItemDataItem"
              (\ o ->
                 OperationWarningsItemDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OperationWarningsItemDataItem where
        toJSON OperationWarningsItemDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _owidiValue,
                  ("key" .=) <$> _owidiKey])

--
-- /See:/ 'instanceGroupManagersAbandonInstancesRequest' smart constructor.
newtype InstanceGroupManagersAbandonInstancesRequest = InstanceGroupManagersAbandonInstancesRequest
    { _igmairInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmairInstances'
instanceGroupManagersAbandonInstancesRequest
    :: InstanceGroupManagersAbandonInstancesRequest
instanceGroupManagersAbandonInstancesRequest =
    InstanceGroupManagersAbandonInstancesRequest
    { _igmairInstances = Nothing
    }

-- | The names of instances to abandon from the managed instance group.
igmairInstances :: Lens' InstanceGroupManagersAbandonInstancesRequest [Text]
igmairInstances
  = lens _igmairInstances
      (\ s a -> s{_igmairInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupManagersAbandonInstancesRequest where
        parseJSON
          = withObject
              "InstanceGroupManagersAbandonInstancesRequest"
              (\ o ->
                 InstanceGroupManagersAbandonInstancesRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersAbandonInstancesRequest where
        toJSON
          InstanceGroupManagersAbandonInstancesRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _igmairInstances])

-- | [Output Only] A map of scoped machine type lists.
--
-- /See:/ 'machineTypeAggregatedListItems' smart constructor.
newtype MachineTypeAggregatedListItems = MachineTypeAggregatedListItems
    { _mtaliAddtional :: HashMap Text MachineTypesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtaliAddtional'
machineTypeAggregatedListItems
    :: HashMap Text MachineTypesScopedList -- ^ 'addtional'
    -> MachineTypeAggregatedListItems
machineTypeAggregatedListItems pMtaliAddtional_ =
    MachineTypeAggregatedListItems
    { _mtaliAddtional = pMtaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of machine types.
mtaliAddtional :: Lens' MachineTypeAggregatedListItems (HashMap Text MachineTypesScopedList)
mtaliAddtional
  = lens _mtaliAddtional
      (\ s a -> s{_mtaliAddtional = a})

instance FromJSON MachineTypeAggregatedListItems
         where
        parseJSON
          = withObject "MachineTypeAggregatedListItems"
              (\ o ->
                 MachineTypeAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON MachineTypeAggregatedListItems where
        toJSON = toJSON . _mtaliAddtional

-- | [Output Only] A map of scoped disk type lists.
--
-- /See:/ 'diskTypeAggregatedListItems' smart constructor.
newtype DiskTypeAggregatedListItems = DiskTypeAggregatedListItems
    { _dtaliAddtional :: HashMap Text DiskTypesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtaliAddtional'
diskTypeAggregatedListItems
    :: HashMap Text DiskTypesScopedList -- ^ 'addtional'
    -> DiskTypeAggregatedListItems
diskTypeAggregatedListItems pDtaliAddtional_ =
    DiskTypeAggregatedListItems
    { _dtaliAddtional = pDtaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of disk types.
dtaliAddtional :: Lens' DiskTypeAggregatedListItems (HashMap Text DiskTypesScopedList)
dtaliAddtional
  = lens _dtaliAddtional
      (\ s a -> s{_dtaliAddtional = a})

instance FromJSON DiskTypeAggregatedListItems where
        parseJSON
          = withObject "DiskTypeAggregatedListItems"
              (\ o ->
                 DiskTypeAggregatedListItems <$> (parseJSONObject o))

instance ToJSON DiskTypeAggregatedListItems where
        toJSON = toJSON . _dtaliAddtional

-- | Contains a list of Firewall resources.
--
-- /See:/ 'firewallList' smart constructor.
data FirewallList = FirewallList
    { _flNextPageToken :: !(Maybe Text)
    , _flKind          :: !Text
    , _flItems         :: !(Maybe [Firewall])
    , _flSelfLink      :: !(Maybe Text)
    , _flId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flNextPageToken'
--
-- * 'flKind'
--
-- * 'flItems'
--
-- * 'flSelfLink'
--
-- * 'flId'
firewallList
    :: FirewallList
firewallList =
    FirewallList
    { _flNextPageToken = Nothing
    , _flKind = "compute#firewallList"
    , _flItems = Nothing
    , _flSelfLink = Nothing
    , _flId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
flNextPageToken :: Lens' FirewallList (Maybe Text)
flNextPageToken
  = lens _flNextPageToken
      (\ s a -> s{_flNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#firewallList for lists of
-- firewalls.
flKind :: Lens' FirewallList Text
flKind = lens _flKind (\ s a -> s{_flKind = a})

-- | [Output Only] A list of Firewall resources.
flItems :: Lens' FirewallList [Firewall]
flItems
  = lens _flItems (\ s a -> s{_flItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
flSelfLink :: Lens' FirewallList (Maybe Text)
flSelfLink
  = lens _flSelfLink (\ s a -> s{_flSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
flId :: Lens' FirewallList (Maybe Text)
flId = lens _flId (\ s a -> s{_flId = a})

instance FromJSON FirewallList where
        parseJSON
          = withObject "FirewallList"
              (\ o ->
                 FirewallList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#firewallList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON FirewallList where
        toJSON FirewallList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _flNextPageToken,
                  Just ("kind" .= _flKind), ("items" .=) <$> _flItems,
                  ("selfLink" .=) <$> _flSelfLink,
                  ("id" .=) <$> _flId])

-- | [Output Only] Informational warning which replaces the list of instances
-- when the list is empty.
--
-- /See:/ 'instancesScopedListWarning' smart constructor.
data InstancesScopedListWarning = InstancesScopedListWarning
    { _islwData    :: !(Maybe [InstancesScopedListWarningDataItem])
    , _islwCode    :: !(Maybe InstancesScopedListWarningCode)
    , _islwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islwData'
--
-- * 'islwCode'
--
-- * 'islwMessage'
instancesScopedListWarning
    :: InstancesScopedListWarning
instancesScopedListWarning =
    InstancesScopedListWarning
    { _islwData = Nothing
    , _islwCode = Nothing
    , _islwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
islwData :: Lens' InstancesScopedListWarning [InstancesScopedListWarningDataItem]
islwData
  = lens _islwData (\ s a -> s{_islwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
islwCode :: Lens' InstancesScopedListWarning (Maybe InstancesScopedListWarningCode)
islwCode = lens _islwCode (\ s a -> s{_islwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
islwMessage :: Lens' InstancesScopedListWarning (Maybe Text)
islwMessage
  = lens _islwMessage (\ s a -> s{_islwMessage = a})

instance FromJSON InstancesScopedListWarning where
        parseJSON
          = withObject "InstancesScopedListWarning"
              (\ o ->
                 InstancesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON InstancesScopedListWarning where
        toJSON InstancesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _islwData,
                  ("code" .=) <$> _islwCode,
                  ("message" .=) <$> _islwMessage])

-- | A list of InstanceGroup resources.
--
-- /See:/ 'instanceGroupList' smart constructor.
data InstanceGroupList = InstanceGroupList
    { _iglNextPageToken :: !(Maybe Text)
    , _iglKind          :: !Text
    , _iglItems         :: !(Maybe [InstanceGroup])
    , _iglSelfLink      :: !(Maybe Text)
    , _iglId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglNextPageToken'
--
-- * 'iglKind'
--
-- * 'iglItems'
--
-- * 'iglSelfLink'
--
-- * 'iglId'
instanceGroupList
    :: InstanceGroupList
instanceGroupList =
    InstanceGroupList
    { _iglNextPageToken = Nothing
    , _iglKind = "compute#instanceGroupList"
    , _iglItems = Nothing
    , _iglSelfLink = Nothing
    , _iglId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
iglNextPageToken :: Lens' InstanceGroupList (Maybe Text)
iglNextPageToken
  = lens _iglNextPageToken
      (\ s a -> s{_iglNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupList for instance group lists.
iglKind :: Lens' InstanceGroupList Text
iglKind = lens _iglKind (\ s a -> s{_iglKind = a})

-- | A list of InstanceGroup resources.
iglItems :: Lens' InstanceGroupList [InstanceGroup]
iglItems
  = lens _iglItems (\ s a -> s{_iglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this instance group. The server defines this
-- URL.
iglSelfLink :: Lens' InstanceGroupList (Maybe Text)
iglSelfLink
  = lens _iglSelfLink (\ s a -> s{_iglSelfLink = a})

-- | [Output Only] A unique identifier for this list of instance groups. The
-- server defines this identifier.
iglId :: Lens' InstanceGroupList (Maybe Text)
iglId = lens _iglId (\ s a -> s{_iglId = a})

instance FromJSON InstanceGroupList where
        parseJSON
          = withObject "InstanceGroupList"
              (\ o ->
                 InstanceGroupList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceGroupList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupList where
        toJSON InstanceGroupList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _iglNextPageToken,
                  Just ("kind" .= _iglKind),
                  ("items" .=) <$> _iglItems,
                  ("selfLink" .=) <$> _iglSelfLink,
                  ("id" .=) <$> _iglId])

-- | A map of scoped autoscaler lists.
--
-- /See:/ 'autoscalerAggregatedListItems' smart constructor.
newtype AutoscalerAggregatedListItems = AutoscalerAggregatedListItems
    { _aaliAddtional :: HashMap Text AutoscalersScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaliAddtional'
autoscalerAggregatedListItems
    :: HashMap Text AutoscalersScopedList -- ^ 'addtional'
    -> AutoscalerAggregatedListItems
autoscalerAggregatedListItems pAaliAddtional_ =
    AutoscalerAggregatedListItems
    { _aaliAddtional = pAaliAddtional_
    }

-- | Name of the scope containing this set of autoscalers.
aaliAddtional :: Lens' AutoscalerAggregatedListItems (HashMap Text AutoscalersScopedList)
aaliAddtional
  = lens _aaliAddtional
      (\ s a -> s{_aaliAddtional = a})

instance FromJSON AutoscalerAggregatedListItems where
        parseJSON
          = withObject "AutoscalerAggregatedListItems"
              (\ o ->
                 AutoscalerAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON AutoscalerAggregatedListItems where
        toJSON = toJSON . _aaliAddtional

--
-- /See:/ 'instanceGroupManagersSetInstanceTemplateRequest' smart constructor.
newtype InstanceGroupManagersSetInstanceTemplateRequest = InstanceGroupManagersSetInstanceTemplateRequest
    { _igmsitrInstanceTemplate :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitrInstanceTemplate'
instanceGroupManagersSetInstanceTemplateRequest
    :: InstanceGroupManagersSetInstanceTemplateRequest
instanceGroupManagersSetInstanceTemplateRequest =
    InstanceGroupManagersSetInstanceTemplateRequest
    { _igmsitrInstanceTemplate = Nothing
    }

-- | The URL of the instance template that is specified for this managed
-- instance group. The group uses this template to create all new instances
-- in the managed instance group.
igmsitrInstanceTemplate :: Lens' InstanceGroupManagersSetInstanceTemplateRequest (Maybe Text)
igmsitrInstanceTemplate
  = lens _igmsitrInstanceTemplate
      (\ s a -> s{_igmsitrInstanceTemplate = a})

instance FromJSON
         InstanceGroupManagersSetInstanceTemplateRequest where
        parseJSON
          = withObject
              "InstanceGroupManagersSetInstanceTemplateRequest"
              (\ o ->
                 InstanceGroupManagersSetInstanceTemplateRequest <$>
                   (o .:? "instanceTemplate"))

instance ToJSON
         InstanceGroupManagersSetInstanceTemplateRequest where
        toJSON
          InstanceGroupManagersSetInstanceTemplateRequest{..}
          = object
              (catMaybes
                 [("instanceTemplate" .=) <$>
                    _igmsitrInstanceTemplate])

-- | Deprecation status for a public resource.
--
-- /See:/ 'deprecationStatus' smart constructor.
data DeprecationStatus = DeprecationStatus
    { _dsState       :: !(Maybe DeprecationStatusState)
    , _dsDeleted     :: !(Maybe Text)
    , _dsReplacement :: !(Maybe Text)
    , _dsObsolete    :: !(Maybe Text)
    , _dsDeprecated  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeprecationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsState'
--
-- * 'dsDeleted'
--
-- * 'dsReplacement'
--
-- * 'dsObsolete'
--
-- * 'dsDeprecated'
deprecationStatus
    :: DeprecationStatus
deprecationStatus =
    DeprecationStatus
    { _dsState = Nothing
    , _dsDeleted = Nothing
    , _dsReplacement = Nothing
    , _dsObsolete = Nothing
    , _dsDeprecated = Nothing
    }

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
dsState :: Lens' DeprecationStatus (Maybe DeprecationStatusState)
dsState = lens _dsState (\ s a -> s{_dsState = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to DELETED.
dsDeleted :: Lens' DeprecationStatus (Maybe Text)
dsDeleted
  = lens _dsDeleted (\ s a -> s{_dsDeleted = a})

-- | The URL of the suggested replacement for a deprecated resource. The
-- suggested replacement resource must be the same kind of resource as the
-- deprecated resource.
dsReplacement :: Lens' DeprecationStatus (Maybe Text)
dsReplacement
  = lens _dsReplacement
      (\ s a -> s{_dsReplacement = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to OBSOLETE.
dsObsolete :: Lens' DeprecationStatus (Maybe Text)
dsObsolete
  = lens _dsObsolete (\ s a -> s{_dsObsolete = a})

-- | An optional RFC3339 timestamp on or after which the deprecation state of
-- this resource will be changed to DEPRECATED.
dsDeprecated :: Lens' DeprecationStatus (Maybe Text)
dsDeprecated
  = lens _dsDeprecated (\ s a -> s{_dsDeprecated = a})

instance FromJSON DeprecationStatus where
        parseJSON
          = withObject "DeprecationStatus"
              (\ o ->
                 DeprecationStatus <$>
                   (o .:? "state") <*> (o .:? "deleted") <*>
                     (o .:? "replacement")
                     <*> (o .:? "obsolete")
                     <*> (o .:? "deprecated"))

instance ToJSON DeprecationStatus where
        toJSON DeprecationStatus{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dsState,
                  ("deleted" .=) <$> _dsDeleted,
                  ("replacement" .=) <$> _dsReplacement,
                  ("obsolete" .=) <$> _dsObsolete,
                  ("deprecated" .=) <$> _dsDeprecated])

-- | A persistent disk snapshot resource.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot = Snapshot
    { _sStorageBytesStatus :: !(Maybe SnapshotStorageBytesStatus)
    , _sStatus             :: !(Maybe SnapshotStatus)
    , _sDiskSizeGb         :: !(Maybe Int64)
    , _sSourceDiskId       :: !(Maybe Text)
    , _sKind               :: !Text
    , _sStorageBytes       :: !(Maybe Int64)
    , _sSelfLink           :: !(Maybe Text)
    , _sName               :: !(Maybe Text)
    , _sCreationTimestamp  :: !(Maybe Text)
    , _sId                 :: !(Maybe Word64)
    , _sLicenses           :: !(Maybe [Text])
    , _sSourceDisk         :: !(Maybe Text)
    , _sDescription        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStorageBytesStatus'
--
-- * 'sStatus'
--
-- * 'sDiskSizeGb'
--
-- * 'sSourceDiskId'
--
-- * 'sKind'
--
-- * 'sStorageBytes'
--
-- * 'sSelfLink'
--
-- * 'sName'
--
-- * 'sCreationTimestamp'
--
-- * 'sId'
--
-- * 'sLicenses'
--
-- * 'sSourceDisk'
--
-- * 'sDescription'
snapshot
    :: Snapshot
snapshot =
    Snapshot
    { _sStorageBytesStatus = Nothing
    , _sStatus = Nothing
    , _sDiskSizeGb = Nothing
    , _sSourceDiskId = Nothing
    , _sKind = "compute#snapshot"
    , _sStorageBytes = Nothing
    , _sSelfLink = Nothing
    , _sName = Nothing
    , _sCreationTimestamp = Nothing
    , _sId = Nothing
    , _sLicenses = Nothing
    , _sSourceDisk = Nothing
    , _sDescription = Nothing
    }

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation.
sStorageBytesStatus :: Lens' Snapshot (Maybe SnapshotStorageBytesStatus)
sStorageBytesStatus
  = lens _sStorageBytesStatus
      (\ s a -> s{_sStorageBytesStatus = a})

-- | [Output Only] The status of the snapshot.
sStatus :: Lens' Snapshot (Maybe SnapshotStatus)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | [Output Only] Size of the snapshot, specified in GB.
sDiskSizeGb :: Lens' Snapshot (Maybe Int64)
sDiskSizeGb
  = lens _sDiskSizeGb (\ s a -> s{_sDiskSizeGb = a})

-- | [Output Only] The ID value of the disk used to create this snapshot.
-- This value may be used to determine whether the snapshot was taken from
-- the current or a previous instance of a given disk name.
sSourceDiskId :: Lens' Snapshot (Maybe Text)
sSourceDiskId
  = lens _sSourceDiskId
      (\ s a -> s{_sSourceDiskId = a})

-- | [Output Only] Type of the resource. Always compute#snapshot for Snapshot
-- resources.
sKind :: Lens' Snapshot Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | [Output Only] A size of the the storage used by the snapshot. As
-- snapshots share storage, this number is expected to change with snapshot
-- creation\/deletion.
sStorageBytes :: Lens' Snapshot (Maybe Int64)
sStorageBytes
  = lens _sStorageBytes
      (\ s a -> s{_sStorageBytes = a})

-- | [Output Only] Server-defined URL for the resource.
sSelfLink :: Lens' Snapshot (Maybe Text)
sSelfLink
  = lens _sSelfLink (\ s a -> s{_sSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
sName :: Lens' Snapshot (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
sCreationTimestamp :: Lens' Snapshot (Maybe Text)
sCreationTimestamp
  = lens _sCreationTimestamp
      (\ s a -> s{_sCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
sId :: Lens' Snapshot (Maybe Word64)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Public visible licenses.
sLicenses :: Lens' Snapshot [Text]
sLicenses
  = lens _sLicenses (\ s a -> s{_sLicenses = a}) .
      _Default
      . _Coerce

-- | The source disk used to create this snapshot.
sSourceDisk :: Lens' Snapshot (Maybe Text)
sSourceDisk
  = lens _sSourceDisk (\ s a -> s{_sSourceDisk = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
sDescription :: Lens' Snapshot (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Snapshot where
        parseJSON
          = withObject "Snapshot"
              (\ o ->
                 Snapshot <$>
                   (o .:? "storageBytesStatus") <*> (o .:? "status") <*>
                     (o .:? "diskSizeGb")
                     <*> (o .:? "sourceDiskId")
                     <*> (o .:? "kind" .!= "compute#snapshot")
                     <*> (o .:? "storageBytes")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "sourceDisk")
                     <*> (o .:? "description"))

instance ToJSON Snapshot where
        toJSON Snapshot{..}
          = object
              (catMaybes
                 [("storageBytesStatus" .=) <$> _sStorageBytesStatus,
                  ("status" .=) <$> _sStatus,
                  ("diskSizeGb" .=) <$> _sDiskSizeGb,
                  ("sourceDiskId" .=) <$> _sSourceDiskId,
                  Just ("kind" .= _sKind),
                  ("storageBytes" .=) <$> _sStorageBytes,
                  ("selfLink" .=) <$> _sSelfLink,
                  ("name" .=) <$> _sName,
                  ("creationTimestamp" .=) <$> _sCreationTimestamp,
                  ("id" .=) <$> _sId, ("licenses" .=) <$> _sLicenses,
                  ("sourceDisk" .=) <$> _sSourceDisk,
                  ("description" .=) <$> _sDescription])

-- | Custom utilization metric policy.
--
-- /See:/ 'autoscalingPolicyCustomMetricUtilization' smart constructor.
data AutoscalingPolicyCustomMetricUtilization = AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget     :: !(Maybe Double)
    , _apcmuMetric                :: !(Maybe Text)
    , _apcmuUtilizationTargetType :: !(Maybe AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCustomMetricUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcmuUtilizationTarget'
--
-- * 'apcmuMetric'
--
-- * 'apcmuUtilizationTargetType'
autoscalingPolicyCustomMetricUtilization
    :: AutoscalingPolicyCustomMetricUtilization
autoscalingPolicyCustomMetricUtilization =
    AutoscalingPolicyCustomMetricUtilization
    { _apcmuUtilizationTarget = Nothing
    , _apcmuMetric = Nothing
    , _apcmuUtilizationTargetType = Nothing
    }

-- | Target value of the metric which Autoscaler should maintain. Must be a
-- positive value.
apcmuUtilizationTarget :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Double)
apcmuUtilizationTarget
  = lens _apcmuUtilizationTarget
      (\ s a -> s{_apcmuUtilizationTarget = a})

-- | Identifier of the metric. It should be a Cloud Monitoring metric. The
-- metric can not have negative values. The metric should be an utilization
-- metric (increasing number of VMs handling requests x times should reduce
-- average value of the metric roughly x times). For example you could use:
-- compute.googleapis.com\/instance\/network\/received_bytes_count.
apcmuMetric :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Text)
apcmuMetric
  = lens _apcmuMetric (\ s a -> s{_apcmuMetric = a})

-- | Defines type in which utilization_target is expressed.
apcmuUtilizationTargetType :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType)
apcmuUtilizationTargetType
  = lens _apcmuUtilizationTargetType
      (\ s a -> s{_apcmuUtilizationTargetType = a})

instance FromJSON
         AutoscalingPolicyCustomMetricUtilization where
        parseJSON
          = withObject
              "AutoscalingPolicyCustomMetricUtilization"
              (\ o ->
                 AutoscalingPolicyCustomMetricUtilization <$>
                   (o .:? "utilizationTarget") <*> (o .:? "metric") <*>
                     (o .:? "utilizationTargetType"))

instance ToJSON
         AutoscalingPolicyCustomMetricUtilization where
        toJSON AutoscalingPolicyCustomMetricUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _apcmuUtilizationTarget,
                  ("metric" .=) <$> _apcmuMetric,
                  ("utilizationTargetType" .=) <$>
                    _apcmuUtilizationTargetType])

-- | Contains a list of ForwardingRule resources.
--
-- /See:/ 'forwardingRuleList' smart constructor.
data ForwardingRuleList = ForwardingRuleList
    { _frlNextPageToken :: !(Maybe Text)
    , _frlKind          :: !Text
    , _frlItems         :: !(Maybe [ForwardingRule])
    , _frlSelfLink      :: !(Maybe Text)
    , _frlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frlNextPageToken'
--
-- * 'frlKind'
--
-- * 'frlItems'
--
-- * 'frlSelfLink'
--
-- * 'frlId'
forwardingRuleList
    :: ForwardingRuleList
forwardingRuleList =
    ForwardingRuleList
    { _frlNextPageToken = Nothing
    , _frlKind = "compute#forwardingRuleList"
    , _frlItems = Nothing
    , _frlSelfLink = Nothing
    , _frlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
frlNextPageToken :: Lens' ForwardingRuleList (Maybe Text)
frlNextPageToken
  = lens _frlNextPageToken
      (\ s a -> s{_frlNextPageToken = a})

-- | Type of resource.
frlKind :: Lens' ForwardingRuleList Text
frlKind = lens _frlKind (\ s a -> s{_frlKind = a})

-- | A list of ForwardingRule resources.
frlItems :: Lens' ForwardingRuleList [ForwardingRule]
frlItems
  = lens _frlItems (\ s a -> s{_frlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
frlSelfLink :: Lens' ForwardingRuleList (Maybe Text)
frlSelfLink
  = lens _frlSelfLink (\ s a -> s{_frlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Set by the server.
frlId :: Lens' ForwardingRuleList (Maybe Text)
frlId = lens _frlId (\ s a -> s{_frlId = a})

instance FromJSON ForwardingRuleList where
        parseJSON
          = withObject "ForwardingRuleList"
              (\ o ->
                 ForwardingRuleList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#forwardingRuleList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ForwardingRuleList where
        toJSON ForwardingRuleList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _frlNextPageToken,
                  Just ("kind" .= _frlKind),
                  ("items" .=) <$> _frlItems,
                  ("selfLink" .=) <$> _frlSelfLink,
                  ("id" .=) <$> _frlId])

--
-- /See:/ 'vpnTunnelsScopedList' smart constructor.
data VPNTunnelsScopedList = VPNTunnelsScopedList
    { _vtslVPNTunnels :: !(Maybe [VPNTunnel])
    , _vtslWarning    :: !(Maybe VPNTunnelsScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslVPNTunnels'
--
-- * 'vtslWarning'
vpnTunnelsScopedList
    :: VPNTunnelsScopedList
vpnTunnelsScopedList =
    VPNTunnelsScopedList
    { _vtslVPNTunnels = Nothing
    , _vtslWarning = Nothing
    }

-- | List of vpn tunnels contained in this scope.
vtslVPNTunnels :: Lens' VPNTunnelsScopedList [VPNTunnel]
vtslVPNTunnels
  = lens _vtslVPNTunnels
      (\ s a -> s{_vtslVPNTunnels = a})
      . _Default
      . _Coerce

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
vtslWarning :: Lens' VPNTunnelsScopedList (Maybe VPNTunnelsScopedListWarning)
vtslWarning
  = lens _vtslWarning (\ s a -> s{_vtslWarning = a})

instance FromJSON VPNTunnelsScopedList where
        parseJSON
          = withObject "VPNTunnelsScopedList"
              (\ o ->
                 VPNTunnelsScopedList <$>
                   (o .:? "vpnTunnels" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON VPNTunnelsScopedList where
        toJSON VPNTunnelsScopedList{..}
          = object
              (catMaybes
                 [("vpnTunnels" .=) <$> _vtslVPNTunnels,
                  ("warning" .=) <$> _vtslWarning])

--
-- /See:/ 'instanceGroupsSetNamedPortsRequest' smart constructor.
data InstanceGroupsSetNamedPortsRequest = InstanceGroupsSetNamedPortsRequest
    { _igsnprFingerprint :: !(Maybe Word8)
    , _igsnprNamedPorts  :: !(Maybe [NamedPort])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsSetNamedPortsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsnprFingerprint'
--
-- * 'igsnprNamedPorts'
instanceGroupsSetNamedPortsRequest
    :: InstanceGroupsSetNamedPortsRequest
instanceGroupsSetNamedPortsRequest =
    InstanceGroupsSetNamedPortsRequest
    { _igsnprFingerprint = Nothing
    , _igsnprNamedPorts = Nothing
    }

-- | The fingerprint of the named ports information, which is a hash of the
-- contents. Use this field for optimistic locking when you update the
-- named ports entries.
igsnprFingerprint :: Lens' InstanceGroupsSetNamedPortsRequest (Maybe Word8)
igsnprFingerprint
  = lens _igsnprFingerprint
      (\ s a -> s{_igsnprFingerprint = a})

-- | The list of named ports to set for this instance group.
igsnprNamedPorts :: Lens' InstanceGroupsSetNamedPortsRequest [NamedPort]
igsnprNamedPorts
  = lens _igsnprNamedPorts
      (\ s a -> s{_igsnprNamedPorts = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupsSetNamedPortsRequest
         where
        parseJSON
          = withObject "InstanceGroupsSetNamedPortsRequest"
              (\ o ->
                 InstanceGroupsSetNamedPortsRequest <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "namedPorts" .!= mempty))

instance ToJSON InstanceGroupsSetNamedPortsRequest
         where
        toJSON InstanceGroupsSetNamedPortsRequest{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _igsnprFingerprint,
                  ("namedPorts" .=) <$> _igsnprNamedPorts])

-- | Contains a list of Operation resources.
--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList
    { _olNextPageToken :: !(Maybe Text)
    , _olKind          :: !Text
    , _olItems         :: !(Maybe [Operation])
    , _olSelfLink      :: !(Maybe Text)
    , _olId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olNextPageToken'
--
-- * 'olKind'
--
-- * 'olItems'
--
-- * 'olSelfLink'
--
-- * 'olId'
operationList
    :: OperationList
operationList =
    OperationList
    { _olNextPageToken = Nothing
    , _olKind = "compute#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | [Output Only] A token used to continue a truncate.
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operations for Operations
-- resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | [Output Only] The Operation resources.
olItems :: Lens' OperationList [Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

instance FromJSON OperationList where
        parseJSON
          = withObject "OperationList"
              (\ o ->
                 OperationList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#operationList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON OperationList where
        toJSON OperationList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olNextPageToken,
                  Just ("kind" .= _olKind), ("items" .=) <$> _olItems,
                  ("selfLink" .=) <$> _olSelfLink,
                  ("id" .=) <$> _olId])

-- | A list of Disk resources.
--
-- /See:/ 'diskList' smart constructor.
data DiskList = DiskList
    { _dlNextPageToken :: !(Maybe Text)
    , _dlKind          :: !Text
    , _dlItems         :: !(Maybe [Disk])
    , _dlSelfLink      :: !(Maybe Text)
    , _dlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlNextPageToken'
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlSelfLink'
--
-- * 'dlId'
diskList
    :: DiskList
diskList =
    DiskList
    { _dlNextPageToken = Nothing
    , _dlKind = "compute#diskList"
    , _dlItems = Nothing
    , _dlSelfLink = Nothing
    , _dlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dlNextPageToken :: Lens' DiskList (Maybe Text)
dlNextPageToken
  = lens _dlNextPageToken
      (\ s a -> s{_dlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskList for lists of
-- disks.
dlKind :: Lens' DiskList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | [Output Only] A list of persistent disks.
dlItems :: Lens' DiskList [Disk]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
dlSelfLink :: Lens' DiskList (Maybe Text)
dlSelfLink
  = lens _dlSelfLink (\ s a -> s{_dlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dlId :: Lens' DiskList (Maybe Text)
dlId = lens _dlId (\ s a -> s{_dlId = a})

instance FromJSON DiskList where
        parseJSON
          = withObject "DiskList"
              (\ o ->
                 DiskList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskList where
        toJSON DiskList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlNextPageToken,
                  Just ("kind" .= _dlKind), ("items" .=) <$> _dlItems,
                  ("selfLink" .=) <$> _dlSelfLink,
                  ("id" .=) <$> _dlId])

--
-- /See:/ 'targetPoolsAddInstanceRequest' smart constructor.
newtype TargetPoolsAddInstanceRequest = TargetPoolsAddInstanceRequest
    { _tpairInstances :: Maybe [InstanceReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpairInstances'
targetPoolsAddInstanceRequest
    :: TargetPoolsAddInstanceRequest
targetPoolsAddInstanceRequest =
    TargetPoolsAddInstanceRequest
    { _tpairInstances = Nothing
    }

-- | URLs of the instances to be added to targetPool.
tpairInstances :: Lens' TargetPoolsAddInstanceRequest [InstanceReference]
tpairInstances
  = lens _tpairInstances
      (\ s a -> s{_tpairInstances = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolsAddInstanceRequest where
        parseJSON
          = withObject "TargetPoolsAddInstanceRequest"
              (\ o ->
                 TargetPoolsAddInstanceRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON TargetPoolsAddInstanceRequest where
        toJSON TargetPoolsAddInstanceRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _tpairInstances])

--
-- /See:/ 'instanceGroupsAddInstancesRequest' smart constructor.
newtype InstanceGroupsAddInstancesRequest = InstanceGroupsAddInstancesRequest
    { _igairInstances :: Maybe [InstanceReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAddInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igairInstances'
instanceGroupsAddInstancesRequest
    :: InstanceGroupsAddInstancesRequest
instanceGroupsAddInstancesRequest =
    InstanceGroupsAddInstancesRequest
    { _igairInstances = Nothing
    }

-- | The instances to add to the instance group.
igairInstances :: Lens' InstanceGroupsAddInstancesRequest [InstanceReference]
igairInstances
  = lens _igairInstances
      (\ s a -> s{_igairInstances = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupsAddInstancesRequest
         where
        parseJSON
          = withObject "InstanceGroupsAddInstancesRequest"
              (\ o ->
                 InstanceGroupsAddInstancesRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON InstanceGroupsAddInstancesRequest
         where
        toJSON InstanceGroupsAddInstancesRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _igairInstances])

-- | [Output Only] A list of InstanceGroupManager resources.
--
-- /See:/ 'instanceGroupManagerList' smart constructor.
data InstanceGroupManagerList = InstanceGroupManagerList
    { _igmlNextPageToken :: !(Maybe Text)
    , _igmlKind          :: !Text
    , _igmlItems         :: !(Maybe [InstanceGroupManager])
    , _igmlSelfLink      :: !(Maybe Text)
    , _igmlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlNextPageToken'
--
-- * 'igmlKind'
--
-- * 'igmlItems'
--
-- * 'igmlSelfLink'
--
-- * 'igmlId'
instanceGroupManagerList
    :: InstanceGroupManagerList
instanceGroupManagerList =
    InstanceGroupManagerList
    { _igmlNextPageToken = Nothing
    , _igmlKind = "compute#instanceGroupManagerList"
    , _igmlItems = Nothing
    , _igmlSelfLink = Nothing
    , _igmlId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igmlNextPageToken :: Lens' InstanceGroupManagerList (Maybe Text)
igmlNextPageToken
  = lens _igmlNextPageToken
      (\ s a -> s{_igmlNextPageToken = a})

-- | [Output Only] Type of the resource. Always
-- compute#instanceGroupManagerList for a list of managed instance group
-- resources.
igmlKind :: Lens' InstanceGroupManagerList Text
igmlKind = lens _igmlKind (\ s a -> s{_igmlKind = a})

-- | [Output Only] A list of managed instance group resources.
igmlItems :: Lens' InstanceGroupManagerList [InstanceGroupManager]
igmlItems
  = lens _igmlItems (\ s a -> s{_igmlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this managed instance group. The server
-- defines this URL.
igmlSelfLink :: Lens' InstanceGroupManagerList (Maybe Text)
igmlSelfLink
  = lens _igmlSelfLink (\ s a -> s{_igmlSelfLink = a})

-- | [Output Only] A unique identifier for this managed instance group. The
-- server defines this identifier.
igmlId :: Lens' InstanceGroupManagerList (Maybe Text)
igmlId = lens _igmlId (\ s a -> s{_igmlId = a})

instance FromJSON InstanceGroupManagerList where
        parseJSON
          = withObject "InstanceGroupManagerList"
              (\ o ->
                 InstanceGroupManagerList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceGroupManagerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupManagerList where
        toJSON InstanceGroupManagerList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igmlNextPageToken,
                  Just ("kind" .= _igmlKind),
                  ("items" .=) <$> _igmlItems,
                  ("selfLink" .=) <$> _igmlSelfLink,
                  ("id" .=) <$> _igmlId])

-- | An Image resource.
--
-- /See:/ 'image' smart constructor.
data Image = Image
    { _iStatus            :: !(Maybe ImageStatus)
    , _iDiskSizeGb        :: !(Maybe Int64)
    , _iSourceType        :: !ImageSourceType
    , _iSourceDiskId      :: !(Maybe Text)
    , _iKind              :: !Text
    , _iArchiveSizeBytes  :: !(Maybe Int64)
    , _iRawDisk           :: !(Maybe ImageRawDisk)
    , _iSelfLink          :: !(Maybe Text)
    , _iName              :: !(Maybe Text)
    , _iCreationTimestamp :: !(Maybe Text)
    , _iId                :: !(Maybe Word64)
    , _iLicenses          :: !(Maybe [Text])
    , _iSourceDisk        :: !(Maybe Text)
    , _iDescription       :: !(Maybe Text)
    , _iDeprecated        :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStatus'
--
-- * 'iDiskSizeGb'
--
-- * 'iSourceType'
--
-- * 'iSourceDiskId'
--
-- * 'iKind'
--
-- * 'iArchiveSizeBytes'
--
-- * 'iRawDisk'
--
-- * 'iSelfLink'
--
-- * 'iName'
--
-- * 'iCreationTimestamp'
--
-- * 'iId'
--
-- * 'iLicenses'
--
-- * 'iSourceDisk'
--
-- * 'iDescription'
--
-- * 'iDeprecated'
image
    :: Image
image =
    Image
    { _iStatus = Nothing
    , _iDiskSizeGb = Nothing
    , _iSourceType = Raw
    , _iSourceDiskId = Nothing
    , _iKind = "compute#image"
    , _iArchiveSizeBytes = Nothing
    , _iRawDisk = Nothing
    , _iSelfLink = Nothing
    , _iName = Nothing
    , _iCreationTimestamp = Nothing
    , _iId = Nothing
    , _iLicenses = Nothing
    , _iSourceDisk = Nothing
    , _iDescription = Nothing
    , _iDeprecated = Nothing
    }

-- | [Output Only] The status of the image. An image can be used to create
-- other resources, such as instances, only after the image has been
-- successfully created and the status is set to READY. Possible values are
-- FAILED, PENDING, or READY.
iStatus :: Lens' Image (Maybe ImageStatus)
iStatus = lens _iStatus (\ s a -> s{_iStatus = a})

-- | Size of the image when restored onto a persistent disk (in GB).
iDiskSizeGb :: Lens' Image (Maybe Int64)
iDiskSizeGb
  = lens _iDiskSizeGb (\ s a -> s{_iDiskSizeGb = a})

-- | The type of the image used to create this disk. The default and only
-- value is RAW
iSourceType :: Lens' Image ImageSourceType
iSourceType
  = lens _iSourceType (\ s a -> s{_iSourceType = a})

-- | The ID value of the disk used to create this image. This value may be
-- used to determine whether the image was taken from the current or a
-- previous instance of a given disk name.
iSourceDiskId :: Lens' Image (Maybe Text)
iSourceDiskId
  = lens _iSourceDiskId
      (\ s a -> s{_iSourceDiskId = a})

-- | [Output Only] Type of the resource. Always compute#image for images.
iKind :: Lens' Image Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | Size of the image tar.gz archive stored in Google Cloud Storage (in
-- bytes).
iArchiveSizeBytes :: Lens' Image (Maybe Int64)
iArchiveSizeBytes
  = lens _iArchiveSizeBytes
      (\ s a -> s{_iArchiveSizeBytes = a})

-- | The parameters of the raw disk image.
iRawDisk :: Lens' Image (Maybe ImageRawDisk)
iRawDisk = lens _iRawDisk (\ s a -> s{_iRawDisk = a})

-- | [Output Only] Server-defined URL for the resource.
iSelfLink :: Lens' Image (Maybe Text)
iSelfLink
  = lens _iSelfLink (\ s a -> s{_iSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
iName :: Lens' Image (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
iCreationTimestamp :: Lens' Image (Maybe Text)
iCreationTimestamp
  = lens _iCreationTimestamp
      (\ s a -> s{_iCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
iId :: Lens' Image (Maybe Word64)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Any applicable publicly visible licenses.
iLicenses :: Lens' Image [Text]
iLicenses
  = lens _iLicenses (\ s a -> s{_iLicenses = a}) .
      _Default
      . _Coerce

-- | URL of the The source disk used to create this image. This can be a full
-- or valid partial URL. You must provide either this property or the
-- rawDisk.source property but not both to create an image. For example,
-- the following are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/disk\/disk
-- - projects\/project\/zones\/zone\/disk\/disk - zones\/zone\/disks\/disk
iSourceDisk :: Lens' Image (Maybe Text)
iSourceDisk
  = lens _iSourceDisk (\ s a -> s{_iSourceDisk = a})

-- | Textual description of the resource; provided by the client when the
-- resource is created.
iDescription :: Lens' Image (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

-- | The deprecation status associated with this image.
iDeprecated :: Lens' Image (Maybe DeprecationStatus)
iDeprecated
  = lens _iDeprecated (\ s a -> s{_iDeprecated = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image <$>
                   (o .:? "status") <*> (o .:? "diskSizeGb") <*>
                     (o .:? "sourceType" .!= Raw)
                     <*> (o .:? "sourceDiskId")
                     <*> (o .:? "kind" .!= "compute#image")
                     <*> (o .:? "archiveSizeBytes")
                     <*> (o .:? "rawDisk")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "sourceDisk")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON Image where
        toJSON Image{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iStatus,
                  ("diskSizeGb" .=) <$> _iDiskSizeGb,
                  Just ("sourceType" .= _iSourceType),
                  ("sourceDiskId" .=) <$> _iSourceDiskId,
                  Just ("kind" .= _iKind),
                  ("archiveSizeBytes" .=) <$> _iArchiveSizeBytes,
                  ("rawDisk" .=) <$> _iRawDisk,
                  ("selfLink" .=) <$> _iSelfLink,
                  ("name" .=) <$> _iName,
                  ("creationTimestamp" .=) <$> _iCreationTimestamp,
                  ("id" .=) <$> _iId, ("licenses" .=) <$> _iLicenses,
                  ("sourceDisk" .=) <$> _iSourceDisk,
                  ("description" .=) <$> _iDescription,
                  ("deprecated" .=) <$> _iDeprecated])

-- | A UrlMap resource. This resource defines the mapping from URL to the
-- BackendService resource, based on the \"longest-match\" of the URL\'s
-- host and path.
--
-- /See:/ 'urlMap' smart constructor.
data URLMap = URLMap
    { _umTests             :: !(Maybe [URLMapTest])
    , _umKind              :: !Text
    , _umFingerprint       :: !(Maybe Word8)
    , _umDefaultService    :: !(Maybe Text)
    , _umSelfLink          :: !(Maybe Text)
    , _umName              :: !(Maybe Text)
    , _umCreationTimestamp :: !(Maybe Text)
    , _umPathMatchers      :: !(Maybe [PathMatcher])
    , _umId                :: !(Maybe Word64)
    , _umHostRules         :: !(Maybe [HostRule])
    , _umDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umTests'
--
-- * 'umKind'
--
-- * 'umFingerprint'
--
-- * 'umDefaultService'
--
-- * 'umSelfLink'
--
-- * 'umName'
--
-- * 'umCreationTimestamp'
--
-- * 'umPathMatchers'
--
-- * 'umId'
--
-- * 'umHostRules'
--
-- * 'umDescription'
urlMap
    :: URLMap
urlMap =
    URLMap
    { _umTests = Nothing
    , _umKind = "compute#urlMap"
    , _umFingerprint = Nothing
    , _umDefaultService = Nothing
    , _umSelfLink = Nothing
    , _umName = Nothing
    , _umCreationTimestamp = Nothing
    , _umPathMatchers = Nothing
    , _umId = Nothing
    , _umHostRules = Nothing
    , _umDescription = Nothing
    }

-- | The list of expected URL mappings. Request to update this UrlMap will
-- succeed only all of the test cases pass.
umTests :: Lens' URLMap [URLMapTest]
umTests
  = lens _umTests (\ s a -> s{_umTests = a}) . _Default
      . _Coerce

-- | Type of the resource.
umKind :: Lens' URLMap Text
umKind = lens _umKind (\ s a -> s{_umKind = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a UrlMap. An up-to-date fingerprint must be
-- provided in order to update the UrlMap.
umFingerprint :: Lens' URLMap (Maybe Word8)
umFingerprint
  = lens _umFingerprint
      (\ s a -> s{_umFingerprint = a})

-- | The URL of the BackendService resource if none of the hostRules match.
umDefaultService :: Lens' URLMap (Maybe Text)
umDefaultService
  = lens _umDefaultService
      (\ s a -> s{_umDefaultService = a})

-- | [Output Only] Server-defined URL for the resource.
umSelfLink :: Lens' URLMap (Maybe Text)
umSelfLink
  = lens _umSelfLink (\ s a -> s{_umSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
umName :: Lens' URLMap (Maybe Text)
umName = lens _umName (\ s a -> s{_umName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
umCreationTimestamp :: Lens' URLMap (Maybe Text)
umCreationTimestamp
  = lens _umCreationTimestamp
      (\ s a -> s{_umCreationTimestamp = a})

-- | The list of named PathMatchers to use against the URL.
umPathMatchers :: Lens' URLMap [PathMatcher]
umPathMatchers
  = lens _umPathMatchers
      (\ s a -> s{_umPathMatchers = a})
      . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource. Set by the server.
umId :: Lens' URLMap (Maybe Word64)
umId = lens _umId (\ s a -> s{_umId = a})

-- | The list of HostRules to use against the URL.
umHostRules :: Lens' URLMap [HostRule]
umHostRules
  = lens _umHostRules (\ s a -> s{_umHostRules = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
umDescription :: Lens' URLMap (Maybe Text)
umDescription
  = lens _umDescription
      (\ s a -> s{_umDescription = a})

instance FromJSON URLMap where
        parseJSON
          = withObject "URLMap"
              (\ o ->
                 URLMap <$>
                   (o .:? "tests" .!= mempty) <*>
                     (o .:? "kind" .!= "compute#urlMap")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "defaultService")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "pathMatchers" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "hostRules" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON URLMap where
        toJSON URLMap{..}
          = object
              (catMaybes
                 [("tests" .=) <$> _umTests, Just ("kind" .= _umKind),
                  ("fingerprint" .=) <$> _umFingerprint,
                  ("defaultService" .=) <$> _umDefaultService,
                  ("selfLink" .=) <$> _umSelfLink,
                  ("name" .=) <$> _umName,
                  ("creationTimestamp" .=) <$> _umCreationTimestamp,
                  ("pathMatchers" .=) <$> _umPathMatchers,
                  ("id" .=) <$> _umId,
                  ("hostRules" .=) <$> _umHostRules,
                  ("description" .=) <$> _umDescription])

-- | A map of scoped instance group lists.
--
-- /See:/ 'instanceGroupAggregatedListItems' smart constructor.
newtype InstanceGroupAggregatedListItems = InstanceGroupAggregatedListItems
    { _igaliAddtional :: HashMap Text InstanceGroupsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igaliAddtional'
instanceGroupAggregatedListItems
    :: HashMap Text InstanceGroupsScopedList -- ^ 'addtional'
    -> InstanceGroupAggregatedListItems
instanceGroupAggregatedListItems pIgaliAddtional_ =
    InstanceGroupAggregatedListItems
    { _igaliAddtional = pIgaliAddtional_
    }

-- | The name of the scope that contains this set of instance groups.
igaliAddtional :: Lens' InstanceGroupAggregatedListItems (HashMap Text InstanceGroupsScopedList)
igaliAddtional
  = lens _igaliAddtional
      (\ s a -> s{_igaliAddtional = a})

instance FromJSON InstanceGroupAggregatedListItems
         where
        parseJSON
          = withObject "InstanceGroupAggregatedListItems"
              (\ o ->
                 InstanceGroupAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON InstanceGroupAggregatedListItems
         where
        toJSON = toJSON . _igaliAddtional

-- | Contains a list of TargetPool resources.
--
-- /See:/ 'targetPoolList' smart constructor.
data TargetPoolList = TargetPoolList
    { _tplNextPageToken :: !(Maybe Text)
    , _tplKind          :: !Text
    , _tplItems         :: !(Maybe [TargetPool])
    , _tplSelfLink      :: !(Maybe Text)
    , _tplId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplNextPageToken'
--
-- * 'tplKind'
--
-- * 'tplItems'
--
-- * 'tplSelfLink'
--
-- * 'tplId'
targetPoolList
    :: TargetPoolList
targetPoolList =
    TargetPoolList
    { _tplNextPageToken = Nothing
    , _tplKind = "compute#targetPoolList"
    , _tplItems = Nothing
    , _tplSelfLink = Nothing
    , _tplId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tplNextPageToken :: Lens' TargetPoolList (Maybe Text)
tplNextPageToken
  = lens _tplNextPageToken
      (\ s a -> s{_tplNextPageToken = a})

-- | Type of resource.
tplKind :: Lens' TargetPoolList Text
tplKind = lens _tplKind (\ s a -> s{_tplKind = a})

-- | A list of TargetPool resources.
tplItems :: Lens' TargetPoolList [TargetPool]
tplItems
  = lens _tplItems (\ s a -> s{_tplItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
tplSelfLink :: Lens' TargetPoolList (Maybe Text)
tplSelfLink
  = lens _tplSelfLink (\ s a -> s{_tplSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tplId :: Lens' TargetPoolList (Maybe Text)
tplId = lens _tplId (\ s a -> s{_tplId = a})

instance FromJSON TargetPoolList where
        parseJSON
          = withObject "TargetPoolList"
              (\ o ->
                 TargetPoolList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetPoolList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetPoolList where
        toJSON TargetPoolList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tplNextPageToken,
                  Just ("kind" .= _tplKind),
                  ("items" .=) <$> _tplItems,
                  ("selfLink" .=) <$> _tplSelfLink,
                  ("id" .=) <$> _tplId])

--
-- /See:/ 'targetInstanceAggregatedList' smart constructor.
data TargetInstanceAggregatedList = TargetInstanceAggregatedList
    { _tialNextPageToken :: !(Maybe Text)
    , _tialKind          :: !Text
    , _tialItems         :: !(Maybe TargetInstanceAggregatedListItems)
    , _tialSelfLink      :: !(Maybe Text)
    , _tialId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialNextPageToken'
--
-- * 'tialKind'
--
-- * 'tialItems'
--
-- * 'tialSelfLink'
--
-- * 'tialId'
targetInstanceAggregatedList
    :: TargetInstanceAggregatedList
targetInstanceAggregatedList =
    TargetInstanceAggregatedList
    { _tialNextPageToken = Nothing
    , _tialKind = "compute#targetInstanceAggregatedList"
    , _tialItems = Nothing
    , _tialSelfLink = Nothing
    , _tialId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tialNextPageToken :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialNextPageToken
  = lens _tialNextPageToken
      (\ s a -> s{_tialNextPageToken = a})

-- | Type of resource.
tialKind :: Lens' TargetInstanceAggregatedList Text
tialKind = lens _tialKind (\ s a -> s{_tialKind = a})

-- | A map of scoped target instance lists.
tialItems :: Lens' TargetInstanceAggregatedList (Maybe TargetInstanceAggregatedListItems)
tialItems
  = lens _tialItems (\ s a -> s{_tialItems = a})

-- | [Output Only] Server-defined URL for this resource.
tialSelfLink :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialSelfLink
  = lens _tialSelfLink (\ s a -> s{_tialSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tialId :: Lens' TargetInstanceAggregatedList (Maybe Text)
tialId = lens _tialId (\ s a -> s{_tialId = a})

instance FromJSON TargetInstanceAggregatedList where
        parseJSON
          = withObject "TargetInstanceAggregatedList"
              (\ o ->
                 TargetInstanceAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#targetInstanceAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetInstanceAggregatedList where
        toJSON TargetInstanceAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tialNextPageToken,
                  Just ("kind" .= _tialKind),
                  ("items" .=) <$> _tialItems,
                  ("selfLink" .=) <$> _tialSelfLink,
                  ("id" .=) <$> _tialId])

--
-- /See:/ 'disksScopedList' smart constructor.
data DisksScopedList = DisksScopedList
    { _dslWarning :: !(Maybe DisksScopedListWarning)
    , _dslDisks   :: !(Maybe [Disk])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslWarning'
--
-- * 'dslDisks'
disksScopedList
    :: DisksScopedList
disksScopedList =
    DisksScopedList
    { _dslWarning = Nothing
    , _dslDisks = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of disks
-- when the list is empty.
dslWarning :: Lens' DisksScopedList (Maybe DisksScopedListWarning)
dslWarning
  = lens _dslWarning (\ s a -> s{_dslWarning = a})

-- | [Output Only] List of disks contained in this scope.
dslDisks :: Lens' DisksScopedList [Disk]
dslDisks
  = lens _dslDisks (\ s a -> s{_dslDisks = a}) .
      _Default
      . _Coerce

instance FromJSON DisksScopedList where
        parseJSON
          = withObject "DisksScopedList"
              (\ o ->
                 DisksScopedList <$>
                   (o .:? "warning") <*> (o .:? "disks" .!= mempty))

instance ToJSON DisksScopedList where
        toJSON DisksScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _dslWarning,
                  ("disks" .=) <$> _dslDisks])

--
-- /See:/ 'instanceGroupManagersScopedList' smart constructor.
data InstanceGroupManagersScopedList = InstanceGroupManagersScopedList
    { _igmslWarning               :: !(Maybe InstanceGroupManagersScopedListWarning)
    , _igmslInstanceGroupManagers :: !(Maybe [InstanceGroupManager])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslWarning'
--
-- * 'igmslInstanceGroupManagers'
instanceGroupManagersScopedList
    :: InstanceGroupManagersScopedList
instanceGroupManagersScopedList =
    InstanceGroupManagersScopedList
    { _igmslWarning = Nothing
    , _igmslInstanceGroupManagers = Nothing
    }

-- | [Output Only] The warning that replaces the list of managed instance
-- groups when the list is empty.
igmslWarning :: Lens' InstanceGroupManagersScopedList (Maybe InstanceGroupManagersScopedListWarning)
igmslWarning
  = lens _igmslWarning (\ s a -> s{_igmslWarning = a})

-- | [Output Only] The list of managed instance groups that are contained in
-- the specified project and zone.
igmslInstanceGroupManagers :: Lens' InstanceGroupManagersScopedList [InstanceGroupManager]
igmslInstanceGroupManagers
  = lens _igmslInstanceGroupManagers
      (\ s a -> s{_igmslInstanceGroupManagers = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupManagersScopedList
         where
        parseJSON
          = withObject "InstanceGroupManagersScopedList"
              (\ o ->
                 InstanceGroupManagersScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "instanceGroupManagers" .!= mempty))

instance ToJSON InstanceGroupManagersScopedList where
        toJSON InstanceGroupManagersScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _igmslWarning,
                  ("instanceGroupManagers" .=) <$>
                    _igmslInstanceGroupManagers])

--
-- /See:/ 'diskAggregatedList' smart constructor.
data DiskAggregatedList = DiskAggregatedList
    { _dalNextPageToken :: !(Maybe Text)
    , _dalKind          :: !Text
    , _dalItems         :: !(Maybe DiskAggregatedListItems)
    , _dalSelfLink      :: !(Maybe Text)
    , _dalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalNextPageToken'
--
-- * 'dalKind'
--
-- * 'dalItems'
--
-- * 'dalSelfLink'
--
-- * 'dalId'
diskAggregatedList
    :: DiskAggregatedList
diskAggregatedList =
    DiskAggregatedList
    { _dalNextPageToken = Nothing
    , _dalKind = "compute#diskAggregatedList"
    , _dalItems = Nothing
    , _dalSelfLink = Nothing
    , _dalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dalNextPageToken :: Lens' DiskAggregatedList (Maybe Text)
dalNextPageToken
  = lens _dalNextPageToken
      (\ s a -> s{_dalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskAggregatedList for
-- aggregated lists of persistent disks.
dalKind :: Lens' DiskAggregatedList Text
dalKind = lens _dalKind (\ s a -> s{_dalKind = a})

-- | [Output Only] A map of scoped disk lists.
dalItems :: Lens' DiskAggregatedList (Maybe DiskAggregatedListItems)
dalItems = lens _dalItems (\ s a -> s{_dalItems = a})

-- | [Output Only] Server-defined URL for this resource.
dalSelfLink :: Lens' DiskAggregatedList (Maybe Text)
dalSelfLink
  = lens _dalSelfLink (\ s a -> s{_dalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dalId :: Lens' DiskAggregatedList (Maybe Text)
dalId = lens _dalId (\ s a -> s{_dalId = a})

instance FromJSON DiskAggregatedList where
        parseJSON
          = withObject "DiskAggregatedList"
              (\ o ->
                 DiskAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskAggregatedList where
        toJSON DiskAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dalNextPageToken,
                  Just ("kind" .= _dalKind),
                  ("items" .=) <$> _dalItems,
                  ("selfLink" .=) <$> _dalSelfLink,
                  ("id" .=) <$> _dalId])

--
-- /See:/ 'instanceWithNamedPorts' smart constructor.
data InstanceWithNamedPorts = InstanceWithNamedPorts
    { _iwnpStatus     :: !(Maybe InstanceWithNamedPortsStatus)
    , _iwnpNamedPorts :: !(Maybe [NamedPort])
    , _iwnpInstance   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceWithNamedPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwnpStatus'
--
-- * 'iwnpNamedPorts'
--
-- * 'iwnpInstance'
instanceWithNamedPorts
    :: InstanceWithNamedPorts
instanceWithNamedPorts =
    InstanceWithNamedPorts
    { _iwnpStatus = Nothing
    , _iwnpNamedPorts = Nothing
    , _iwnpInstance = Nothing
    }

-- | The status of the instance.
iwnpStatus :: Lens' InstanceWithNamedPorts (Maybe InstanceWithNamedPortsStatus)
iwnpStatus
  = lens _iwnpStatus (\ s a -> s{_iwnpStatus = a})

-- | The named ports that belong to this instance group.
iwnpNamedPorts :: Lens' InstanceWithNamedPorts [NamedPort]
iwnpNamedPorts
  = lens _iwnpNamedPorts
      (\ s a -> s{_iwnpNamedPorts = a})
      . _Default
      . _Coerce

-- | The URL of the instance.
iwnpInstance :: Lens' InstanceWithNamedPorts (Maybe Text)
iwnpInstance
  = lens _iwnpInstance (\ s a -> s{_iwnpInstance = a})

instance FromJSON InstanceWithNamedPorts where
        parseJSON
          = withObject "InstanceWithNamedPorts"
              (\ o ->
                 InstanceWithNamedPorts <$>
                   (o .:? "status") <*> (o .:? "namedPorts" .!= mempty)
                     <*> (o .:? "instance"))

instance ToJSON InstanceWithNamedPorts where
        toJSON InstanceWithNamedPorts{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iwnpStatus,
                  ("namedPorts" .=) <$> _iwnpNamedPorts,
                  ("instance" .=) <$> _iwnpInstance])

--
-- /See:/ 'forwardingRulesScopedList' smart constructor.
data ForwardingRulesScopedList = ForwardingRulesScopedList
    { _frslWarning         :: !(Maybe ForwardingRulesScopedListWarning)
    , _frslForwardingRules :: !(Maybe [ForwardingRule])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslWarning'
--
-- * 'frslForwardingRules'
forwardingRulesScopedList
    :: ForwardingRulesScopedList
forwardingRulesScopedList =
    ForwardingRulesScopedList
    { _frslWarning = Nothing
    , _frslForwardingRules = Nothing
    }

-- | Informational warning which replaces the list of forwarding rules when
-- the list is empty.
frslWarning :: Lens' ForwardingRulesScopedList (Maybe ForwardingRulesScopedListWarning)
frslWarning
  = lens _frslWarning (\ s a -> s{_frslWarning = a})

-- | List of forwarding rules contained in this scope.
frslForwardingRules :: Lens' ForwardingRulesScopedList [ForwardingRule]
frslForwardingRules
  = lens _frslForwardingRules
      (\ s a -> s{_frslForwardingRules = a})
      . _Default
      . _Coerce

instance FromJSON ForwardingRulesScopedList where
        parseJSON
          = withObject "ForwardingRulesScopedList"
              (\ o ->
                 ForwardingRulesScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "forwardingRules" .!= mempty))

instance ToJSON ForwardingRulesScopedList where
        toJSON ForwardingRulesScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _frslWarning,
                  ("forwardingRules" .=) <$> _frslForwardingRules])

--
-- /See:/ 'instanceReference' smart constructor.
newtype InstanceReference = InstanceReference
    { _irInstance :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irInstance'
instanceReference
    :: InstanceReference
instanceReference =
    InstanceReference
    { _irInstance = Nothing
    }

irInstance :: Lens' InstanceReference (Maybe Text)
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance FromJSON InstanceReference where
        parseJSON
          = withObject "InstanceReference"
              (\ o -> InstanceReference <$> (o .:? "instance"))

instance ToJSON InstanceReference where
        toJSON InstanceReference{..}
          = object
              (catMaybes [("instance" .=) <$> _irInstance])

--
-- /See:/ 'operationAggregatedList' smart constructor.
data OperationAggregatedList = OperationAggregatedList
    { _oalNextPageToken :: !(Maybe Text)
    , _oalKind          :: !Text
    , _oalItems         :: !(Maybe OperationAggregatedListItems)
    , _oalSelfLink      :: !(Maybe Text)
    , _oalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oalNextPageToken'
--
-- * 'oalKind'
--
-- * 'oalItems'
--
-- * 'oalSelfLink'
--
-- * 'oalId'
operationAggregatedList
    :: OperationAggregatedList
operationAggregatedList =
    OperationAggregatedList
    { _oalNextPageToken = Nothing
    , _oalKind = "compute#operationAggregatedList"
    , _oalItems = Nothing
    , _oalSelfLink = Nothing
    , _oalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
oalNextPageToken :: Lens' OperationAggregatedList (Maybe Text)
oalNextPageToken
  = lens _oalNextPageToken
      (\ s a -> s{_oalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operationAggregatedList
-- for aggregated lists of operations.
oalKind :: Lens' OperationAggregatedList Text
oalKind = lens _oalKind (\ s a -> s{_oalKind = a})

-- | [Output Only] A map of scoped operation lists.
oalItems :: Lens' OperationAggregatedList (Maybe OperationAggregatedListItems)
oalItems = lens _oalItems (\ s a -> s{_oalItems = a})

-- | [Output Only] Server-defined URL for this resource.
oalSelfLink :: Lens' OperationAggregatedList (Maybe Text)
oalSelfLink
  = lens _oalSelfLink (\ s a -> s{_oalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oalId :: Lens' OperationAggregatedList (Maybe Text)
oalId = lens _oalId (\ s a -> s{_oalId = a})

instance FromJSON OperationAggregatedList where
        parseJSON
          = withObject "OperationAggregatedList"
              (\ o ->
                 OperationAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#operationAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON OperationAggregatedList where
        toJSON OperationAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oalNextPageToken,
                  Just ("kind" .= _oalKind),
                  ("items" .=) <$> _oalItems,
                  ("selfLink" .=) <$> _oalSelfLink,
                  ("id" .=) <$> _oalId])

--
-- /See:/ 'operationsScopedList' smart constructor.
data OperationsScopedList = OperationsScopedList
    { _oslWarning    :: !(Maybe OperationsScopedListWarning)
    , _oslOperations :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslWarning'
--
-- * 'oslOperations'
operationsScopedList
    :: OperationsScopedList
operationsScopedList =
    OperationsScopedList
    { _oslWarning = Nothing
    , _oslOperations = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of
-- operations when the list is empty.
oslWarning :: Lens' OperationsScopedList (Maybe OperationsScopedListWarning)
oslWarning
  = lens _oslWarning (\ s a -> s{_oslWarning = a})

-- | [Output Only] List of operations contained in this scope.
oslOperations :: Lens' OperationsScopedList [Operation]
oslOperations
  = lens _oslOperations
      (\ s a -> s{_oslOperations = a})
      . _Default
      . _Coerce

instance FromJSON OperationsScopedList where
        parseJSON
          = withObject "OperationsScopedList"
              (\ o ->
                 OperationsScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON OperationsScopedList where
        toJSON OperationsScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _oslWarning,
                  ("operations" .=) <$> _oslOperations])

-- | The named port information. For example: .
--
-- /See:/ 'namedPort' smart constructor.
data NamedPort = NamedPort
    { _npName :: !(Maybe Text)
    , _npPort :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NamedPort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npName'
--
-- * 'npPort'
namedPort
    :: NamedPort
namedPort =
    NamedPort
    { _npName = Nothing
    , _npPort = Nothing
    }

-- | The name for this NamedPort.
npName :: Lens' NamedPort (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | The port number, which can be a value between 1 and 65535.
npPort :: Lens' NamedPort (Maybe Int32)
npPort = lens _npPort (\ s a -> s{_npPort = a})

instance FromJSON NamedPort where
        parseJSON
          = withObject "NamedPort"
              (\ o ->
                 NamedPort <$> (o .:? "name") <*> (o .:? "port"))

instance ToJSON NamedPort where
        toJSON NamedPort{..}
          = object
              (catMaybes
                 [("name" .=) <$> _npName, ("port" .=) <$> _npPort])

-- | Contains a list of TargetInstance resources.
--
-- /See:/ 'targetInstanceList' smart constructor.
data TargetInstanceList = TargetInstanceList
    { _tilNextPageToken :: !(Maybe Text)
    , _tilKind          :: !Text
    , _tilItems         :: !(Maybe [TargetInstance])
    , _tilSelfLink      :: !(Maybe Text)
    , _tilId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tilNextPageToken'
--
-- * 'tilKind'
--
-- * 'tilItems'
--
-- * 'tilSelfLink'
--
-- * 'tilId'
targetInstanceList
    :: TargetInstanceList
targetInstanceList =
    TargetInstanceList
    { _tilNextPageToken = Nothing
    , _tilKind = "compute#targetInstanceList"
    , _tilItems = Nothing
    , _tilSelfLink = Nothing
    , _tilId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tilNextPageToken :: Lens' TargetInstanceList (Maybe Text)
tilNextPageToken
  = lens _tilNextPageToken
      (\ s a -> s{_tilNextPageToken = a})

-- | Type of resource.
tilKind :: Lens' TargetInstanceList Text
tilKind = lens _tilKind (\ s a -> s{_tilKind = a})

-- | A list of TargetInstance resources.
tilItems :: Lens' TargetInstanceList [TargetInstance]
tilItems
  = lens _tilItems (\ s a -> s{_tilItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
tilSelfLink :: Lens' TargetInstanceList (Maybe Text)
tilSelfLink
  = lens _tilSelfLink (\ s a -> s{_tilSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tilId :: Lens' TargetInstanceList (Maybe Text)
tilId = lens _tilId (\ s a -> s{_tilId = a})

instance FromJSON TargetInstanceList where
        parseJSON
          = withObject "TargetInstanceList"
              (\ o ->
                 TargetInstanceList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetInstanceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetInstanceList where
        toJSON TargetInstanceList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tilNextPageToken,
                  Just ("kind" .= _tilKind),
                  ("items" .=) <$> _tilItems,
                  ("selfLink" .=) <$> _tilSelfLink,
                  ("id" .=) <$> _tilId])

--
-- /See:/ 'instanceGroupManagerAggregatedList' smart constructor.
data InstanceGroupManagerAggregatedList = InstanceGroupManagerAggregatedList
    { _igmalNextPageToken :: !(Maybe Text)
    , _igmalKind          :: !Text
    , _igmalItems         :: !(Maybe InstanceGroupManagerAggregatedListItems)
    , _igmalSelfLink      :: !(Maybe Text)
    , _igmalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmalNextPageToken'
--
-- * 'igmalKind'
--
-- * 'igmalItems'
--
-- * 'igmalSelfLink'
--
-- * 'igmalId'
instanceGroupManagerAggregatedList
    :: InstanceGroupManagerAggregatedList
instanceGroupManagerAggregatedList =
    InstanceGroupManagerAggregatedList
    { _igmalNextPageToken = Nothing
    , _igmalKind = "compute#instanceGroupManagerAggregatedList"
    , _igmalItems = Nothing
    , _igmalSelfLink = Nothing
    , _igmalId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igmalNextPageToken :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalNextPageToken
  = lens _igmalNextPageToken
      (\ s a -> s{_igmalNextPageToken = a})

-- | [Output Only] Type of the resource. Always
-- compute#instanceGroupManagerAggregatedList for an aggregated list of
-- managed instance groups.
igmalKind :: Lens' InstanceGroupManagerAggregatedList Text
igmalKind
  = lens _igmalKind (\ s a -> s{_igmalKind = a})

-- | A map of filtered managed instance group lists.
igmalItems :: Lens' InstanceGroupManagerAggregatedList (Maybe InstanceGroupManagerAggregatedListItems)
igmalItems
  = lens _igmalItems (\ s a -> s{_igmalItems = a})

-- | [Output Only] The URL for this aggregated list of managed instance
-- groups. The server defines this URL.
igmalSelfLink :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalSelfLink
  = lens _igmalSelfLink
      (\ s a -> s{_igmalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of managed
-- instance groups. The server defines this identifier.
igmalId :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalId = lens _igmalId (\ s a -> s{_igmalId = a})

instance FromJSON InstanceGroupManagerAggregatedList
         where
        parseJSON
          = withObject "InstanceGroupManagerAggregatedList"
              (\ o ->
                 InstanceGroupManagerAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupManagerAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupManagerAggregatedList
         where
        toJSON InstanceGroupManagerAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igmalNextPageToken,
                  Just ("kind" .= _igmalKind),
                  ("items" .=) <$> _igmalItems,
                  ("selfLink" .=) <$> _igmalSelfLink,
                  ("id" .=) <$> _igmalId])

--
-- /See:/ 'targetPoolsScopedList' smart constructor.
data TargetPoolsScopedList = TargetPoolsScopedList
    { _tpslWarning     :: !(Maybe TargetPoolsScopedListWarning)
    , _tpslTargetPools :: !(Maybe [TargetPool])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslWarning'
--
-- * 'tpslTargetPools'
targetPoolsScopedList
    :: TargetPoolsScopedList
targetPoolsScopedList =
    TargetPoolsScopedList
    { _tpslWarning = Nothing
    , _tpslTargetPools = Nothing
    }

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
tpslWarning :: Lens' TargetPoolsScopedList (Maybe TargetPoolsScopedListWarning)
tpslWarning
  = lens _tpslWarning (\ s a -> s{_tpslWarning = a})

-- | List of target pools contained in this scope.
tpslTargetPools :: Lens' TargetPoolsScopedList [TargetPool]
tpslTargetPools
  = lens _tpslTargetPools
      (\ s a -> s{_tpslTargetPools = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolsScopedList where
        parseJSON
          = withObject "TargetPoolsScopedList"
              (\ o ->
                 TargetPoolsScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "targetPools" .!= mempty))

instance ToJSON TargetPoolsScopedList where
        toJSON TargetPoolsScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _tpslWarning,
                  ("targetPools" .=) <$> _tpslTargetPools])

--
-- /See:/ 'forwardingRuleAggregatedList' smart constructor.
data ForwardingRuleAggregatedList = ForwardingRuleAggregatedList
    { _fralNextPageToken :: !(Maybe Text)
    , _fralKind          :: !Text
    , _fralItems         :: !(Maybe ForwardingRuleAggregatedListItems)
    , _fralSelfLink      :: !(Maybe Text)
    , _fralId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fralNextPageToken'
--
-- * 'fralKind'
--
-- * 'fralItems'
--
-- * 'fralSelfLink'
--
-- * 'fralId'
forwardingRuleAggregatedList
    :: ForwardingRuleAggregatedList
forwardingRuleAggregatedList =
    ForwardingRuleAggregatedList
    { _fralNextPageToken = Nothing
    , _fralKind = "compute#forwardingRuleAggregatedList"
    , _fralItems = Nothing
    , _fralSelfLink = Nothing
    , _fralId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
fralNextPageToken :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralNextPageToken
  = lens _fralNextPageToken
      (\ s a -> s{_fralNextPageToken = a})

-- | Type of resource.
fralKind :: Lens' ForwardingRuleAggregatedList Text
fralKind = lens _fralKind (\ s a -> s{_fralKind = a})

-- | A map of scoped forwarding rule lists.
fralItems :: Lens' ForwardingRuleAggregatedList (Maybe ForwardingRuleAggregatedListItems)
fralItems
  = lens _fralItems (\ s a -> s{_fralItems = a})

-- | [Output Only] Server-defined URL for this resource.
fralSelfLink :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralSelfLink
  = lens _fralSelfLink (\ s a -> s{_fralSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
fralId :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralId = lens _fralId (\ s a -> s{_fralId = a})

instance FromJSON ForwardingRuleAggregatedList where
        parseJSON
          = withObject "ForwardingRuleAggregatedList"
              (\ o ->
                 ForwardingRuleAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#forwardingRuleAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ForwardingRuleAggregatedList where
        toJSON ForwardingRuleAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _fralNextPageToken,
                  Just ("kind" .= _fralKind),
                  ("items" .=) <$> _fralItems,
                  ("selfLink" .=) <$> _fralSelfLink,
                  ("id" .=) <$> _fralId])

--
-- /See:/ 'targetReference' smart constructor.
newtype TargetReference = TargetReference
    { _trTarget :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trTarget'
targetReference
    :: TargetReference
targetReference =
    TargetReference
    { _trTarget = Nothing
    }

trTarget :: Lens' TargetReference (Maybe Text)
trTarget = lens _trTarget (\ s a -> s{_trTarget = a})

instance FromJSON TargetReference where
        parseJSON
          = withObject "TargetReference"
              (\ o -> TargetReference <$> (o .:? "target"))

instance ToJSON TargetReference where
        toJSON TargetReference{..}
          = object (catMaybes [("target" .=) <$> _trTarget])

--
-- /See:/ 'targetPoolAggregatedList' smart constructor.
data TargetPoolAggregatedList = TargetPoolAggregatedList
    { _tpalNextPageToken :: !(Maybe Text)
    , _tpalKind          :: !Text
    , _tpalItems         :: !(Maybe TargetPoolAggregatedListItems)
    , _tpalSelfLink      :: !(Maybe Text)
    , _tpalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpalNextPageToken'
--
-- * 'tpalKind'
--
-- * 'tpalItems'
--
-- * 'tpalSelfLink'
--
-- * 'tpalId'
targetPoolAggregatedList
    :: TargetPoolAggregatedList
targetPoolAggregatedList =
    TargetPoolAggregatedList
    { _tpalNextPageToken = Nothing
    , _tpalKind = "compute#targetPoolAggregatedList"
    , _tpalItems = Nothing
    , _tpalSelfLink = Nothing
    , _tpalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tpalNextPageToken :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalNextPageToken
  = lens _tpalNextPageToken
      (\ s a -> s{_tpalNextPageToken = a})

-- | Type of resource.
tpalKind :: Lens' TargetPoolAggregatedList Text
tpalKind = lens _tpalKind (\ s a -> s{_tpalKind = a})

-- | A map of scoped target pool lists.
tpalItems :: Lens' TargetPoolAggregatedList (Maybe TargetPoolAggregatedListItems)
tpalItems
  = lens _tpalItems (\ s a -> s{_tpalItems = a})

-- | [Output Only] Server-defined URL for this resource.
tpalSelfLink :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalSelfLink
  = lens _tpalSelfLink (\ s a -> s{_tpalSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tpalId :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalId = lens _tpalId (\ s a -> s{_tpalId = a})

instance FromJSON TargetPoolAggregatedList where
        parseJSON
          = withObject "TargetPoolAggregatedList"
              (\ o ->
                 TargetPoolAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetPoolAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetPoolAggregatedList where
        toJSON TargetPoolAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpalNextPageToken,
                  Just ("kind" .= _tpalKind),
                  ("items" .=) <$> _tpalItems,
                  ("selfLink" .=) <$> _tpalSelfLink,
                  ("id" .=) <$> _tpalId])

--
-- /See:/ 'operationsScopedListWarningDataItem' smart constructor.
data OperationsScopedListWarningDataItem = OperationsScopedListWarningDataItem
    { _oslwdiValue :: !(Maybe Text)
    , _oslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslwdiValue'
--
-- * 'oslwdiKey'
operationsScopedListWarningDataItem
    :: OperationsScopedListWarningDataItem
operationsScopedListWarningDataItem =
    OperationsScopedListWarningDataItem
    { _oslwdiValue = Nothing
    , _oslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
oslwdiValue :: Lens' OperationsScopedListWarningDataItem (Maybe Text)
oslwdiValue
  = lens _oslwdiValue (\ s a -> s{_oslwdiValue = a})

-- | [Output Only] A key for the warning data.
oslwdiKey :: Lens' OperationsScopedListWarningDataItem (Maybe Text)
oslwdiKey
  = lens _oslwdiKey (\ s a -> s{_oslwdiKey = a})

instance FromJSON OperationsScopedListWarningDataItem
         where
        parseJSON
          = withObject "OperationsScopedListWarningDataItem"
              (\ o ->
                 OperationsScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OperationsScopedListWarningDataItem
         where
        toJSON OperationsScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oslwdiValue,
                  ("key" .=) <$> _oslwdiKey])

-- | A TargetPool resource. This resource defines a pool of instances,
-- associated HttpHealthCheck resources, and the fallback TargetPool.
--
-- /See:/ 'targetPool' smart constructor.
data TargetPool = TargetPool
    { _tpSessionAffinity   :: !(Maybe TargetPoolSessionAffinity)
    , _tpBackupPool        :: !(Maybe Text)
    , _tpKind              :: !Text
    , _tpSelfLink          :: !(Maybe Text)
    , _tpName              :: !(Maybe Text)
    , _tpCreationTimestamp :: !(Maybe Text)
    , _tpInstances         :: !(Maybe [Text])
    , _tpId                :: !(Maybe Word64)
    , _tpFailoverRatio     :: !(Maybe Float)
    , _tpRegion            :: !(Maybe Text)
    , _tpDescription       :: !(Maybe Text)
    , _tpHealthChecks      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpSessionAffinity'
--
-- * 'tpBackupPool'
--
-- * 'tpKind'
--
-- * 'tpSelfLink'
--
-- * 'tpName'
--
-- * 'tpCreationTimestamp'
--
-- * 'tpInstances'
--
-- * 'tpId'
--
-- * 'tpFailoverRatio'
--
-- * 'tpRegion'
--
-- * 'tpDescription'
--
-- * 'tpHealthChecks'
targetPool
    :: TargetPool
targetPool =
    TargetPool
    { _tpSessionAffinity = Nothing
    , _tpBackupPool = Nothing
    , _tpKind = "compute#targetPool"
    , _tpSelfLink = Nothing
    , _tpName = Nothing
    , _tpCreationTimestamp = Nothing
    , _tpInstances = Nothing
    , _tpId = Nothing
    , _tpFailoverRatio = Nothing
    , _tpRegion = Nothing
    , _tpDescription = Nothing
    , _tpHealthChecks = Nothing
    }

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool;
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
tpSessionAffinity :: Lens' TargetPool (Maybe TargetPoolSessionAffinity)
tpSessionAffinity
  = lens _tpSessionAffinity
      (\ s a -> s{_tpSessionAffinity = a})

-- | This field is applicable only when the containing target pool is serving
-- a forwarding rule as the primary pool, and its failoverRatio field is
-- properly set to a value between [0, 1]. backupPool and failoverRatio
-- together define the fallback behavior of the primary target pool: if the
-- ratio of the healthy instances in the primary pool is at or below
-- failoverRatio, traffic arriving at the load-balanced IP will be directed
-- to the backup pool. In case where failoverRatio and backupPool are not
-- set, or all the instances in the backup pool are unhealthy, the traffic
-- will be directed back to the primary pool in the \"force\" mode, where
-- traffic will be spread to the healthy instances with the best effort, or
-- to all instances when no instance is healthy.
tpBackupPool :: Lens' TargetPool (Maybe Text)
tpBackupPool
  = lens _tpBackupPool (\ s a -> s{_tpBackupPool = a})

-- | Type of the resource.
tpKind :: Lens' TargetPool Text
tpKind = lens _tpKind (\ s a -> s{_tpKind = a})

-- | [Output Only] Server-defined URL for the resource.
tpSelfLink :: Lens' TargetPool (Maybe Text)
tpSelfLink
  = lens _tpSelfLink (\ s a -> s{_tpSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tpName :: Lens' TargetPool (Maybe Text)
tpName = lens _tpName (\ s a -> s{_tpName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tpCreationTimestamp :: Lens' TargetPool (Maybe Text)
tpCreationTimestamp
  = lens _tpCreationTimestamp
      (\ s a -> s{_tpCreationTimestamp = a})

-- | A list of resource URLs to the member virtual machines serving this
-- pool. They must live in zones contained in the same region as this pool.
tpInstances :: Lens' TargetPool [Text]
tpInstances
  = lens _tpInstances (\ s a -> s{_tpInstances = a}) .
      _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
tpId :: Lens' TargetPool (Maybe Word64)
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | This field is applicable only when the containing target pool is serving
-- a forwarding rule as the primary pool (i.e., not as a backup pool to
-- some other target pool). The value of the field must be in [0, 1]. If
-- set, backupPool must also be set. They together define the fallback
-- behavior of the primary target pool: if the ratio of the healthy
-- instances in the primary pool is at or below this number, traffic
-- arriving at the load-balanced IP will be directed to the backup pool. In
-- case where failoverRatio is not set or all the instances in the backup
-- pool are unhealthy, the traffic will be directed back to the primary
-- pool in the \"force\" mode, where traffic will be spread to the healthy
-- instances with the best effort, or to all instances when no instance is
-- healthy.
tpFailoverRatio :: Lens' TargetPool (Maybe Float)
tpFailoverRatio
  = lens _tpFailoverRatio
      (\ s a -> s{_tpFailoverRatio = a})

-- | [Output Only] URL of the region where the target pool resides.
tpRegion :: Lens' TargetPool (Maybe Text)
tpRegion = lens _tpRegion (\ s a -> s{_tpRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
tpDescription :: Lens' TargetPool (Maybe Text)
tpDescription
  = lens _tpDescription
      (\ s a -> s{_tpDescription = a})

-- | A list of URLs to the HttpHealthCheck resource. A member instance in
-- this pool is considered healthy if and only if all specified health
-- checks pass. An empty list means all member instances will be considered
-- healthy at all times.
tpHealthChecks :: Lens' TargetPool [Text]
tpHealthChecks
  = lens _tpHealthChecks
      (\ s a -> s{_tpHealthChecks = a})
      . _Default
      . _Coerce

instance FromJSON TargetPool where
        parseJSON
          = withObject "TargetPool"
              (\ o ->
                 TargetPool <$>
                   (o .:? "sessionAffinity") <*> (o .:? "backupPool")
                     <*> (o .:? "kind" .!= "compute#targetPool")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "instances" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "failoverRatio")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "healthChecks" .!= mempty))

instance ToJSON TargetPool where
        toJSON TargetPool{..}
          = object
              (catMaybes
                 [("sessionAffinity" .=) <$> _tpSessionAffinity,
                  ("backupPool" .=) <$> _tpBackupPool,
                  Just ("kind" .= _tpKind),
                  ("selfLink" .=) <$> _tpSelfLink,
                  ("name" .=) <$> _tpName,
                  ("creationTimestamp" .=) <$> _tpCreationTimestamp,
                  ("instances" .=) <$> _tpInstances,
                  ("id" .=) <$> _tpId,
                  ("failoverRatio" .=) <$> _tpFailoverRatio,
                  ("region" .=) <$> _tpRegion,
                  ("description" .=) <$> _tpDescription,
                  ("healthChecks" .=) <$> _tpHealthChecks])

-- | Contains a list of Image resources.
--
-- /See:/ 'imageList' smart constructor.
data ImageList = ImageList
    { _ilNextPageToken :: !(Maybe Text)
    , _ilKind          :: !Text
    , _ilItems         :: !(Maybe [Image])
    , _ilSelfLink      :: !(Maybe Text)
    , _ilId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilNextPageToken'
--
-- * 'ilKind'
--
-- * 'ilItems'
--
-- * 'ilSelfLink'
--
-- * 'ilId'
imageList
    :: ImageList
imageList =
    ImageList
    { _ilNextPageToken = Nothing
    , _ilKind = "compute#imageList"
    , _ilItems = Nothing
    , _ilSelfLink = Nothing
    , _ilId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
ilNextPageToken :: Lens' ImageList (Maybe Text)
ilNextPageToken
  = lens _ilNextPageToken
      (\ s a -> s{_ilNextPageToken = a})

-- | Type of resource.
ilKind :: Lens' ImageList Text
ilKind = lens _ilKind (\ s a -> s{_ilKind = a})

-- | A list of Image resources.
ilItems :: Lens' ImageList [Image]
ilItems
  = lens _ilItems (\ s a -> s{_ilItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
ilSelfLink :: Lens' ImageList (Maybe Text)
ilSelfLink
  = lens _ilSelfLink (\ s a -> s{_ilSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ilId :: Lens' ImageList (Maybe Text)
ilId = lens _ilId (\ s a -> s{_ilId = a})

instance FromJSON ImageList where
        parseJSON
          = withObject "ImageList"
              (\ o ->
                 ImageList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#imageList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ImageList where
        toJSON ImageList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ilNextPageToken,
                  Just ("kind" .= _ilKind), ("items" .=) <$> _ilItems,
                  ("selfLink" .=) <$> _ilSelfLink,
                  ("id" .=) <$> _ilId])

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'vpnTunnelsScopedListWarning' smart constructor.
data VPNTunnelsScopedListWarning = VPNTunnelsScopedListWarning
    { _vtslwData    :: !(Maybe [VPNTunnelsScopedListWarningDataItem])
    , _vtslwCode    :: !(Maybe VPNTunnelsScopedListWarningCode)
    , _vtslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslwData'
--
-- * 'vtslwCode'
--
-- * 'vtslwMessage'
vpnTunnelsScopedListWarning
    :: VPNTunnelsScopedListWarning
vpnTunnelsScopedListWarning =
    VPNTunnelsScopedListWarning
    { _vtslwData = Nothing
    , _vtslwCode = Nothing
    , _vtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
vtslwData :: Lens' VPNTunnelsScopedListWarning [VPNTunnelsScopedListWarningDataItem]
vtslwData
  = lens _vtslwData (\ s a -> s{_vtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
vtslwCode :: Lens' VPNTunnelsScopedListWarning (Maybe VPNTunnelsScopedListWarningCode)
vtslwCode
  = lens _vtslwCode (\ s a -> s{_vtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
vtslwMessage :: Lens' VPNTunnelsScopedListWarning (Maybe Text)
vtslwMessage
  = lens _vtslwMessage (\ s a -> s{_vtslwMessage = a})

instance FromJSON VPNTunnelsScopedListWarning where
        parseJSON
          = withObject "VPNTunnelsScopedListWarning"
              (\ o ->
                 VPNTunnelsScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON VPNTunnelsScopedListWarning where
        toJSON VPNTunnelsScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _vtslwData,
                  ("code" .=) <$> _vtslwCode,
                  ("message" .=) <$> _vtslwMessage])

-- | A ForwardingRule resource. A ForwardingRule resource specifies which
-- pool of target virtual machines to forward a packet to if it matches the
-- given [IPAddress, IPProtocol, portRange] tuple.
--
-- /See:/ 'forwardingRule' smart constructor.
data ForwardingRule = ForwardingRule
    { _frIPAddress         :: !(Maybe Text)
    , _frKind              :: !Text
    , _frPortRange         :: !(Maybe Text)
    , _frSelfLink          :: !(Maybe Text)
    , _frName              :: !(Maybe Text)
    , _frIPProtocol        :: !(Maybe ForwardingRuleIPProtocol)
    , _frCreationTimestamp :: !(Maybe Text)
    , _frId                :: !(Maybe Word64)
    , _frRegion            :: !(Maybe Text)
    , _frDescription       :: !(Maybe Text)
    , _frTarget            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frIPAddress'
--
-- * 'frKind'
--
-- * 'frPortRange'
--
-- * 'frSelfLink'
--
-- * 'frName'
--
-- * 'frIPProtocol'
--
-- * 'frCreationTimestamp'
--
-- * 'frId'
--
-- * 'frRegion'
--
-- * 'frDescription'
--
-- * 'frTarget'
forwardingRule
    :: ForwardingRule
forwardingRule =
    ForwardingRule
    { _frIPAddress = Nothing
    , _frKind = "compute#forwardingRule"
    , _frPortRange = Nothing
    , _frSelfLink = Nothing
    , _frName = Nothing
    , _frIPProtocol = Nothing
    , _frCreationTimestamp = Nothing
    , _frId = Nothing
    , _frRegion = Nothing
    , _frDescription = Nothing
    , _frTarget = Nothing
    }

-- | Value of the reserved IP address that this forwarding rule is serving on
-- behalf of. For global forwarding rules, the address must be a global IP;
-- for regional forwarding rules, the address must live in the same region
-- as the forwarding rule. If left empty (default value), an ephemeral IP
-- from the same scope (global or regional) will be assigned.
frIPAddress :: Lens' ForwardingRule (Maybe Text)
frIPAddress
  = lens _frIPAddress (\ s a -> s{_frIPAddress = a})

-- | Type of the resource.
frKind :: Lens' ForwardingRule Text
frKind = lens _frKind (\ s a -> s{_frKind = a})

-- | Applicable only when \`IPProtocol\` is TCP, UDP, or SCTP, only packets
-- addressed to ports in the specified range will be forwarded to target.
-- If portRange is left empty (default value), all ports are forwarded.
-- Forwarding rules with the same \`[IPAddress, IPProtocol]\` pair must
-- have disjoint port ranges.
frPortRange :: Lens' ForwardingRule (Maybe Text)
frPortRange
  = lens _frPortRange (\ s a -> s{_frPortRange = a})

-- | [Output Only] Server-defined URL for the resource.
frSelfLink :: Lens' ForwardingRule (Maybe Text)
frSelfLink
  = lens _frSelfLink (\ s a -> s{_frSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
frName :: Lens' ForwardingRule (Maybe Text)
frName = lens _frName (\ s a -> s{_frName = a})

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
frIPProtocol :: Lens' ForwardingRule (Maybe ForwardingRuleIPProtocol)
frIPProtocol
  = lens _frIPProtocol (\ s a -> s{_frIPProtocol = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
frCreationTimestamp :: Lens' ForwardingRule (Maybe Text)
frCreationTimestamp
  = lens _frCreationTimestamp
      (\ s a -> s{_frCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
frId :: Lens' ForwardingRule (Maybe Word64)
frId = lens _frId (\ s a -> s{_frId = a})

-- | [Output Only] URL of the region where the regional forwarding rule
-- resides. This field is not applicable to global forwarding rules.
frRegion :: Lens' ForwardingRule (Maybe Text)
frRegion = lens _frRegion (\ s a -> s{_frRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
frDescription :: Lens' ForwardingRule (Maybe Text)
frDescription
  = lens _frDescription
      (\ s a -> s{_frDescription = a})

-- | The URL of the target resource to receive the matched traffic. For
-- regional forwarding rules, this target must live in the same region as
-- the forwarding rule. For global forwarding rules, this target must be a
-- global TargetHttpProxy or TargetHttpsProxy resource.
frTarget :: Lens' ForwardingRule (Maybe Text)
frTarget = lens _frTarget (\ s a -> s{_frTarget = a})

instance FromJSON ForwardingRule where
        parseJSON
          = withObject "ForwardingRule"
              (\ o ->
                 ForwardingRule <$>
                   (o .:? "IPAddress") <*>
                     (o .:? "kind" .!= "compute#forwardingRule")
                     <*> (o .:? "portRange")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "IPProtocol")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "target"))

instance ToJSON ForwardingRule where
        toJSON ForwardingRule{..}
          = object
              (catMaybes
                 [("IPAddress" .=) <$> _frIPAddress,
                  Just ("kind" .= _frKind),
                  ("portRange" .=) <$> _frPortRange,
                  ("selfLink" .=) <$> _frSelfLink,
                  ("name" .=) <$> _frName,
                  ("IPProtocol" .=) <$> _frIPProtocol,
                  ("creationTimestamp" .=) <$> _frCreationTimestamp,
                  ("id" .=) <$> _frId, ("region" .=) <$> _frRegion,
                  ("description" .=) <$> _frDescription,
                  ("target" .=) <$> _frTarget])

-- | Contains a list of UrlMap resources.
--
-- /See:/ 'urlMapList' smart constructor.
data URLMapList = URLMapList
    { _umlNextPageToken :: !(Maybe Text)
    , _umlKind          :: !Text
    , _umlItems         :: !(Maybe [URLMap])
    , _umlSelfLink      :: !(Maybe Text)
    , _umlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlNextPageToken'
--
-- * 'umlKind'
--
-- * 'umlItems'
--
-- * 'umlSelfLink'
--
-- * 'umlId'
urlMapList
    :: URLMapList
urlMapList =
    URLMapList
    { _umlNextPageToken = Nothing
    , _umlKind = "compute#urlMapList"
    , _umlItems = Nothing
    , _umlSelfLink = Nothing
    , _umlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
umlNextPageToken :: Lens' URLMapList (Maybe Text)
umlNextPageToken
  = lens _umlNextPageToken
      (\ s a -> s{_umlNextPageToken = a})

-- | Type of resource.
umlKind :: Lens' URLMapList Text
umlKind = lens _umlKind (\ s a -> s{_umlKind = a})

-- | A list of UrlMap resources.
umlItems :: Lens' URLMapList [URLMap]
umlItems
  = lens _umlItems (\ s a -> s{_umlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
umlSelfLink :: Lens' URLMapList (Maybe Text)
umlSelfLink
  = lens _umlSelfLink (\ s a -> s{_umlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Set by the server.
umlId :: Lens' URLMapList (Maybe Text)
umlId = lens _umlId (\ s a -> s{_umlId = a})

instance FromJSON URLMapList where
        parseJSON
          = withObject "URLMapList"
              (\ o ->
                 URLMapList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#urlMapList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON URLMapList where
        toJSON URLMapList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _umlNextPageToken,
                  Just ("kind" .= _umlKind),
                  ("items" .=) <$> _umlItems,
                  ("selfLink" .=) <$> _umlSelfLink,
                  ("id" .=) <$> _umlId])

--
-- /See:/ 'forwardingRulesScopedListWarningDataItem' smart constructor.
data ForwardingRulesScopedListWarningDataItem = ForwardingRulesScopedListWarningDataItem
    { _frslwdiValue :: !(Maybe Text)
    , _frslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslwdiValue'
--
-- * 'frslwdiKey'
forwardingRulesScopedListWarningDataItem
    :: ForwardingRulesScopedListWarningDataItem
forwardingRulesScopedListWarningDataItem =
    ForwardingRulesScopedListWarningDataItem
    { _frslwdiValue = Nothing
    , _frslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
frslwdiValue :: Lens' ForwardingRulesScopedListWarningDataItem (Maybe Text)
frslwdiValue
  = lens _frslwdiValue (\ s a -> s{_frslwdiValue = a})

-- | [Output Only] A key for the warning data.
frslwdiKey :: Lens' ForwardingRulesScopedListWarningDataItem (Maybe Text)
frslwdiKey
  = lens _frslwdiKey (\ s a -> s{_frslwdiKey = a})

instance FromJSON
         ForwardingRulesScopedListWarningDataItem where
        parseJSON
          = withObject
              "ForwardingRulesScopedListWarningDataItem"
              (\ o ->
                 ForwardingRulesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         ForwardingRulesScopedListWarningDataItem where
        toJSON ForwardingRulesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _frslwdiValue,
                  ("key" .=) <$> _frslwdiKey])

--
-- /See:/ 'instanceGroupManagersScopedListWarningDataItem' smart constructor.
data InstanceGroupManagersScopedListWarningDataItem = InstanceGroupManagersScopedListWarningDataItem
    { _igmslwdiValue :: !(Maybe Text)
    , _igmslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslwdiValue'
--
-- * 'igmslwdiKey'
instanceGroupManagersScopedListWarningDataItem
    :: InstanceGroupManagersScopedListWarningDataItem
instanceGroupManagersScopedListWarningDataItem =
    InstanceGroupManagersScopedListWarningDataItem
    { _igmslwdiValue = Nothing
    , _igmslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igmslwdiValue :: Lens' InstanceGroupManagersScopedListWarningDataItem (Maybe Text)
igmslwdiValue
  = lens _igmslwdiValue
      (\ s a -> s{_igmslwdiValue = a})

-- | [Output Only] A key for the warning data.
igmslwdiKey :: Lens' InstanceGroupManagersScopedListWarningDataItem (Maybe Text)
igmslwdiKey
  = lens _igmslwdiKey (\ s a -> s{_igmslwdiKey = a})

instance FromJSON
         InstanceGroupManagersScopedListWarningDataItem where
        parseJSON
          = withObject
              "InstanceGroupManagersScopedListWarningDataItem"
              (\ o ->
                 InstanceGroupManagersScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         InstanceGroupManagersScopedListWarningDataItem where
        toJSON
          InstanceGroupManagersScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _igmslwdiValue,
                  ("key" .=) <$> _igmslwdiKey])

-- | A Project resource. Projects can only be created in the Google
-- Developers Console. Unless marked otherwise, values can only be modified
-- in the console.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _pKind                   :: !Text
    , _pUsageExportLocation    :: !(Maybe UsageExportLocation)
    , _pSelfLink               :: !(Maybe Text)
    , _pName                   :: !(Maybe Text)
    , _pCreationTimestamp      :: !(Maybe Text)
    , _pEnabledFeatures        :: !(Maybe [Text])
    , _pQuotas                 :: !(Maybe [Quota])
    , _pId                     :: !(Maybe Word64)
    , _pDescription            :: !(Maybe Text)
    , _pCommonInstanceMetadata :: !(Maybe Metadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pUsageExportLocation'
--
-- * 'pSelfLink'
--
-- * 'pName'
--
-- * 'pCreationTimestamp'
--
-- * 'pEnabledFeatures'
--
-- * 'pQuotas'
--
-- * 'pId'
--
-- * 'pDescription'
--
-- * 'pCommonInstanceMetadata'
project
    :: Project
project =
    Project
    { _pKind = "compute#project"
    , _pUsageExportLocation = Nothing
    , _pSelfLink = Nothing
    , _pName = Nothing
    , _pCreationTimestamp = Nothing
    , _pEnabledFeatures = Nothing
    , _pQuotas = Nothing
    , _pId = Nothing
    , _pDescription = Nothing
    , _pCommonInstanceMetadata = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#project for projects.
pKind :: Lens' Project Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The location in Cloud Storage and naming method of the daily usage
-- report.
pUsageExportLocation :: Lens' Project (Maybe UsageExportLocation)
pUsageExportLocation
  = lens _pUsageExportLocation
      (\ s a -> s{_pUsageExportLocation = a})

-- | [Output Only] Server-defined URL for the resource.
pSelfLink :: Lens' Project (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | Name of the resource.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
pCreationTimestamp :: Lens' Project (Maybe Text)
pCreationTimestamp
  = lens _pCreationTimestamp
      (\ s a -> s{_pCreationTimestamp = a})

-- | Restricted features enabled for use on this project.
pEnabledFeatures :: Lens' Project [Text]
pEnabledFeatures
  = lens _pEnabledFeatures
      (\ s a -> s{_pEnabledFeatures = a})
      . _Default
      . _Coerce

-- | [Output Only] Quotas assigned to this project.
pQuotas :: Lens' Project [Quota]
pQuotas
  = lens _pQuotas (\ s a -> s{_pQuotas = a}) . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
pId :: Lens' Project (Maybe Word64)
pId = lens _pId (\ s a -> s{_pId = a})

-- | An optional textual description of the resource.
pDescription :: Lens' Project (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

-- | Metadata key\/value pairs available to all instances contained in this
-- project. See Custom metadata for more information.
pCommonInstanceMetadata :: Lens' Project (Maybe Metadata)
pCommonInstanceMetadata
  = lens _pCommonInstanceMetadata
      (\ s a -> s{_pCommonInstanceMetadata = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project <$>
                   (o .:? "kind" .!= "compute#project") <*>
                     (o .:? "usageExportLocation")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "enabledFeatures" .!= mempty)
                     <*> (o .:? "quotas" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "commonInstanceMetadata"))

instance ToJSON Project where
        toJSON Project{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind),
                  ("usageExportLocation" .=) <$> _pUsageExportLocation,
                  ("selfLink" .=) <$> _pSelfLink,
                  ("name" .=) <$> _pName,
                  ("creationTimestamp" .=) <$> _pCreationTimestamp,
                  ("enabledFeatures" .=) <$> _pEnabledFeatures,
                  ("quotas" .=) <$> _pQuotas, ("id" .=) <$> _pId,
                  ("description" .=) <$> _pDescription,
                  ("commonInstanceMetadata" .=) <$>
                    _pCommonInstanceMetadata])

-- | An Operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oTargetId            :: !(Maybe Word64)
    , _oStatus              :: !(Maybe OperationStatus)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe Int32)
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHTTPErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationWarningsItem])
    , _oHTTPErrorStatusCode :: !(Maybe Int32)
    , _oUser                :: !(Maybe Text)
    , _oSelfLink            :: !(Maybe Text)
    , _oName                :: !(Maybe Text)
    , _oStatusMessage       :: !(Maybe Text)
    , _oCreationTimestamp   :: !(Maybe Text)
    , _oEndTime             :: !(Maybe Text)
    , _oId                  :: !(Maybe Word64)
    , _oOperationType       :: !(Maybe Text)
    , _oRegion              :: !(Maybe Text)
    , _oTargetLink          :: !(Maybe Text)
    , _oClientOperationId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTargetId'
--
-- * 'oStatus'
--
-- * 'oInsertTime'
--
-- * 'oProgress'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oError'
--
-- * 'oHTTPErrorMessage'
--
-- * 'oZone'
--
-- * 'oWarnings'
--
-- * 'oHTTPErrorStatusCode'
--
-- * 'oUser'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oCreationTimestamp'
--
-- * 'oEndTime'
--
-- * 'oId'
--
-- * 'oOperationType'
--
-- * 'oRegion'
--
-- * 'oTargetLink'
--
-- * 'oClientOperationId'
operation
    :: Operation
operation =
    Operation
    { _oTargetId = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oKind = "compute#operation"
    , _oError = Nothing
    , _oHTTPErrorMessage = Nothing
    , _oZone = Nothing
    , _oWarnings = Nothing
    , _oHTTPErrorStatusCode = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oCreationTimestamp = Nothing
    , _oEndTime = Nothing
    , _oId = Nothing
    , _oOperationType = Nothing
    , _oRegion = Nothing
    , _oTargetLink = Nothing
    , _oClientOperationId = Nothing
    }

-- | [Output Only] Unique target ID which identifies a particular incarnation
-- of the target.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested. This is in
-- RFC3339 text format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

-- | [Output Only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess at when the operation
-- will be complete. This number should monotonically increase as the
-- operation progresses.
oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output Only] The time that this operation was started by the server.
-- This is in RFC3339 text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always compute#Operation for
-- Operation resources.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as NOT FOUND.
oHTTPErrorMessage :: Lens' Operation (Maybe Text)
oHTTPErrorMessage
  = lens _oHTTPErrorMessage
      (\ s a -> s{_oHTTPErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | [Output Only] If warning messages are generated during processing of the
-- operation, this field will be populated.
oWarnings :: Lens' Operation [OperationWarningsItem]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as 404.
oHTTPErrorStatusCode :: Lens' Operation (Maybe Int32)
oHTTPErrorStatusCode
  = lens _oHTTPErrorStatusCode
      (\ s a -> s{_oHTTPErrorStatusCode = a})

-- | [Output Only] User who requested the operation, for example:
-- user\'example.com.
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | [Output Only] Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | [Output Only] Name of the resource.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | [Output Only] An optional textual description of the current status of
-- the operation.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
oCreationTimestamp :: Lens' Operation (Maybe Text)
oCreationTimestamp
  = lens _oCreationTimestamp
      (\ s a -> s{_oCreationTimestamp = a})

-- | [Output Only] The time that this operation was completed. This is in
-- RFC3339 text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

-- | [Output Only] Type of the operation, such as insert, update, and delete.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] URL of the region where the operation resides. Only
-- applicable for regional resources.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output Only] URL of the resource the operation is mutating.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Output Only] An optional identifier specified by the client when the
-- mutation was initiated. Must be unique for all Operation resources in
-- the project.
oClientOperationId :: Lens' Operation (Maybe Text)
oClientOperationId
  = lens _oClientOperationId
      (\ s a -> s{_oClientOperationId = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "targetId") <*> (o .:? "status") <*>
                     (o .:? "insertTime")
                     <*> (o .:? "progress")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "compute#operation")
                     <*> (o .:? "error")
                     <*> (o .:? "httpErrorMessage")
                     <*> (o .:? "zone")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "httpErrorStatusCode")
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "operationType")
                     <*> (o .:? "region")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "clientOperationId"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _oTargetId,
                  ("status" .=) <$> _oStatus,
                  ("insertTime" .=) <$> _oInsertTime,
                  ("progress" .=) <$> _oProgress,
                  ("startTime" .=) <$> _oStartTime,
                  Just ("kind" .= _oKind), ("error" .=) <$> _oError,
                  ("httpErrorMessage" .=) <$> _oHTTPErrorMessage,
                  ("zone" .=) <$> _oZone,
                  ("warnings" .=) <$> _oWarnings,
                  ("httpErrorStatusCode" .=) <$> _oHTTPErrorStatusCode,
                  ("user" .=) <$> _oUser,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("statusMessage" .=) <$> _oStatusMessage,
                  ("creationTimestamp" .=) <$> _oCreationTimestamp,
                  ("endTime" .=) <$> _oEndTime, ("id" .=) <$> _oId,
                  ("operationType" .=) <$> _oOperationType,
                  ("region" .=) <$> _oRegion,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("clientOperationId" .=) <$> _oClientOperationId])

--
-- /See:/ 'disksScopedListWarningDataItem' smart constructor.
data DisksScopedListWarningDataItem = DisksScopedListWarningDataItem
    { _dslwdiValue :: !(Maybe Text)
    , _dslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslwdiValue'
--
-- * 'dslwdiKey'
disksScopedListWarningDataItem
    :: DisksScopedListWarningDataItem
disksScopedListWarningDataItem =
    DisksScopedListWarningDataItem
    { _dslwdiValue = Nothing
    , _dslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dslwdiValue :: Lens' DisksScopedListWarningDataItem (Maybe Text)
dslwdiValue
  = lens _dslwdiValue (\ s a -> s{_dslwdiValue = a})

-- | [Output Only] A key for the warning data.
dslwdiKey :: Lens' DisksScopedListWarningDataItem (Maybe Text)
dslwdiKey
  = lens _dslwdiKey (\ s a -> s{_dslwdiKey = a})

instance FromJSON DisksScopedListWarningDataItem
         where
        parseJSON
          = withObject "DisksScopedListWarningDataItem"
              (\ o ->
                 DisksScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DisksScopedListWarningDataItem where
        toJSON DisksScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dslwdiValue,
                  ("key" .=) <$> _dslwdiKey])

-- | A Disk resource.
--
-- /See:/ 'disk' smart constructor.
data Disk = Disk
    { _dStatus              :: !(Maybe DiskStatus)
    , _dSourceSnapshotId    :: !(Maybe Text)
    , _dLastAttachTimestamp :: !(Maybe Text)
    , _dUsers               :: !(Maybe [Text])
    , _dSourceImage         :: !(Maybe Text)
    , _dSizeGb              :: !(Maybe Int64)
    , _dKind                :: !Text
    , _dLastDetachTimestamp :: !(Maybe Text)
    , _dZone                :: !(Maybe Text)
    , _dSelfLink            :: !(Maybe Text)
    , _dName                :: !(Maybe Text)
    , _dSourceImageId       :: !(Maybe Text)
    , _dCreationTimestamp   :: !(Maybe Text)
    , _dId                  :: !(Maybe Word64)
    , _dLicenses            :: !(Maybe [Text])
    , _dOptions             :: !(Maybe Text)
    , _dType                :: !(Maybe Text)
    , _dDescription         :: !(Maybe Text)
    , _dSourceSnapshot      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStatus'
--
-- * 'dSourceSnapshotId'
--
-- * 'dLastAttachTimestamp'
--
-- * 'dUsers'
--
-- * 'dSourceImage'
--
-- * 'dSizeGb'
--
-- * 'dKind'
--
-- * 'dLastDetachTimestamp'
--
-- * 'dZone'
--
-- * 'dSelfLink'
--
-- * 'dName'
--
-- * 'dSourceImageId'
--
-- * 'dCreationTimestamp'
--
-- * 'dId'
--
-- * 'dLicenses'
--
-- * 'dOptions'
--
-- * 'dType'
--
-- * 'dDescription'
--
-- * 'dSourceSnapshot'
disk
    :: Disk
disk =
    Disk
    { _dStatus = Nothing
    , _dSourceSnapshotId = Nothing
    , _dLastAttachTimestamp = Nothing
    , _dUsers = Nothing
    , _dSourceImage = Nothing
    , _dSizeGb = Nothing
    , _dKind = "compute#disk"
    , _dLastDetachTimestamp = Nothing
    , _dZone = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dSourceImageId = Nothing
    , _dCreationTimestamp = Nothing
    , _dId = Nothing
    , _dLicenses = Nothing
    , _dOptions = Nothing
    , _dType = Nothing
    , _dDescription = Nothing
    , _dSourceSnapshot = Nothing
    }

-- | [Output Only] The status of disk creation. Applicable statuses includes:
-- CREATING, FAILED, READY, RESTORING.
dStatus :: Lens' Disk (Maybe DiskStatus)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | [Output Only] The unique ID of the snapshot used to create this disk.
-- This value identifies the exact snapshot that was used to create this
-- persistent disk. For example, if you created the persistent disk from a
-- snapshot that was later deleted and recreated under the same name, the
-- source snapshot ID would identify the exact version of the snapshot that
-- was used.
dSourceSnapshotId :: Lens' Disk (Maybe Text)
dSourceSnapshotId
  = lens _dSourceSnapshotId
      (\ s a -> s{_dSourceSnapshotId = a})

-- | [Output Only] Last attach timestamp in RFC3339 text format.
dLastAttachTimestamp :: Lens' Disk (Maybe Text)
dLastAttachTimestamp
  = lens _dLastAttachTimestamp
      (\ s a -> s{_dLastAttachTimestamp = a})

-- | Links to the users of the disk (attached instances) in form:
-- project\/zones\/zone\/instances\/instance
dUsers :: Lens' Disk [Text]
dUsers
  = lens _dUsers (\ s a -> s{_dUsers = a}) . _Default .
      _Coerce

-- | The source image used to create this disk. If the source image is
-- deleted from the system, this field will not be set, even if an image
-- with the same name has been re-created. When creating a disk, you can
-- provide a private (custom) image using the following input, and Compute
-- Engine will use the corresponding image from your project. For example:
-- global\/images\/my-private-image Or you can provide an image from a
-- publicly-available project. For example, to use a Debian image from the
-- debian-cloud project, make sure to include the project in the URL:
-- projects\/debian-cloud\/global\/images\/debian-7-wheezy-vYYYYMMDD where
-- vYYYYMMDD is the image version. The fully-qualified URL will also work
-- in both cases.
dSourceImage :: Lens' Disk (Maybe Text)
dSourceImage
  = lens _dSourceImage (\ s a -> s{_dSourceImage = a})

-- | Size of the persistent disk, specified in GB. You can specify this field
-- when creating a persistent disk using the sourceImage or sourceSnapshot
-- parameter, or specify it alone to create an empty persistent disk. If
-- you specify this field along with sourceImage or sourceSnapshot, the
-- value of sizeGb must not be less than the size of the sourceImage or the
-- size of the snapshot.
dSizeGb :: Lens' Disk (Maybe Int64)
dSizeGb = lens _dSizeGb (\ s a -> s{_dSizeGb = a})

-- | [Output Only] Type of the resource. Always compute#disk for disks.
dKind :: Lens' Disk Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | [Output Only] Last detach timestamp in RFC3339 text format.
dLastDetachTimestamp :: Lens' Disk (Maybe Text)
dLastDetachTimestamp
  = lens _dLastDetachTimestamp
      (\ s a -> s{_dLastDetachTimestamp = a})

-- | [Output Only] URL of the zone where the disk resides.
dZone :: Lens' Disk (Maybe Text)
dZone = lens _dZone (\ s a -> s{_dZone = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
dSelfLink :: Lens' Disk (Maybe Text)
dSelfLink
  = lens _dSelfLink (\ s a -> s{_dSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
dName :: Lens' Disk (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The ID value of the image used to create this disk. This value
-- identifies the exact image that was used to create this persistent disk.
-- For example, if you created the persistent disk from an image that was
-- later deleted and recreated under the same name, the source image ID
-- would identify the exact version of the image that was used.
dSourceImageId :: Lens' Disk (Maybe Text)
dSourceImageId
  = lens _dSourceImageId
      (\ s a -> s{_dSourceImageId = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
dCreationTimestamp :: Lens' Disk (Maybe Text)
dCreationTimestamp
  = lens _dCreationTimestamp
      (\ s a -> s{_dCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dId :: Lens' Disk (Maybe Word64)
dId = lens _dId (\ s a -> s{_dId = a})

-- | Any applicable publicly visible licenses.
dLicenses :: Lens' Disk [Text]
dLicenses
  = lens _dLicenses (\ s a -> s{_dLicenses = a}) .
      _Default
      . _Coerce

-- | Internal use only.
dOptions :: Lens' Disk (Maybe Text)
dOptions = lens _dOptions (\ s a -> s{_dOptions = a})

-- | URL of the disk type resource describing which disk type to use to
-- create the disk; provided by the client when the disk is created.
dType :: Lens' Disk (Maybe Text)
dType = lens _dType (\ s a -> s{_dType = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
dDescription :: Lens' Disk (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | The source snapshot used to create this disk. You can provide this as a
-- partial or full URL to the resource. For example, the following are
-- valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/snapshots\/snapshot
-- - projects\/project\/global\/snapshots\/snapshot -
-- global\/snapshots\/snapshot
dSourceSnapshot :: Lens' Disk (Maybe Text)
dSourceSnapshot
  = lens _dSourceSnapshot
      (\ s a -> s{_dSourceSnapshot = a})

instance FromJSON Disk where
        parseJSON
          = withObject "Disk"
              (\ o ->
                 Disk <$>
                   (o .:? "status") <*> (o .:? "sourceSnapshotId") <*>
                     (o .:? "lastAttachTimestamp")
                     <*> (o .:? "users" .!= mempty)
                     <*> (o .:? "sourceImage")
                     <*> (o .:? "sizeGb")
                     <*> (o .:? "kind" .!= "compute#disk")
                     <*> (o .:? "lastDetachTimestamp")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "sourceImageId")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "options")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "sourceSnapshot"))

instance ToJSON Disk where
        toJSON Disk{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dStatus,
                  ("sourceSnapshotId" .=) <$> _dSourceSnapshotId,
                  ("lastAttachTimestamp" .=) <$> _dLastAttachTimestamp,
                  ("users" .=) <$> _dUsers,
                  ("sourceImage" .=) <$> _dSourceImage,
                  ("sizeGb" .=) <$> _dSizeGb, Just ("kind" .= _dKind),
                  ("lastDetachTimestamp" .=) <$> _dLastDetachTimestamp,
                  ("zone" .=) <$> _dZone,
                  ("selfLink" .=) <$> _dSelfLink,
                  ("name" .=) <$> _dName,
                  ("sourceImageId" .=) <$> _dSourceImageId,
                  ("creationTimestamp" .=) <$> _dCreationTimestamp,
                  ("id" .=) <$> _dId, ("licenses" .=) <$> _dLicenses,
                  ("options" .=) <$> _dOptions, ("type" .=) <$> _dType,
                  ("description" .=) <$> _dDescription,
                  ("sourceSnapshot" .=) <$> _dSourceSnapshot])

--
-- /See:/ 'diskMoveRequest' smart constructor.
data DiskMoveRequest = DiskMoveRequest
    { _dmrTargetDisk      :: !(Maybe Text)
    , _dmrDestinationZone :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskMoveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrTargetDisk'
--
-- * 'dmrDestinationZone'
diskMoveRequest
    :: DiskMoveRequest
diskMoveRequest =
    DiskMoveRequest
    { _dmrTargetDisk = Nothing
    , _dmrDestinationZone = Nothing
    }

-- | The URL of the target disk to move. This can be a full or partial URL.
-- For example, the following are all valid URLs to a disk: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/disks\/disk
-- - projects\/project\/zones\/zone\/disks\/disk - zones\/zone\/disks\/disk
dmrTargetDisk :: Lens' DiskMoveRequest (Maybe Text)
dmrTargetDisk
  = lens _dmrTargetDisk
      (\ s a -> s{_dmrTargetDisk = a})

-- | The URL of the destination zone to move the disk to. This can be a full
-- or partial URL. For example, the following are all valid URLs to a zone:
-- -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone
-- - projects\/project\/zones\/zone - zones\/zone
dmrDestinationZone :: Lens' DiskMoveRequest (Maybe Text)
dmrDestinationZone
  = lens _dmrDestinationZone
      (\ s a -> s{_dmrDestinationZone = a})

instance FromJSON DiskMoveRequest where
        parseJSON
          = withObject "DiskMoveRequest"
              (\ o ->
                 DiskMoveRequest <$>
                   (o .:? "targetDisk") <*> (o .:? "destinationZone"))

instance ToJSON DiskMoveRequest where
        toJSON DiskMoveRequest{..}
          = object
              (catMaybes
                 [("targetDisk" .=) <$> _dmrTargetDisk,
                  ("destinationZone" .=) <$> _dmrDestinationZone])

-- | Load balancing utilization policy.
--
-- /See:/ 'autoscalingPolicyLoadBalancingUtilization' smart constructor.
newtype AutoscalingPolicyLoadBalancingUtilization = AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget :: Maybe Double
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyLoadBalancingUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplbuUtilizationTarget'
autoscalingPolicyLoadBalancingUtilization
    :: AutoscalingPolicyLoadBalancingUtilization
autoscalingPolicyLoadBalancingUtilization =
    AutoscalingPolicyLoadBalancingUtilization
    { _aplbuUtilizationTarget = Nothing
    }

-- | Fraction of backend capacity utilization (set in HTTP load balancing
-- configuration) that Autoscaler should maintain. Must be a positive float
-- value. If not defined, the default is 0.8. For example if your
-- maxRatePerInstance capacity (in HTTP Load Balancing configuration) is
-- set at 10 and you would like to keep number of instances such that each
-- instance receives 7 QPS on average, set this to 0.7.
aplbuUtilizationTarget :: Lens' AutoscalingPolicyLoadBalancingUtilization (Maybe Double)
aplbuUtilizationTarget
  = lens _aplbuUtilizationTarget
      (\ s a -> s{_aplbuUtilizationTarget = a})

instance FromJSON
         AutoscalingPolicyLoadBalancingUtilization where
        parseJSON
          = withObject
              "AutoscalingPolicyLoadBalancingUtilization"
              (\ o ->
                 AutoscalingPolicyLoadBalancingUtilization <$>
                   (o .:? "utilizationTarget"))

instance ToJSON
         AutoscalingPolicyLoadBalancingUtilization where
        toJSON AutoscalingPolicyLoadBalancingUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _aplbuUtilizationTarget])

--
-- /See:/ 'targetPoolsScopedListWarningDataItem' smart constructor.
data TargetPoolsScopedListWarningDataItem = TargetPoolsScopedListWarningDataItem
    { _tpslwdiValue :: !(Maybe Text)
    , _tpslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslwdiValue'
--
-- * 'tpslwdiKey'
targetPoolsScopedListWarningDataItem
    :: TargetPoolsScopedListWarningDataItem
targetPoolsScopedListWarningDataItem =
    TargetPoolsScopedListWarningDataItem
    { _tpslwdiValue = Nothing
    , _tpslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tpslwdiValue :: Lens' TargetPoolsScopedListWarningDataItem (Maybe Text)
tpslwdiValue
  = lens _tpslwdiValue (\ s a -> s{_tpslwdiValue = a})

-- | [Output Only] A key for the warning data.
tpslwdiKey :: Lens' TargetPoolsScopedListWarningDataItem (Maybe Text)
tpslwdiKey
  = lens _tpslwdiKey (\ s a -> s{_tpslwdiKey = a})

instance FromJSON
         TargetPoolsScopedListWarningDataItem where
        parseJSON
          = withObject "TargetPoolsScopedListWarningDataItem"
              (\ o ->
                 TargetPoolsScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON TargetPoolsScopedListWarningDataItem
         where
        toJSON TargetPoolsScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tpslwdiValue,
                  ("key" .=) <$> _tpslwdiKey])

-- | InstanceGroupManagers Next available tag: 19
--
-- /See:/ 'instanceGroupManager' smart constructor.
data InstanceGroupManager = InstanceGroupManager
    { _igmKind              :: !Text
    , _igmFingerprint       :: !(Maybe Word8)
    , _igmBaseInstanceName  :: !(Maybe Text)
    , _igmZone              :: !(Maybe Text)
    , _igmInstanceTemplate  :: !(Maybe Text)
    , _igmTargetSize        :: !(Maybe Int32)
    , _igmSelfLink          :: !(Maybe Text)
    , _igmCurrentActions    :: !(Maybe InstanceGroupManagerActionsSummary)
    , _igmName              :: !(Maybe Text)
    , _igmCreationTimestamp :: !(Maybe Text)
    , _igmId                :: !(Maybe Word64)
    , _igmTargetPools       :: !(Maybe [Text])
    , _igmDescription       :: !(Maybe Text)
    , _igmInstanceGroup     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManager' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmKind'
--
-- * 'igmFingerprint'
--
-- * 'igmBaseInstanceName'
--
-- * 'igmZone'
--
-- * 'igmInstanceTemplate'
--
-- * 'igmTargetSize'
--
-- * 'igmSelfLink'
--
-- * 'igmCurrentActions'
--
-- * 'igmName'
--
-- * 'igmCreationTimestamp'
--
-- * 'igmId'
--
-- * 'igmTargetPools'
--
-- * 'igmDescription'
--
-- * 'igmInstanceGroup'
instanceGroupManager
    :: InstanceGroupManager
instanceGroupManager =
    InstanceGroupManager
    { _igmKind = "compute#instanceGroupManager"
    , _igmFingerprint = Nothing
    , _igmBaseInstanceName = Nothing
    , _igmZone = Nothing
    , _igmInstanceTemplate = Nothing
    , _igmTargetSize = Nothing
    , _igmSelfLink = Nothing
    , _igmCurrentActions = Nothing
    , _igmName = Nothing
    , _igmCreationTimestamp = Nothing
    , _igmId = Nothing
    , _igmTargetPools = Nothing
    , _igmDescription = Nothing
    , _igmInstanceGroup = Nothing
    }

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManager for managed instance groups.
igmKind :: Lens' InstanceGroupManager Text
igmKind = lens _igmKind (\ s a -> s{_igmKind = a})

-- | [Output Only] The fingerprint of the target pools information, which is
-- a hash of the contents. This field is used for optimistic locking when
-- updating the target pool entries.
igmFingerprint :: Lens' InstanceGroupManager (Maybe Word8)
igmFingerprint
  = lens _igmFingerprint
      (\ s a -> s{_igmFingerprint = a})

-- | The base instance name to use for instances in this group. The value
-- must be 1-58 characters long. Instances are named by appending a hyphen
-- and a random four-character string to the base instance name. The base
-- instance name must comply with RFC1035.
igmBaseInstanceName :: Lens' InstanceGroupManager (Maybe Text)
igmBaseInstanceName
  = lens _igmBaseInstanceName
      (\ s a -> s{_igmBaseInstanceName = a})

-- | The URL of the zone where the managed instance group is located.
igmZone :: Lens' InstanceGroupManager (Maybe Text)
igmZone = lens _igmZone (\ s a -> s{_igmZone = a})

-- | The URL of the instance template that is specified for this managed
-- instance group. The group uses this template to create all new instances
-- in the managed instance group.
igmInstanceTemplate :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceTemplate
  = lens _igmInstanceTemplate
      (\ s a -> s{_igmInstanceTemplate = a})

-- | The target number of running instances for this managed instance group.
-- Deleting or abandoning instances reduces this number. Resizing the group
-- changes this number.
igmTargetSize :: Lens' InstanceGroupManager (Maybe Int32)
igmTargetSize
  = lens _igmTargetSize
      (\ s a -> s{_igmTargetSize = a})

-- | [Output Only] Server-defined URL for this managed instance group.
igmSelfLink :: Lens' InstanceGroupManager (Maybe Text)
igmSelfLink
  = lens _igmSelfLink (\ s a -> s{_igmSelfLink = a})

-- | [Output Only] The list of instance actions and the number of instances
-- in this managed instance group that are scheduled for those actions.
igmCurrentActions :: Lens' InstanceGroupManager (Maybe InstanceGroupManagerActionsSummary)
igmCurrentActions
  = lens _igmCurrentActions
      (\ s a -> s{_igmCurrentActions = a})

-- | The name of the managed instance group. The name must be 1-63 characters
-- long, and comply with RFC1035.
igmName :: Lens' InstanceGroupManager (Maybe Text)
igmName = lens _igmName (\ s a -> s{_igmName = a})

-- | [Output Only] The creation timestamp for this managed instance group in
-- RFC3339 text format.
igmCreationTimestamp :: Lens' InstanceGroupManager (Maybe Text)
igmCreationTimestamp
  = lens _igmCreationTimestamp
      (\ s a -> s{_igmCreationTimestamp = a})

-- | [Output Only] A unique identifier for this managed instance group. The
-- server defines this identifier.
igmId :: Lens' InstanceGroupManager (Maybe Word64)
igmId = lens _igmId (\ s a -> s{_igmId = a})

-- | The URLs of all TargetPool resources to which new instances in the
-- instanceGroup field are added. Updating the target pool values does not
-- affect existing instances.
igmTargetPools :: Lens' InstanceGroupManager [Text]
igmTargetPools
  = lens _igmTargetPools
      (\ s a -> s{_igmTargetPools = a})
      . _Default
      . _Coerce

-- | An optional text description for the managed instance group.
igmDescription :: Lens' InstanceGroupManager (Maybe Text)
igmDescription
  = lens _igmDescription
      (\ s a -> s{_igmDescription = a})

-- | [Output Only] The URL of the InstanceGroup resource.
igmInstanceGroup :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceGroup
  = lens _igmInstanceGroup
      (\ s a -> s{_igmInstanceGroup = a})

instance FromJSON InstanceGroupManager where
        parseJSON
          = withObject "InstanceGroupManager"
              (\ o ->
                 InstanceGroupManager <$>
                   (o .:? "kind" .!= "compute#instanceGroupManager") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "baseInstanceName")
                     <*> (o .:? "zone")
                     <*> (o .:? "instanceTemplate")
                     <*> (o .:? "targetSize")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "currentActions")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "targetPools" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroup"))

instance ToJSON InstanceGroupManager where
        toJSON InstanceGroupManager{..}
          = object
              (catMaybes
                 [Just ("kind" .= _igmKind),
                  ("fingerprint" .=) <$> _igmFingerprint,
                  ("baseInstanceName" .=) <$> _igmBaseInstanceName,
                  ("zone" .=) <$> _igmZone,
                  ("instanceTemplate" .=) <$> _igmInstanceTemplate,
                  ("targetSize" .=) <$> _igmTargetSize,
                  ("selfLink" .=) <$> _igmSelfLink,
                  ("currentActions" .=) <$> _igmCurrentActions,
                  ("name" .=) <$> _igmName,
                  ("creationTimestamp" .=) <$> _igmCreationTimestamp,
                  ("id" .=) <$> _igmId,
                  ("targetPools" .=) <$> _igmTargetPools,
                  ("description" .=) <$> _igmDescription,
                  ("instanceGroup" .=) <$> _igmInstanceGroup])

--
-- /See:/ 'instanceGroupsRemoveInstancesRequest' smart constructor.
newtype InstanceGroupsRemoveInstancesRequest = InstanceGroupsRemoveInstancesRequest
    { _igrirInstances :: Maybe [InstanceReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igrirInstances'
instanceGroupsRemoveInstancesRequest
    :: InstanceGroupsRemoveInstancesRequest
instanceGroupsRemoveInstancesRequest =
    InstanceGroupsRemoveInstancesRequest
    { _igrirInstances = Nothing
    }

-- | The instances to remove from the instance group.
igrirInstances :: Lens' InstanceGroupsRemoveInstancesRequest [InstanceReference]
igrirInstances
  = lens _igrirInstances
      (\ s a -> s{_igrirInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupsRemoveInstancesRequest where
        parseJSON
          = withObject "InstanceGroupsRemoveInstancesRequest"
              (\ o ->
                 InstanceGroupsRemoveInstancesRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON InstanceGroupsRemoveInstancesRequest
         where
        toJSON InstanceGroupsRemoveInstancesRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _igrirInstances])

--
-- /See:/ 'routeWarningsItemDataItem' smart constructor.
data RouteWarningsItemDataItem = RouteWarningsItemDataItem
    { _rwidiValue :: !(Maybe Text)
    , _rwidiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouteWarningsItemDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwidiValue'
--
-- * 'rwidiKey'
routeWarningsItemDataItem
    :: RouteWarningsItemDataItem
routeWarningsItemDataItem =
    RouteWarningsItemDataItem
    { _rwidiValue = Nothing
    , _rwidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
rwidiValue :: Lens' RouteWarningsItemDataItem (Maybe Text)
rwidiValue
  = lens _rwidiValue (\ s a -> s{_rwidiValue = a})

-- | [Output Only] A key for the warning data.
rwidiKey :: Lens' RouteWarningsItemDataItem (Maybe Text)
rwidiKey = lens _rwidiKey (\ s a -> s{_rwidiKey = a})

instance FromJSON RouteWarningsItemDataItem where
        parseJSON
          = withObject "RouteWarningsItemDataItem"
              (\ o ->
                 RouteWarningsItemDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON RouteWarningsItemDataItem where
        toJSON RouteWarningsItemDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rwidiValue,
                  ("key" .=) <$> _rwidiKey])

-- | [Output Only] A map of scoped instance lists.
--
-- /See:/ 'instanceAggregatedListItems' smart constructor.
newtype InstanceAggregatedListItems = InstanceAggregatedListItems
    { _ialiAddtional :: HashMap Text InstancesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialiAddtional'
instanceAggregatedListItems
    :: HashMap Text InstancesScopedList -- ^ 'addtional'
    -> InstanceAggregatedListItems
instanceAggregatedListItems pIaliAddtional_ =
    InstanceAggregatedListItems
    { _ialiAddtional = pIaliAddtional_
    }

-- | Name of the scope containing this set of instances.
ialiAddtional :: Lens' InstanceAggregatedListItems (HashMap Text InstancesScopedList)
ialiAddtional
  = lens _ialiAddtional
      (\ s a -> s{_ialiAddtional = a})

instance FromJSON InstanceAggregatedListItems where
        parseJSON
          = withObject "InstanceAggregatedListItems"
              (\ o ->
                 InstanceAggregatedListItems <$> (parseJSONObject o))

instance ToJSON InstanceAggregatedListItems where
        toJSON = toJSON . _ialiAddtional

-- | Informational warning which replaces the list of autoscalers when the
-- list is empty.
--
-- /See:/ 'autoscalersScopedListWarning' smart constructor.
data AutoscalersScopedListWarning = AutoscalersScopedListWarning
    { _aslwData    :: !(Maybe [AutoscalersScopedListWarningDataItem])
    , _aslwCode    :: !(Maybe AutoscalersScopedListWarningCode)
    , _aslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslwData'
--
-- * 'aslwCode'
--
-- * 'aslwMessage'
autoscalersScopedListWarning
    :: AutoscalersScopedListWarning
autoscalersScopedListWarning =
    AutoscalersScopedListWarning
    { _aslwData = Nothing
    , _aslwCode = Nothing
    , _aslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
aslwData :: Lens' AutoscalersScopedListWarning [AutoscalersScopedListWarningDataItem]
aslwData
  = lens _aslwData (\ s a -> s{_aslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
aslwCode :: Lens' AutoscalersScopedListWarning (Maybe AutoscalersScopedListWarningCode)
aslwCode = lens _aslwCode (\ s a -> s{_aslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
aslwMessage :: Lens' AutoscalersScopedListWarning (Maybe Text)
aslwMessage
  = lens _aslwMessage (\ s a -> s{_aslwMessage = a})

instance FromJSON AutoscalersScopedListWarning where
        parseJSON
          = withObject "AutoscalersScopedListWarning"
              (\ o ->
                 AutoscalersScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON AutoscalersScopedListWarning where
        toJSON AutoscalersScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _aslwData,
                  ("code" .=) <$> _aslwCode,
                  ("message" .=) <$> _aslwMessage])

-- | Encountered errors during the last attempt to create or delete the
-- instance.
--
-- /See:/ 'managedInstanceLastAttemptErrors' smart constructor.
newtype ManagedInstanceLastAttemptErrors = ManagedInstanceLastAttemptErrors
    { _milaeErrors :: Maybe [ManagedInstanceLastAttemptErrorsErrorsItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttemptErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaeErrors'
managedInstanceLastAttemptErrors
    :: ManagedInstanceLastAttemptErrors
managedInstanceLastAttemptErrors =
    ManagedInstanceLastAttemptErrors
    { _milaeErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
milaeErrors :: Lens' ManagedInstanceLastAttemptErrors [ManagedInstanceLastAttemptErrorsErrorsItem]
milaeErrors
  = lens _milaeErrors (\ s a -> s{_milaeErrors = a}) .
      _Default
      . _Coerce

instance FromJSON ManagedInstanceLastAttemptErrors
         where
        parseJSON
          = withObject "ManagedInstanceLastAttemptErrors"
              (\ o ->
                 ManagedInstanceLastAttemptErrors <$>
                   (o .:? "errors" .!= mempty))

instance ToJSON ManagedInstanceLastAttemptErrors
         where
        toJSON ManagedInstanceLastAttemptErrors{..}
          = object (catMaybes [("errors" .=) <$> _milaeErrors])

--
-- /See:/ 'targetPoolsRemoveInstanceRequest' smart constructor.
newtype TargetPoolsRemoveInstanceRequest = TargetPoolsRemoveInstanceRequest
    { _tprirInstances :: Maybe [InstanceReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprirInstances'
targetPoolsRemoveInstanceRequest
    :: TargetPoolsRemoveInstanceRequest
targetPoolsRemoveInstanceRequest =
    TargetPoolsRemoveInstanceRequest
    { _tprirInstances = Nothing
    }

-- | URLs of the instances to be removed from targetPool.
tprirInstances :: Lens' TargetPoolsRemoveInstanceRequest [InstanceReference]
tprirInstances
  = lens _tprirInstances
      (\ s a -> s{_tprirInstances = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolsRemoveInstanceRequest
         where
        parseJSON
          = withObject "TargetPoolsRemoveInstanceRequest"
              (\ o ->
                 TargetPoolsRemoveInstanceRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON TargetPoolsRemoveInstanceRequest
         where
        toJSON TargetPoolsRemoveInstanceRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _tprirInstances])

--
-- /See:/ 'targetInstancesScopedListWarningDataItem' smart constructor.
data TargetInstancesScopedListWarningDataItem = TargetInstancesScopedListWarningDataItem
    { _tislwdiValue :: !(Maybe Text)
    , _tislwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislwdiValue'
--
-- * 'tislwdiKey'
targetInstancesScopedListWarningDataItem
    :: TargetInstancesScopedListWarningDataItem
targetInstancesScopedListWarningDataItem =
    TargetInstancesScopedListWarningDataItem
    { _tislwdiValue = Nothing
    , _tislwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tislwdiValue :: Lens' TargetInstancesScopedListWarningDataItem (Maybe Text)
tislwdiValue
  = lens _tislwdiValue (\ s a -> s{_tislwdiValue = a})

-- | [Output Only] A key for the warning data.
tislwdiKey :: Lens' TargetInstancesScopedListWarningDataItem (Maybe Text)
tislwdiKey
  = lens _tislwdiKey (\ s a -> s{_tislwdiKey = a})

instance FromJSON
         TargetInstancesScopedListWarningDataItem where
        parseJSON
          = withObject
              "TargetInstancesScopedListWarningDataItem"
              (\ o ->
                 TargetInstancesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         TargetInstancesScopedListWarningDataItem where
        toJSON TargetInstancesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tislwdiValue,
                  ("key" .=) <$> _tislwdiKey])

-- | [Output Only] An informational warning that appears when the machine
-- types list is empty.
--
-- /See:/ 'machineTypesScopedListWarning' smart constructor.
data MachineTypesScopedListWarning = MachineTypesScopedListWarning
    { _mtslwData    :: !(Maybe [MachineTypesScopedListWarningDataItem])
    , _mtslwCode    :: !(Maybe MachineTypesScopedListWarningCode)
    , _mtslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslwData'
--
-- * 'mtslwCode'
--
-- * 'mtslwMessage'
machineTypesScopedListWarning
    :: MachineTypesScopedListWarning
machineTypesScopedListWarning =
    MachineTypesScopedListWarning
    { _mtslwData = Nothing
    , _mtslwCode = Nothing
    , _mtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
mtslwData :: Lens' MachineTypesScopedListWarning [MachineTypesScopedListWarningDataItem]
mtslwData
  = lens _mtslwData (\ s a -> s{_mtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
mtslwCode :: Lens' MachineTypesScopedListWarning (Maybe MachineTypesScopedListWarningCode)
mtslwCode
  = lens _mtslwCode (\ s a -> s{_mtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
mtslwMessage :: Lens' MachineTypesScopedListWarning (Maybe Text)
mtslwMessage
  = lens _mtslwMessage (\ s a -> s{_mtslwMessage = a})

instance FromJSON MachineTypesScopedListWarning where
        parseJSON
          = withObject "MachineTypesScopedListWarning"
              (\ o ->
                 MachineTypesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON MachineTypesScopedListWarning where
        toJSON MachineTypesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _mtslwData,
                  ("code" .=) <$> _mtslwCode,
                  ("message" .=) <$> _mtslwMessage])

-- | A TargetInstance resource. This resource defines an endpoint instance
-- that terminates traffic of certain protocols.
--
-- /See:/ 'targetInstance' smart constructor.
data TargetInstance = TargetInstance
    { _tiKind              :: !Text
    , _tiNATPolicy         :: !(Maybe TargetInstanceNATPolicy)
    , _tiZone              :: !(Maybe Text)
    , _tiSelfLink          :: !(Maybe Text)
    , _tiName              :: !(Maybe Text)
    , _tiCreationTimestamp :: !(Maybe Text)
    , _tiId                :: !(Maybe Word64)
    , _tiDescription       :: !(Maybe Text)
    , _tiInstance          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiKind'
--
-- * 'tiNATPolicy'
--
-- * 'tiZone'
--
-- * 'tiSelfLink'
--
-- * 'tiName'
--
-- * 'tiCreationTimestamp'
--
-- * 'tiId'
--
-- * 'tiDescription'
--
-- * 'tiInstance'
targetInstance
    :: TargetInstance
targetInstance =
    TargetInstance
    { _tiKind = "compute#targetInstance"
    , _tiNATPolicy = Nothing
    , _tiZone = Nothing
    , _tiSelfLink = Nothing
    , _tiName = Nothing
    , _tiCreationTimestamp = Nothing
    , _tiId = Nothing
    , _tiDescription = Nothing
    , _tiInstance = Nothing
    }

-- | Type of the resource.
tiKind :: Lens' TargetInstance Text
tiKind = lens _tiKind (\ s a -> s{_tiKind = a})

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
tiNATPolicy :: Lens' TargetInstance (Maybe TargetInstanceNATPolicy)
tiNATPolicy
  = lens _tiNATPolicy (\ s a -> s{_tiNATPolicy = a})

-- | [Output Only] URL of the zone where the target instance resides.
tiZone :: Lens' TargetInstance (Maybe Text)
tiZone = lens _tiZone (\ s a -> s{_tiZone = a})

-- | [Output Only] Server-defined URL for the resource.
tiSelfLink :: Lens' TargetInstance (Maybe Text)
tiSelfLink
  = lens _tiSelfLink (\ s a -> s{_tiSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tiName :: Lens' TargetInstance (Maybe Text)
tiName = lens _tiName (\ s a -> s{_tiName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tiCreationTimestamp :: Lens' TargetInstance (Maybe Text)
tiCreationTimestamp
  = lens _tiCreationTimestamp
      (\ s a -> s{_tiCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tiId :: Lens' TargetInstance (Maybe Word64)
tiId = lens _tiId (\ s a -> s{_tiId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
tiDescription :: Lens' TargetInstance (Maybe Text)
tiDescription
  = lens _tiDescription
      (\ s a -> s{_tiDescription = a})

-- | The URL to the instance that terminates the relevant traffic.
tiInstance :: Lens' TargetInstance (Maybe Text)
tiInstance
  = lens _tiInstance (\ s a -> s{_tiInstance = a})

instance FromJSON TargetInstance where
        parseJSON
          = withObject "TargetInstance"
              (\ o ->
                 TargetInstance <$>
                   (o .:? "kind" .!= "compute#targetInstance") <*>
                     (o .:? "natPolicy")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "instance"))

instance ToJSON TargetInstance where
        toJSON TargetInstance{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tiKind),
                  ("natPolicy" .=) <$> _tiNATPolicy,
                  ("zone" .=) <$> _tiZone,
                  ("selfLink" .=) <$> _tiSelfLink,
                  ("name" .=) <$> _tiName,
                  ("creationTimestamp" .=) <$> _tiCreationTimestamp,
                  ("id" .=) <$> _tiId,
                  ("description" .=) <$> _tiDescription,
                  ("instance" .=) <$> _tiInstance])

--
-- /See:/ 'targetPoolInstanceHealth' smart constructor.
data TargetPoolInstanceHealth = TargetPoolInstanceHealth
    { _tpihKind         :: !Text
    , _tpihHealthStatus :: !(Maybe [HealthStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolInstanceHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpihKind'
--
-- * 'tpihHealthStatus'
targetPoolInstanceHealth
    :: TargetPoolInstanceHealth
targetPoolInstanceHealth =
    TargetPoolInstanceHealth
    { _tpihKind = "compute#targetPoolInstanceHealth"
    , _tpihHealthStatus = Nothing
    }

-- | Type of resource.
tpihKind :: Lens' TargetPoolInstanceHealth Text
tpihKind = lens _tpihKind (\ s a -> s{_tpihKind = a})

tpihHealthStatus :: Lens' TargetPoolInstanceHealth [HealthStatus]
tpihHealthStatus
  = lens _tpihHealthStatus
      (\ s a -> s{_tpihHealthStatus = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolInstanceHealth where
        parseJSON
          = withObject "TargetPoolInstanceHealth"
              (\ o ->
                 TargetPoolInstanceHealth <$>
                   (o .:? "kind" .!= "compute#targetPoolInstanceHealth")
                     <*> (o .:? "healthStatus" .!= mempty))

instance ToJSON TargetPoolInstanceHealth where
        toJSON TargetPoolInstanceHealth{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tpihKind),
                  ("healthStatus" .=) <$> _tpihHealthStatus])

--
-- /See:/ 'instanceGroupManagersListManagedInstancesResponse' smart constructor.
newtype InstanceGroupManagersListManagedInstancesResponse = InstanceGroupManagersListManagedInstancesResponse
    { _igmlmirManagedInstances :: Maybe [ManagedInstance]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersListManagedInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlmirManagedInstances'
instanceGroupManagersListManagedInstancesResponse
    :: InstanceGroupManagersListManagedInstancesResponse
instanceGroupManagersListManagedInstancesResponse =
    InstanceGroupManagersListManagedInstancesResponse
    { _igmlmirManagedInstances = Nothing
    }

-- | List of managed instances. If empty - all instances are listed.
igmlmirManagedInstances :: Lens' InstanceGroupManagersListManagedInstancesResponse [ManagedInstance]
igmlmirManagedInstances
  = lens _igmlmirManagedInstances
      (\ s a -> s{_igmlmirManagedInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupManagersListManagedInstancesResponse
         where
        parseJSON
          = withObject
              "InstanceGroupManagersListManagedInstancesResponse"
              (\ o ->
                 InstanceGroupManagersListManagedInstancesResponse <$>
                   (o .:? "managedInstances" .!= mempty))

instance ToJSON
         InstanceGroupManagersListManagedInstancesResponse
         where
        toJSON
          InstanceGroupManagersListManagedInstancesResponse{..}
          = object
              (catMaybes
                 [("managedInstances" .=) <$>
                    _igmlmirManagedInstances])

-- |
--
-- /See:/ 'instanceProperties' smart constructor.
data InstanceProperties = InstanceProperties
    { _ipServiceAccounts   :: !(Maybe [ServiceAccount])
    , _ipNetworkInterfaces :: !(Maybe [NetworkInterface])
    , _ipMachineType       :: !(Maybe Text)
    , _ipMetadata          :: !(Maybe Metadata)
    , _ipScheduling        :: !(Maybe Scheduling)
    , _ipDisks             :: !(Maybe [AttachedDisk])
    , _ipCanIPForward      :: !(Maybe Bool)
    , _ipDescription       :: !(Maybe Text)
    , _ipTags              :: !(Maybe Tags)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipServiceAccounts'
--
-- * 'ipNetworkInterfaces'
--
-- * 'ipMachineType'
--
-- * 'ipMetadata'
--
-- * 'ipScheduling'
--
-- * 'ipDisks'
--
-- * 'ipCanIPForward'
--
-- * 'ipDescription'
--
-- * 'ipTags'
instanceProperties
    :: InstanceProperties
instanceProperties =
    InstanceProperties
    { _ipServiceAccounts = Nothing
    , _ipNetworkInterfaces = Nothing
    , _ipMachineType = Nothing
    , _ipMetadata = Nothing
    , _ipScheduling = Nothing
    , _ipDisks = Nothing
    , _ipCanIPForward = Nothing
    , _ipDescription = Nothing
    , _ipTags = Nothing
    }

-- | A list of service accounts with specified scopes. Access tokens for
-- these service accounts are available to the instances that are created
-- from this template. Use metadata queries to obtain the access tokens for
-- these instances.
ipServiceAccounts :: Lens' InstanceProperties [ServiceAccount]
ipServiceAccounts
  = lens _ipServiceAccounts
      (\ s a -> s{_ipServiceAccounts = a})
      . _Default
      . _Coerce

-- | An array of network access configurations for this interface. This
-- specifies how this interface is configured to interact with other
-- network services, such as connecting to the internet. Currently,
-- ONE_TO_ONE_NAT is the only supported access configuration. If you do not
-- specify any access configurations, the instances that are created from
-- this template will have no external internet access.
ipNetworkInterfaces :: Lens' InstanceProperties [NetworkInterface]
ipNetworkInterfaces
  = lens _ipNetworkInterfaces
      (\ s a -> s{_ipNetworkInterfaces = a})
      . _Default
      . _Coerce

-- | The machine type to use for instances that are created from this
-- template.
ipMachineType :: Lens' InstanceProperties (Maybe Text)
ipMachineType
  = lens _ipMachineType
      (\ s a -> s{_ipMachineType = a})

-- | The metadata key\/value pairs to assign to instances that are created
-- from this template. These pairs can consist of custom metadata or
-- predefined keys. See Project and instance metadata for more information.
ipMetadata :: Lens' InstanceProperties (Maybe Metadata)
ipMetadata
  = lens _ipMetadata (\ s a -> s{_ipMetadata = a})

-- | A list of scheduling options for the instances that are created from
-- this template.
ipScheduling :: Lens' InstanceProperties (Maybe Scheduling)
ipScheduling
  = lens _ipScheduling (\ s a -> s{_ipScheduling = a})

-- | An array of disks that are associated with the instances that are
-- created from this template.
ipDisks :: Lens' InstanceProperties [AttachedDisk]
ipDisks
  = lens _ipDisks (\ s a -> s{_ipDisks = a}) . _Default
      . _Coerce

-- | A boolean that specifies if instances created from this template can
-- send packets with source IP addresses other than their own or receive
-- packets with destination IP addresses other than their own. If you use
-- these instances as an IP gateway or as the next-hop in a Route resource,
-- specify true. Otherwise, specify false.
ipCanIPForward :: Lens' InstanceProperties (Maybe Bool)
ipCanIPForward
  = lens _ipCanIPForward
      (\ s a -> s{_ipCanIPForward = a})

-- | An optional text description for the instances that are created from
-- this instance template.
ipDescription :: Lens' InstanceProperties (Maybe Text)
ipDescription
  = lens _ipDescription
      (\ s a -> s{_ipDescription = a})

-- | A list of tags to apply to the instances that are created from this
-- template. The tags identify valid sources or targets for network
-- firewalls. The setTags method can modify this list of tags. Each tag
-- within the list must comply with RFC1035.
ipTags :: Lens' InstanceProperties (Maybe Tags)
ipTags = lens _ipTags (\ s a -> s{_ipTags = a})

instance FromJSON InstanceProperties where
        parseJSON
          = withObject "InstanceProperties"
              (\ o ->
                 InstanceProperties <$>
                   (o .:? "serviceAccounts" .!= mempty) <*>
                     (o .:? "networkInterfaces" .!= mempty)
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "disks" .!= mempty)
                     <*> (o .:? "canIpForward")
                     <*> (o .:? "description")
                     <*> (o .:? "tags"))

instance ToJSON InstanceProperties where
        toJSON InstanceProperties{..}
          = object
              (catMaybes
                 [("serviceAccounts" .=) <$> _ipServiceAccounts,
                  ("networkInterfaces" .=) <$> _ipNetworkInterfaces,
                  ("machineType" .=) <$> _ipMachineType,
                  ("metadata" .=) <$> _ipMetadata,
                  ("scheduling" .=) <$> _ipScheduling,
                  ("disks" .=) <$> _ipDisks,
                  ("canIpForward" .=) <$> _ipCanIPForward,
                  ("description" .=) <$> _ipDescription,
                  ("tags" .=) <$> _ipTags])

-- | [Output Only] Informational warning which replaces the list of disk
-- types when the list is empty.
--
-- /See:/ 'diskTypesScopedListWarning' smart constructor.
data DiskTypesScopedListWarning = DiskTypesScopedListWarning
    { _dtslwData    :: !(Maybe [DiskTypesScopedListWarningDataItem])
    , _dtslwCode    :: !(Maybe DiskTypesScopedListWarningCode)
    , _dtslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslwData'
--
-- * 'dtslwCode'
--
-- * 'dtslwMessage'
diskTypesScopedListWarning
    :: DiskTypesScopedListWarning
diskTypesScopedListWarning =
    DiskTypesScopedListWarning
    { _dtslwData = Nothing
    , _dtslwCode = Nothing
    , _dtslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
dtslwData :: Lens' DiskTypesScopedListWarning [DiskTypesScopedListWarningDataItem]
dtslwData
  = lens _dtslwData (\ s a -> s{_dtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
dtslwCode :: Lens' DiskTypesScopedListWarning (Maybe DiskTypesScopedListWarningCode)
dtslwCode
  = lens _dtslwCode (\ s a -> s{_dtslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
dtslwMessage :: Lens' DiskTypesScopedListWarning (Maybe Text)
dtslwMessage
  = lens _dtslwMessage (\ s a -> s{_dtslwMessage = a})

instance FromJSON DiskTypesScopedListWarning where
        parseJSON
          = withObject "DiskTypesScopedListWarning"
              (\ o ->
                 DiskTypesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON DiskTypesScopedListWarning where
        toJSON DiskTypesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _dtslwData,
                  ("code" .=) <$> _dtslwCode,
                  ("message" .=) <$> _dtslwMessage])

-- | [Input Only] Specifies the parameters for a new disk that will be
-- created alongside the new instance. Use initialization parameters to
-- create boot disks or local SSDs attached to the new instance. This
-- property is mutually exclusive with the source property; you can only
-- define one or the other, but not both.
--
-- /See:/ 'attachedDiskInitializeParams' smart constructor.
data AttachedDiskInitializeParams = AttachedDiskInitializeParams
    { _adipSourceImage :: !(Maybe Text)
    , _adipDiskSizeGb  :: !(Maybe Int64)
    , _adipDiskName    :: !(Maybe Text)
    , _adipDiskType    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachedDiskInitializeParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adipSourceImage'
--
-- * 'adipDiskSizeGb'
--
-- * 'adipDiskName'
--
-- * 'adipDiskType'
attachedDiskInitializeParams
    :: AttachedDiskInitializeParams
attachedDiskInitializeParams =
    AttachedDiskInitializeParams
    { _adipSourceImage = Nothing
    , _adipDiskSizeGb = Nothing
    , _adipDiskName = Nothing
    , _adipDiskType = Nothing
    }

-- | A source image used to create the disk. You can provide a private
-- (custom) image, and Compute Engine will use the corresponding image from
-- your project. For example: global\/images\/my-private-image Or you can
-- provide an image from a publicly-available project. For example, to use
-- a Debian image from the debian-cloud project, make sure to include the
-- project in the URL:
-- projects\/debian-cloud\/global\/images\/debian-7-wheezy-vYYYYMMDD where
-- vYYYYMMDD is the image version. The fully-qualified URL will also work
-- in both cases.
adipSourceImage :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipSourceImage
  = lens _adipSourceImage
      (\ s a -> s{_adipSourceImage = a})

-- | Specifies the size of the disk in base-2 GB.
adipDiskSizeGb :: Lens' AttachedDiskInitializeParams (Maybe Int64)
adipDiskSizeGb
  = lens _adipDiskSizeGb
      (\ s a -> s{_adipDiskSizeGb = a})

-- | Specifies the disk name. If not specified, the default is to use the
-- name of the instance.
adipDiskName :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskName
  = lens _adipDiskName (\ s a -> s{_adipDiskName = a})

-- | Specifies the disk type to use to create the instance. If not specified,
-- the default is pd-standard, specified using the full URL. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/pd-standard
-- Other values include pd-ssd and local-ssd. If you define this field, you
-- can provide either the full or partial URL. For example, the following
-- are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/diskType
-- - projects\/project\/zones\/zone\/diskTypes\/diskType -
-- zones\/zone\/diskTypes\/diskType
adipDiskType :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskType
  = lens _adipDiskType (\ s a -> s{_adipDiskType = a})

instance FromJSON AttachedDiskInitializeParams where
        parseJSON
          = withObject "AttachedDiskInitializeParams"
              (\ o ->
                 AttachedDiskInitializeParams <$>
                   (o .:? "sourceImage") <*> (o .:? "diskSizeGb") <*>
                     (o .:? "diskName")
                     <*> (o .:? "diskType"))

instance ToJSON AttachedDiskInitializeParams where
        toJSON AttachedDiskInitializeParams{..}
          = object
              (catMaybes
                 [("sourceImage" .=) <$> _adipSourceImage,
                  ("diskSizeGb" .=) <$> _adipDiskSizeGb,
                  ("diskName" .=) <$> _adipDiskName,
                  ("diskType" .=) <$> _adipDiskType])

--
-- /See:/ 'addressesScopedListWarningDataItem' smart constructor.
data AddressesScopedListWarningDataItem = AddressesScopedListWarningDataItem
    { _aslwdiValue :: !(Maybe Text)
    , _aslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslwdiValue'
--
-- * 'aslwdiKey'
addressesScopedListWarningDataItem
    :: AddressesScopedListWarningDataItem
addressesScopedListWarningDataItem =
    AddressesScopedListWarningDataItem
    { _aslwdiValue = Nothing
    , _aslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aslwdiValue :: Lens' AddressesScopedListWarningDataItem (Maybe Text)
aslwdiValue
  = lens _aslwdiValue (\ s a -> s{_aslwdiValue = a})

-- | [Output Only] A key for the warning data.
aslwdiKey :: Lens' AddressesScopedListWarningDataItem (Maybe Text)
aslwdiKey
  = lens _aslwdiKey (\ s a -> s{_aslwdiKey = a})

instance FromJSON AddressesScopedListWarningDataItem
         where
        parseJSON
          = withObject "AddressesScopedListWarningDataItem"
              (\ o ->
                 AddressesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON AddressesScopedListWarningDataItem
         where
        toJSON AddressesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aslwdiValue,
                  ("key" .=) <$> _aslwdiKey])

-- | A network interface resource attached to an instance.
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface = NetworkInterface
    { _niNetwork       :: !(Maybe Text)
    , _niName          :: !(Maybe Text)
    , _niNetworkIP     :: !(Maybe Text)
    , _niAccessConfigs :: !(Maybe [AccessConfig])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niNetwork'
--
-- * 'niName'
--
-- * 'niNetworkIP'
--
-- * 'niAccessConfigs'
networkInterface
    :: NetworkInterface
networkInterface =
    NetworkInterface
    { _niNetwork = Nothing
    , _niName = Nothing
    , _niNetworkIP = Nothing
    , _niAccessConfigs = Nothing
    }

-- | URL of the network resource for this instance. This is required for
-- creating an instance but optional when creating a firewall rule. If not
-- specified when creating a firewall rule, the default network is used:
-- global\/networks\/default If you specify this property, you can specify
-- the network as a full or partial URL. For example, the following are all
-- valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/networks\/network
-- - projects\/project\/global\/networks\/network -
-- global\/networks\/default
niNetwork :: Lens' NetworkInterface (Maybe Text)
niNetwork
  = lens _niNetwork (\ s a -> s{_niNetwork = a})

-- | [Output Only] The name of the network interface, generated by the
-- server. For network devices, these are eth0, eth1, etc.
niName :: Lens' NetworkInterface (Maybe Text)
niName = lens _niName (\ s a -> s{_niName = a})

-- | [Output Only] An optional IPV4 internal network address assigned to the
-- instance for this network interface.
niNetworkIP :: Lens' NetworkInterface (Maybe Text)
niNetworkIP
  = lens _niNetworkIP (\ s a -> s{_niNetworkIP = a})

-- | An array of configurations for this interface. Currently, ONE_TO_ONE_NAT
-- is the only access config supported. If there are no accessConfigs
-- specified, then this instance will have no external internet access.
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
                 NetworkInterface <$>
                   (o .:? "network") <*> (o .:? "name") <*>
                     (o .:? "networkIP")
                     <*> (o .:? "accessConfigs" .!= mempty))

instance ToJSON NetworkInterface where
        toJSON NetworkInterface{..}
          = object
              (catMaybes
                 [("network" .=) <$> _niNetwork,
                  ("name" .=) <$> _niName,
                  ("networkIP" .=) <$> _niNetworkIP,
                  ("accessConfigs" .=) <$> _niAccessConfigs])

--
-- /See:/ 'targetPoolsRemoveHealthCheckRequest' smart constructor.
newtype TargetPoolsRemoveHealthCheckRequest = TargetPoolsRemoveHealthCheckRequest
    { _tprhcrHealthChecks :: Maybe [HealthCheckReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveHealthCheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tprhcrHealthChecks'
targetPoolsRemoveHealthCheckRequest
    :: TargetPoolsRemoveHealthCheckRequest
targetPoolsRemoveHealthCheckRequest =
    TargetPoolsRemoveHealthCheckRequest
    { _tprhcrHealthChecks = Nothing
    }

-- | Health check URLs to be removed from targetPool.
tprhcrHealthChecks :: Lens' TargetPoolsRemoveHealthCheckRequest [HealthCheckReference]
tprhcrHealthChecks
  = lens _tprhcrHealthChecks
      (\ s a -> s{_tprhcrHealthChecks = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolsRemoveHealthCheckRequest
         where
        parseJSON
          = withObject "TargetPoolsRemoveHealthCheckRequest"
              (\ o ->
                 TargetPoolsRemoveHealthCheckRequest <$>
                   (o .:? "healthChecks" .!= mempty))

instance ToJSON TargetPoolsRemoveHealthCheckRequest
         where
        toJSON TargetPoolsRemoveHealthCheckRequest{..}
          = object
              (catMaybes
                 [("healthChecks" .=) <$> _tprhcrHealthChecks])

-- | A list of instance templates.
--
-- /See:/ 'instanceTemplateList' smart constructor.
data InstanceTemplateList = InstanceTemplateList
    { _itlNextPageToken :: !(Maybe Text)
    , _itlKind          :: !Text
    , _itlItems         :: !(Maybe [InstanceTemplate])
    , _itlSelfLink      :: !(Maybe Text)
    , _itlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlNextPageToken'
--
-- * 'itlKind'
--
-- * 'itlItems'
--
-- * 'itlSelfLink'
--
-- * 'itlId'
instanceTemplateList
    :: InstanceTemplateList
instanceTemplateList =
    InstanceTemplateList
    { _itlNextPageToken = Nothing
    , _itlKind = "compute#instanceTemplateList"
    , _itlItems = Nothing
    , _itlSelfLink = Nothing
    , _itlId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
itlNextPageToken :: Lens' InstanceTemplateList (Maybe Text)
itlNextPageToken
  = lens _itlNextPageToken
      (\ s a -> s{_itlNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceTemplatesListResponse for instance template lists.
itlKind :: Lens' InstanceTemplateList Text
itlKind = lens _itlKind (\ s a -> s{_itlKind = a})

-- | A list of InstanceTemplate resources.
itlItems :: Lens' InstanceTemplateList [InstanceTemplate]
itlItems
  = lens _itlItems (\ s a -> s{_itlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this instance template list. The server
-- defines this URL.
itlSelfLink :: Lens' InstanceTemplateList (Maybe Text)
itlSelfLink
  = lens _itlSelfLink (\ s a -> s{_itlSelfLink = a})

-- | [Output Only] A unique identifier for this instance template. The server
-- defines this identifier.
itlId :: Lens' InstanceTemplateList (Maybe Text)
itlId = lens _itlId (\ s a -> s{_itlId = a})

instance FromJSON InstanceTemplateList where
        parseJSON
          = withObject "InstanceTemplateList"
              (\ o ->
                 InstanceTemplateList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceTemplateList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceTemplateList where
        toJSON InstanceTemplateList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _itlNextPageToken,
                  Just ("kind" .= _itlKind),
                  ("items" .=) <$> _itlItems,
                  ("selfLink" .=) <$> _itlSelfLink,
                  ("id" .=) <$> _itlId])

-- | Contains a list of route resources.
--
-- /See:/ 'routeList' smart constructor.
data RouteList = RouteList
    { _rlNextPageToken :: !(Maybe Text)
    , _rlKind          :: !Text
    , _rlItems         :: !(Maybe [Route])
    , _rlSelfLink      :: !(Maybe Text)
    , _rlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouteList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlNextPageToken'
--
-- * 'rlKind'
--
-- * 'rlItems'
--
-- * 'rlSelfLink'
--
-- * 'rlId'
routeList
    :: RouteList
routeList =
    RouteList
    { _rlNextPageToken = Nothing
    , _rlKind = "compute#routeList"
    , _rlItems = Nothing
    , _rlSelfLink = Nothing
    , _rlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
rlNextPageToken :: Lens' RouteList (Maybe Text)
rlNextPageToken
  = lens _rlNextPageToken
      (\ s a -> s{_rlNextPageToken = a})

-- | Type of resource.
rlKind :: Lens' RouteList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | A list of Route resources.
rlItems :: Lens' RouteList [Route]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
rlSelfLink :: Lens' RouteList (Maybe Text)
rlSelfLink
  = lens _rlSelfLink (\ s a -> s{_rlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
rlId :: Lens' RouteList (Maybe Text)
rlId = lens _rlId (\ s a -> s{_rlId = a})

instance FromJSON RouteList where
        parseJSON
          = withObject "RouteList"
              (\ o ->
                 RouteList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#routeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RouteList where
        toJSON RouteList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlNextPageToken,
                  Just ("kind" .= _rlKind), ("items" .=) <$> _rlItems,
                  ("selfLink" .=) <$> _rlSelfLink,
                  ("id" .=) <$> _rlId])

-- | Contains a list of TargetVpnGateway resources.
--
-- /See:/ 'targetVPNGatewayList' smart constructor.
data TargetVPNGatewayList = TargetVPNGatewayList
    { _tvglNextPageToken :: !(Maybe Text)
    , _tvglKind          :: !Text
    , _tvglItems         :: !(Maybe [TargetVPNGateway])
    , _tvglSelfLink      :: !(Maybe Text)
    , _tvglId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewayList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvglNextPageToken'
--
-- * 'tvglKind'
--
-- * 'tvglItems'
--
-- * 'tvglSelfLink'
--
-- * 'tvglId'
targetVPNGatewayList
    :: TargetVPNGatewayList
targetVPNGatewayList =
    TargetVPNGatewayList
    { _tvglNextPageToken = Nothing
    , _tvglKind = "compute#targetVpnGatewayList"
    , _tvglItems = Nothing
    , _tvglSelfLink = Nothing
    , _tvglId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tvglNextPageToken :: Lens' TargetVPNGatewayList (Maybe Text)
tvglNextPageToken
  = lens _tvglNextPageToken
      (\ s a -> s{_tvglNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvglKind :: Lens' TargetVPNGatewayList Text
tvglKind = lens _tvglKind (\ s a -> s{_tvglKind = a})

-- | [Output Only] A list of TargetVpnGateway resources.
tvglItems :: Lens' TargetVPNGatewayList [TargetVPNGateway]
tvglItems
  = lens _tvglItems (\ s a -> s{_tvglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
tvglSelfLink :: Lens' TargetVPNGatewayList (Maybe Text)
tvglSelfLink
  = lens _tvglSelfLink (\ s a -> s{_tvglSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvglId :: Lens' TargetVPNGatewayList (Maybe Text)
tvglId = lens _tvglId (\ s a -> s{_tvglId = a})

instance FromJSON TargetVPNGatewayList where
        parseJSON
          = withObject "TargetVPNGatewayList"
              (\ o ->
                 TargetVPNGatewayList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetVpnGatewayList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetVPNGatewayList where
        toJSON TargetVPNGatewayList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tvglNextPageToken,
                  Just ("kind" .= _tvglKind),
                  ("items" .=) <$> _tvglItems,
                  ("selfLink" .=) <$> _tvglSelfLink,
                  ("id" .=) <$> _tvglId])

--
-- /See:/ 'firewallAllowedItem' smart constructor.
data FirewallAllowedItem = FirewallAllowedItem
    { _faiIPProtocol :: !(Maybe Text)
    , _faiPorts      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallAllowedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faiIPProtocol'
--
-- * 'faiPorts'
firewallAllowedItem
    :: FirewallAllowedItem
firewallAllowedItem =
    FirewallAllowedItem
    { _faiIPProtocol = Nothing
    , _faiPorts = Nothing
    }

-- | The IP protocol that is allowed for this rule. The protocol type is
-- required when creating a firewall. This value can either be one of the
-- following well known protocol strings (tcp, udp, icmp, esp, ah, sctp),
-- or the IP protocol number.
faiIPProtocol :: Lens' FirewallAllowedItem (Maybe Text)
faiIPProtocol
  = lens _faiIPProtocol
      (\ s a -> s{_faiIPProtocol = a})

-- | An optional list of ports which are allowed. This field is only
-- applicable for UDP or TCP protocol. Each entry must be either an integer
-- or a range. If not specified, connections through any port are allowed
-- Example inputs include: [\"22\"], [\"80\",\"443\"], and
-- [\"12345-12349\"].
faiPorts :: Lens' FirewallAllowedItem [Text]
faiPorts
  = lens _faiPorts (\ s a -> s{_faiPorts = a}) .
      _Default
      . _Coerce

instance FromJSON FirewallAllowedItem where
        parseJSON
          = withObject "FirewallAllowedItem"
              (\ o ->
                 FirewallAllowedItem <$>
                   (o .:? "IPProtocol") <*> (o .:? "ports" .!= mempty))

instance ToJSON FirewallAllowedItem where
        toJSON FirewallAllowedItem{..}
          = object
              (catMaybes
                 [("IPProtocol" .=) <$> _faiIPProtocol,
                  ("ports" .=) <$> _faiPorts])

-- | A network resource.
--
-- /See:/ 'network' smart constructor.
data Network = Network
    { _nKind              :: !Text
    , _nIPv4Range         :: !(Maybe Text)
    , _nSelfLink          :: !(Maybe Text)
    , _nName              :: !(Maybe Text)
    , _nCreationTimestamp :: !(Maybe Text)
    , _nId                :: !(Maybe Word64)
    , _nGatewayIPv4       :: !(Maybe Text)
    , _nDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nKind'
--
-- * 'nIPv4Range'
--
-- * 'nSelfLink'
--
-- * 'nName'
--
-- * 'nCreationTimestamp'
--
-- * 'nId'
--
-- * 'nGatewayIPv4'
--
-- * 'nDescription'
network
    :: Network
network =
    Network
    { _nKind = "compute#network"
    , _nIPv4Range = Nothing
    , _nSelfLink = Nothing
    , _nName = Nothing
    , _nCreationTimestamp = Nothing
    , _nId = Nothing
    , _nGatewayIPv4 = Nothing
    , _nDescription = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#network for networks.
nKind :: Lens' Network Text
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | The range of internal addresses that are legal on this network. This
-- range is a CIDR specification, for example: 192.168.0.0\/16. Provided by
-- the client when the network is created.
nIPv4Range :: Lens' Network (Maybe Text)
nIPv4Range
  = lens _nIPv4Range (\ s a -> s{_nIPv4Range = a})

-- | [Output Only] Server-defined URL for the resource.
nSelfLink :: Lens' Network (Maybe Text)
nSelfLink
  = lens _nSelfLink (\ s a -> s{_nSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
nCreationTimestamp :: Lens' Network (Maybe Text)
nCreationTimestamp
  = lens _nCreationTimestamp
      (\ s a -> s{_nCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
nId :: Lens' Network (Maybe Word64)
nId = lens _nId (\ s a -> s{_nId = a})

-- | A gateway address for default routing to other networks. This value is
-- read only and is selected by the Google Compute Engine, typically as the
-- first usable address in the IPv4Range.
nGatewayIPv4 :: Lens' Network (Maybe Text)
nGatewayIPv4
  = lens _nGatewayIPv4 (\ s a -> s{_nGatewayIPv4 = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
nDescription :: Lens' Network (Maybe Text)
nDescription
  = lens _nDescription (\ s a -> s{_nDescription = a})

instance FromJSON Network where
        parseJSON
          = withObject "Network"
              (\ o ->
                 Network <$>
                   (o .:? "kind" .!= "compute#network") <*>
                     (o .:? "IPv4Range")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "gatewayIPv4")
                     <*> (o .:? "description"))

instance ToJSON Network where
        toJSON Network{..}
          = object
              (catMaybes
                 [Just ("kind" .= _nKind),
                  ("IPv4Range" .=) <$> _nIPv4Range,
                  ("selfLink" .=) <$> _nSelfLink,
                  ("name" .=) <$> _nName,
                  ("creationTimestamp" .=) <$> _nCreationTimestamp,
                  ("id" .=) <$> _nId,
                  ("gatewayIPv4" .=) <$> _nGatewayIPv4,
                  ("description" .=) <$> _nDescription])

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'addressesScopedListWarning' smart constructor.
data AddressesScopedListWarning = AddressesScopedListWarning
    { _aData    :: !(Maybe [AddressesScopedListWarningDataItem])
    , _aCode    :: !(Maybe AddressesScopedListWarningCode)
    , _aMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aData'
--
-- * 'aCode'
--
-- * 'aMessage'
addressesScopedListWarning
    :: AddressesScopedListWarning
addressesScopedListWarning =
    AddressesScopedListWarning
    { _aData = Nothing
    , _aCode = Nothing
    , _aMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
aData :: Lens' AddressesScopedListWarning [AddressesScopedListWarningDataItem]
aData
  = lens _aData (\ s a -> s{_aData = a}) . _Default .
      _Coerce

-- | [Output Only] The warning type identifier for this warning.
aCode :: Lens' AddressesScopedListWarning (Maybe AddressesScopedListWarningCode)
aCode = lens _aCode (\ s a -> s{_aCode = a})

-- | [Output Only] Optional human-readable details for this warning.
aMessage :: Lens' AddressesScopedListWarning (Maybe Text)
aMessage = lens _aMessage (\ s a -> s{_aMessage = a})

instance FromJSON AddressesScopedListWarning where
        parseJSON
          = withObject "AddressesScopedListWarning"
              (\ o ->
                 AddressesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON AddressesScopedListWarning where
        toJSON AddressesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _aData, ("code" .=) <$> _aCode,
                  ("message" .=) <$> _aMessage])

-- | The parameters of the raw disk image.
--
-- /See:/ 'imageRawDisk' smart constructor.
data ImageRawDisk = ImageRawDisk
    { _irdContainerType :: !(Maybe ImageRawDiskContainerType)
    , _irdSource        :: !(Maybe Text)
    , _irdSha1Checksum  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageRawDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irdContainerType'
--
-- * 'irdSource'
--
-- * 'irdSha1Checksum'
imageRawDisk
    :: ImageRawDisk
imageRawDisk =
    ImageRawDisk
    { _irdContainerType = Nothing
    , _irdSource = Nothing
    , _irdSha1Checksum = Nothing
    }

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
irdContainerType :: Lens' ImageRawDisk (Maybe ImageRawDiskContainerType)
irdContainerType
  = lens _irdContainerType
      (\ s a -> s{_irdContainerType = a})

-- | The full Google Cloud Storage URL where the disk image is stored. You
-- must provide either this property or the sourceDisk property but not
-- both.
irdSource :: Lens' ImageRawDisk (Maybe Text)
irdSource
  = lens _irdSource (\ s a -> s{_irdSource = a})

-- | An optional SHA1 checksum of the disk image before unpackaging; provided
-- by the client when the disk image is created.
irdSha1Checksum :: Lens' ImageRawDisk (Maybe Text)
irdSha1Checksum
  = lens _irdSha1Checksum
      (\ s a -> s{_irdSha1Checksum = a})

instance FromJSON ImageRawDisk where
        parseJSON
          = withObject "ImageRawDisk"
              (\ o ->
                 ImageRawDisk <$>
                   (o .:? "containerType") <*> (o .:? "source") <*>
                     (o .:? "sha1Checksum"))

instance ToJSON ImageRawDisk where
        toJSON ImageRawDisk{..}
          = object
              (catMaybes
                 [("containerType" .=) <$> _irdContainerType,
                  ("source" .=) <$> _irdSource,
                  ("sha1Checksum" .=) <$> _irdSha1Checksum])

--
-- /See:/ 'instanceAggregatedList' smart constructor.
data InstanceAggregatedList = InstanceAggregatedList
    { _ialNextPageToken :: !(Maybe Text)
    , _ialKind          :: !Text
    , _ialItems         :: !(Maybe InstanceAggregatedListItems)
    , _ialSelfLink      :: !(Maybe Text)
    , _ialId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialNextPageToken'
--
-- * 'ialKind'
--
-- * 'ialItems'
--
-- * 'ialSelfLink'
--
-- * 'ialId'
instanceAggregatedList
    :: InstanceAggregatedList
instanceAggregatedList =
    InstanceAggregatedList
    { _ialNextPageToken = Nothing
    , _ialKind = "compute#instanceAggregatedList"
    , _ialItems = Nothing
    , _ialSelfLink = Nothing
    , _ialId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
ialNextPageToken :: Lens' InstanceAggregatedList (Maybe Text)
ialNextPageToken
  = lens _ialNextPageToken
      (\ s a -> s{_ialNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#instanceAggregatedList
-- for aggregated lists of Instance resources.
ialKind :: Lens' InstanceAggregatedList Text
ialKind = lens _ialKind (\ s a -> s{_ialKind = a})

-- | [Output Only] A map of scoped instance lists.
ialItems :: Lens' InstanceAggregatedList (Maybe InstanceAggregatedListItems)
ialItems = lens _ialItems (\ s a -> s{_ialItems = a})

-- | [Output Only] Server defined URL for this resource.
ialSelfLink :: Lens' InstanceAggregatedList (Maybe Text)
ialSelfLink
  = lens _ialSelfLink (\ s a -> s{_ialSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ialId :: Lens' InstanceAggregatedList (Maybe Text)
ialId = lens _ialId (\ s a -> s{_ialId = a})

instance FromJSON InstanceAggregatedList where
        parseJSON
          = withObject "InstanceAggregatedList"
              (\ o ->
                 InstanceAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceAggregatedList where
        toJSON InstanceAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ialNextPageToken,
                  Just ("kind" .= _ialKind),
                  ("items" .=) <$> _ialItems,
                  ("selfLink" .=) <$> _ialSelfLink,
                  ("id" .=) <$> _ialId])

-- | A reserved address resource.
--
-- /See:/ 'address' smart constructor.
data Address = Address
    { _aStatus            :: !(Maybe AddressStatus)
    , _aUsers             :: !(Maybe [Text])
    , _aKind              :: !Text
    , _aAddress           :: !(Maybe Text)
    , _aSelfLink          :: !(Maybe Text)
    , _aName              :: !(Maybe Text)
    , _aCreationTimestamp :: !(Maybe Text)
    , _aId                :: !(Maybe Word64)
    , _aRegion            :: !(Maybe Text)
    , _aDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStatus'
--
-- * 'aUsers'
--
-- * 'aKind'
--
-- * 'aAddress'
--
-- * 'aSelfLink'
--
-- * 'aName'
--
-- * 'aCreationTimestamp'
--
-- * 'aId'
--
-- * 'aRegion'
--
-- * 'aDescription'
address
    :: Address
address =
    Address
    { _aStatus = Nothing
    , _aUsers = Nothing
    , _aKind = "compute#address"
    , _aAddress = Nothing
    , _aSelfLink = Nothing
    , _aName = Nothing
    , _aCreationTimestamp = Nothing
    , _aId = Nothing
    , _aRegion = Nothing
    , _aDescription = Nothing
    }

-- | [Output Only] The status of the address, which can be either IN_USE or
-- RESERVED. An address that is RESERVED is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
aStatus :: Lens' Address (Maybe AddressStatus)
aStatus = lens _aStatus (\ s a -> s{_aStatus = a})

-- | [Output Only] The URLs of the resources that are using this address.
aUsers :: Lens' Address [Text]
aUsers
  = lens _aUsers (\ s a -> s{_aUsers = a}) . _Default .
      _Coerce

-- | [Output Only] Type of the resource. Always compute#address for
-- addresses.
aKind :: Lens' Address Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The static external IP address represented by this resource.
aAddress :: Lens' Address (Maybe Text)
aAddress = lens _aAddress (\ s a -> s{_aAddress = a})

-- | [Output Only] Server-defined URL for the resource.
aSelfLink :: Lens' Address (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
aName :: Lens' Address (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
aCreationTimestamp :: Lens' Address (Maybe Text)
aCreationTimestamp
  = lens _aCreationTimestamp
      (\ s a -> s{_aCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aId :: Lens' Address (Maybe Word64)
aId = lens _aId (\ s a -> s{_aId = a})

-- | [Output Only] URL of the region where the regional address resides. This
-- field is not applicable to global addresses.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
aDescription :: Lens' Address (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address <$>
                   (o .:? "status") <*> (o .:? "users" .!= mempty) <*>
                     (o .:? "kind" .!= "compute#address")
                     <*> (o .:? "address")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description"))

instance ToJSON Address where
        toJSON Address{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aStatus,
                  ("users" .=) <$> _aUsers, Just ("kind" .= _aKind),
                  ("address" .=) <$> _aAddress,
                  ("selfLink" .=) <$> _aSelfLink,
                  ("name" .=) <$> _aName,
                  ("creationTimestamp" .=) <$> _aCreationTimestamp,
                  ("id" .=) <$> _aId, ("region" .=) <$> _aRegion,
                  ("description" .=) <$> _aDescription])

-- | A Zone resource.
--
-- /See:/ 'zone' smart constructor.
data Zone = Zone
    { _zStatus             :: !(Maybe ZoneStatus)
    , _zMaintenanceWindows :: !(Maybe [ZoneMaintenanceWindowsItem])
    , _zKind               :: !Text
    , _zSelfLink           :: !(Maybe Text)
    , _zName               :: !(Maybe Text)
    , _zCreationTimestamp  :: !(Maybe Text)
    , _zId                 :: !(Maybe Word64)
    , _zRegion             :: !(Maybe Text)
    , _zDescription        :: !(Maybe Text)
    , _zDeprecated         :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Zone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zStatus'
--
-- * 'zMaintenanceWindows'
--
-- * 'zKind'
--
-- * 'zSelfLink'
--
-- * 'zName'
--
-- * 'zCreationTimestamp'
--
-- * 'zId'
--
-- * 'zRegion'
--
-- * 'zDescription'
--
-- * 'zDeprecated'
zone
    :: Zone
zone =
    Zone
    { _zStatus = Nothing
    , _zMaintenanceWindows = Nothing
    , _zKind = "compute#zone"
    , _zSelfLink = Nothing
    , _zName = Nothing
    , _zCreationTimestamp = Nothing
    , _zId = Nothing
    , _zRegion = Nothing
    , _zDescription = Nothing
    , _zDeprecated = Nothing
    }

-- | [Output Only] Status of the zone, either UP or DOWN.
zStatus :: Lens' Zone (Maybe ZoneStatus)
zStatus = lens _zStatus (\ s a -> s{_zStatus = a})

-- | [Output Only] Any scheduled maintenance windows for this zone. When the
-- zone is in a maintenance window, all resources which reside in the zone
-- will be unavailable. For more information, see Maintenance Windows
zMaintenanceWindows :: Lens' Zone [ZoneMaintenanceWindowsItem]
zMaintenanceWindows
  = lens _zMaintenanceWindows
      (\ s a -> s{_zMaintenanceWindows = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always kind#zone for zones.
zKind :: Lens' Zone Text
zKind = lens _zKind (\ s a -> s{_zKind = a})

-- | [Output Only] Server-defined URL for the resource.
zSelfLink :: Lens' Zone (Maybe Text)
zSelfLink
  = lens _zSelfLink (\ s a -> s{_zSelfLink = a})

-- | [Output Only] Name of the resource.
zName :: Lens' Zone (Maybe Text)
zName = lens _zName (\ s a -> s{_zName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
zCreationTimestamp :: Lens' Zone (Maybe Text)
zCreationTimestamp
  = lens _zCreationTimestamp
      (\ s a -> s{_zCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
zId :: Lens' Zone (Maybe Word64)
zId = lens _zId (\ s a -> s{_zId = a})

-- | [Output Only] Full URL reference to the region which hosts the zone.
zRegion :: Lens' Zone (Maybe Text)
zRegion = lens _zRegion (\ s a -> s{_zRegion = a})

-- | [Output Only] Textual description of the resource.
zDescription :: Lens' Zone (Maybe Text)
zDescription
  = lens _zDescription (\ s a -> s{_zDescription = a})

-- | [Output Only] The deprecation status associated with this zone.
zDeprecated :: Lens' Zone (Maybe DeprecationStatus)
zDeprecated
  = lens _zDeprecated (\ s a -> s{_zDeprecated = a})

instance FromJSON Zone where
        parseJSON
          = withObject "Zone"
              (\ o ->
                 Zone <$>
                   (o .:? "status") <*>
                     (o .:? "maintenanceWindows" .!= mempty)
                     <*> (o .:? "kind" .!= "compute#zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON Zone where
        toJSON Zone{..}
          = object
              (catMaybes
                 [("status" .=) <$> _zStatus,
                  ("maintenanceWindows" .=) <$> _zMaintenanceWindows,
                  Just ("kind" .= _zKind),
                  ("selfLink" .=) <$> _zSelfLink,
                  ("name" .=) <$> _zName,
                  ("creationTimestamp" .=) <$> _zCreationTimestamp,
                  ("id" .=) <$> _zId, ("region" .=) <$> _zRegion,
                  ("description" .=) <$> _zDescription,
                  ("deprecated" .=) <$> _zDeprecated])

--
-- /See:/ 'instanceGroupManagersRecreateInstancesRequest' smart constructor.
newtype InstanceGroupManagersRecreateInstancesRequest = InstanceGroupManagersRecreateInstancesRequest
    { _igmrirInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrirInstances'
instanceGroupManagersRecreateInstancesRequest
    :: InstanceGroupManagersRecreateInstancesRequest
instanceGroupManagersRecreateInstancesRequest =
    InstanceGroupManagersRecreateInstancesRequest
    { _igmrirInstances = Nothing
    }

-- | The names of one or more instances to recreate.
igmrirInstances :: Lens' InstanceGroupManagersRecreateInstancesRequest [Text]
igmrirInstances
  = lens _igmrirInstances
      (\ s a -> s{_igmrirInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupManagersRecreateInstancesRequest where
        parseJSON
          = withObject
              "InstanceGroupManagersRecreateInstancesRequest"
              (\ o ->
                 InstanceGroupManagersRecreateInstancesRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersRecreateInstancesRequest where
        toJSON
          InstanceGroupManagersRecreateInstancesRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _igmrirInstances])

--
-- /See:/ 'instancesScopedList' smart constructor.
data InstancesScopedList = InstancesScopedList
    { _islWarning   :: !(Maybe InstancesScopedListWarning)
    , _islInstances :: !(Maybe [Instance])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islWarning'
--
-- * 'islInstances'
instancesScopedList
    :: InstancesScopedList
instancesScopedList =
    InstancesScopedList
    { _islWarning = Nothing
    , _islInstances = Nothing
    }

-- | [Output Only] Informational warning which replaces the list of instances
-- when the list is empty.
islWarning :: Lens' InstancesScopedList (Maybe InstancesScopedListWarning)
islWarning
  = lens _islWarning (\ s a -> s{_islWarning = a})

-- | [Output Only] List of instances contained in this scope.
islInstances :: Lens' InstancesScopedList [Instance]
islInstances
  = lens _islInstances (\ s a -> s{_islInstances = a})
      . _Default
      . _Coerce

instance FromJSON InstancesScopedList where
        parseJSON
          = withObject "InstancesScopedList"
              (\ o ->
                 InstancesScopedList <$>
                   (o .:? "warning") <*> (o .:? "instances" .!= mempty))

instance ToJSON InstancesScopedList where
        toJSON InstancesScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _islWarning,
                  ("instances" .=) <$> _islInstances])

--
-- /See:/ 'healthCheckReference' smart constructor.
newtype HealthCheckReference = HealthCheckReference
    { _hcrHealthCheck :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthCheckReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcrHealthCheck'
healthCheckReference
    :: HealthCheckReference
healthCheckReference =
    HealthCheckReference
    { _hcrHealthCheck = Nothing
    }

hcrHealthCheck :: Lens' HealthCheckReference (Maybe Text)
hcrHealthCheck
  = lens _hcrHealthCheck
      (\ s a -> s{_hcrHealthCheck = a})

instance FromJSON HealthCheckReference where
        parseJSON
          = withObject "HealthCheckReference"
              (\ o ->
                 HealthCheckReference <$> (o .:? "healthCheck"))

instance ToJSON HealthCheckReference where
        toJSON HealthCheckReference{..}
          = object
              (catMaybes [("healthCheck" .=) <$> _hcrHealthCheck])

-- | A map of scoped target instance lists.
--
-- /See:/ 'targetInstanceAggregatedListItems' smart constructor.
newtype TargetInstanceAggregatedListItems = TargetInstanceAggregatedListItems
    { _tialiAddtional :: HashMap Text TargetInstancesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialiAddtional'
targetInstanceAggregatedListItems
    :: HashMap Text TargetInstancesScopedList -- ^ 'addtional'
    -> TargetInstanceAggregatedListItems
targetInstanceAggregatedListItems pTialiAddtional_ =
    TargetInstanceAggregatedListItems
    { _tialiAddtional = pTialiAddtional_
    }

-- | Name of the scope containing this set of target instances.
tialiAddtional :: Lens' TargetInstanceAggregatedListItems (HashMap Text TargetInstancesScopedList)
tialiAddtional
  = lens _tialiAddtional
      (\ s a -> s{_tialiAddtional = a})

instance FromJSON TargetInstanceAggregatedListItems
         where
        parseJSON
          = withObject "TargetInstanceAggregatedListItems"
              (\ o ->
                 TargetInstanceAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON TargetInstanceAggregatedListItems
         where
        toJSON = toJSON . _tialiAddtional

--
-- /See:/ 'instanceGroupAggregatedList' smart constructor.
data InstanceGroupAggregatedList = InstanceGroupAggregatedList
    { _igalNextPageToken :: !(Maybe Text)
    , _igalKind          :: !Text
    , _igalItems         :: !(Maybe InstanceGroupAggregatedListItems)
    , _igalSelfLink      :: !(Maybe Text)
    , _igalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igalNextPageToken'
--
-- * 'igalKind'
--
-- * 'igalItems'
--
-- * 'igalSelfLink'
--
-- * 'igalId'
instanceGroupAggregatedList
    :: InstanceGroupAggregatedList
instanceGroupAggregatedList =
    InstanceGroupAggregatedList
    { _igalNextPageToken = Nothing
    , _igalKind = "compute#instanceGroupAggregatedList"
    , _igalItems = Nothing
    , _igalSelfLink = Nothing
    , _igalId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igalNextPageToken :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalNextPageToken
  = lens _igalNextPageToken
      (\ s a -> s{_igalNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupAggregatedList for aggregated lists of instance
-- groups.
igalKind :: Lens' InstanceGroupAggregatedList Text
igalKind = lens _igalKind (\ s a -> s{_igalKind = a})

-- | A map of scoped instance group lists.
igalItems :: Lens' InstanceGroupAggregatedList (Maybe InstanceGroupAggregatedListItems)
igalItems
  = lens _igalItems (\ s a -> s{_igalItems = a})

-- | [Output Only] A unique identifier for this aggregated list of instance
-- groups. The server defines this identifier.
igalSelfLink :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalSelfLink
  = lens _igalSelfLink (\ s a -> s{_igalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of instance
-- groups. The server defines this identifier.
igalId :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalId = lens _igalId (\ s a -> s{_igalId = a})

instance FromJSON InstanceGroupAggregatedList where
        parseJSON
          = withObject "InstanceGroupAggregatedList"
              (\ o ->
                 InstanceGroupAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupAggregatedList where
        toJSON InstanceGroupAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igalNextPageToken,
                  Just ("kind" .= _igalKind),
                  ("items" .=) <$> _igalItems,
                  ("selfLink" .=) <$> _igalSelfLink,
                  ("id" .=) <$> _igalId])

-- | The route resource. A Route is a rule that specifies how certain packets
-- should be handled by the virtual network. Routes are associated with
-- instances by tag and the set of Routes for a particular instance is
-- called its routing table. For each packet leaving a instance, the system
-- searches that instance\'s routing table for a single best matching
-- Route. Routes match packets by destination IP address, preferring
-- smaller or more specific ranges over larger ones. If there is a tie, the
-- system selects the Route with the smallest priority value. If there is
-- still a tie, it uses the layer three and four packet headers to select
-- just one of the remaining matching Routes. The packet is then forwarded
-- as specified by the nextHop field of the winning Route -- either to
-- another instance destination, a instance gateway or a Google Compute
-- Engien-operated gateway. Packets that do not match any Route in the
-- sending instance\'s routing table are dropped.
--
-- /See:/ 'route' smart constructor.
data Route = Route
    { _rPriority          :: !(Maybe Word32)
    , _rKind              :: !Text
    , _rNextHopGateway    :: !(Maybe Text)
    , _rNextHopNetwork    :: !(Maybe Text)
    , _rNetwork           :: !(Maybe Text)
    , _rWarnings          :: !(Maybe [RouteWarningsItem])
    , _rNextHopIP         :: !(Maybe Text)
    , _rDestRange         :: !(Maybe Text)
    , _rSelfLink          :: !(Maybe Text)
    , _rName              :: !(Maybe Text)
    , _rCreationTimestamp :: !(Maybe Text)
    , _rId                :: !(Maybe Word64)
    , _rNextHopVPNTunnel  :: !(Maybe Text)
    , _rDescription       :: !(Maybe Text)
    , _rTags              :: !(Maybe [Text])
    , _rNextHopInstance   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPriority'
--
-- * 'rKind'
--
-- * 'rNextHopGateway'
--
-- * 'rNextHopNetwork'
--
-- * 'rNetwork'
--
-- * 'rWarnings'
--
-- * 'rNextHopIP'
--
-- * 'rDestRange'
--
-- * 'rSelfLink'
--
-- * 'rName'
--
-- * 'rCreationTimestamp'
--
-- * 'rId'
--
-- * 'rNextHopVPNTunnel'
--
-- * 'rDescription'
--
-- * 'rTags'
--
-- * 'rNextHopInstance'
route
    :: Route
route =
    Route
    { _rPriority = Nothing
    , _rKind = "compute#route"
    , _rNextHopGateway = Nothing
    , _rNextHopNetwork = Nothing
    , _rNetwork = Nothing
    , _rWarnings = Nothing
    , _rNextHopIP = Nothing
    , _rDestRange = Nothing
    , _rSelfLink = Nothing
    , _rName = Nothing
    , _rCreationTimestamp = Nothing
    , _rId = Nothing
    , _rNextHopVPNTunnel = Nothing
    , _rDescription = Nothing
    , _rTags = Nothing
    , _rNextHopInstance = Nothing
    }

-- | Breaks ties between Routes of equal specificity. Routes with smaller
-- values win when tied with routes with larger values. Default value is
-- 1000. A valid range is between 0 and 65535.
rPriority :: Lens' Route (Maybe Word32)
rPriority
  = lens _rPriority (\ s a -> s{_rPriority = a})

-- | [Output Only] Type of this resource. Always compute#routes for Route
-- resources.
rKind :: Lens' Route Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The URL to a gateway that should handle matching packets. Currently,
-- this is only the internet gateway:
-- projects\/\/global\/gateways\/default-internet-gateway
rNextHopGateway :: Lens' Route (Maybe Text)
rNextHopGateway
  = lens _rNextHopGateway
      (\ s a -> s{_rNextHopGateway = a})

-- | The URL of the local network if it should handle matching packets.
rNextHopNetwork :: Lens' Route (Maybe Text)
rNextHopNetwork
  = lens _rNextHopNetwork
      (\ s a -> s{_rNextHopNetwork = a})

-- | Fully-qualified URL of the network that this route applies to.
rNetwork :: Lens' Route (Maybe Text)
rNetwork = lens _rNetwork (\ s a -> s{_rNetwork = a})

-- | [Output Only] If potential misconfigurations are detected for this
-- route, this field will be populated with warning messages.
rWarnings :: Lens' Route [RouteWarningsItem]
rWarnings
  = lens _rWarnings (\ s a -> s{_rWarnings = a}) .
      _Default
      . _Coerce

-- | The network IP address of an instance that should handle matching
-- packets.
rNextHopIP :: Lens' Route (Maybe Text)
rNextHopIP
  = lens _rNextHopIP (\ s a -> s{_rNextHopIP = a})

-- | The destination range of outgoing packets that this route applies to.
rDestRange :: Lens' Route (Maybe Text)
rDestRange
  = lens _rDestRange (\ s a -> s{_rDestRange = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
rSelfLink :: Lens' Route (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
rName :: Lens' Route (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rCreationTimestamp :: Lens' Route (Maybe Text)
rCreationTimestamp
  = lens _rCreationTimestamp
      (\ s a -> s{_rCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
rId :: Lens' Route (Maybe Word64)
rId = lens _rId (\ s a -> s{_rId = a})

-- | The URL to a VpnTunnel that should handle matching packets.
rNextHopVPNTunnel :: Lens' Route (Maybe Text)
rNextHopVPNTunnel
  = lens _rNextHopVPNTunnel
      (\ s a -> s{_rNextHopVPNTunnel = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
rDescription :: Lens' Route (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

-- | A list of instance tags to which this route applies.
rTags :: Lens' Route [Text]
rTags
  = lens _rTags (\ s a -> s{_rTags = a}) . _Default .
      _Coerce

-- | The fully-qualified URL to an instance that should handle matching
-- packets. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/
rNextHopInstance :: Lens' Route (Maybe Text)
rNextHopInstance
  = lens _rNextHopInstance
      (\ s a -> s{_rNextHopInstance = a})

instance FromJSON Route where
        parseJSON
          = withObject "Route"
              (\ o ->
                 Route <$>
                   (o .:? "priority") <*>
                     (o .:? "kind" .!= "compute#route")
                     <*> (o .:? "nextHopGateway")
                     <*> (o .:? "nextHopNetwork")
                     <*> (o .:? "network")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "nextHopIp")
                     <*> (o .:? "destRange")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "nextHopVpnTunnel")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "nextHopInstance"))

instance ToJSON Route where
        toJSON Route{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _rPriority,
                  Just ("kind" .= _rKind),
                  ("nextHopGateway" .=) <$> _rNextHopGateway,
                  ("nextHopNetwork" .=) <$> _rNextHopNetwork,
                  ("network" .=) <$> _rNetwork,
                  ("warnings" .=) <$> _rWarnings,
                  ("nextHopIp" .=) <$> _rNextHopIP,
                  ("destRange" .=) <$> _rDestRange,
                  ("selfLink" .=) <$> _rSelfLink,
                  ("name" .=) <$> _rName,
                  ("creationTimestamp" .=) <$> _rCreationTimestamp,
                  ("id" .=) <$> _rId,
                  ("nextHopVpnTunnel" .=) <$> _rNextHopVPNTunnel,
                  ("description" .=) <$> _rDescription,
                  ("tags" .=) <$> _rTags,
                  ("nextHopInstance" .=) <$> _rNextHopInstance])

--
-- /See:/ 'targetVPNGatewaysScopedListWarningDataItem' smart constructor.
data TargetVPNGatewaysScopedListWarningDataItem = TargetVPNGatewaysScopedListWarningDataItem
    { _tvgslwdiValue :: !(Maybe Text)
    , _tvgslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslwdiValue'
--
-- * 'tvgslwdiKey'
targetVPNGatewaysScopedListWarningDataItem
    :: TargetVPNGatewaysScopedListWarningDataItem
targetVPNGatewaysScopedListWarningDataItem =
    TargetVPNGatewaysScopedListWarningDataItem
    { _tvgslwdiValue = Nothing
    , _tvgslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tvgslwdiValue :: Lens' TargetVPNGatewaysScopedListWarningDataItem (Maybe Text)
tvgslwdiValue
  = lens _tvgslwdiValue
      (\ s a -> s{_tvgslwdiValue = a})

-- | [Output Only] A key for the warning data.
tvgslwdiKey :: Lens' TargetVPNGatewaysScopedListWarningDataItem (Maybe Text)
tvgslwdiKey
  = lens _tvgslwdiKey (\ s a -> s{_tvgslwdiKey = a})

instance FromJSON
         TargetVPNGatewaysScopedListWarningDataItem where
        parseJSON
          = withObject
              "TargetVPNGatewaysScopedListWarningDataItem"
              (\ o ->
                 TargetVPNGatewaysScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         TargetVPNGatewaysScopedListWarningDataItem where
        toJSON TargetVPNGatewaysScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tvgslwdiValue,
                  ("key" .=) <$> _tvgslwdiKey])

-- | An Instance Template resource.
--
-- /See:/ 'instanceTemplate' smart constructor.
data InstanceTemplate = InstanceTemplate
    { _itKind              :: !Text
    , _itSelfLink          :: !(Maybe Text)
    , _itName              :: !(Maybe Text)
    , _itCreationTimestamp :: !(Maybe Text)
    , _itId                :: !(Maybe Word64)
    , _itDescription       :: !(Maybe Text)
    , _itProperties        :: !(Maybe InstanceProperties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itKind'
--
-- * 'itSelfLink'
--
-- * 'itName'
--
-- * 'itCreationTimestamp'
--
-- * 'itId'
--
-- * 'itDescription'
--
-- * 'itProperties'
instanceTemplate
    :: InstanceTemplate
instanceTemplate =
    InstanceTemplate
    { _itKind = "compute#instanceTemplate"
    , _itSelfLink = Nothing
    , _itName = Nothing
    , _itCreationTimestamp = Nothing
    , _itId = Nothing
    , _itDescription = Nothing
    , _itProperties = Nothing
    }

-- | [Output Only] The resource type, which is always
-- compute#instanceTemplate for instance templates.
itKind :: Lens' InstanceTemplate Text
itKind = lens _itKind (\ s a -> s{_itKind = a})

-- | [Output Only] The URL for this instance template. The server defines
-- this URL.
itSelfLink :: Lens' InstanceTemplate (Maybe Text)
itSelfLink
  = lens _itSelfLink (\ s a -> s{_itSelfLink = a})

-- | The name of the instance template. The name must be 1-63 characters
-- long, and comply with RFC1035.
itName :: Lens' InstanceTemplate (Maybe Text)
itName = lens _itName (\ s a -> s{_itName = a})

-- | [Output Only] The creation timestamp for this instance template in
-- RFC3339 text format.
itCreationTimestamp :: Lens' InstanceTemplate (Maybe Text)
itCreationTimestamp
  = lens _itCreationTimestamp
      (\ s a -> s{_itCreationTimestamp = a})

-- | [Output Only] A unique identifier for this instance template. The server
-- defines this identifier.
itId :: Lens' InstanceTemplate (Maybe Word64)
itId = lens _itId (\ s a -> s{_itId = a})

-- | An optional text description for the instance template.
itDescription :: Lens' InstanceTemplate (Maybe Text)
itDescription
  = lens _itDescription
      (\ s a -> s{_itDescription = a})

-- | The instance properties for the instance template resource.
itProperties :: Lens' InstanceTemplate (Maybe InstanceProperties)
itProperties
  = lens _itProperties (\ s a -> s{_itProperties = a})

instance FromJSON InstanceTemplate where
        parseJSON
          = withObject "InstanceTemplate"
              (\ o ->
                 InstanceTemplate <$>
                   (o .:? "kind" .!= "compute#instanceTemplate") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "properties"))

instance ToJSON InstanceTemplate where
        toJSON InstanceTemplate{..}
          = object
              (catMaybes
                 [Just ("kind" .= _itKind),
                  ("selfLink" .=) <$> _itSelfLink,
                  ("name" .=) <$> _itName,
                  ("creationTimestamp" .=) <$> _itCreationTimestamp,
                  ("id" .=) <$> _itId,
                  ("description" .=) <$> _itDescription,
                  ("properties" .=) <$> _itProperties])

--
-- /See:/ 'zoneMaintenanceWindowsItem' smart constructor.
data ZoneMaintenanceWindowsItem = ZoneMaintenanceWindowsItem
    { _zmwiBeginTime   :: !(Maybe Text)
    , _zmwiName        :: !(Maybe Text)
    , _zmwiEndTime     :: !(Maybe Text)
    , _zmwiDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneMaintenanceWindowsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zmwiBeginTime'
--
-- * 'zmwiName'
--
-- * 'zmwiEndTime'
--
-- * 'zmwiDescription'
zoneMaintenanceWindowsItem
    :: ZoneMaintenanceWindowsItem
zoneMaintenanceWindowsItem =
    ZoneMaintenanceWindowsItem
    { _zmwiBeginTime = Nothing
    , _zmwiName = Nothing
    , _zmwiEndTime = Nothing
    , _zmwiDescription = Nothing
    }

-- | [Output Only] Starting time of the maintenance window, in RFC3339
-- format.
zmwiBeginTime :: Lens' ZoneMaintenanceWindowsItem (Maybe Text)
zmwiBeginTime
  = lens _zmwiBeginTime
      (\ s a -> s{_zmwiBeginTime = a})

-- | [Output Only] Name of the maintenance window.
zmwiName :: Lens' ZoneMaintenanceWindowsItem (Maybe Text)
zmwiName = lens _zmwiName (\ s a -> s{_zmwiName = a})

-- | [Output Only] Ending time of the maintenance window, in RFC3339 format.
zmwiEndTime :: Lens' ZoneMaintenanceWindowsItem (Maybe Text)
zmwiEndTime
  = lens _zmwiEndTime (\ s a -> s{_zmwiEndTime = a})

-- | [Output Only] Textual description of the maintenance window.
zmwiDescription :: Lens' ZoneMaintenanceWindowsItem (Maybe Text)
zmwiDescription
  = lens _zmwiDescription
      (\ s a -> s{_zmwiDescription = a})

instance FromJSON ZoneMaintenanceWindowsItem where
        parseJSON
          = withObject "ZoneMaintenanceWindowsItem"
              (\ o ->
                 ZoneMaintenanceWindowsItem <$>
                   (o .:? "beginTime") <*> (o .:? "name") <*>
                     (o .:? "endTime")
                     <*> (o .:? "description"))

instance ToJSON ZoneMaintenanceWindowsItem where
        toJSON ZoneMaintenanceWindowsItem{..}
          = object
              (catMaybes
                 [("beginTime" .=) <$> _zmwiBeginTime,
                  ("name" .=) <$> _zmwiName,
                  ("endTime" .=) <$> _zmwiEndTime,
                  ("description" .=) <$> _zmwiDescription])

--
-- /See:/ 'targetVPNGateway' smart constructor.
data TargetVPNGateway = TargetVPNGateway
    { _tvgStatus            :: !(Maybe TargetVPNGatewayStatus)
    , _tvgKind              :: !Text
    , _tvgNetwork           :: !(Maybe Text)
    , _tvgSelfLink          :: !(Maybe Text)
    , _tvgName              :: !(Maybe Text)
    , _tvgCreationTimestamp :: !(Maybe Text)
    , _tvgId                :: !(Maybe Word64)
    , _tvgRegion            :: !(Maybe Text)
    , _tvgTunnels           :: !(Maybe [Text])
    , _tvgDescription       :: !(Maybe Text)
    , _tvgForwardingRules   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgStatus'
--
-- * 'tvgKind'
--
-- * 'tvgNetwork'
--
-- * 'tvgSelfLink'
--
-- * 'tvgName'
--
-- * 'tvgCreationTimestamp'
--
-- * 'tvgId'
--
-- * 'tvgRegion'
--
-- * 'tvgTunnels'
--
-- * 'tvgDescription'
--
-- * 'tvgForwardingRules'
targetVPNGateway
    :: TargetVPNGateway
targetVPNGateway =
    TargetVPNGateway
    { _tvgStatus = Nothing
    , _tvgKind = "compute#targetVpnGateway"
    , _tvgNetwork = Nothing
    , _tvgSelfLink = Nothing
    , _tvgName = Nothing
    , _tvgCreationTimestamp = Nothing
    , _tvgId = Nothing
    , _tvgRegion = Nothing
    , _tvgTunnels = Nothing
    , _tvgDescription = Nothing
    , _tvgForwardingRules = Nothing
    }

-- | [Output Only] The status of the VPN gateway.
tvgStatus :: Lens' TargetVPNGateway (Maybe TargetVPNGatewayStatus)
tvgStatus
  = lens _tvgStatus (\ s a -> s{_tvgStatus = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvgKind :: Lens' TargetVPNGateway Text
tvgKind = lens _tvgKind (\ s a -> s{_tvgKind = a})

-- | URL of the network to which this VPN gateway is attached. Provided by
-- the client when the VPN gateway is created.
tvgNetwork :: Lens' TargetVPNGateway (Maybe Text)
tvgNetwork
  = lens _tvgNetwork (\ s a -> s{_tvgNetwork = a})

-- | [Output Only] Server-defined URL for the resource.
tvgSelfLink :: Lens' TargetVPNGateway (Maybe Text)
tvgSelfLink
  = lens _tvgSelfLink (\ s a -> s{_tvgSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tvgName :: Lens' TargetVPNGateway (Maybe Text)
tvgName = lens _tvgName (\ s a -> s{_tvgName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tvgCreationTimestamp :: Lens' TargetVPNGateway (Maybe Text)
tvgCreationTimestamp
  = lens _tvgCreationTimestamp
      (\ s a -> s{_tvgCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvgId :: Lens' TargetVPNGateway (Maybe Word64)
tvgId = lens _tvgId (\ s a -> s{_tvgId = a})

-- | [Output Only] URL of the region where the target VPN gateway resides.
tvgRegion :: Lens' TargetVPNGateway (Maybe Text)
tvgRegion
  = lens _tvgRegion (\ s a -> s{_tvgRegion = a})

-- | [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are
-- created using compute.vpntunnels.insert and associated to a VPN gateway.
tvgTunnels :: Lens' TargetVPNGateway [Text]
tvgTunnels
  = lens _tvgTunnels (\ s a -> s{_tvgTunnels = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
tvgDescription :: Lens' TargetVPNGateway (Maybe Text)
tvgDescription
  = lens _tvgDescription
      (\ s a -> s{_tvgDescription = a})

-- | [Output Only] A list of URLs to the ForwardingRule resources.
-- ForwardingRules are created using compute.forwardingRules.insert and
-- associated to a VPN gateway.
tvgForwardingRules :: Lens' TargetVPNGateway [Text]
tvgForwardingRules
  = lens _tvgForwardingRules
      (\ s a -> s{_tvgForwardingRules = a})
      . _Default
      . _Coerce

instance FromJSON TargetVPNGateway where
        parseJSON
          = withObject "TargetVPNGateway"
              (\ o ->
                 TargetVPNGateway <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "compute#targetVpnGateway")
                     <*> (o .:? "network")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "tunnels" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "forwardingRules" .!= mempty))

instance ToJSON TargetVPNGateway where
        toJSON TargetVPNGateway{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tvgStatus,
                  Just ("kind" .= _tvgKind),
                  ("network" .=) <$> _tvgNetwork,
                  ("selfLink" .=) <$> _tvgSelfLink,
                  ("name" .=) <$> _tvgName,
                  ("creationTimestamp" .=) <$> _tvgCreationTimestamp,
                  ("id" .=) <$> _tvgId, ("region" .=) <$> _tvgRegion,
                  ("tunnels" .=) <$> _tvgTunnels,
                  ("description" .=) <$> _tvgDescription,
                  ("forwardingRules" .=) <$> _tvgForwardingRules])

--
-- /See:/ 'urlMapsValidateResponse' smart constructor.
newtype URLMapsValidateResponse = URLMapsValidateResponse
    { _umvrResult :: Maybe URLMapValidationResult
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsValidateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrResult'
urlMapsValidateResponse
    :: URLMapsValidateResponse
urlMapsValidateResponse =
    URLMapsValidateResponse
    { _umvrResult = Nothing
    }

umvrResult :: Lens' URLMapsValidateResponse (Maybe URLMapValidationResult)
umvrResult
  = lens _umvrResult (\ s a -> s{_umvrResult = a})

instance FromJSON URLMapsValidateResponse where
        parseJSON
          = withObject "URLMapsValidateResponse"
              (\ o -> URLMapsValidateResponse <$> (o .:? "result"))

instance ToJSON URLMapsValidateResponse where
        toJSON URLMapsValidateResponse{..}
          = object (catMaybes [("result" .=) <$> _umvrResult])

--
-- /See:/ 'urlMapReference' smart constructor.
newtype URLMapReference = URLMapReference
    { _umrURLMap :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrURLMap'
urlMapReference
    :: URLMapReference
urlMapReference =
    URLMapReference
    { _umrURLMap = Nothing
    }

umrURLMap :: Lens' URLMapReference (Maybe Text)
umrURLMap
  = lens _umrURLMap (\ s a -> s{_umrURLMap = a})

instance FromJSON URLMapReference where
        parseJSON
          = withObject "URLMapReference"
              (\ o -> URLMapReference <$> (o .:? "urlMap"))

instance ToJSON URLMapReference where
        toJSON URLMapReference{..}
          = object (catMaybes [("urlMap" .=) <$> _umrURLMap])

--
-- /See:/ 'targetPoolsAddHealthCheckRequest' smart constructor.
newtype TargetPoolsAddHealthCheckRequest = TargetPoolsAddHealthCheckRequest
    { _tpahcrHealthChecks :: Maybe [HealthCheckReference]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAddHealthCheckRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpahcrHealthChecks'
targetPoolsAddHealthCheckRequest
    :: TargetPoolsAddHealthCheckRequest
targetPoolsAddHealthCheckRequest =
    TargetPoolsAddHealthCheckRequest
    { _tpahcrHealthChecks = Nothing
    }

-- | Health check URLs to be added to targetPool.
tpahcrHealthChecks :: Lens' TargetPoolsAddHealthCheckRequest [HealthCheckReference]
tpahcrHealthChecks
  = lens _tpahcrHealthChecks
      (\ s a -> s{_tpahcrHealthChecks = a})
      . _Default
      . _Coerce

instance FromJSON TargetPoolsAddHealthCheckRequest
         where
        parseJSON
          = withObject "TargetPoolsAddHealthCheckRequest"
              (\ o ->
                 TargetPoolsAddHealthCheckRequest <$>
                   (o .:? "healthChecks" .!= mempty))

instance ToJSON TargetPoolsAddHealthCheckRequest
         where
        toJSON TargetPoolsAddHealthCheckRequest{..}
          = object
              (catMaybes
                 [("healthChecks" .=) <$> _tpahcrHealthChecks])

-- | [Output Only] A map of scoped disk lists.
--
-- /See:/ 'diskAggregatedListItems' smart constructor.
newtype DiskAggregatedListItems = DiskAggregatedListItems
    { _daliAddtional :: HashMap Text DisksScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daliAddtional'
diskAggregatedListItems
    :: HashMap Text DisksScopedList -- ^ 'addtional'
    -> DiskAggregatedListItems
diskAggregatedListItems pDaliAddtional_ =
    DiskAggregatedListItems
    { _daliAddtional = pDaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of disks.
daliAddtional :: Lens' DiskAggregatedListItems (HashMap Text DisksScopedList)
daliAddtional
  = lens _daliAddtional
      (\ s a -> s{_daliAddtional = a})

instance FromJSON DiskAggregatedListItems where
        parseJSON
          = withObject "DiskAggregatedListItems"
              (\ o ->
                 DiskAggregatedListItems <$> (parseJSONObject o))

instance ToJSON DiskAggregatedListItems where
        toJSON = toJSON . _daliAddtional

-- | The location in Cloud Storage and naming method of the daily usage
-- report. Contains bucket_name and report_name prefix.
--
-- /See:/ 'usageExportLocation' smart constructor.
data UsageExportLocation = UsageExportLocation
    { _uelReportNamePrefix :: !(Maybe Text)
    , _uelBucketName       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageExportLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uelReportNamePrefix'
--
-- * 'uelBucketName'
usageExportLocation
    :: UsageExportLocation
usageExportLocation =
    UsageExportLocation
    { _uelReportNamePrefix = Nothing
    , _uelBucketName = Nothing
    }

-- | An optional prefix for the name of the usage report object stored in
-- bucketName. If not supplied, defaults to usage. The report is stored as
-- a CSV file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is
-- the day of the usage according to Pacific Time. If you supply a prefix,
-- it should conform to Cloud Storage object naming conventions.
uelReportNamePrefix :: Lens' UsageExportLocation (Maybe Text)
uelReportNamePrefix
  = lens _uelReportNamePrefix
      (\ s a -> s{_uelReportNamePrefix = a})

-- | The name of an existing bucket in Cloud Storage where the usage report
-- object is stored. The Google Service Account is granted write access to
-- this bucket. This is just the bucket name, with no gs:\/\/ or
-- https:\/\/storage.googleapis.com\/ in front of it.
uelBucketName :: Lens' UsageExportLocation (Maybe Text)
uelBucketName
  = lens _uelBucketName
      (\ s a -> s{_uelBucketName = a})

instance FromJSON UsageExportLocation where
        parseJSON
          = withObject "UsageExportLocation"
              (\ o ->
                 UsageExportLocation <$>
                   (o .:? "reportNamePrefix") <*> (o .:? "bucketName"))

instance ToJSON UsageExportLocation where
        toJSON UsageExportLocation{..}
          = object
              (catMaybes
                 [("reportNamePrefix" .=) <$> _uelReportNamePrefix,
                  ("bucketName" .=) <$> _uelBucketName])

-- | Contains a list of zone resources.
--
-- /See:/ 'zoneList' smart constructor.
data ZoneList = ZoneList
    { _zlNextPageToken :: !(Maybe Text)
    , _zlKind          :: !Text
    , _zlItems         :: !(Maybe [Zone])
    , _zlSelfLink      :: !(Maybe Text)
    , _zlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zlNextPageToken'
--
-- * 'zlKind'
--
-- * 'zlItems'
--
-- * 'zlSelfLink'
--
-- * 'zlId'
zoneList
    :: ZoneList
zoneList =
    ZoneList
    { _zlNextPageToken = Nothing
    , _zlKind = "compute#zoneList"
    , _zlItems = Nothing
    , _zlSelfLink = Nothing
    , _zlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
zlNextPageToken :: Lens' ZoneList (Maybe Text)
zlNextPageToken
  = lens _zlNextPageToken
      (\ s a -> s{_zlNextPageToken = a})

-- | Type of resource.
zlKind :: Lens' ZoneList Text
zlKind = lens _zlKind (\ s a -> s{_zlKind = a})

-- | [Output Only] A list of Zone resources.
zlItems :: Lens' ZoneList [Zone]
zlItems
  = lens _zlItems (\ s a -> s{_zlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
zlSelfLink :: Lens' ZoneList (Maybe Text)
zlSelfLink
  = lens _zlSelfLink (\ s a -> s{_zlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
zlId :: Lens' ZoneList (Maybe Text)
zlId = lens _zlId (\ s a -> s{_zlId = a})

instance FromJSON ZoneList where
        parseJSON
          = withObject "ZoneList"
              (\ o ->
                 ZoneList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#zoneList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ZoneList where
        toJSON ZoneList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _zlNextPageToken,
                  Just ("kind" .= _zlKind), ("items" .=) <$> _zlItems,
                  ("selfLink" .=) <$> _zlSelfLink,
                  ("id" .=) <$> _zlId])

--
-- /See:/ 'managedInstance' smart constructor.
data ManagedInstance = ManagedInstance
    { _miLastAttempt    :: !(Maybe ManagedInstanceLastAttempt)
    , _miCurrentAction  :: !(Maybe ManagedInstanceCurrentAction)
    , _miId             :: !(Maybe Word64)
    , _miInstanceStatus :: !(Maybe ManagedInstanceInstanceStatus)
    , _miInstance       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miLastAttempt'
--
-- * 'miCurrentAction'
--
-- * 'miId'
--
-- * 'miInstanceStatus'
--
-- * 'miInstance'
managedInstance
    :: ManagedInstance
managedInstance =
    ManagedInstance
    { _miLastAttempt = Nothing
    , _miCurrentAction = Nothing
    , _miId = Nothing
    , _miInstanceStatus = Nothing
    , _miInstance = Nothing
    }

-- | Information about the last attempt to create or delete the instance.
miLastAttempt :: Lens' ManagedInstance (Maybe ManagedInstanceLastAttempt)
miLastAttempt
  = lens _miLastAttempt
      (\ s a -> s{_miLastAttempt = a})

-- | The current action that the managed instance group has scheduled for the
-- instance.
miCurrentAction :: Lens' ManagedInstance (Maybe ManagedInstanceCurrentAction)
miCurrentAction
  = lens _miCurrentAction
      (\ s a -> s{_miCurrentAction = a})

-- | The unique identifier for this resource (empty when instance does not
-- exist).
miId :: Lens' ManagedInstance (Maybe Word64)
miId = lens _miId (\ s a -> s{_miId = a})

-- | The status of the instance (empty when instance does not exist).
miInstanceStatus :: Lens' ManagedInstance (Maybe ManagedInstanceInstanceStatus)
miInstanceStatus
  = lens _miInstanceStatus
      (\ s a -> s{_miInstanceStatus = a})

-- | The URL of the instance (set even though instance does not exist yet).
miInstance :: Lens' ManagedInstance (Maybe Text)
miInstance
  = lens _miInstance (\ s a -> s{_miInstance = a})

instance FromJSON ManagedInstance where
        parseJSON
          = withObject "ManagedInstance"
              (\ o ->
                 ManagedInstance <$>
                   (o .:? "lastAttempt") <*> (o .:? "currentAction") <*>
                     (o .:? "id")
                     <*> (o .:? "instanceStatus")
                     <*> (o .:? "instance"))

instance ToJSON ManagedInstance where
        toJSON ManagedInstance{..}
          = object
              (catMaybes
                 [("lastAttempt" .=) <$> _miLastAttempt,
                  ("currentAction" .=) <$> _miCurrentAction,
                  ("id" .=) <$> _miId,
                  ("instanceStatus" .=) <$> _miInstanceStatus,
                  ("instance" .=) <$> _miInstance])

-- | A map of filtered managed instance group lists.
--
-- /See:/ 'instanceGroupManagerAggregatedListItems' smart constructor.
newtype InstanceGroupManagerAggregatedListItems = InstanceGroupManagerAggregatedListItems
    { _igmaliAddtional :: HashMap Text InstanceGroupManagersScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaliAddtional'
instanceGroupManagerAggregatedListItems
    :: HashMap Text InstanceGroupManagersScopedList -- ^ 'addtional'
    -> InstanceGroupManagerAggregatedListItems
instanceGroupManagerAggregatedListItems pIgmaliAddtional_ =
    InstanceGroupManagerAggregatedListItems
    { _igmaliAddtional = pIgmaliAddtional_
    }

-- | The name of the scope that contains this set of managed instance groups.
igmaliAddtional :: Lens' InstanceGroupManagerAggregatedListItems (HashMap Text InstanceGroupManagersScopedList)
igmaliAddtional
  = lens _igmaliAddtional
      (\ s a -> s{_igmaliAddtional = a})

instance FromJSON
         InstanceGroupManagerAggregatedListItems where
        parseJSON
          = withObject
              "InstanceGroupManagerAggregatedListItems"
              (\ o ->
                 InstanceGroupManagerAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON
         InstanceGroupManagerAggregatedListItems where
        toJSON = toJSON . _igmaliAddtional

--
-- /See:/ 'instanceGroupManagersDeleteInstancesRequest' smart constructor.
newtype InstanceGroupManagersDeleteInstancesRequest = InstanceGroupManagersDeleteInstancesRequest
    { _igmdirInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDeleteInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdirInstances'
instanceGroupManagersDeleteInstancesRequest
    :: InstanceGroupManagersDeleteInstancesRequest
instanceGroupManagersDeleteInstancesRequest =
    InstanceGroupManagersDeleteInstancesRequest
    { _igmdirInstances = Nothing
    }

-- | The names of one or more instances to delete.
igmdirInstances :: Lens' InstanceGroupManagersDeleteInstancesRequest [Text]
igmdirInstances
  = lens _igmdirInstances
      (\ s a -> s{_igmdirInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupManagersDeleteInstancesRequest where
        parseJSON
          = withObject
              "InstanceGroupManagersDeleteInstancesRequest"
              (\ o ->
                 InstanceGroupManagersDeleteInstancesRequest <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersDeleteInstancesRequest where
        toJSON
          InstanceGroupManagersDeleteInstancesRequest{..}
          = object
              (catMaybes [("instances" .=) <$> _igmdirInstances])

-- | Message containing information of one individual backend.
--
-- /See:/ 'backend' smart constructor.
data Backend = Backend
    { _bGroup              :: !(Maybe Text)
    , _bBalancingMode      :: !(Maybe BackendBalancingMode)
    , _bMaxUtilization     :: !(Maybe Float)
    , _bMaxRate            :: !(Maybe Int32)
    , _bMaxRatePerInstance :: !(Maybe Float)
    , _bDescription        :: !(Maybe Text)
    , _bCapacityScaler     :: !(Maybe Float)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Backend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bGroup'
--
-- * 'bBalancingMode'
--
-- * 'bMaxUtilization'
--
-- * 'bMaxRate'
--
-- * 'bMaxRatePerInstance'
--
-- * 'bDescription'
--
-- * 'bCapacityScaler'
backend
    :: Backend
backend =
    Backend
    { _bGroup = Nothing
    , _bBalancingMode = Nothing
    , _bMaxUtilization = Nothing
    , _bMaxRate = Nothing
    , _bMaxRatePerInstance = Nothing
    , _bDescription = Nothing
    , _bCapacityScaler = Nothing
    }

-- | The fully-qualified URL of a zonal Instance Group resource. This
-- instance group defines the list of instances that serve traffic. Member
-- virtual machine instances from each instance group must live in the same
-- zone as the instance group itself. No two backends in a backend service
-- are allowed to use same Instance Group resource. Note that you must
-- specify an Instance Group resource using the fully-qualified URL, rather
-- than a partial URL.
bGroup :: Lens' Backend (Maybe Text)
bGroup = lens _bGroup (\ s a -> s{_bGroup = a})

-- | Specifies the balancing mode for this backend. The default is
-- UTILIZATION but available values are UTILIZATION and RATE.
bBalancingMode :: Lens' Backend (Maybe BackendBalancingMode)
bBalancingMode
  = lens _bBalancingMode
      (\ s a -> s{_bBalancingMode = a})

-- | Used when balancingMode is UTILIZATION. This ratio defines the CPU
-- utilization target for the group. The default is 0.8. Valid range is
-- [0.0, 1.0].
bMaxUtilization :: Lens' Backend (Maybe Float)
bMaxUtilization
  = lens _bMaxUtilization
      (\ s a -> s{_bMaxUtilization = a})

-- | The max RPS of the group. Can be used with either balancing mode, but
-- required if RATE mode. For RATE mode, either maxRate or
-- maxRatePerInstance must be set.
bMaxRate :: Lens' Backend (Maybe Int32)
bMaxRate = lens _bMaxRate (\ s a -> s{_bMaxRate = a})

-- | The max RPS that a single backed instance can handle. This is used to
-- calculate the capacity of the group. Can be used in either balancing
-- mode. For RATE mode, either maxRate or maxRatePerInstance must be set.
bMaxRatePerInstance :: Lens' Backend (Maybe Float)
bMaxRatePerInstance
  = lens _bMaxRatePerInstance
      (\ s a -> s{_bMaxRatePerInstance = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
bDescription :: Lens' Backend (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

-- | A multiplier applied to the group\'s maximum servicing capacity (either
-- UTILIZATION or RATE). Default value is 1, which means the group will
-- serve up to 100% of its configured CPU or RPS (depending on
-- balancingMode). A setting of 0 means the group is completely drained,
-- offering 0% of its available CPU or RPS. Valid range is [0.0,1.0].
bCapacityScaler :: Lens' Backend (Maybe Float)
bCapacityScaler
  = lens _bCapacityScaler
      (\ s a -> s{_bCapacityScaler = a})

instance FromJSON Backend where
        parseJSON
          = withObject "Backend"
              (\ o ->
                 Backend <$>
                   (o .:? "group") <*> (o .:? "balancingMode") <*>
                     (o .:? "maxUtilization")
                     <*> (o .:? "maxRate")
                     <*> (o .:? "maxRatePerInstance")
                     <*> (o .:? "description")
                     <*> (o .:? "capacityScaler"))

instance ToJSON Backend where
        toJSON Backend{..}
          = object
              (catMaybes
                 [("group" .=) <$> _bGroup,
                  ("balancingMode" .=) <$> _bBalancingMode,
                  ("maxUtilization" .=) <$> _bMaxUtilization,
                  ("maxRate" .=) <$> _bMaxRate,
                  ("maxRatePerInstance" .=) <$> _bMaxRatePerInstance,
                  ("description" .=) <$> _bDescription,
                  ("capacityScaler" .=) <$> _bCapacityScaler])

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'targetVPNGatewaysScopedListWarning' smart constructor.
data TargetVPNGatewaysScopedListWarning = TargetVPNGatewaysScopedListWarning
    { _tvgslwData    :: !(Maybe [TargetVPNGatewaysScopedListWarningDataItem])
    , _tvgslwCode    :: !(Maybe TargetVPNGatewaysScopedListWarningCode)
    , _tvgslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslwData'
--
-- * 'tvgslwCode'
--
-- * 'tvgslwMessage'
targetVPNGatewaysScopedListWarning
    :: TargetVPNGatewaysScopedListWarning
targetVPNGatewaysScopedListWarning =
    TargetVPNGatewaysScopedListWarning
    { _tvgslwData = Nothing
    , _tvgslwCode = Nothing
    , _tvgslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tvgslwData :: Lens' TargetVPNGatewaysScopedListWarning [TargetVPNGatewaysScopedListWarningDataItem]
tvgslwData
  = lens _tvgslwData (\ s a -> s{_tvgslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tvgslwCode :: Lens' TargetVPNGatewaysScopedListWarning (Maybe TargetVPNGatewaysScopedListWarningCode)
tvgslwCode
  = lens _tvgslwCode (\ s a -> s{_tvgslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tvgslwMessage :: Lens' TargetVPNGatewaysScopedListWarning (Maybe Text)
tvgslwMessage
  = lens _tvgslwMessage
      (\ s a -> s{_tvgslwMessage = a})

instance FromJSON TargetVPNGatewaysScopedListWarning
         where
        parseJSON
          = withObject "TargetVPNGatewaysScopedListWarning"
              (\ o ->
                 TargetVPNGatewaysScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetVPNGatewaysScopedListWarning
         where
        toJSON TargetVPNGatewaysScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tvgslwData,
                  ("code" .=) <$> _tvgslwCode,
                  ("message" .=) <$> _tvgslwMessage])

-- | Contains a list of address resources.
--
-- /See:/ 'addressList' smart constructor.
data AddressList = AddressList
    { _alNextPageToken :: !(Maybe Text)
    , _alKind          :: !Text
    , _alItems         :: !(Maybe [Address])
    , _alSelfLink      :: !(Maybe Text)
    , _alId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alNextPageToken'
--
-- * 'alKind'
--
-- * 'alItems'
--
-- * 'alSelfLink'
--
-- * 'alId'
addressList
    :: AddressList
addressList =
    AddressList
    { _alNextPageToken = Nothing
    , _alKind = "compute#addressList"
    , _alItems = Nothing
    , _alSelfLink = Nothing
    , _alId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
alNextPageToken :: Lens' AddressList (Maybe Text)
alNextPageToken
  = lens _alNextPageToken
      (\ s a -> s{_alNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#addressList for lists of
-- addresses.
alKind :: Lens' AddressList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | [Output Only] A list of Address resources.
alItems :: Lens' AddressList [Address]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
alSelfLink :: Lens' AddressList (Maybe Text)
alSelfLink
  = lens _alSelfLink (\ s a -> s{_alSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
alId :: Lens' AddressList (Maybe Text)
alId = lens _alId (\ s a -> s{_alId = a})

instance FromJSON AddressList where
        parseJSON
          = withObject "AddressList"
              (\ o ->
                 AddressList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#addressList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AddressList where
        toJSON AddressList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alNextPageToken,
                  Just ("kind" .= _alKind), ("items" .=) <$> _alItems,
                  ("selfLink" .=) <$> _alSelfLink,
                  ("id" .=) <$> _alId])

-- | A map of scoped forwarding rule lists.
--
-- /See:/ 'forwardingRuleAggregatedListItems' smart constructor.
newtype ForwardingRuleAggregatedListItems = ForwardingRuleAggregatedListItems
    { _fraliAddtional :: HashMap Text ForwardingRulesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fraliAddtional'
forwardingRuleAggregatedListItems
    :: HashMap Text ForwardingRulesScopedList -- ^ 'addtional'
    -> ForwardingRuleAggregatedListItems
forwardingRuleAggregatedListItems pFraliAddtional_ =
    ForwardingRuleAggregatedListItems
    { _fraliAddtional = pFraliAddtional_
    }

-- | Name of the scope containing this set of addresses.
fraliAddtional :: Lens' ForwardingRuleAggregatedListItems (HashMap Text ForwardingRulesScopedList)
fraliAddtional
  = lens _fraliAddtional
      (\ s a -> s{_fraliAddtional = a})

instance FromJSON ForwardingRuleAggregatedListItems
         where
        parseJSON
          = withObject "ForwardingRuleAggregatedListItems"
              (\ o ->
                 ForwardingRuleAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON ForwardingRuleAggregatedListItems
         where
        toJSON = toJSON . _fraliAddtional

-- | [Output Only] A map of scoped operation lists.
--
-- /See:/ 'operationAggregatedListItems' smart constructor.
newtype OperationAggregatedListItems = OperationAggregatedListItems
    { _oaliAddtional :: HashMap Text OperationsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaliAddtional'
operationAggregatedListItems
    :: HashMap Text OperationsScopedList -- ^ 'addtional'
    -> OperationAggregatedListItems
operationAggregatedListItems pOaliAddtional_ =
    OperationAggregatedListItems
    { _oaliAddtional = pOaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of operations.
oaliAddtional :: Lens' OperationAggregatedListItems (HashMap Text OperationsScopedList)
oaliAddtional
  = lens _oaliAddtional
      (\ s a -> s{_oaliAddtional = a})

instance FromJSON OperationAggregatedListItems where
        parseJSON
          = withObject "OperationAggregatedListItems"
              (\ o ->
                 OperationAggregatedListItems <$> (parseJSONObject o))

instance ToJSON OperationAggregatedListItems where
        toJSON = toJSON . _oaliAddtional

--
-- /See:/ 'instanceGroupManagerActionsSummary' smart constructor.
data InstanceGroupManagerActionsSummary = InstanceGroupManagerActionsSummary
    { _igmasDeleting   :: !(Maybe Int32)
    , _igmasRestarting :: !(Maybe Int32)
    , _igmasNone       :: !(Maybe Int32)
    , _igmasCreating   :: !(Maybe Int32)
    , _igmasRefreshing :: !(Maybe Int32)
    , _igmasRecreating :: !(Maybe Int32)
    , _igmasAbandoning :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerActionsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmasDeleting'
--
-- * 'igmasRestarting'
--
-- * 'igmasNone'
--
-- * 'igmasCreating'
--
-- * 'igmasRefreshing'
--
-- * 'igmasRecreating'
--
-- * 'igmasAbandoning'
instanceGroupManagerActionsSummary
    :: InstanceGroupManagerActionsSummary
instanceGroupManagerActionsSummary =
    InstanceGroupManagerActionsSummary
    { _igmasDeleting = Nothing
    , _igmasRestarting = Nothing
    , _igmasNone = Nothing
    , _igmasCreating = Nothing
    , _igmasRefreshing = Nothing
    , _igmasRecreating = Nothing
    , _igmasAbandoning = Nothing
    }

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be deleted or are currently being deleted.
igmasDeleting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasDeleting
  = lens _igmasDeleting
      (\ s a -> s{_igmasDeleting = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be restarted or are currently being restarted.
igmasRestarting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRestarting
  = lens _igmasRestarting
      (\ s a -> s{_igmasRestarting = a})

-- | [Output Only] The number of instances in the managed instance group that
-- currently have no scheduled actions.
igmasNone :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasNone
  = lens _igmasNone (\ s a -> s{_igmasNone = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be created or are currently being created.
igmasCreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasCreating
  = lens _igmasCreating
      (\ s a -> s{_igmasCreating = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are being reconfigured with properties that do not require a restart or
-- a recreate action. For example, setting or removing target pools for the
-- instance.
igmasRefreshing :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRefreshing
  = lens _igmasRefreshing
      (\ s a -> s{_igmasRefreshing = a})

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be recreated or are currently being being recreated.
-- Recreating an instance deletes the existing root persistent disk and
-- creates a new disk from the image that is defined in the instance
-- template.
igmasRecreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRecreating
  = lens _igmasRecreating
      (\ s a -> s{_igmasRecreating = a})

-- | [Output Only] Total number of instances in the managed instance group
-- that are scheduled to be abandoned. Abandoning an instance removes it
-- from the managed instance group without deleting it.
igmasAbandoning :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasAbandoning
  = lens _igmasAbandoning
      (\ s a -> s{_igmasAbandoning = a})

instance FromJSON InstanceGroupManagerActionsSummary
         where
        parseJSON
          = withObject "InstanceGroupManagerActionsSummary"
              (\ o ->
                 InstanceGroupManagerActionsSummary <$>
                   (o .:? "deleting") <*> (o .:? "restarting") <*>
                     (o .:? "none")
                     <*> (o .:? "creating")
                     <*> (o .:? "refreshing")
                     <*> (o .:? "recreating")
                     <*> (o .:? "abandoning"))

instance ToJSON InstanceGroupManagerActionsSummary
         where
        toJSON InstanceGroupManagerActionsSummary{..}
          = object
              (catMaybes
                 [("deleting" .=) <$> _igmasDeleting,
                  ("restarting" .=) <$> _igmasRestarting,
                  ("none" .=) <$> _igmasNone,
                  ("creating" .=) <$> _igmasCreating,
                  ("refreshing" .=) <$> _igmasRefreshing,
                  ("recreating" .=) <$> _igmasRecreating,
                  ("abandoning" .=) <$> _igmasAbandoning])

-- | A service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount
    { _saEmail  :: !(Maybe Text)
    , _saScopes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saScopes'
serviceAccount
    :: ServiceAccount
serviceAccount =
    ServiceAccount
    { _saEmail = Nothing
    , _saScopes = Nothing
    }

-- | Email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | The list of scopes to be made available for this service account.
saScopes :: Lens' ServiceAccount [Text]
saScopes
  = lens _saScopes (\ s a -> s{_saScopes = a}) .
      _Default
      . _Coerce

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount <$>
                   (o .:? "email") <*> (o .:? "scopes" .!= mempty))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail,
                  ("scopes" .=) <$> _saScopes])

-- | Contains a list of Network resources.
--
-- /See:/ 'networkList' smart constructor.
data NetworkList = NetworkList
    { _nlNextPageToken :: !(Maybe Text)
    , _nlKind          :: !Text
    , _nlItems         :: !(Maybe [Network])
    , _nlSelfLink      :: !(Maybe Text)
    , _nlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlNextPageToken'
--
-- * 'nlKind'
--
-- * 'nlItems'
--
-- * 'nlSelfLink'
--
-- * 'nlId'
networkList
    :: NetworkList
networkList =
    NetworkList
    { _nlNextPageToken = Nothing
    , _nlKind = "compute#networkList"
    , _nlItems = Nothing
    , _nlSelfLink = Nothing
    , _nlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
nlNextPageToken :: Lens' NetworkList (Maybe Text)
nlNextPageToken
  = lens _nlNextPageToken
      (\ s a -> s{_nlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#networkList for lists of
-- networks.
nlKind :: Lens' NetworkList Text
nlKind = lens _nlKind (\ s a -> s{_nlKind = a})

-- | [Output Only] A list of Network resources.
nlItems :: Lens' NetworkList [Network]
nlItems
  = lens _nlItems (\ s a -> s{_nlItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource .
nlSelfLink :: Lens' NetworkList (Maybe Text)
nlSelfLink
  = lens _nlSelfLink (\ s a -> s{_nlSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
nlId :: Lens' NetworkList (Maybe Text)
nlId = lens _nlId (\ s a -> s{_nlId = a})

instance FromJSON NetworkList where
        parseJSON
          = withObject "NetworkList"
              (\ o ->
                 NetworkList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#networkList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON NetworkList where
        toJSON NetworkList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _nlNextPageToken,
                  Just ("kind" .= _nlKind), ("items" .=) <$> _nlItems,
                  ("selfLink" .=) <$> _nlSelfLink,
                  ("id" .=) <$> _nlId])

--
-- /See:/ 'instanceGroupsListInstancesRequest' smart constructor.
newtype InstanceGroupsListInstancesRequest = InstanceGroupsListInstancesRequest
    { _iglirInstanceState :: Maybe InstanceGroupsListInstancesRequestInstanceState
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsListInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iglirInstanceState'
instanceGroupsListInstancesRequest
    :: InstanceGroupsListInstancesRequest
instanceGroupsListInstancesRequest =
    InstanceGroupsListInstancesRequest
    { _iglirInstanceState = Nothing
    }

-- | A filter for the state of the instances in the instance group. Valid
-- options are ALL or RUNNING. If you do not specify this parameter the
-- list includes all instances regardless of their state.
iglirInstanceState :: Lens' InstanceGroupsListInstancesRequest (Maybe InstanceGroupsListInstancesRequestInstanceState)
iglirInstanceState
  = lens _iglirInstanceState
      (\ s a -> s{_iglirInstanceState = a})

instance FromJSON InstanceGroupsListInstancesRequest
         where
        parseJSON
          = withObject "InstanceGroupsListInstancesRequest"
              (\ o ->
                 InstanceGroupsListInstancesRequest <$>
                   (o .:? "instanceState"))

instance ToJSON InstanceGroupsListInstancesRequest
         where
        toJSON InstanceGroupsListInstancesRequest{..}
          = object
              (catMaybes
                 [("instanceState" .=) <$> _iglirInstanceState])

-- | A map of scoped target pool lists.
--
-- /See:/ 'targetPoolAggregatedListItems' smart constructor.
newtype TargetPoolAggregatedListItems = TargetPoolAggregatedListItems
    { _tpaliAddtional :: HashMap Text TargetPoolsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpaliAddtional'
targetPoolAggregatedListItems
    :: HashMap Text TargetPoolsScopedList -- ^ 'addtional'
    -> TargetPoolAggregatedListItems
targetPoolAggregatedListItems pTpaliAddtional_ =
    TargetPoolAggregatedListItems
    { _tpaliAddtional = pTpaliAddtional_
    }

-- | Name of the scope containing this set of target pools.
tpaliAddtional :: Lens' TargetPoolAggregatedListItems (HashMap Text TargetPoolsScopedList)
tpaliAddtional
  = lens _tpaliAddtional
      (\ s a -> s{_tpaliAddtional = a})

instance FromJSON TargetPoolAggregatedListItems where
        parseJSON
          = withObject "TargetPoolAggregatedListItems"
              (\ o ->
                 TargetPoolAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON TargetPoolAggregatedListItems where
        toJSON = toJSON . _tpaliAddtional

--
-- /See:/ 'targetInstancesScopedList' smart constructor.
data TargetInstancesScopedList = TargetInstancesScopedList
    { _tislWarning         :: !(Maybe TargetInstancesScopedListWarning)
    , _tislTargetInstances :: !(Maybe [TargetInstance])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislWarning'
--
-- * 'tislTargetInstances'
targetInstancesScopedList
    :: TargetInstancesScopedList
targetInstancesScopedList =
    TargetInstancesScopedList
    { _tislWarning = Nothing
    , _tislTargetInstances = Nothing
    }

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
tislWarning :: Lens' TargetInstancesScopedList (Maybe TargetInstancesScopedListWarning)
tislWarning
  = lens _tislWarning (\ s a -> s{_tislWarning = a})

-- | List of target instances contained in this scope.
tislTargetInstances :: Lens' TargetInstancesScopedList [TargetInstance]
tislTargetInstances
  = lens _tislTargetInstances
      (\ s a -> s{_tislTargetInstances = a})
      . _Default
      . _Coerce

instance FromJSON TargetInstancesScopedList where
        parseJSON
          = withObject "TargetInstancesScopedList"
              (\ o ->
                 TargetInstancesScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "targetInstances" .!= mempty))

instance ToJSON TargetInstancesScopedList where
        toJSON TargetInstancesScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _tislWarning,
                  ("targetInstances" .=) <$> _tislTargetInstances])

-- | [Output Only] A map of scoped address lists.
--
-- /See:/ 'addressAggregatedListItems' smart constructor.
newtype AddressAggregatedListItems = AddressAggregatedListItems
    { _aAddtional :: HashMap Text AddressesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAddtional'
addressAggregatedListItems
    :: HashMap Text AddressesScopedList -- ^ 'addtional'
    -> AddressAggregatedListItems
addressAggregatedListItems pAAddtional_ =
    AddressAggregatedListItems
    { _aAddtional = pAAddtional_
    }

-- | [Output Only] Name of the scope containing this set of addresses.
aAddtional :: Lens' AddressAggregatedListItems (HashMap Text AddressesScopedList)
aAddtional
  = lens _aAddtional (\ s a -> s{_aAddtional = a})

instance FromJSON AddressAggregatedListItems where
        parseJSON
          = withObject "AddressAggregatedListItems"
              (\ o ->
                 AddressAggregatedListItems <$> (parseJSONObject o))

instance ToJSON AddressAggregatedListItems where
        toJSON = toJSON . _aAddtional

-- | Contains a list of persistent autoscaler resources.
--
-- /See:/ 'autoscalerList' smart constructor.
data AutoscalerList = AutoscalerList
    { _autNextPageToken :: !(Maybe Text)
    , _autKind          :: !Text
    , _autItems         :: !(Maybe [Autoscaler])
    , _autSelfLink      :: !(Maybe Text)
    , _autId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autNextPageToken'
--
-- * 'autKind'
--
-- * 'autItems'
--
-- * 'autSelfLink'
--
-- * 'autId'
autoscalerList
    :: AutoscalerList
autoscalerList =
    AutoscalerList
    { _autNextPageToken = Nothing
    , _autKind = "compute#autoscalerList"
    , _autItems = Nothing
    , _autSelfLink = Nothing
    , _autId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
autNextPageToken :: Lens' AutoscalerList (Maybe Text)
autNextPageToken
  = lens _autNextPageToken
      (\ s a -> s{_autNextPageToken = a})

-- | Type of resource.
autKind :: Lens' AutoscalerList Text
autKind = lens _autKind (\ s a -> s{_autKind = a})

-- | A list of Autoscaler resources.
autItems :: Lens' AutoscalerList [Autoscaler]
autItems
  = lens _autItems (\ s a -> s{_autItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
autSelfLink :: Lens' AutoscalerList (Maybe Text)
autSelfLink
  = lens _autSelfLink (\ s a -> s{_autSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
autId :: Lens' AutoscalerList (Maybe Text)
autId = lens _autId (\ s a -> s{_autId = a})

instance FromJSON AutoscalerList where
        parseJSON
          = withObject "AutoscalerList"
              (\ o ->
                 AutoscalerList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#autoscalerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AutoscalerList where
        toJSON AutoscalerList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _autNextPageToken,
                  Just ("kind" .= _autKind),
                  ("items" .=) <$> _autItems,
                  ("selfLink" .=) <$> _autSelfLink,
                  ("id" .=) <$> _autId])

--
-- /See:/ 'vpnTunnelAggregatedList' smart constructor.
data VPNTunnelAggregatedList = VPNTunnelAggregatedList
    { _vtalNextPageToken :: !(Maybe Text)
    , _vtalKind          :: !Text
    , _vtalItems         :: !(Maybe VPNTunnelAggregatedListItems)
    , _vtalSelfLink      :: !(Maybe Text)
    , _vtalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtalNextPageToken'
--
-- * 'vtalKind'
--
-- * 'vtalItems'
--
-- * 'vtalSelfLink'
--
-- * 'vtalId'
vpnTunnelAggregatedList
    :: VPNTunnelAggregatedList
vpnTunnelAggregatedList =
    VPNTunnelAggregatedList
    { _vtalNextPageToken = Nothing
    , _vtalKind = "compute#vpnTunnelAggregatedList"
    , _vtalItems = Nothing
    , _vtalSelfLink = Nothing
    , _vtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
vtalNextPageToken :: Lens' VPNTunnelAggregatedList (Maybe Text)
vtalNextPageToken
  = lens _vtalNextPageToken
      (\ s a -> s{_vtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtalKind :: Lens' VPNTunnelAggregatedList Text
vtalKind = lens _vtalKind (\ s a -> s{_vtalKind = a})

-- | [Output Only] A map of scoped vpn tunnel lists.
vtalItems :: Lens' VPNTunnelAggregatedList (Maybe VPNTunnelAggregatedListItems)
vtalItems
  = lens _vtalItems (\ s a -> s{_vtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
vtalSelfLink :: Lens' VPNTunnelAggregatedList (Maybe Text)
vtalSelfLink
  = lens _vtalSelfLink (\ s a -> s{_vtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
vtalId :: Lens' VPNTunnelAggregatedList (Maybe Text)
vtalId = lens _vtalId (\ s a -> s{_vtalId = a})

instance FromJSON VPNTunnelAggregatedList where
        parseJSON
          = withObject "VPNTunnelAggregatedList"
              (\ o ->
                 VPNTunnelAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#vpnTunnelAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON VPNTunnelAggregatedList where
        toJSON VPNTunnelAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _vtalNextPageToken,
                  Just ("kind" .= _vtalKind),
                  ("items" .=) <$> _vtalItems,
                  ("selfLink" .=) <$> _vtalSelfLink,
                  ("id" .=) <$> _vtalId])

-- | An instance-attached disk resource.
--
-- /See:/ 'attachedDisk' smart constructor.
data AttachedDisk = AttachedDisk
    { _adKind             :: !Text
    , _adMode             :: !(Maybe AttachedDiskMode)
    , _adBoot             :: !(Maybe Bool)
    , _adAutoDelete       :: !(Maybe Bool)
    , _adInitializeParams :: !(Maybe AttachedDiskInitializeParams)
    , _adDeviceName       :: !(Maybe Text)
    , _adInterface        :: !(Maybe AttachedDiskInterface)
    , _adSource           :: !(Maybe Text)
    , _adLicenses         :: !(Maybe [Text])
    , _adType             :: !(Maybe AttachedDiskType)
    , _adIndex            :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adKind'
--
-- * 'adMode'
--
-- * 'adBoot'
--
-- * 'adAutoDelete'
--
-- * 'adInitializeParams'
--
-- * 'adDeviceName'
--
-- * 'adInterface'
--
-- * 'adSource'
--
-- * 'adLicenses'
--
-- * 'adType'
--
-- * 'adIndex'
attachedDisk
    :: AttachedDisk
attachedDisk =
    AttachedDisk
    { _adKind = "compute#attachedDisk"
    , _adMode = Nothing
    , _adBoot = Nothing
    , _adAutoDelete = Nothing
    , _adInitializeParams = Nothing
    , _adDeviceName = Nothing
    , _adInterface = Nothing
    , _adSource = Nothing
    , _adLicenses = Nothing
    , _adType = Nothing
    , _adIndex = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#attachedDisk for
-- attached disks.
adKind :: Lens' AttachedDisk Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
adMode :: Lens' AttachedDisk (Maybe AttachedDiskMode)
adMode = lens _adMode (\ s a -> s{_adMode = a})

-- | Indicates that this is a boot disk. The virtual machine will use the
-- first partition of the disk for its root filesystem.
adBoot :: Lens' AttachedDisk (Maybe Bool)
adBoot = lens _adBoot (\ s a -> s{_adBoot = a})

-- | Specifies whether the disk will be auto-deleted when the instance is
-- deleted (but not when the disk is detached from the instance).
adAutoDelete :: Lens' AttachedDisk (Maybe Bool)
adAutoDelete
  = lens _adAutoDelete (\ s a -> s{_adAutoDelete = a})

-- | [Input Only] Specifies the parameters for a new disk that will be
-- created alongside the new instance. Use initialization parameters to
-- create boot disks or local SSDs attached to the new instance. This
-- property is mutually exclusive with the source property; you can only
-- define one or the other, but not both.
adInitializeParams :: Lens' AttachedDisk (Maybe AttachedDiskInitializeParams)
adInitializeParams
  = lens _adInitializeParams
      (\ s a -> s{_adInitializeParams = a})

-- | Specifies a unique device name of your choice that is reflected into the
-- \/dev\/disk\/by-id\/google-* tree of a Linux operating system running
-- within the instance. This name can be used to reference the device for
-- mounting, resizing, and so on, from within the instance. If not
-- specified, the server chooses a default device name to apply to this
-- disk, in the form persistent-disks-x, where x is a number assigned by
-- Google Compute Engine. This field is only applicable for persistent
-- disks.
adDeviceName :: Lens' AttachedDisk (Maybe Text)
adDeviceName
  = lens _adDeviceName (\ s a -> s{_adDeviceName = a})

adInterface :: Lens' AttachedDisk (Maybe AttachedDiskInterface)
adInterface
  = lens _adInterface (\ s a -> s{_adInterface = a})

-- | Specifies a valid partial or full URL to an existing Persistent Disk
-- resource. This field is only applicable for persistent disks.
adSource :: Lens' AttachedDisk (Maybe Text)
adSource = lens _adSource (\ s a -> s{_adSource = a})

-- | [Output Only] Any valid publicly visible licenses.
adLicenses :: Lens' AttachedDisk [Text]
adLicenses
  = lens _adLicenses (\ s a -> s{_adLicenses = a}) .
      _Default
      . _Coerce

-- | Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
-- specified, the default is PERSISTENT.
adType :: Lens' AttachedDisk (Maybe AttachedDiskType)
adType = lens _adType (\ s a -> s{_adType = a})

-- | Assigns a zero-based index to this disk, where 0 is reserved for the
-- boot disk. For example, if you have many disks attached to an instance,
-- each disk would have a unique index number. If not specified, the server
-- will choose an appropriate value.
adIndex :: Lens' AttachedDisk (Maybe Int32)
adIndex = lens _adIndex (\ s a -> s{_adIndex = a})

instance FromJSON AttachedDisk where
        parseJSON
          = withObject "AttachedDisk"
              (\ o ->
                 AttachedDisk <$>
                   (o .:? "kind" .!= "compute#attachedDisk") <*>
                     (o .:? "mode")
                     <*> (o .:? "boot")
                     <*> (o .:? "autoDelete")
                     <*> (o .:? "initializeParams")
                     <*> (o .:? "deviceName")
                     <*> (o .:? "interface")
                     <*> (o .:? "source")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "index"))

instance ToJSON AttachedDisk where
        toJSON AttachedDisk{..}
          = object
              (catMaybes
                 [Just ("kind" .= _adKind), ("mode" .=) <$> _adMode,
                  ("boot" .=) <$> _adBoot,
                  ("autoDelete" .=) <$> _adAutoDelete,
                  ("initializeParams" .=) <$> _adInitializeParams,
                  ("deviceName" .=) <$> _adDeviceName,
                  ("interface" .=) <$> _adInterface,
                  ("source" .=) <$> _adSource,
                  ("licenses" .=) <$> _adLicenses,
                  ("type" .=) <$> _adType, ("index" .=) <$> _adIndex])

-- | Contains a list of disk type resources.
--
-- /See:/ 'diskTypeList' smart constructor.
data DiskTypeList = DiskTypeList
    { _dtlNextPageToken :: !(Maybe Text)
    , _dtlKind          :: !Text
    , _dtlItems         :: !(Maybe [DiskType])
    , _dtlSelfLink      :: !(Maybe Text)
    , _dtlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlNextPageToken'
--
-- * 'dtlKind'
--
-- * 'dtlItems'
--
-- * 'dtlSelfLink'
--
-- * 'dtlId'
diskTypeList
    :: DiskTypeList
diskTypeList =
    DiskTypeList
    { _dtlNextPageToken = Nothing
    , _dtlKind = "compute#diskTypeList"
    , _dtlItems = Nothing
    , _dtlSelfLink = Nothing
    , _dtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dtlNextPageToken :: Lens' DiskTypeList (Maybe Text)
dtlNextPageToken
  = lens _dtlNextPageToken
      (\ s a -> s{_dtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskTypeList for disk
-- types.
dtlKind :: Lens' DiskTypeList Text
dtlKind = lens _dtlKind (\ s a -> s{_dtlKind = a})

-- | [Output Only] A list of Disk Type resources.
dtlItems :: Lens' DiskTypeList [DiskType]
dtlItems
  = lens _dtlItems (\ s a -> s{_dtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
dtlSelfLink :: Lens' DiskTypeList (Maybe Text)
dtlSelfLink
  = lens _dtlSelfLink (\ s a -> s{_dtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtlId :: Lens' DiskTypeList (Maybe Text)
dtlId = lens _dtlId (\ s a -> s{_dtlId = a})

instance FromJSON DiskTypeList where
        parseJSON
          = withObject "DiskTypeList"
              (\ o ->
                 DiskTypeList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskTypeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskTypeList where
        toJSON DiskTypeList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dtlNextPageToken,
                  Just ("kind" .= _dtlKind),
                  ("items" .=) <$> _dtlItems,
                  ("selfLink" .=) <$> _dtlSelfLink,
                  ("id" .=) <$> _dtlId])

-- | Contains a list of Machine Type resources.
--
-- /See:/ 'machineTypeList' smart constructor.
data MachineTypeList = MachineTypeList
    { _mtlNextPageToken :: !(Maybe Text)
    , _mtlKind          :: !Text
    , _mtlItems         :: !(Maybe [MachineType])
    , _mtlSelfLink      :: !(Maybe Text)
    , _mtlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtlNextPageToken'
--
-- * 'mtlKind'
--
-- * 'mtlItems'
--
-- * 'mtlSelfLink'
--
-- * 'mtlId'
machineTypeList
    :: MachineTypeList
machineTypeList =
    MachineTypeList
    { _mtlNextPageToken = Nothing
    , _mtlKind = "compute#machineTypeList"
    , _mtlItems = Nothing
    , _mtlSelfLink = Nothing
    , _mtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mtlNextPageToken :: Lens' MachineTypeList (Maybe Text)
mtlNextPageToken
  = lens _mtlNextPageToken
      (\ s a -> s{_mtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#machineTypeList for lists
-- of machine types.
mtlKind :: Lens' MachineTypeList Text
mtlKind = lens _mtlKind (\ s a -> s{_mtlKind = a})

-- | [Output Only] A list of Machine Type resources.
mtlItems :: Lens' MachineTypeList [MachineType]
mtlItems
  = lens _mtlItems (\ s a -> s{_mtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
mtlSelfLink :: Lens' MachineTypeList (Maybe Text)
mtlSelfLink
  = lens _mtlSelfLink (\ s a -> s{_mtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtlId :: Lens' MachineTypeList (Maybe Text)
mtlId = lens _mtlId (\ s a -> s{_mtlId = a})

instance FromJSON MachineTypeList where
        parseJSON
          = withObject "MachineTypeList"
              (\ o ->
                 MachineTypeList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#machineTypeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON MachineTypeList where
        toJSON MachineTypeList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mtlNextPageToken,
                  Just ("kind" .= _mtlKind),
                  ("items" .=) <$> _mtlItems,
                  ("selfLink" .=) <$> _mtlSelfLink,
                  ("id" .=) <$> _mtlId])

-- | A list of TargetHttpProxy resources.
--
-- /See:/ 'targetHTTPProxyList' smart constructor.
data TargetHTTPProxyList = TargetHTTPProxyList
    { _thttpplNextPageToken :: !(Maybe Text)
    , _thttpplKind          :: !Text
    , _thttpplItems         :: !(Maybe [TargetHTTPProxy])
    , _thttpplSelfLink      :: !(Maybe Text)
    , _thttpplId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttpplNextPageToken'
--
-- * 'thttpplKind'
--
-- * 'thttpplItems'
--
-- * 'thttpplSelfLink'
--
-- * 'thttpplId'
targetHTTPProxyList
    :: TargetHTTPProxyList
targetHTTPProxyList =
    TargetHTTPProxyList
    { _thttpplNextPageToken = Nothing
    , _thttpplKind = "compute#targetHttpProxyList"
    , _thttpplItems = Nothing
    , _thttpplSelfLink = Nothing
    , _thttpplId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
thttpplNextPageToken :: Lens' TargetHTTPProxyList (Maybe Text)
thttpplNextPageToken
  = lens _thttpplNextPageToken
      (\ s a -> s{_thttpplNextPageToken = a})

-- | Type of resource. Always compute#targetHttpProxyList for lists of Target
-- HTTP proxies.
thttpplKind :: Lens' TargetHTTPProxyList Text
thttpplKind
  = lens _thttpplKind (\ s a -> s{_thttpplKind = a})

-- | A list of TargetHttpProxy resources.
thttpplItems :: Lens' TargetHTTPProxyList [TargetHTTPProxy]
thttpplItems
  = lens _thttpplItems (\ s a -> s{_thttpplItems = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
thttpplSelfLink :: Lens' TargetHTTPProxyList (Maybe Text)
thttpplSelfLink
  = lens _thttpplSelfLink
      (\ s a -> s{_thttpplSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
thttpplId :: Lens' TargetHTTPProxyList (Maybe Text)
thttpplId
  = lens _thttpplId (\ s a -> s{_thttpplId = a})

instance FromJSON TargetHTTPProxyList where
        parseJSON
          = withObject "TargetHTTPProxyList"
              (\ o ->
                 TargetHTTPProxyList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetHttpProxyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetHTTPProxyList where
        toJSON TargetHTTPProxyList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _thttpplNextPageToken,
                  Just ("kind" .= _thttpplKind),
                  ("items" .=) <$> _thttpplItems,
                  ("selfLink" .=) <$> _thttpplSelfLink,
                  ("id" .=) <$> _thttpplId])

--
-- /See:/ 'diskTypesScopedList' smart constructor.
data DiskTypesScopedList = DiskTypesScopedList
    { _dtslDiskTypes :: !(Maybe [DiskType])
    , _dtslWarning   :: !(Maybe DiskTypesScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslDiskTypes'
--
-- * 'dtslWarning'
diskTypesScopedList
    :: DiskTypesScopedList
diskTypesScopedList =
    DiskTypesScopedList
    { _dtslDiskTypes = Nothing
    , _dtslWarning = Nothing
    }

-- | [Output Only] List of disk types contained in this scope.
dtslDiskTypes :: Lens' DiskTypesScopedList [DiskType]
dtslDiskTypes
  = lens _dtslDiskTypes
      (\ s a -> s{_dtslDiskTypes = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of disk
-- types when the list is empty.
dtslWarning :: Lens' DiskTypesScopedList (Maybe DiskTypesScopedListWarning)
dtslWarning
  = lens _dtslWarning (\ s a -> s{_dtslWarning = a})

instance FromJSON DiskTypesScopedList where
        parseJSON
          = withObject "DiskTypesScopedList"
              (\ o ->
                 DiskTypesScopedList <$>
                   (o .:? "diskTypes" .!= mempty) <*> (o .:? "warning"))

instance ToJSON DiskTypesScopedList where
        toJSON DiskTypesScopedList{..}
          = object
              (catMaybes
                 [("diskTypes" .=) <$> _dtslDiskTypes,
                  ("warning" .=) <$> _dtslWarning])

--
-- /See:/ 'diskTypeAggregatedList' smart constructor.
data DiskTypeAggregatedList = DiskTypeAggregatedList
    { _dtalNextPageToken :: !(Maybe Text)
    , _dtalKind          :: !Text
    , _dtalItems         :: !(Maybe DiskTypeAggregatedListItems)
    , _dtalSelfLink      :: !(Maybe Text)
    , _dtalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtalNextPageToken'
--
-- * 'dtalKind'
--
-- * 'dtalItems'
--
-- * 'dtalSelfLink'
--
-- * 'dtalId'
diskTypeAggregatedList
    :: DiskTypeAggregatedList
diskTypeAggregatedList =
    DiskTypeAggregatedList
    { _dtalNextPageToken = Nothing
    , _dtalKind = "compute#diskTypeAggregatedList"
    , _dtalItems = Nothing
    , _dtalSelfLink = Nothing
    , _dtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dtalNextPageToken :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalNextPageToken
  = lens _dtalNextPageToken
      (\ s a -> s{_dtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#diskTypeAggregatedList.
dtalKind :: Lens' DiskTypeAggregatedList Text
dtalKind = lens _dtalKind (\ s a -> s{_dtalKind = a})

-- | [Output Only] A map of scoped disk type lists.
dtalItems :: Lens' DiskTypeAggregatedList (Maybe DiskTypeAggregatedListItems)
dtalItems
  = lens _dtalItems (\ s a -> s{_dtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
dtalSelfLink :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalSelfLink
  = lens _dtalSelfLink (\ s a -> s{_dtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtalId :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalId = lens _dtalId (\ s a -> s{_dtalId = a})

instance FromJSON DiskTypeAggregatedList where
        parseJSON
          = withObject "DiskTypeAggregatedList"
              (\ o ->
                 DiskTypeAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskTypeAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskTypeAggregatedList where
        toJSON DiskTypeAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dtalNextPageToken,
                  Just ("kind" .= _dtalKind),
                  ("items" .=) <$> _dtalItems,
                  ("selfLink" .=) <$> _dtalSelfLink,
                  ("id" .=) <$> _dtalId])

-- | An HttpHealthCheck resource. This resource defines a template for how
-- individual instances should be checked for health, via HTTP.
--
-- /See:/ 'hTTPHealthCheck' smart constructor.
data HTTPHealthCheck = HTTPHealthCheck
    { _httphcHealthyThreshold   :: !(Maybe Int32)
    , _httphcKind               :: !Text
    , _httphcRequestPath        :: !(Maybe Text)
    , _httphcSelfLink           :: !(Maybe Text)
    , _httphcCheckIntervalSec   :: !(Maybe Int32)
    , _httphcName               :: !(Maybe Text)
    , _httphcCreationTimestamp  :: !(Maybe Text)
    , _httphcId                 :: !(Maybe Word64)
    , _httphcHost               :: !(Maybe Text)
    , _httphcTimeoutSec         :: !(Maybe Int32)
    , _httphcDescription        :: !(Maybe Text)
    , _httphcUnhealthyThreshold :: !(Maybe Int32)
    , _httphcPort               :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcHealthyThreshold'
--
-- * 'httphcKind'
--
-- * 'httphcRequestPath'
--
-- * 'httphcSelfLink'
--
-- * 'httphcCheckIntervalSec'
--
-- * 'httphcName'
--
-- * 'httphcCreationTimestamp'
--
-- * 'httphcId'
--
-- * 'httphcHost'
--
-- * 'httphcTimeoutSec'
--
-- * 'httphcDescription'
--
-- * 'httphcUnhealthyThreshold'
--
-- * 'httphcPort'
hTTPHealthCheck
    :: HTTPHealthCheck
hTTPHealthCheck =
    HTTPHealthCheck
    { _httphcHealthyThreshold = Nothing
    , _httphcKind = "compute#httpHealthCheck"
    , _httphcRequestPath = Nothing
    , _httphcSelfLink = Nothing
    , _httphcCheckIntervalSec = Nothing
    , _httphcName = Nothing
    , _httphcCreationTimestamp = Nothing
    , _httphcId = Nothing
    , _httphcHost = Nothing
    , _httphcTimeoutSec = Nothing
    , _httphcDescription = Nothing
    , _httphcUnhealthyThreshold = Nothing
    , _httphcPort = Nothing
    }

-- | A so-far unhealthy instance will be marked healthy after this many
-- consecutive successes. The default value is 2.
httphcHealthyThreshold :: Lens' HTTPHealthCheck (Maybe Int32)
httphcHealthyThreshold
  = lens _httphcHealthyThreshold
      (\ s a -> s{_httphcHealthyThreshold = a})

-- | Type of the resource.
httphcKind :: Lens' HTTPHealthCheck Text
httphcKind
  = lens _httphcKind (\ s a -> s{_httphcKind = a})

-- | The request path of the HTTP health check request. The default value is
-- \"\/\".
httphcRequestPath :: Lens' HTTPHealthCheck (Maybe Text)
httphcRequestPath
  = lens _httphcRequestPath
      (\ s a -> s{_httphcRequestPath = a})

-- | [Output Only] Server-defined URL for the resource.
httphcSelfLink :: Lens' HTTPHealthCheck (Maybe Text)
httphcSelfLink
  = lens _httphcSelfLink
      (\ s a -> s{_httphcSelfLink = a})

-- | How often (in seconds) to send a health check. The default value is 5
-- seconds.
httphcCheckIntervalSec :: Lens' HTTPHealthCheck (Maybe Int32)
httphcCheckIntervalSec
  = lens _httphcCheckIntervalSec
      (\ s a -> s{_httphcCheckIntervalSec = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
httphcName :: Lens' HTTPHealthCheck (Maybe Text)
httphcName
  = lens _httphcName (\ s a -> s{_httphcName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
httphcCreationTimestamp :: Lens' HTTPHealthCheck (Maybe Text)
httphcCreationTimestamp
  = lens _httphcCreationTimestamp
      (\ s a -> s{_httphcCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
httphcId :: Lens' HTTPHealthCheck (Maybe Word64)
httphcId = lens _httphcId (\ s a -> s{_httphcId = a})

-- | The value of the host header in the HTTP health check request. If left
-- empty (default value), the public IP on behalf of which this health
-- check is performed will be used.
httphcHost :: Lens' HTTPHealthCheck (Maybe Text)
httphcHost
  = lens _httphcHost (\ s a -> s{_httphcHost = a})

-- | How long (in seconds) to wait before claiming failure. The default value
-- is 5 seconds. It is invalid for timeoutSec to have greater value than
-- checkIntervalSec.
httphcTimeoutSec :: Lens' HTTPHealthCheck (Maybe Int32)
httphcTimeoutSec
  = lens _httphcTimeoutSec
      (\ s a -> s{_httphcTimeoutSec = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
httphcDescription :: Lens' HTTPHealthCheck (Maybe Text)
httphcDescription
  = lens _httphcDescription
      (\ s a -> s{_httphcDescription = a})

-- | A so-far healthy instance will be marked unhealthy after this many
-- consecutive failures. The default value is 2.
httphcUnhealthyThreshold :: Lens' HTTPHealthCheck (Maybe Int32)
httphcUnhealthyThreshold
  = lens _httphcUnhealthyThreshold
      (\ s a -> s{_httphcUnhealthyThreshold = a})

-- | The TCP port number for the HTTP health check request. The default value
-- is 80.
httphcPort :: Lens' HTTPHealthCheck (Maybe Int32)
httphcPort
  = lens _httphcPort (\ s a -> s{_httphcPort = a})

instance FromJSON HTTPHealthCheck where
        parseJSON
          = withObject "HTTPHealthCheck"
              (\ o ->
                 HTTPHealthCheck <$>
                   (o .:? "healthyThreshold") <*>
                     (o .:? "kind" .!= "compute#httpHealthCheck")
                     <*> (o .:? "requestPath")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "checkIntervalSec")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "host")
                     <*> (o .:? "timeoutSec")
                     <*> (o .:? "description")
                     <*> (o .:? "unhealthyThreshold")
                     <*> (o .:? "port"))

instance ToJSON HTTPHealthCheck where
        toJSON HTTPHealthCheck{..}
          = object
              (catMaybes
                 [("healthyThreshold" .=) <$> _httphcHealthyThreshold,
                  Just ("kind" .= _httphcKind),
                  ("requestPath" .=) <$> _httphcRequestPath,
                  ("selfLink" .=) <$> _httphcSelfLink,
                  ("checkIntervalSec" .=) <$> _httphcCheckIntervalSec,
                  ("name" .=) <$> _httphcName,
                  ("creationTimestamp" .=) <$>
                    _httphcCreationTimestamp,
                  ("id" .=) <$> _httphcId, ("host" .=) <$> _httphcHost,
                  ("timeoutSec" .=) <$> _httphcTimeoutSec,
                  ("description" .=) <$> _httphcDescription,
                  ("unhealthyThreshold" .=) <$>
                    _httphcUnhealthyThreshold,
                  ("port" .=) <$> _httphcPort])

--
-- /See:/ 'backendServiceGroupHealth' smart constructor.
data BackendServiceGroupHealth = BackendServiceGroupHealth
    { _bsghKind         :: !Text
    , _bsghHealthStatus :: !(Maybe [HealthStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceGroupHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsghKind'
--
-- * 'bsghHealthStatus'
backendServiceGroupHealth
    :: BackendServiceGroupHealth
backendServiceGroupHealth =
    BackendServiceGroupHealth
    { _bsghKind = "compute#backendServiceGroupHealth"
    , _bsghHealthStatus = Nothing
    }

-- | [Output Only] Type of resource. Always compute#backendServiceGroupHealth
-- for the health of backend services.
bsghKind :: Lens' BackendServiceGroupHealth Text
bsghKind = lens _bsghKind (\ s a -> s{_bsghKind = a})

bsghHealthStatus :: Lens' BackendServiceGroupHealth [HealthStatus]
bsghHealthStatus
  = lens _bsghHealthStatus
      (\ s a -> s{_bsghHealthStatus = a})
      . _Default
      . _Coerce

instance FromJSON BackendServiceGroupHealth where
        parseJSON
          = withObject "BackendServiceGroupHealth"
              (\ o ->
                 BackendServiceGroupHealth <$>
                   (o .:? "kind" .!=
                      "compute#backendServiceGroupHealth")
                     <*> (o .:? "healthStatus" .!= mempty))

instance ToJSON BackendServiceGroupHealth where
        toJSON BackendServiceGroupHealth{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bsghKind),
                  ("healthStatus" .=) <$> _bsghHealthStatus])

--
-- /See:/ 'autoscalersScopedList' smart constructor.
data AutoscalersScopedList = AutoscalersScopedList
    { _aAutoscalers :: !(Maybe [Autoscaler])
    , _aWarning     :: !(Maybe AutoscalersScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAutoscalers'
--
-- * 'aWarning'
autoscalersScopedList
    :: AutoscalersScopedList
autoscalersScopedList =
    AutoscalersScopedList
    { _aAutoscalers = Nothing
    , _aWarning = Nothing
    }

-- | List of autoscalers contained in this scope.
aAutoscalers :: Lens' AutoscalersScopedList [Autoscaler]
aAutoscalers
  = lens _aAutoscalers (\ s a -> s{_aAutoscalers = a})
      . _Default
      . _Coerce

-- | Informational warning which replaces the list of autoscalers when the
-- list is empty.
aWarning :: Lens' AutoscalersScopedList (Maybe AutoscalersScopedListWarning)
aWarning = lens _aWarning (\ s a -> s{_aWarning = a})

instance FromJSON AutoscalersScopedList where
        parseJSON
          = withObject "AutoscalersScopedList"
              (\ o ->
                 AutoscalersScopedList <$>
                   (o .:? "autoscalers" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON AutoscalersScopedList where
        toJSON AutoscalersScopedList{..}
          = object
              (catMaybes
                 [("autoscalers" .=) <$> _aAutoscalers,
                  ("warning" .=) <$> _aWarning])

--
-- /See:/ 'autoscalerAggregatedList' smart constructor.
data AutoscalerAggregatedList = AutoscalerAggregatedList
    { _aalNextPageToken :: !(Maybe Text)
    , _aalKind          :: !Text
    , _aalItems         :: !(Maybe AutoscalerAggregatedListItems)
    , _aalSelfLink      :: !(Maybe Text)
    , _aalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalNextPageToken'
--
-- * 'aalKind'
--
-- * 'aalItems'
--
-- * 'aalSelfLink'
--
-- * 'aalId'
autoscalerAggregatedList
    :: AutoscalerAggregatedList
autoscalerAggregatedList =
    AutoscalerAggregatedList
    { _aalNextPageToken = Nothing
    , _aalKind = "compute#autoscalerAggregatedList"
    , _aalItems = Nothing
    , _aalSelfLink = Nothing
    , _aalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
aalNextPageToken :: Lens' AutoscalerAggregatedList (Maybe Text)
aalNextPageToken
  = lens _aalNextPageToken
      (\ s a -> s{_aalNextPageToken = a})

-- | Type of resource.
aalKind :: Lens' AutoscalerAggregatedList Text
aalKind = lens _aalKind (\ s a -> s{_aalKind = a})

-- | A map of scoped autoscaler lists.
aalItems :: Lens' AutoscalerAggregatedList (Maybe AutoscalerAggregatedListItems)
aalItems = lens _aalItems (\ s a -> s{_aalItems = a})

-- | [Output Only] Server-defined URL for this resource.
aalSelfLink :: Lens' AutoscalerAggregatedList (Maybe Text)
aalSelfLink
  = lens _aalSelfLink (\ s a -> s{_aalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aalId :: Lens' AutoscalerAggregatedList (Maybe Text)
aalId = lens _aalId (\ s a -> s{_aalId = a})

instance FromJSON AutoscalerAggregatedList where
        parseJSON
          = withObject "AutoscalerAggregatedList"
              (\ o ->
                 AutoscalerAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#autoscalerAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AutoscalerAggregatedList where
        toJSON AutoscalerAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _aalNextPageToken,
                  Just ("kind" .= _aalKind),
                  ("items" .=) <$> _aalItems,
                  ("selfLink" .=) <$> _aalSelfLink,
                  ("id" .=) <$> _aalId])

-- | Cloud Autoscaler policy.
--
-- /See:/ 'autoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy
    { _apCustomMetricUtilizations :: !(Maybe [AutoscalingPolicyCustomMetricUtilization])
    , _apMaxNumReplicas           :: !(Maybe Int32)
    , _apCPUUtilization           :: !(Maybe AutoscalingPolicyCPUUtilization)
    , _apLoadBalancingUtilization :: !(Maybe AutoscalingPolicyLoadBalancingUtilization)
    , _apMinNumReplicas           :: !(Maybe Int32)
    , _apCoolDownPeriodSec        :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apCustomMetricUtilizations'
--
-- * 'apMaxNumReplicas'
--
-- * 'apCPUUtilization'
--
-- * 'apLoadBalancingUtilization'
--
-- * 'apMinNumReplicas'
--
-- * 'apCoolDownPeriodSec'
autoscalingPolicy
    :: AutoscalingPolicy
autoscalingPolicy =
    AutoscalingPolicy
    { _apCustomMetricUtilizations = Nothing
    , _apMaxNumReplicas = Nothing
    , _apCPUUtilization = Nothing
    , _apLoadBalancingUtilization = Nothing
    , _apMinNumReplicas = Nothing
    , _apCoolDownPeriodSec = Nothing
    }

-- | Configuration parameters of autoscaling based on custom metric.
apCustomMetricUtilizations :: Lens' AutoscalingPolicy [AutoscalingPolicyCustomMetricUtilization]
apCustomMetricUtilizations
  = lens _apCustomMetricUtilizations
      (\ s a -> s{_apCustomMetricUtilizations = a})
      . _Default
      . _Coerce

-- | The maximum number of replicas that the Autoscaler can scale up to. This
-- field is required for config to be effective. Maximum number of replicas
-- should be not lower than minimal number of replicas. Absolute limit for
-- this value is defined in Autoscaler backend.
apMaxNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMaxNumReplicas
  = lens _apMaxNumReplicas
      (\ s a -> s{_apMaxNumReplicas = a})

-- | TODO(jbartosik): Add support for scaling based on muliple utilization
-- metrics (take max recommendation). Exactly one utilization policy should
-- be provided. Configuration parameters of CPU based autoscaling policy.
apCPUUtilization :: Lens' AutoscalingPolicy (Maybe AutoscalingPolicyCPUUtilization)
apCPUUtilization
  = lens _apCPUUtilization
      (\ s a -> s{_apCPUUtilization = a})

-- | Configuration parameters of autoscaling based on load balancer.
apLoadBalancingUtilization :: Lens' AutoscalingPolicy (Maybe AutoscalingPolicyLoadBalancingUtilization)
apLoadBalancingUtilization
  = lens _apLoadBalancingUtilization
      (\ s a -> s{_apLoadBalancingUtilization = a})

-- | The minimum number of replicas that the Autoscaler can scale down to.
-- Can\'t be less than 0. If not provided Autoscaler will choose default
-- value depending on maximal number of replicas.
apMinNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMinNumReplicas
  = lens _apMinNumReplicas
      (\ s a -> s{_apMinNumReplicas = a})

-- | The number of seconds that the Autoscaler should wait between two
-- succeeding changes to the number of virtual machines. You should define
-- an interval that is at least as long as the initialization time of a
-- virtual machine and the time it may take for replica pool to create the
-- virtual machine. The default is 60 seconds.
apCoolDownPeriodSec :: Lens' AutoscalingPolicy (Maybe Int32)
apCoolDownPeriodSec
  = lens _apCoolDownPeriodSec
      (\ s a -> s{_apCoolDownPeriodSec = a})

instance FromJSON AutoscalingPolicy where
        parseJSON
          = withObject "AutoscalingPolicy"
              (\ o ->
                 AutoscalingPolicy <$>
                   (o .:? "customMetricUtilizations" .!= mempty) <*>
                     (o .:? "maxNumReplicas")
                     <*> (o .:? "cpuUtilization")
                     <*> (o .:? "loadBalancingUtilization")
                     <*> (o .:? "minNumReplicas")
                     <*> (o .:? "coolDownPeriodSec"))

instance ToJSON AutoscalingPolicy where
        toJSON AutoscalingPolicy{..}
          = object
              (catMaybes
                 [("customMetricUtilizations" .=) <$>
                    _apCustomMetricUtilizations,
                  ("maxNumReplicas" .=) <$> _apMaxNumReplicas,
                  ("cpuUtilization" .=) <$> _apCPUUtilization,
                  ("loadBalancingUtilization" .=) <$>
                    _apLoadBalancingUtilization,
                  ("minNumReplicas" .=) <$> _apMinNumReplicas,
                  ("coolDownPeriodSec" .=) <$> _apCoolDownPeriodSec])

-- | Contains a list of region resources.
--
-- /See:/ 'regionList' smart constructor.
data RegionList = RegionList
    { _regNextPageToken :: !(Maybe Text)
    , _regKind          :: !Text
    , _regItems         :: !(Maybe [Region])
    , _regSelfLink      :: !(Maybe Text)
    , _regId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regNextPageToken'
--
-- * 'regKind'
--
-- * 'regItems'
--
-- * 'regSelfLink'
--
-- * 'regId'
regionList
    :: RegionList
regionList =
    RegionList
    { _regNextPageToken = Nothing
    , _regKind = "compute#regionList"
    , _regItems = Nothing
    , _regSelfLink = Nothing
    , _regId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
regNextPageToken :: Lens' RegionList (Maybe Text)
regNextPageToken
  = lens _regNextPageToken
      (\ s a -> s{_regNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#regionList for lists of
-- regions.
regKind :: Lens' RegionList Text
regKind = lens _regKind (\ s a -> s{_regKind = a})

-- | [Output Only] A list of Region resources.
regItems :: Lens' RegionList [Region]
regItems
  = lens _regItems (\ s a -> s{_regItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
regSelfLink :: Lens' RegionList (Maybe Text)
regSelfLink
  = lens _regSelfLink (\ s a -> s{_regSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
regId :: Lens' RegionList (Maybe Text)
regId = lens _regId (\ s a -> s{_regId = a})

instance FromJSON RegionList where
        parseJSON
          = withObject "RegionList"
              (\ o ->
                 RegionList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#regionList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionList where
        toJSON RegionList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _regNextPageToken,
                  Just ("kind" .= _regKind),
                  ("items" .=) <$> _regItems,
                  ("selfLink" .=) <$> _regSelfLink,
                  ("id" .=) <$> _regId])

-- | Contains a list of VpnTunnel resources.
--
-- /See:/ 'vpnTunnelList' smart constructor.
data VPNTunnelList = VPNTunnelList
    { _vtlNextPageToken :: !(Maybe Text)
    , _vtlKind          :: !Text
    , _vtlItems         :: !(Maybe [VPNTunnel])
    , _vtlSelfLink      :: !(Maybe Text)
    , _vtlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlNextPageToken'
--
-- * 'vtlKind'
--
-- * 'vtlItems'
--
-- * 'vtlSelfLink'
--
-- * 'vtlId'
vpnTunnelList
    :: VPNTunnelList
vpnTunnelList =
    VPNTunnelList
    { _vtlNextPageToken = Nothing
    , _vtlKind = "compute#vpnTunnelList"
    , _vtlItems = Nothing
    , _vtlSelfLink = Nothing
    , _vtlId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
vtlNextPageToken :: Lens' VPNTunnelList (Maybe Text)
vtlNextPageToken
  = lens _vtlNextPageToken
      (\ s a -> s{_vtlNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtlKind :: Lens' VPNTunnelList Text
vtlKind = lens _vtlKind (\ s a -> s{_vtlKind = a})

-- | [Output Only] A list of VpnTunnel resources.
vtlItems :: Lens' VPNTunnelList [VPNTunnel]
vtlItems
  = lens _vtlItems (\ s a -> s{_vtlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
vtlSelfLink :: Lens' VPNTunnelList (Maybe Text)
vtlSelfLink
  = lens _vtlSelfLink (\ s a -> s{_vtlSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
vtlId :: Lens' VPNTunnelList (Maybe Text)
vtlId = lens _vtlId (\ s a -> s{_vtlId = a})

instance FromJSON VPNTunnelList where
        parseJSON
          = withObject "VPNTunnelList"
              (\ o ->
                 VPNTunnelList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#vpnTunnelList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON VPNTunnelList where
        toJSON VPNTunnelList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _vtlNextPageToken,
                  Just ("kind" .= _vtlKind),
                  ("items" .=) <$> _vtlItems,
                  ("selfLink" .=) <$> _vtlSelfLink,
                  ("id" .=) <$> _vtlId])

--
-- /See:/ 'machineTypeScratchDisksItem' smart constructor.
newtype MachineTypeScratchDisksItem = MachineTypeScratchDisksItem
    { _mtsdiDiskGb :: Maybe Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeScratchDisksItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtsdiDiskGb'
machineTypeScratchDisksItem
    :: MachineTypeScratchDisksItem
machineTypeScratchDisksItem =
    MachineTypeScratchDisksItem
    { _mtsdiDiskGb = Nothing
    }

-- | Size of the scratch disk, defined in GB.
mtsdiDiskGb :: Lens' MachineTypeScratchDisksItem (Maybe Int32)
mtsdiDiskGb
  = lens _mtsdiDiskGb (\ s a -> s{_mtsdiDiskGb = a})

instance FromJSON MachineTypeScratchDisksItem where
        parseJSON
          = withObject "MachineTypeScratchDisksItem"
              (\ o ->
                 MachineTypeScratchDisksItem <$> (o .:? "diskGb"))

instance ToJSON MachineTypeScratchDisksItem where
        toJSON MachineTypeScratchDisksItem{..}
          = object (catMaybes [("diskGb" .=) <$> _mtsdiDiskGb])

--
-- /See:/ 'machineTypesScopedList' smart constructor.
data MachineTypesScopedList = MachineTypesScopedList
    { _mtslMachineTypes :: !(Maybe [MachineType])
    , _mtslWarning      :: !(Maybe MachineTypesScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslMachineTypes'
--
-- * 'mtslWarning'
machineTypesScopedList
    :: MachineTypesScopedList
machineTypesScopedList =
    MachineTypesScopedList
    { _mtslMachineTypes = Nothing
    , _mtslWarning = Nothing
    }

-- | [Output Only] List of machine types contained in this scope.
mtslMachineTypes :: Lens' MachineTypesScopedList [MachineType]
mtslMachineTypes
  = lens _mtslMachineTypes
      (\ s a -> s{_mtslMachineTypes = a})
      . _Default
      . _Coerce

-- | [Output Only] An informational warning that appears when the machine
-- types list is empty.
mtslWarning :: Lens' MachineTypesScopedList (Maybe MachineTypesScopedListWarning)
mtslWarning
  = lens _mtslWarning (\ s a -> s{_mtslWarning = a})

instance FromJSON MachineTypesScopedList where
        parseJSON
          = withObject "MachineTypesScopedList"
              (\ o ->
                 MachineTypesScopedList <$>
                   (o .:? "machineTypes" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON MachineTypesScopedList where
        toJSON MachineTypesScopedList{..}
          = object
              (catMaybes
                 [("machineTypes" .=) <$> _mtslMachineTypes,
                  ("warning" .=) <$> _mtslWarning])

--
-- /See:/ 'machineTypeAggregatedList' smart constructor.
data MachineTypeAggregatedList = MachineTypeAggregatedList
    { _mtalNextPageToken :: !(Maybe Text)
    , _mtalKind          :: !Text
    , _mtalItems         :: !(Maybe MachineTypeAggregatedListItems)
    , _mtalSelfLink      :: !(Maybe Text)
    , _mtalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtalNextPageToken'
--
-- * 'mtalKind'
--
-- * 'mtalItems'
--
-- * 'mtalSelfLink'
--
-- * 'mtalId'
machineTypeAggregatedList
    :: MachineTypeAggregatedList
machineTypeAggregatedList =
    MachineTypeAggregatedList
    { _mtalNextPageToken = Nothing
    , _mtalKind = "compute#machineTypeAggregatedList"
    , _mtalItems = Nothing
    , _mtalSelfLink = Nothing
    , _mtalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mtalNextPageToken :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalNextPageToken
  = lens _mtalNextPageToken
      (\ s a -> s{_mtalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#machineTypeAggregatedList
-- for aggregated lists of machine types.
mtalKind :: Lens' MachineTypeAggregatedList Text
mtalKind = lens _mtalKind (\ s a -> s{_mtalKind = a})

-- | [Output Only] A map of scoped machine type lists.
mtalItems :: Lens' MachineTypeAggregatedList (Maybe MachineTypeAggregatedListItems)
mtalItems
  = lens _mtalItems (\ s a -> s{_mtalItems = a})

-- | [Output Only] Server-defined URL for this resource.
mtalSelfLink :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalSelfLink
  = lens _mtalSelfLink (\ s a -> s{_mtalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtalId :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalId = lens _mtalId (\ s a -> s{_mtalId = a})

instance FromJSON MachineTypeAggregatedList where
        parseJSON
          = withObject "MachineTypeAggregatedList"
              (\ o ->
                 MachineTypeAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#machineTypeAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON MachineTypeAggregatedList where
        toJSON MachineTypeAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mtalNextPageToken,
                  Just ("kind" .= _mtalKind),
                  ("items" .=) <$> _mtalItems,
                  ("selfLink" .=) <$> _mtalSelfLink,
                  ("id" .=) <$> _mtalId])

-- | A disk type resource.
--
-- /See:/ 'diskType' smart constructor.
data DiskType = DiskType
    { _dtKind              :: !Text
    , _dtZone              :: !(Maybe Text)
    , _dtSelfLink          :: !(Maybe Text)
    , _dtName              :: !(Maybe Text)
    , _dtCreationTimestamp :: !(Maybe Text)
    , _dtId                :: !(Maybe Word64)
    , _dtValidDiskSize     :: !(Maybe Text)
    , _dtDescription       :: !(Maybe Text)
    , _dtDefaultDiskSizeGb :: !(Maybe Int64)
    , _dtDeprecated        :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtKind'
--
-- * 'dtZone'
--
-- * 'dtSelfLink'
--
-- * 'dtName'
--
-- * 'dtCreationTimestamp'
--
-- * 'dtId'
--
-- * 'dtValidDiskSize'
--
-- * 'dtDescription'
--
-- * 'dtDefaultDiskSizeGb'
--
-- * 'dtDeprecated'
diskType
    :: DiskType
diskType =
    DiskType
    { _dtKind = "compute#diskType"
    , _dtZone = Nothing
    , _dtSelfLink = Nothing
    , _dtName = Nothing
    , _dtCreationTimestamp = Nothing
    , _dtId = Nothing
    , _dtValidDiskSize = Nothing
    , _dtDescription = Nothing
    , _dtDefaultDiskSizeGb = Nothing
    , _dtDeprecated = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#diskType for disk
-- types.
dtKind :: Lens' DiskType Text
dtKind = lens _dtKind (\ s a -> s{_dtKind = a})

-- | [Output Only] URL of the zone where the disk type resides.
dtZone :: Lens' DiskType (Maybe Text)
dtZone = lens _dtZone (\ s a -> s{_dtZone = a})

-- | [Output Only] Server-defined URL for the resource.
dtSelfLink :: Lens' DiskType (Maybe Text)
dtSelfLink
  = lens _dtSelfLink (\ s a -> s{_dtSelfLink = a})

-- | [Output Only] Name of the resource.
dtName :: Lens' DiskType (Maybe Text)
dtName = lens _dtName (\ s a -> s{_dtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
dtCreationTimestamp :: Lens' DiskType (Maybe Text)
dtCreationTimestamp
  = lens _dtCreationTimestamp
      (\ s a -> s{_dtCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dtId :: Lens' DiskType (Maybe Word64)
dtId = lens _dtId (\ s a -> s{_dtId = a})

-- | [Output Only] An optional textual description of the valid disk size,
-- such as \"10GB-10TB\".
dtValidDiskSize :: Lens' DiskType (Maybe Text)
dtValidDiskSize
  = lens _dtValidDiskSize
      (\ s a -> s{_dtValidDiskSize = a})

-- | [Output Only] An optional textual description of the resource.
dtDescription :: Lens' DiskType (Maybe Text)
dtDescription
  = lens _dtDescription
      (\ s a -> s{_dtDescription = a})

-- | [Output Only] Server-defined default disk size in GB.
dtDefaultDiskSizeGb :: Lens' DiskType (Maybe Int64)
dtDefaultDiskSizeGb
  = lens _dtDefaultDiskSizeGb
      (\ s a -> s{_dtDefaultDiskSizeGb = a})

-- | [Output Only] The deprecation status associated with this disk type.
dtDeprecated :: Lens' DiskType (Maybe DeprecationStatus)
dtDeprecated
  = lens _dtDeprecated (\ s a -> s{_dtDeprecated = a})

instance FromJSON DiskType where
        parseJSON
          = withObject "DiskType"
              (\ o ->
                 DiskType <$>
                   (o .:? "kind" .!= "compute#diskType") <*>
                     (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "validDiskSize")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultDiskSizeGb")
                     <*> (o .:? "deprecated"))

instance ToJSON DiskType where
        toJSON DiskType{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dtKind), ("zone" .=) <$> _dtZone,
                  ("selfLink" .=) <$> _dtSelfLink,
                  ("name" .=) <$> _dtName,
                  ("creationTimestamp" .=) <$> _dtCreationTimestamp,
                  ("id" .=) <$> _dtId,
                  ("validDiskSize" .=) <$> _dtValidDiskSize,
                  ("description" .=) <$> _dtDescription,
                  ("defaultDiskSizeGb" .=) <$> _dtDefaultDiskSizeGb,
                  ("deprecated" .=) <$> _dtDeprecated])

-- | Message representing the validation result for a UrlMap.
--
-- /See:/ 'urlMapValidationResult' smart constructor.
data URLMapValidationResult = URLMapValidationResult
    { _umvrLoadErrors    :: !(Maybe [Text])
    , _umvrLoadSucceeded :: !(Maybe Bool)
    , _umvrTestPassed    :: !(Maybe Bool)
    , _umvrTestFailures  :: !(Maybe [TestFailure])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapValidationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrLoadErrors'
--
-- * 'umvrLoadSucceeded'
--
-- * 'umvrTestPassed'
--
-- * 'umvrTestFailures'
urlMapValidationResult
    :: URLMapValidationResult
urlMapValidationResult =
    URLMapValidationResult
    { _umvrLoadErrors = Nothing
    , _umvrLoadSucceeded = Nothing
    , _umvrTestPassed = Nothing
    , _umvrTestFailures = Nothing
    }

umvrLoadErrors :: Lens' URLMapValidationResult [Text]
umvrLoadErrors
  = lens _umvrLoadErrors
      (\ s a -> s{_umvrLoadErrors = a})
      . _Default
      . _Coerce

-- | Whether the given UrlMap can be successfully loaded. If false,
-- \'loadErrors\' indicates the reasons.
umvrLoadSucceeded :: Lens' URLMapValidationResult (Maybe Bool)
umvrLoadSucceeded
  = lens _umvrLoadSucceeded
      (\ s a -> s{_umvrLoadSucceeded = a})

-- | If successfully loaded, this field indicates whether the test passed. If
-- false, \'testFailures\'s indicate the reason of failure.
umvrTestPassed :: Lens' URLMapValidationResult (Maybe Bool)
umvrTestPassed
  = lens _umvrTestPassed
      (\ s a -> s{_umvrTestPassed = a})

umvrTestFailures :: Lens' URLMapValidationResult [TestFailure]
umvrTestFailures
  = lens _umvrTestFailures
      (\ s a -> s{_umvrTestFailures = a})
      . _Default
      . _Coerce

instance FromJSON URLMapValidationResult where
        parseJSON
          = withObject "URLMapValidationResult"
              (\ o ->
                 URLMapValidationResult <$>
                   (o .:? "loadErrors" .!= mempty) <*>
                     (o .:? "loadSucceeded")
                     <*> (o .:? "testPassed")
                     <*> (o .:? "testFailures" .!= mempty))

instance ToJSON URLMapValidationResult where
        toJSON URLMapValidationResult{..}
          = object
              (catMaybes
                 [("loadErrors" .=) <$> _umvrLoadErrors,
                  ("loadSucceeded" .=) <$> _umvrLoadSucceeded,
                  ("testPassed" .=) <$> _umvrTestPassed,
                  ("testFailures" .=) <$> _umvrTestFailures])

-- | A metadata key\/value entry.
--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind        :: !Text
    , _mFingerprint :: !(Maybe Word8)
    , _mItems       :: !(Maybe [MetadataItemsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mFingerprint'
--
-- * 'mItems'
metadata
    :: Metadata
metadata =
    Metadata
    { _mKind = "compute#metadata"
    , _mFingerprint = Nothing
    , _mItems = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#metadata for
-- metadata.
mKind :: Lens' Metadata Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | Specifies a fingerprint for this request, which is essentially a hash of
-- the metadata\'s contents and used for optimistic locking. The
-- fingerprint is initially generated by Compute Engine and changes after
-- every request to modify or update metadata. You must always provide an
-- up-to-date fingerprint hash in order to update or change metadata.
mFingerprint :: Lens' Metadata (Maybe Word8)
mFingerprint
  = lens _mFingerprint (\ s a -> s{_mFingerprint = a})

-- | Array of key\/value pairs. The total size of all keys and values must be
-- less than 512 KB.
mItems :: Lens' Metadata [MetadataItemsItem]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata <$>
                   (o .:? "kind" .!= "compute#metadata") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind),
                  ("fingerprint" .=) <$> _mFingerprint,
                  ("items" .=) <$> _mItems])

--
-- /See:/ 'routeWarningsItem' smart constructor.
data RouteWarningsItem = RouteWarningsItem
    { _rwiData    :: !(Maybe [RouteWarningsItemDataItem])
    , _rwiCode    :: !(Maybe RouteWarningsItemCode)
    , _rwiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouteWarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwiData'
--
-- * 'rwiCode'
--
-- * 'rwiMessage'
routeWarningsItem
    :: RouteWarningsItem
routeWarningsItem =
    RouteWarningsItem
    { _rwiData = Nothing
    , _rwiCode = Nothing
    , _rwiMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
rwiData :: Lens' RouteWarningsItem [RouteWarningsItemDataItem]
rwiData
  = lens _rwiData (\ s a -> s{_rwiData = a}) . _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
rwiCode :: Lens' RouteWarningsItem (Maybe RouteWarningsItemCode)
rwiCode = lens _rwiCode (\ s a -> s{_rwiCode = a})

-- | [Output Only] Optional human-readable details for this warning.
rwiMessage :: Lens' RouteWarningsItem (Maybe Text)
rwiMessage
  = lens _rwiMessage (\ s a -> s{_rwiMessage = a})

instance FromJSON RouteWarningsItem where
        parseJSON
          = withObject "RouteWarningsItem"
              (\ o ->
                 RouteWarningsItem <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON RouteWarningsItem where
        toJSON RouteWarningsItem{..}
          = object
              (catMaybes
                 [("data" .=) <$> _rwiData, ("code" .=) <$> _rwiCode,
                  ("message" .=) <$> _rwiMessage])

--
-- /See:/ 'machineTypesScopedListWarningDataItem' smart constructor.
data MachineTypesScopedListWarningDataItem = MachineTypesScopedListWarningDataItem
    { _mtslwdiValue :: !(Maybe Text)
    , _mtslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtslwdiValue'
--
-- * 'mtslwdiKey'
machineTypesScopedListWarningDataItem
    :: MachineTypesScopedListWarningDataItem
machineTypesScopedListWarningDataItem =
    MachineTypesScopedListWarningDataItem
    { _mtslwdiValue = Nothing
    , _mtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
mtslwdiValue :: Lens' MachineTypesScopedListWarningDataItem (Maybe Text)
mtslwdiValue
  = lens _mtslwdiValue (\ s a -> s{_mtslwdiValue = a})

-- | [Output Only] A key for the warning data.
mtslwdiKey :: Lens' MachineTypesScopedListWarningDataItem (Maybe Text)
mtslwdiKey
  = lens _mtslwdiKey (\ s a -> s{_mtslwdiKey = a})

instance FromJSON
         MachineTypesScopedListWarningDataItem where
        parseJSON
          = withObject "MachineTypesScopedListWarningDataItem"
              (\ o ->
                 MachineTypesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON MachineTypesScopedListWarningDataItem
         where
        toJSON MachineTypesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mtslwdiValue,
                  ("key" .=) <$> _mtslwdiKey])

--
-- /See:/ 'diskTypesScopedListWarningDataItem' smart constructor.
data DiskTypesScopedListWarningDataItem = DiskTypesScopedListWarningDataItem
    { _dtslwdiValue :: !(Maybe Text)
    , _dtslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtslwdiValue'
--
-- * 'dtslwdiKey'
diskTypesScopedListWarningDataItem
    :: DiskTypesScopedListWarningDataItem
diskTypesScopedListWarningDataItem =
    DiskTypesScopedListWarningDataItem
    { _dtslwdiValue = Nothing
    , _dtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dtslwdiValue :: Lens' DiskTypesScopedListWarningDataItem (Maybe Text)
dtslwdiValue
  = lens _dtslwdiValue (\ s a -> s{_dtslwdiValue = a})

-- | [Output Only] A key for the warning data.
dtslwdiKey :: Lens' DiskTypesScopedListWarningDataItem (Maybe Text)
dtslwdiKey
  = lens _dtslwdiKey (\ s a -> s{_dtslwdiKey = a})

instance FromJSON DiskTypesScopedListWarningDataItem
         where
        parseJSON
          = withObject "DiskTypesScopedListWarningDataItem"
              (\ o ->
                 DiskTypesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DiskTypesScopedListWarningDataItem
         where
        toJSON DiskTypesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dtslwdiValue,
                  ("key" .=) <$> _dtslwdiKey])

-- | A TargetHttpProxy resource. This resource defines an HTTP proxy.
--
-- /See:/ 'targetHTTPProxy' smart constructor.
data TargetHTTPProxy = TargetHTTPProxy
    { _thttppURLMap            :: !(Maybe Text)
    , _thttppKind              :: !Text
    , _thttppSelfLink          :: !(Maybe Text)
    , _thttppName              :: !(Maybe Text)
    , _thttppCreationTimestamp :: !(Maybe Text)
    , _thttppId                :: !(Maybe Word64)
    , _thttppDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thttppURLMap'
--
-- * 'thttppKind'
--
-- * 'thttppSelfLink'
--
-- * 'thttppName'
--
-- * 'thttppCreationTimestamp'
--
-- * 'thttppId'
--
-- * 'thttppDescription'
targetHTTPProxy
    :: TargetHTTPProxy
targetHTTPProxy =
    TargetHTTPProxy
    { _thttppURLMap = Nothing
    , _thttppKind = "compute#targetHttpProxy"
    , _thttppSelfLink = Nothing
    , _thttppName = Nothing
    , _thttppCreationTimestamp = Nothing
    , _thttppId = Nothing
    , _thttppDescription = Nothing
    }

-- | URL to the UrlMap resource that defines the mapping from URL to the
-- BackendService.
thttppURLMap :: Lens' TargetHTTPProxy (Maybe Text)
thttppURLMap
  = lens _thttppURLMap (\ s a -> s{_thttppURLMap = a})

-- | [Output Only] Type of resource. Always compute#Operation for Operation
-- resources.
thttppKind :: Lens' TargetHTTPProxy Text
thttppKind
  = lens _thttppKind (\ s a -> s{_thttppKind = a})

-- | [Output Only] Server-defined URL for the resource.
thttppSelfLink :: Lens' TargetHTTPProxy (Maybe Text)
thttppSelfLink
  = lens _thttppSelfLink
      (\ s a -> s{_thttppSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
thttppName :: Lens' TargetHTTPProxy (Maybe Text)
thttppName
  = lens _thttppName (\ s a -> s{_thttppName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
thttppCreationTimestamp :: Lens' TargetHTTPProxy (Maybe Text)
thttppCreationTimestamp
  = lens _thttppCreationTimestamp
      (\ s a -> s{_thttppCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
thttppId :: Lens' TargetHTTPProxy (Maybe Word64)
thttppId = lens _thttppId (\ s a -> s{_thttppId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
thttppDescription :: Lens' TargetHTTPProxy (Maybe Text)
thttppDescription
  = lens _thttppDescription
      (\ s a -> s{_thttppDescription = a})

instance FromJSON TargetHTTPProxy where
        parseJSON
          = withObject "TargetHTTPProxy"
              (\ o ->
                 TargetHTTPProxy <$>
                   (o .:? "urlMap") <*>
                     (o .:? "kind" .!= "compute#targetHttpProxy")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON TargetHTTPProxy where
        toJSON TargetHTTPProxy{..}
          = object
              (catMaybes
                 [("urlMap" .=) <$> _thttppURLMap,
                  Just ("kind" .= _thttppKind),
                  ("selfLink" .=) <$> _thttppSelfLink,
                  ("name" .=) <$> _thttppName,
                  ("creationTimestamp" .=) <$>
                    _thttppCreationTimestamp,
                  ("id" .=) <$> _thttppId,
                  ("description" .=) <$> _thttppDescription])

-- | A Machine Type resource.
--
-- /See:/ 'machineType' smart constructor.
data MachineType = MachineType
    { _mtKind                         :: !Text
    , _mtImageSpaceGb                 :: !(Maybe Int32)
    , _mtZone                         :: !(Maybe Text)
    , _mtSelfLink                     :: !(Maybe Text)
    , _mtName                         :: !(Maybe Text)
    , _mtCreationTimestamp            :: !(Maybe Text)
    , _mtScratchDisks                 :: !(Maybe [MachineTypeScratchDisksItem])
    , _mtId                           :: !(Maybe Word64)
    , _mtGuestCPUs                    :: !(Maybe Int32)
    , _mtMaximumPersistentDisksSizeGb :: !(Maybe Int64)
    , _mtMaximumPersistentDisks       :: !(Maybe Int32)
    , _mtMemoryMb                     :: !(Maybe Int32)
    , _mtDescription                  :: !(Maybe Text)
    , _mtDeprecated                   :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtKind'
--
-- * 'mtImageSpaceGb'
--
-- * 'mtZone'
--
-- * 'mtSelfLink'
--
-- * 'mtName'
--
-- * 'mtCreationTimestamp'
--
-- * 'mtScratchDisks'
--
-- * 'mtId'
--
-- * 'mtGuestCPUs'
--
-- * 'mtMaximumPersistentDisksSizeGb'
--
-- * 'mtMaximumPersistentDisks'
--
-- * 'mtMemoryMb'
--
-- * 'mtDescription'
--
-- * 'mtDeprecated'
machineType
    :: MachineType
machineType =
    MachineType
    { _mtKind = "compute#machineType"
    , _mtImageSpaceGb = Nothing
    , _mtZone = Nothing
    , _mtSelfLink = Nothing
    , _mtName = Nothing
    , _mtCreationTimestamp = Nothing
    , _mtScratchDisks = Nothing
    , _mtId = Nothing
    , _mtGuestCPUs = Nothing
    , _mtMaximumPersistentDisksSizeGb = Nothing
    , _mtMaximumPersistentDisks = Nothing
    , _mtMemoryMb = Nothing
    , _mtDescription = Nothing
    , _mtDeprecated = Nothing
    }

-- | Type of the resource.
mtKind :: Lens' MachineType Text
mtKind = lens _mtKind (\ s a -> s{_mtKind = a})

-- | [Deprecated] This property is deprecated and will never be populated
-- with any relevant values.
mtImageSpaceGb :: Lens' MachineType (Maybe Int32)
mtImageSpaceGb
  = lens _mtImageSpaceGb
      (\ s a -> s{_mtImageSpaceGb = a})

-- | [Output Only] The name of the zone where the machine type resides, such
-- as us-central1-a.
mtZone :: Lens' MachineType (Maybe Text)
mtZone = lens _mtZone (\ s a -> s{_mtZone = a})

-- | [Output Only] Server-defined URL for the resource.
mtSelfLink :: Lens' MachineType (Maybe Text)
mtSelfLink
  = lens _mtSelfLink (\ s a -> s{_mtSelfLink = a})

-- | [Output Only] Name of the resource.
mtName :: Lens' MachineType (Maybe Text)
mtName = lens _mtName (\ s a -> s{_mtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
mtCreationTimestamp :: Lens' MachineType (Maybe Text)
mtCreationTimestamp
  = lens _mtCreationTimestamp
      (\ s a -> s{_mtCreationTimestamp = a})

-- | [Output Only] List of extended scratch disks assigned to the instance.
mtScratchDisks :: Lens' MachineType [MachineTypeScratchDisksItem]
mtScratchDisks
  = lens _mtScratchDisks
      (\ s a -> s{_mtScratchDisks = a})
      . _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server.
mtId :: Lens' MachineType (Maybe Word64)
mtId = lens _mtId (\ s a -> s{_mtId = a})

-- | [Output Only] The tumber of CPUs exposed to the instance.
mtGuestCPUs :: Lens' MachineType (Maybe Int32)
mtGuestCPUs
  = lens _mtGuestCPUs (\ s a -> s{_mtGuestCPUs = a})

-- | [Output Only] Maximum total persistent disks size (GB) allowed.
mtMaximumPersistentDisksSizeGb :: Lens' MachineType (Maybe Int64)
mtMaximumPersistentDisksSizeGb
  = lens _mtMaximumPersistentDisksSizeGb
      (\ s a -> s{_mtMaximumPersistentDisksSizeGb = a})

-- | [Output Only] Maximum persistent disks allowed.
mtMaximumPersistentDisks :: Lens' MachineType (Maybe Int32)
mtMaximumPersistentDisks
  = lens _mtMaximumPersistentDisks
      (\ s a -> s{_mtMaximumPersistentDisks = a})

-- | [Output Only] The amount of physical memory available to the instance,
-- defined in MB.
mtMemoryMb :: Lens' MachineType (Maybe Int32)
mtMemoryMb
  = lens _mtMemoryMb (\ s a -> s{_mtMemoryMb = a})

-- | [Output Only] An optional textual description of the resource.
mtDescription :: Lens' MachineType (Maybe Text)
mtDescription
  = lens _mtDescription
      (\ s a -> s{_mtDescription = a})

-- | [Output Only] The deprecation status associated with this machine type.
mtDeprecated :: Lens' MachineType (Maybe DeprecationStatus)
mtDeprecated
  = lens _mtDeprecated (\ s a -> s{_mtDeprecated = a})

instance FromJSON MachineType where
        parseJSON
          = withObject "MachineType"
              (\ o ->
                 MachineType <$>
                   (o .:? "kind" .!= "compute#machineType") <*>
                     (o .:? "imageSpaceGb")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "scratchDisks" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "guestCpus")
                     <*> (o .:? "maximumPersistentDisksSizeGb")
                     <*> (o .:? "maximumPersistentDisks")
                     <*> (o .:? "memoryMb")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON MachineType where
        toJSON MachineType{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mtKind),
                  ("imageSpaceGb" .=) <$> _mtImageSpaceGb,
                  ("zone" .=) <$> _mtZone,
                  ("selfLink" .=) <$> _mtSelfLink,
                  ("name" .=) <$> _mtName,
                  ("creationTimestamp" .=) <$> _mtCreationTimestamp,
                  ("scratchDisks" .=) <$> _mtScratchDisks,
                  ("id" .=) <$> _mtId,
                  ("guestCpus" .=) <$> _mtGuestCPUs,
                  ("maximumPersistentDisksSizeGb" .=) <$>
                    _mtMaximumPersistentDisksSizeGb,
                  ("maximumPersistentDisks" .=) <$>
                    _mtMaximumPersistentDisks,
                  ("memoryMb" .=) <$> _mtMemoryMb,
                  ("description" .=) <$> _mtDescription,
                  ("deprecated" .=) <$> _mtDeprecated])

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
--
-- /See:/ 'operationError' smart constructor.
newtype OperationError = OperationError
    { _oeErrors :: Maybe [OperationErrorErrorsItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeErrors'
operationError
    :: OperationError
operationError =
    OperationError
    { _oeErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
oeErrors :: Lens' OperationError [OperationErrorErrorsItem]
oeErrors
  = lens _oeErrors (\ s a -> s{_oeErrors = a}) .
      _Default
      . _Coerce

instance FromJSON OperationError where
        parseJSON
          = withObject "OperationError"
              (\ o ->
                 OperationError <$> (o .:? "errors" .!= mempty))

instance ToJSON OperationError where
        toJSON OperationError{..}
          = object (catMaybes [("errors" .=) <$> _oeErrors])

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetInstancesScopedListWarning' smart constructor.
data TargetInstancesScopedListWarning = TargetInstancesScopedListWarning
    { _tislwData    :: !(Maybe [TargetInstancesScopedListWarningDataItem])
    , _tislwCode    :: !(Maybe TargetInstancesScopedListWarningCode)
    , _tislwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tislwData'
--
-- * 'tislwCode'
--
-- * 'tislwMessage'
targetInstancesScopedListWarning
    :: TargetInstancesScopedListWarning
targetInstancesScopedListWarning =
    TargetInstancesScopedListWarning
    { _tislwData = Nothing
    , _tislwCode = Nothing
    , _tislwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tislwData :: Lens' TargetInstancesScopedListWarning [TargetInstancesScopedListWarningDataItem]
tislwData
  = lens _tislwData (\ s a -> s{_tislwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tislwCode :: Lens' TargetInstancesScopedListWarning (Maybe TargetInstancesScopedListWarningCode)
tislwCode
  = lens _tislwCode (\ s a -> s{_tislwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tislwMessage :: Lens' TargetInstancesScopedListWarning (Maybe Text)
tislwMessage
  = lens _tislwMessage (\ s a -> s{_tislwMessage = a})

instance FromJSON TargetInstancesScopedListWarning
         where
        parseJSON
          = withObject "TargetInstancesScopedListWarning"
              (\ o ->
                 TargetInstancesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetInstancesScopedListWarning
         where
        toJSON TargetInstancesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tislwData,
                  ("code" .=) <$> _tislwCode,
                  ("message" .=) <$> _tislwMessage])

--
-- /See:/ 'autoscalersScopedListWarningDataItem' smart constructor.
data AutoscalersScopedListWarningDataItem = AutoscalersScopedListWarningDataItem
    { _aValue :: !(Maybe Text)
    , _aKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aValue'
--
-- * 'aKey'
autoscalersScopedListWarningDataItem
    :: AutoscalersScopedListWarningDataItem
autoscalersScopedListWarningDataItem =
    AutoscalersScopedListWarningDataItem
    { _aValue = Nothing
    , _aKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aValue :: Lens' AutoscalersScopedListWarningDataItem (Maybe Text)
aValue = lens _aValue (\ s a -> s{_aValue = a})

-- | [Output Only] A key for the warning data.
aKey :: Lens' AutoscalersScopedListWarningDataItem (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

instance FromJSON
         AutoscalersScopedListWarningDataItem where
        parseJSON
          = withObject "AutoscalersScopedListWarningDataItem"
              (\ o ->
                 AutoscalersScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON AutoscalersScopedListWarningDataItem
         where
        toJSON AutoscalersScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aValue, ("key" .=) <$> _aKey])

--
-- /See:/ 'instanceGroupsListInstances' smart constructor.
data InstanceGroupsListInstances = InstanceGroupsListInstances
    { _igliNextPageToken :: !(Maybe Text)
    , _igliKind          :: !Text
    , _igliItems         :: !(Maybe [InstanceWithNamedPorts])
    , _igliSelfLink      :: !(Maybe Text)
    , _igliId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsListInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igliNextPageToken'
--
-- * 'igliKind'
--
-- * 'igliItems'
--
-- * 'igliSelfLink'
--
-- * 'igliId'
instanceGroupsListInstances
    :: InstanceGroupsListInstances
instanceGroupsListInstances =
    InstanceGroupsListInstances
    { _igliNextPageToken = Nothing
    , _igliKind = "compute#instanceGroupsListInstances"
    , _igliItems = Nothing
    , _igliSelfLink = Nothing
    , _igliId = Nothing
    }

-- | [Output Only] A token that is used to continue a truncated list request.
igliNextPageToken :: Lens' InstanceGroupsListInstances (Maybe Text)
igliNextPageToken
  = lens _igliNextPageToken
      (\ s a -> s{_igliNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupsListInstances for lists of instance groups.
igliKind :: Lens' InstanceGroupsListInstances Text
igliKind = lens _igliKind (\ s a -> s{_igliKind = a})

-- | A list of InstanceWithNamedPorts resources, which contains all named
-- ports for the given instance.
igliItems :: Lens' InstanceGroupsListInstances [InstanceWithNamedPorts]
igliItems
  = lens _igliItems (\ s a -> s{_igliItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this list of instance groups. The server
-- defines this URL.
igliSelfLink :: Lens' InstanceGroupsListInstances (Maybe Text)
igliSelfLink
  = lens _igliSelfLink (\ s a -> s{_igliSelfLink = a})

-- | [Output Only] A unique identifier for this list of instance groups. The
-- server defines this identifier.
igliId :: Lens' InstanceGroupsListInstances (Maybe Text)
igliId = lens _igliId (\ s a -> s{_igliId = a})

instance FromJSON InstanceGroupsListInstances where
        parseJSON
          = withObject "InstanceGroupsListInstances"
              (\ o ->
                 InstanceGroupsListInstances <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupsListInstances")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupsListInstances where
        toJSON InstanceGroupsListInstances{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igliNextPageToken,
                  Just ("kind" .= _igliKind),
                  ("items" .=) <$> _igliItems,
                  ("selfLink" .=) <$> _igliSelfLink,
                  ("id" .=) <$> _igliId])

--
-- /See:/ 'autoscaler' smart constructor.
data Autoscaler = Autoscaler
    { _aaKind              :: !Text
    , _aaZone              :: !(Maybe Text)
    , _aaSelfLink          :: !(Maybe Text)
    , _aaName              :: !(Maybe Text)
    , _aaCreationTimestamp :: !(Maybe Text)
    , _aaAutoscalingPolicy :: !(Maybe AutoscalingPolicy)
    , _aaId                :: !(Maybe Word64)
    , _aaDescription       :: !(Maybe Text)
    , _aaTarget            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Autoscaler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKind'
--
-- * 'aaZone'
--
-- * 'aaSelfLink'
--
-- * 'aaName'
--
-- * 'aaCreationTimestamp'
--
-- * 'aaAutoscalingPolicy'
--
-- * 'aaId'
--
-- * 'aaDescription'
--
-- * 'aaTarget'
autoscaler
    :: Autoscaler
autoscaler =
    Autoscaler
    { _aaKind = "compute#autoscaler"
    , _aaZone = Nothing
    , _aaSelfLink = Nothing
    , _aaName = Nothing
    , _aaCreationTimestamp = Nothing
    , _aaAutoscalingPolicy = Nothing
    , _aaId = Nothing
    , _aaDescription = Nothing
    , _aaTarget = Nothing
    }

-- | Type of the resource.
aaKind :: Lens' Autoscaler Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | [Output Only] URL of the zone where the instance group resides.
aaZone :: Lens' Autoscaler (Maybe Text)
aaZone = lens _aaZone (\ s a -> s{_aaZone = a})

-- | [Output Only] Server-defined URL for the resource.
aaSelfLink :: Lens' Autoscaler (Maybe Text)
aaSelfLink
  = lens _aaSelfLink (\ s a -> s{_aaSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
aaName :: Lens' Autoscaler (Maybe Text)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
aaCreationTimestamp :: Lens' Autoscaler (Maybe Text)
aaCreationTimestamp
  = lens _aaCreationTimestamp
      (\ s a -> s{_aaCreationTimestamp = a})

-- | Autoscaling configuration.
aaAutoscalingPolicy :: Lens' Autoscaler (Maybe AutoscalingPolicy)
aaAutoscalingPolicy
  = lens _aaAutoscalingPolicy
      (\ s a -> s{_aaAutoscalingPolicy = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
aaId :: Lens' Autoscaler (Maybe Word64)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
aaDescription :: Lens' Autoscaler (Maybe Text)
aaDescription
  = lens _aaDescription
      (\ s a -> s{_aaDescription = a})

-- | URL of Instance Group Manager or Replica Pool which will be controlled
-- by Autoscaler.
aaTarget :: Lens' Autoscaler (Maybe Text)
aaTarget = lens _aaTarget (\ s a -> s{_aaTarget = a})

instance FromJSON Autoscaler where
        parseJSON
          = withObject "Autoscaler"
              (\ o ->
                 Autoscaler <$>
                   (o .:? "kind" .!= "compute#autoscaler") <*>
                     (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "autoscalingPolicy")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "target"))

instance ToJSON Autoscaler where
        toJSON Autoscaler{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind), ("zone" .=) <$> _aaZone,
                  ("selfLink" .=) <$> _aaSelfLink,
                  ("name" .=) <$> _aaName,
                  ("creationTimestamp" .=) <$> _aaCreationTimestamp,
                  ("autoscalingPolicy" .=) <$> _aaAutoscalingPolicy,
                  ("id" .=) <$> _aaId,
                  ("description" .=) <$> _aaDescription,
                  ("target" .=) <$> _aaTarget])

-- | [Output Only] Informational warning which replaces the list of disks
-- when the list is empty.
--
-- /See:/ 'disksScopedListWarning' smart constructor.
data DisksScopedListWarning = DisksScopedListWarning
    { _dslwData    :: !(Maybe [DisksScopedListWarningDataItem])
    , _dslwCode    :: !(Maybe DisksScopedListWarningCode)
    , _dslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslwData'
--
-- * 'dslwCode'
--
-- * 'dslwMessage'
disksScopedListWarning
    :: DisksScopedListWarning
disksScopedListWarning =
    DisksScopedListWarning
    { _dslwData = Nothing
    , _dslwCode = Nothing
    , _dslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
dslwData :: Lens' DisksScopedListWarning [DisksScopedListWarningDataItem]
dslwData
  = lens _dslwData (\ s a -> s{_dslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
dslwCode :: Lens' DisksScopedListWarning (Maybe DisksScopedListWarningCode)
dslwCode = lens _dslwCode (\ s a -> s{_dslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
dslwMessage :: Lens' DisksScopedListWarning (Maybe Text)
dslwMessage
  = lens _dslwMessage (\ s a -> s{_dslwMessage = a})

instance FromJSON DisksScopedListWarning where
        parseJSON
          = withObject "DisksScopedListWarning"
              (\ o ->
                 DisksScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON DisksScopedListWarning where
        toJSON DisksScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _dslwData,
                  ("code" .=) <$> _dslwCode,
                  ("message" .=) <$> _dslwMessage])

-- | A map of scoped target vpn gateway lists.
--
-- /See:/ 'targetVPNGatewayAggregatedListItems' smart constructor.
newtype TargetVPNGatewayAggregatedListItems = TargetVPNGatewayAggregatedListItems
    { _tvgaliAddtional :: HashMap Text TargetVPNGatewaysScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewayAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgaliAddtional'
targetVPNGatewayAggregatedListItems
    :: HashMap Text TargetVPNGatewaysScopedList -- ^ 'addtional'
    -> TargetVPNGatewayAggregatedListItems
targetVPNGatewayAggregatedListItems pTvgaliAddtional_ =
    TargetVPNGatewayAggregatedListItems
    { _tvgaliAddtional = pTvgaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of target vpn
-- gateways.
tvgaliAddtional :: Lens' TargetVPNGatewayAggregatedListItems (HashMap Text TargetVPNGatewaysScopedList)
tvgaliAddtional
  = lens _tvgaliAddtional
      (\ s a -> s{_tvgaliAddtional = a})

instance FromJSON TargetVPNGatewayAggregatedListItems
         where
        parseJSON
          = withObject "TargetVPNGatewayAggregatedListItems"
              (\ o ->
                 TargetVPNGatewayAggregatedListItems <$>
                   (parseJSONObject o))

instance ToJSON TargetVPNGatewayAggregatedListItems
         where
        toJSON = toJSON . _tvgaliAddtional

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetPoolsScopedListWarning' smart constructor.
data TargetPoolsScopedListWarning = TargetPoolsScopedListWarning
    { _tpslwData    :: !(Maybe [TargetPoolsScopedListWarningDataItem])
    , _tpslwCode    :: !(Maybe TargetPoolsScopedListWarningCode)
    , _tpslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpslwData'
--
-- * 'tpslwCode'
--
-- * 'tpslwMessage'
targetPoolsScopedListWarning
    :: TargetPoolsScopedListWarning
targetPoolsScopedListWarning =
    TargetPoolsScopedListWarning
    { _tpslwData = Nothing
    , _tpslwCode = Nothing
    , _tpslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
tpslwData :: Lens' TargetPoolsScopedListWarning [TargetPoolsScopedListWarningDataItem]
tpslwData
  = lens _tpslwData (\ s a -> s{_tpslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
tpslwCode :: Lens' TargetPoolsScopedListWarning (Maybe TargetPoolsScopedListWarningCode)
tpslwCode
  = lens _tpslwCode (\ s a -> s{_tpslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
tpslwMessage :: Lens' TargetPoolsScopedListWarning (Maybe Text)
tpslwMessage
  = lens _tpslwMessage (\ s a -> s{_tpslwMessage = a})

instance FromJSON TargetPoolsScopedListWarning where
        parseJSON
          = withObject "TargetPoolsScopedListWarning"
              (\ o ->
                 TargetPoolsScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetPoolsScopedListWarning where
        toJSON TargetPoolsScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tpslwData,
                  ("code" .=) <$> _tpslwCode,
                  ("message" .=) <$> _tpslwMessage])

--
-- /See:/ 'healthStatus' smart constructor.
data HealthStatus = HealthStatus
    { _hsIPAddress   :: !(Maybe Text)
    , _hsHealthState :: !(Maybe HealthStatusHealthState)
    , _hsPort        :: !(Maybe Int32)
    , _hsInstance    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsIPAddress'
--
-- * 'hsHealthState'
--
-- * 'hsPort'
--
-- * 'hsInstance'
healthStatus
    :: HealthStatus
healthStatus =
    HealthStatus
    { _hsIPAddress = Nothing
    , _hsHealthState = Nothing
    , _hsPort = Nothing
    , _hsInstance = Nothing
    }

-- | The IP address represented by this resource.
hsIPAddress :: Lens' HealthStatus (Maybe Text)
hsIPAddress
  = lens _hsIPAddress (\ s a -> s{_hsIPAddress = a})

-- | Health state of the instance.
hsHealthState :: Lens' HealthStatus (Maybe HealthStatusHealthState)
hsHealthState
  = lens _hsHealthState
      (\ s a -> s{_hsHealthState = a})

-- | The port on the instance.
hsPort :: Lens' HealthStatus (Maybe Int32)
hsPort = lens _hsPort (\ s a -> s{_hsPort = a})

-- | URL of the instance resource.
hsInstance :: Lens' HealthStatus (Maybe Text)
hsInstance
  = lens _hsInstance (\ s a -> s{_hsInstance = a})

instance FromJSON HealthStatus where
        parseJSON
          = withObject "HealthStatus"
              (\ o ->
                 HealthStatus <$>
                   (o .:? "ipAddress") <*> (o .:? "healthState") <*>
                     (o .:? "port")
                     <*> (o .:? "instance"))

instance ToJSON HealthStatus where
        toJSON HealthStatus{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _hsIPAddress,
                  ("healthState" .=) <$> _hsHealthState,
                  ("port" .=) <$> _hsPort,
                  ("instance" .=) <$> _hsInstance])

-- | Region resource.
--
-- /See:/ 'region' smart constructor.
data Region = Region
    { _rrStatus            :: !(Maybe RegionStatus)
    , _rrZones             :: !(Maybe [Text])
    , _rrKind              :: !Text
    , _rrSelfLink          :: !(Maybe Text)
    , _rrName              :: !(Maybe Text)
    , _rrCreationTimestamp :: !(Maybe Text)
    , _rrQuotas            :: !(Maybe [Quota])
    , _rrId                :: !(Maybe Word64)
    , _rrDescription       :: !(Maybe Text)
    , _rrDeprecated        :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Region' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrStatus'
--
-- * 'rrZones'
--
-- * 'rrKind'
--
-- * 'rrSelfLink'
--
-- * 'rrName'
--
-- * 'rrCreationTimestamp'
--
-- * 'rrQuotas'
--
-- * 'rrId'
--
-- * 'rrDescription'
--
-- * 'rrDeprecated'
region
    :: Region
region =
    Region
    { _rrStatus = Nothing
    , _rrZones = Nothing
    , _rrKind = "compute#region"
    , _rrSelfLink = Nothing
    , _rrName = Nothing
    , _rrCreationTimestamp = Nothing
    , _rrQuotas = Nothing
    , _rrId = Nothing
    , _rrDescription = Nothing
    , _rrDeprecated = Nothing
    }

-- | [Output Only] Status of the region, either UP or DOWN.
rrStatus :: Lens' Region (Maybe RegionStatus)
rrStatus = lens _rrStatus (\ s a -> s{_rrStatus = a})

-- | [Output Only] A list of zones available in this region, in the form of
-- resource URLs.
rrZones :: Lens' Region [Text]
rrZones
  = lens _rrZones (\ s a -> s{_rrZones = a}) . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#region for regions.
rrKind :: Lens' Region Text
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | [Output Only] Server-defined URL for the resource.
rrSelfLink :: Lens' Region (Maybe Text)
rrSelfLink
  = lens _rrSelfLink (\ s a -> s{_rrSelfLink = a})

-- | [Output Only] Name of the resource.
rrName :: Lens' Region (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rrCreationTimestamp :: Lens' Region (Maybe Text)
rrCreationTimestamp
  = lens _rrCreationTimestamp
      (\ s a -> s{_rrCreationTimestamp = a})

-- | [Output Only] Quotas assigned to this region.
rrQuotas :: Lens' Region [Quota]
rrQuotas
  = lens _rrQuotas (\ s a -> s{_rrQuotas = a}) .
      _Default
      . _Coerce

-- | [Output Only] Unique identifier for the resource; defined by the server
-- .
rrId :: Lens' Region (Maybe Word64)
rrId = lens _rrId (\ s a -> s{_rrId = a})

-- | [Output Only] Textual description of the resource.
rrDescription :: Lens' Region (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

-- | [Output Only] The deprecation status associated with this region.
rrDeprecated :: Lens' Region (Maybe DeprecationStatus)
rrDeprecated
  = lens _rrDeprecated (\ s a -> s{_rrDeprecated = a})

instance FromJSON Region where
        parseJSON
          = withObject "Region"
              (\ o ->
                 Region <$>
                   (o .:? "status") <*> (o .:? "zones" .!= mempty) <*>
                     (o .:? "kind" .!= "compute#region")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "quotas" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON Region where
        toJSON Region{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rrStatus,
                  ("zones" .=) <$> _rrZones, Just ("kind" .= _rrKind),
                  ("selfLink" .=) <$> _rrSelfLink,
                  ("name" .=) <$> _rrName,
                  ("creationTimestamp" .=) <$> _rrCreationTimestamp,
                  ("quotas" .=) <$> _rrQuotas, ("id" .=) <$> _rrId,
                  ("description" .=) <$> _rrDescription,
                  ("deprecated" .=) <$> _rrDeprecated])

--
-- /See:/ 'vpnTunnel' smart constructor.
data VPNTunnel = VPNTunnel
    { _vtDetailedStatus    :: !(Maybe Text)
    , _vtStatus            :: !(Maybe VPNTunnelStatus)
    , _vtKind              :: !Text
    , _vtPeerIP            :: !(Maybe Text)
    , _vtTargetVPNGateway  :: !(Maybe Text)
    , _vtSelfLink          :: !(Maybe Text)
    , _vtSharedSecret      :: !(Maybe Text)
    , _vtName              :: !(Maybe Text)
    , _vtCreationTimestamp :: !(Maybe Text)
    , _vtSharedSecretHash  :: !(Maybe Text)
    , _vtId                :: !(Maybe Word64)
    , _vtIkeVersion        :: !(Maybe Int32)
    , _vtRegion            :: !(Maybe Text)
    , _vtDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtDetailedStatus'
--
-- * 'vtStatus'
--
-- * 'vtKind'
--
-- * 'vtPeerIP'
--
-- * 'vtTargetVPNGateway'
--
-- * 'vtSelfLink'
--
-- * 'vtSharedSecret'
--
-- * 'vtName'
--
-- * 'vtCreationTimestamp'
--
-- * 'vtSharedSecretHash'
--
-- * 'vtId'
--
-- * 'vtIkeVersion'
--
-- * 'vtRegion'
--
-- * 'vtDescription'
vpnTunnel
    :: VPNTunnel
vpnTunnel =
    VPNTunnel
    { _vtDetailedStatus = Nothing
    , _vtStatus = Nothing
    , _vtKind = "compute#vpnTunnel"
    , _vtPeerIP = Nothing
    , _vtTargetVPNGateway = Nothing
    , _vtSelfLink = Nothing
    , _vtSharedSecret = Nothing
    , _vtName = Nothing
    , _vtCreationTimestamp = Nothing
    , _vtSharedSecretHash = Nothing
    , _vtId = Nothing
    , _vtIkeVersion = Nothing
    , _vtRegion = Nothing
    , _vtDescription = Nothing
    }

-- | [Output Only] Detailed status message for the VPN tunnel.
vtDetailedStatus :: Lens' VPNTunnel (Maybe Text)
vtDetailedStatus
  = lens _vtDetailedStatus
      (\ s a -> s{_vtDetailedStatus = a})

-- | [Output Only] The status of the VPN tunnel.
vtStatus :: Lens' VPNTunnel (Maybe VPNTunnelStatus)
vtStatus = lens _vtStatus (\ s a -> s{_vtStatus = a})

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtKind :: Lens' VPNTunnel Text
vtKind = lens _vtKind (\ s a -> s{_vtKind = a})

-- | IP address of the peer VPN gateway.
vtPeerIP :: Lens' VPNTunnel (Maybe Text)
vtPeerIP = lens _vtPeerIP (\ s a -> s{_vtPeerIP = a})

-- | URL of the VPN gateway to which this VPN tunnel is associated. Provided
-- by the client when the VPN tunnel is created.
vtTargetVPNGateway :: Lens' VPNTunnel (Maybe Text)
vtTargetVPNGateway
  = lens _vtTargetVPNGateway
      (\ s a -> s{_vtTargetVPNGateway = a})

-- | [Output Only] Server-defined URL for the resource.
vtSelfLink :: Lens' VPNTunnel (Maybe Text)
vtSelfLink
  = lens _vtSelfLink (\ s a -> s{_vtSelfLink = a})

-- | Shared secret used to set the secure session between the GCE VPN gateway
-- and the peer VPN gateway.
vtSharedSecret :: Lens' VPNTunnel (Maybe Text)
vtSharedSecret
  = lens _vtSharedSecret
      (\ s a -> s{_vtSharedSecret = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
vtName :: Lens' VPNTunnel (Maybe Text)
vtName = lens _vtName (\ s a -> s{_vtName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
vtCreationTimestamp :: Lens' VPNTunnel (Maybe Text)
vtCreationTimestamp
  = lens _vtCreationTimestamp
      (\ s a -> s{_vtCreationTimestamp = a})

-- | Hash of the shared secret.
vtSharedSecretHash :: Lens' VPNTunnel (Maybe Text)
vtSharedSecretHash
  = lens _vtSharedSecretHash
      (\ s a -> s{_vtSharedSecretHash = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
vtId :: Lens' VPNTunnel (Maybe Word64)
vtId = lens _vtId (\ s a -> s{_vtId = a})

-- | IKE protocol version to use when establishing the VPN tunnel with peer
-- VPN gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
vtIkeVersion :: Lens' VPNTunnel (Maybe Int32)
vtIkeVersion
  = lens _vtIkeVersion (\ s a -> s{_vtIkeVersion = a})

-- | [Output Only] URL of the region where the VPN tunnel resides.
vtRegion :: Lens' VPNTunnel (Maybe Text)
vtRegion = lens _vtRegion (\ s a -> s{_vtRegion = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
vtDescription :: Lens' VPNTunnel (Maybe Text)
vtDescription
  = lens _vtDescription
      (\ s a -> s{_vtDescription = a})

instance FromJSON VPNTunnel where
        parseJSON
          = withObject "VPNTunnel"
              (\ o ->
                 VPNTunnel <$>
                   (o .:? "detailedStatus") <*> (o .:? "status") <*>
                     (o .:? "kind" .!= "compute#vpnTunnel")
                     <*> (o .:? "peerIp")
                     <*> (o .:? "targetVpnGateway")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "sharedSecret")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "sharedSecretHash")
                     <*> (o .:? "id")
                     <*> (o .:? "ikeVersion")
                     <*> (o .:? "region")
                     <*> (o .:? "description"))

instance ToJSON VPNTunnel where
        toJSON VPNTunnel{..}
          = object
              (catMaybes
                 [("detailedStatus" .=) <$> _vtDetailedStatus,
                  ("status" .=) <$> _vtStatus,
                  Just ("kind" .= _vtKind),
                  ("peerIp" .=) <$> _vtPeerIP,
                  ("targetVpnGateway" .=) <$> _vtTargetVPNGateway,
                  ("selfLink" .=) <$> _vtSelfLink,
                  ("sharedSecret" .=) <$> _vtSharedSecret,
                  ("name" .=) <$> _vtName,
                  ("creationTimestamp" .=) <$> _vtCreationTimestamp,
                  ("sharedSecretHash" .=) <$> _vtSharedSecretHash,
                  ("id" .=) <$> _vtId,
                  ("ikeVersion" .=) <$> _vtIkeVersion,
                  ("region" .=) <$> _vtRegion,
                  ("description" .=) <$> _vtDescription])

-- | [Output Only] Informational warning which replaces the list of
-- operations when the list is empty.
--
-- /See:/ 'operationsScopedListWarning' smart constructor.
data OperationsScopedListWarning = OperationsScopedListWarning
    { _oslwData    :: !(Maybe [OperationsScopedListWarningDataItem])
    , _oslwCode    :: !(Maybe OperationsScopedListWarningCode)
    , _oslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslwData'
--
-- * 'oslwCode'
--
-- * 'oslwMessage'
operationsScopedListWarning
    :: OperationsScopedListWarning
operationsScopedListWarning =
    OperationsScopedListWarning
    { _oslwData = Nothing
    , _oslwCode = Nothing
    , _oslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
oslwData :: Lens' OperationsScopedListWarning [OperationsScopedListWarningDataItem]
oslwData
  = lens _oslwData (\ s a -> s{_oslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
oslwCode :: Lens' OperationsScopedListWarning (Maybe OperationsScopedListWarningCode)
oslwCode = lens _oslwCode (\ s a -> s{_oslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
oslwMessage :: Lens' OperationsScopedListWarning (Maybe Text)
oslwMessage
  = lens _oslwMessage (\ s a -> s{_oslwMessage = a})

instance FromJSON OperationsScopedListWarning where
        parseJSON
          = withObject "OperationsScopedListWarning"
              (\ o ->
                 OperationsScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationsScopedListWarning where
        toJSON OperationsScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _oslwData,
                  ("code" .=) <$> _oslwCode,
                  ("message" .=) <$> _oslwMessage])

-- | Sets the scheduling options for an Instance.
--
-- /See:/ 'scheduling' smart constructor.
data Scheduling = Scheduling
    { _sAutomaticRestart  :: !(Maybe Bool)
    , _sOnHostMaintenance :: !(Maybe SchedulingOnHostMaintenance)
    , _sPreemptible       :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Scheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAutomaticRestart'
--
-- * 'sOnHostMaintenance'
--
-- * 'sPreemptible'
scheduling
    :: Scheduling
scheduling =
    Scheduling
    { _sAutomaticRestart = Nothing
    , _sOnHostMaintenance = Nothing
    , _sPreemptible = Nothing
    }

-- | Specifies whether the instance should be automatically restarted if it
-- is terminated by Compute Engine (not terminated by a user). You can only
-- set the automatic restart option for standard instances. Preemptible
-- instances cannot be automatically restarted.
sAutomaticRestart :: Lens' Scheduling (Maybe Bool)
sAutomaticRestart
  = lens _sAutomaticRestart
      (\ s a -> s{_sAutomaticRestart = a})

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting maintenance behavior.
sOnHostMaintenance :: Lens' Scheduling (Maybe SchedulingOnHostMaintenance)
sOnHostMaintenance
  = lens _sOnHostMaintenance
      (\ s a -> s{_sOnHostMaintenance = a})

-- | Whether the instance is preemptible.
sPreemptible :: Lens' Scheduling (Maybe Bool)
sPreemptible
  = lens _sPreemptible (\ s a -> s{_sPreemptible = a})

instance FromJSON Scheduling where
        parseJSON
          = withObject "Scheduling"
              (\ o ->
                 Scheduling <$>
                   (o .:? "automaticRestart") <*>
                     (o .:? "onHostMaintenance")
                     <*> (o .:? "preemptible"))

instance ToJSON Scheduling where
        toJSON Scheduling{..}
          = object
              (catMaybes
                 [("automaticRestart" .=) <$> _sAutomaticRestart,
                  ("onHostMaintenance" .=) <$> _sOnHostMaintenance,
                  ("preemptible" .=) <$> _sPreemptible])

--
-- /See:/ 'vpnTunnelsScopedListWarningDataItem' smart constructor.
data VPNTunnelsScopedListWarningDataItem = VPNTunnelsScopedListWarningDataItem
    { _vtslwdiValue :: !(Maybe Text)
    , _vtslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtslwdiValue'
--
-- * 'vtslwdiKey'
vpnTunnelsScopedListWarningDataItem
    :: VPNTunnelsScopedListWarningDataItem
vpnTunnelsScopedListWarningDataItem =
    VPNTunnelsScopedListWarningDataItem
    { _vtslwdiValue = Nothing
    , _vtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
vtslwdiValue :: Lens' VPNTunnelsScopedListWarningDataItem (Maybe Text)
vtslwdiValue
  = lens _vtslwdiValue (\ s a -> s{_vtslwdiValue = a})

-- | [Output Only] A key for the warning data.
vtslwdiKey :: Lens' VPNTunnelsScopedListWarningDataItem (Maybe Text)
vtslwdiKey
  = lens _vtslwdiKey (\ s a -> s{_vtslwdiKey = a})

instance FromJSON VPNTunnelsScopedListWarningDataItem
         where
        parseJSON
          = withObject "VPNTunnelsScopedListWarningDataItem"
              (\ o ->
                 VPNTunnelsScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON VPNTunnelsScopedListWarningDataItem
         where
        toJSON VPNTunnelsScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vtslwdiValue,
                  ("key" .=) <$> _vtslwdiKey])

-- | Informational warning which replaces the list of forwarding rules when
-- the list is empty.
--
-- /See:/ 'forwardingRulesScopedListWarning' smart constructor.
data ForwardingRulesScopedListWarning = ForwardingRulesScopedListWarning
    { _frslwData    :: !(Maybe [ForwardingRulesScopedListWarningDataItem])
    , _frslwCode    :: !(Maybe ForwardingRulesScopedListWarningCode)
    , _frslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslwData'
--
-- * 'frslwCode'
--
-- * 'frslwMessage'
forwardingRulesScopedListWarning
    :: ForwardingRulesScopedListWarning
forwardingRulesScopedListWarning =
    ForwardingRulesScopedListWarning
    { _frslwData = Nothing
    , _frslwCode = Nothing
    , _frslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
frslwData :: Lens' ForwardingRulesScopedListWarning [ForwardingRulesScopedListWarningDataItem]
frslwData
  = lens _frslwData (\ s a -> s{_frslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
frslwCode :: Lens' ForwardingRulesScopedListWarning (Maybe ForwardingRulesScopedListWarningCode)
frslwCode
  = lens _frslwCode (\ s a -> s{_frslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
frslwMessage :: Lens' ForwardingRulesScopedListWarning (Maybe Text)
frslwMessage
  = lens _frslwMessage (\ s a -> s{_frslwMessage = a})

instance FromJSON ForwardingRulesScopedListWarning
         where
        parseJSON
          = withObject "ForwardingRulesScopedListWarning"
              (\ o ->
                 ForwardingRulesScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON ForwardingRulesScopedListWarning
         where
        toJSON ForwardingRulesScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _frslwData,
                  ("code" .=) <$> _frslwCode,
                  ("message" .=) <$> _frslwMessage])

-- | Contains a list of HttpHealthCheck resources.
--
-- /See:/ 'hTTPHealthCheckList' smart constructor.
data HTTPHealthCheckList = HTTPHealthCheckList
    { _httphclNextPageToken :: !(Maybe Text)
    , _httphclKind          :: !Text
    , _httphclItems         :: !(Maybe [HTTPHealthCheck])
    , _httphclSelfLink      :: !(Maybe Text)
    , _httphclId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthCheckList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphclNextPageToken'
--
-- * 'httphclKind'
--
-- * 'httphclItems'
--
-- * 'httphclSelfLink'
--
-- * 'httphclId'
hTTPHealthCheckList
    :: HTTPHealthCheckList
hTTPHealthCheckList =
    HTTPHealthCheckList
    { _httphclNextPageToken = Nothing
    , _httphclKind = "compute#httpHealthCheckList"
    , _httphclItems = Nothing
    , _httphclSelfLink = Nothing
    , _httphclId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
httphclNextPageToken :: Lens' HTTPHealthCheckList (Maybe Text)
httphclNextPageToken
  = lens _httphclNextPageToken
      (\ s a -> s{_httphclNextPageToken = a})

-- | Type of resource.
httphclKind :: Lens' HTTPHealthCheckList Text
httphclKind
  = lens _httphclKind (\ s a -> s{_httphclKind = a})

-- | A list of HttpHealthCheck resources.
httphclItems :: Lens' HTTPHealthCheckList [HTTPHealthCheck]
httphclItems
  = lens _httphclItems (\ s a -> s{_httphclItems = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
httphclSelfLink :: Lens' HTTPHealthCheckList (Maybe Text)
httphclSelfLink
  = lens _httphclSelfLink
      (\ s a -> s{_httphclSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
httphclId :: Lens' HTTPHealthCheckList (Maybe Text)
httphclId
  = lens _httphclId (\ s a -> s{_httphclId = a})

instance FromJSON HTTPHealthCheckList where
        parseJSON
          = withObject "HTTPHealthCheckList"
              (\ o ->
                 HTTPHealthCheckList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#httpHealthCheckList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON HTTPHealthCheckList where
        toJSON HTTPHealthCheckList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _httphclNextPageToken,
                  Just ("kind" .= _httphclKind),
                  ("items" .=) <$> _httphclItems,
                  ("selfLink" .=) <$> _httphclSelfLink,
                  ("id" .=) <$> _httphclId])

-- | [Output Only] The warning that replaces the list of managed instance
-- groups when the list is empty.
--
-- /See:/ 'instanceGroupManagersScopedListWarning' smart constructor.
data InstanceGroupManagersScopedListWarning = InstanceGroupManagersScopedListWarning
    { _igmslwData    :: !(Maybe [InstanceGroupManagersScopedListWarningDataItem])
    , _igmslwCode    :: !(Maybe InstanceGroupManagersScopedListWarningCode)
    , _igmslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmslwData'
--
-- * 'igmslwCode'
--
-- * 'igmslwMessage'
instanceGroupManagersScopedListWarning
    :: InstanceGroupManagersScopedListWarning
instanceGroupManagersScopedListWarning =
    InstanceGroupManagersScopedListWarning
    { _igmslwData = Nothing
    , _igmslwCode = Nothing
    , _igmslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
igmslwData :: Lens' InstanceGroupManagersScopedListWarning [InstanceGroupManagersScopedListWarningDataItem]
igmslwData
  = lens _igmslwData (\ s a -> s{_igmslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
igmslwCode :: Lens' InstanceGroupManagersScopedListWarning (Maybe InstanceGroupManagersScopedListWarningCode)
igmslwCode
  = lens _igmslwCode (\ s a -> s{_igmslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
igmslwMessage :: Lens' InstanceGroupManagersScopedListWarning (Maybe Text)
igmslwMessage
  = lens _igmslwMessage
      (\ s a -> s{_igmslwMessage = a})

instance FromJSON
         InstanceGroupManagersScopedListWarning where
        parseJSON
          = withObject "InstanceGroupManagersScopedListWarning"
              (\ o ->
                 InstanceGroupManagersScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON
         InstanceGroupManagersScopedListWarning where
        toJSON InstanceGroupManagersScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _igmslwData,
                  ("code" .=) <$> _igmslwCode,
                  ("message" .=) <$> _igmslwMessage])

--
-- /See:/ 'urlMapsValidateRequest' smart constructor.
newtype URLMapsValidateRequest = URLMapsValidateRequest
    { _umvrResource :: Maybe URLMap
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsValidateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umvrResource'
urlMapsValidateRequest
    :: URLMapsValidateRequest
urlMapsValidateRequest =
    URLMapsValidateRequest
    { _umvrResource = Nothing
    }

-- | Content of the UrlMap to be validated.
umvrResource :: Lens' URLMapsValidateRequest (Maybe URLMap)
umvrResource
  = lens _umvrResource (\ s a -> s{_umvrResource = a})

instance FromJSON URLMapsValidateRequest where
        parseJSON
          = withObject "URLMapsValidateRequest"
              (\ o ->
                 URLMapsValidateRequest <$> (o .:? "resource"))

instance ToJSON URLMapsValidateRequest where
        toJSON URLMapsValidateRequest{..}
          = object
              (catMaybes [("resource" .=) <$> _umvrResource])

--
-- /See:/ 'instanceGroupManagersSetTargetPoolsRequest' smart constructor.
data InstanceGroupManagersSetTargetPoolsRequest = InstanceGroupManagersSetTargetPoolsRequest
    { _igmstprFingerprint :: !(Maybe Word8)
    , _igmstprTargetPools :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetTargetPoolsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstprFingerprint'
--
-- * 'igmstprTargetPools'
instanceGroupManagersSetTargetPoolsRequest
    :: InstanceGroupManagersSetTargetPoolsRequest
instanceGroupManagersSetTargetPoolsRequest =
    InstanceGroupManagersSetTargetPoolsRequest
    { _igmstprFingerprint = Nothing
    , _igmstprTargetPools = Nothing
    }

-- | The fingerprint of the target pools information, which is a hash of the
-- contents. This field is used for optimistic locking when updating the
-- target pool entries.
igmstprFingerprint :: Lens' InstanceGroupManagersSetTargetPoolsRequest (Maybe Word8)
igmstprFingerprint
  = lens _igmstprFingerprint
      (\ s a -> s{_igmstprFingerprint = a})

-- | The list of target pool URLs that instances in this managed instance
-- group belong to. When the managed instance group creates new instances,
-- the group automatically adds those instances to the target pools that
-- are specified in this parameter. Changing the value of this parameter
-- does not change the target pools of existing instances in this managed
-- instance group.
igmstprTargetPools :: Lens' InstanceGroupManagersSetTargetPoolsRequest [Text]
igmstprTargetPools
  = lens _igmstprTargetPools
      (\ s a -> s{_igmstprTargetPools = a})
      . _Default
      . _Coerce

instance FromJSON
         InstanceGroupManagersSetTargetPoolsRequest where
        parseJSON
          = withObject
              "InstanceGroupManagersSetTargetPoolsRequest"
              (\ o ->
                 InstanceGroupManagersSetTargetPoolsRequest <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "targetPools" .!= mempty))

instance ToJSON
         InstanceGroupManagersSetTargetPoolsRequest where
        toJSON InstanceGroupManagersSetTargetPoolsRequest{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _igmstprFingerprint,
                  ("targetPools" .=) <$> _igmstprTargetPools])

--
-- /See:/ 'operationErrorErrorsItem' smart constructor.
data OperationErrorErrorsItem = OperationErrorErrorsItem
    { _oeeiLocation :: !(Maybe Text)
    , _oeeiCode     :: !(Maybe Text)
    , _oeeiMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationErrorErrorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeeiLocation'
--
-- * 'oeeiCode'
--
-- * 'oeeiMessage'
operationErrorErrorsItem
    :: OperationErrorErrorsItem
operationErrorErrorsItem =
    OperationErrorErrorsItem
    { _oeeiLocation = Nothing
    , _oeeiCode = Nothing
    , _oeeiMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
oeeiLocation :: Lens' OperationErrorErrorsItem (Maybe Text)
oeeiLocation
  = lens _oeeiLocation (\ s a -> s{_oeeiLocation = a})

-- | [Output Only] The error type identifier for this error.
oeeiCode :: Lens' OperationErrorErrorsItem (Maybe Text)
oeeiCode = lens _oeeiCode (\ s a -> s{_oeeiCode = a})

-- | [Output Only] An optional, human-readable error message.
oeeiMessage :: Lens' OperationErrorErrorsItem (Maybe Text)
oeeiMessage
  = lens _oeeiMessage (\ s a -> s{_oeeiMessage = a})

instance FromJSON OperationErrorErrorsItem where
        parseJSON
          = withObject "OperationErrorErrorsItem"
              (\ o ->
                 OperationErrorErrorsItem <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationErrorErrorsItem where
        toJSON OperationErrorErrorsItem{..}
          = object
              (catMaybes
                 [("location" .=) <$> _oeeiLocation,
                  ("code" .=) <$> _oeeiCode,
                  ("message" .=) <$> _oeeiMessage])

-- | A license resource.
--
-- /See:/ 'license' smart constructor.
data License = License
    { _lChargesUseFee :: !(Maybe Bool)
    , _lKind          :: !Text
    , _lSelfLink      :: !(Maybe Text)
    , _lName          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'License' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lChargesUseFee'
--
-- * 'lKind'
--
-- * 'lSelfLink'
--
-- * 'lName'
license
    :: License
license =
    License
    { _lChargesUseFee = Nothing
    , _lKind = "compute#license"
    , _lSelfLink = Nothing
    , _lName = Nothing
    }

-- | If true, the customer will be charged license fee for running software
-- that contains this license on an instance.
lChargesUseFee :: Lens' License (Maybe Bool)
lChargesUseFee
  = lens _lChargesUseFee
      (\ s a -> s{_lChargesUseFee = a})

-- | [Output Only] Type of resource. Always compute#license for licenses.
lKind :: Lens' License Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | [Output Only] Server-defined URL for the resource.
lSelfLink :: Lens' License (Maybe Text)
lSelfLink
  = lens _lSelfLink (\ s a -> s{_lSelfLink = a})

-- | [Output Only] Name of the resource. The name is 1-63 characters long and
-- complies with RFC1035.
lName :: Lens' License (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

instance FromJSON License where
        parseJSON
          = withObject "License"
              (\ o ->
                 License <$>
                   (o .:? "chargesUseFee") <*>
                     (o .:? "kind" .!= "compute#license")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name"))

instance ToJSON License where
        toJSON License{..}
          = object
              (catMaybes
                 [("chargesUseFee" .=) <$> _lChargesUseFee,
                  Just ("kind" .= _lKind),
                  ("selfLink" .=) <$> _lSelfLink,
                  ("name" .=) <$> _lName])

-- | A path-matching rule for a URL. If matched, will use the specified
-- BackendService to handle the traffic arriving at this URL.
--
-- /See:/ 'pathRule' smart constructor.
data PathRule = PathRule
    { _prService :: !(Maybe Text)
    , _prPaths   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prService'
--
-- * 'prPaths'
pathRule
    :: PathRule
pathRule =
    PathRule
    { _prService = Nothing
    , _prPaths = Nothing
    }

-- | The URL of the BackendService resource if this rule is matched.
prService :: Lens' PathRule (Maybe Text)
prService
  = lens _prService (\ s a -> s{_prService = a})

-- | The list of path patterns to match. Each must start with \/ and the only
-- place a * is allowed is at the end following a \/. The string fed to the
-- path matcher does not include any text after the first ? or #, and those
-- chars are not allowed here.
prPaths :: Lens' PathRule [Text]
prPaths
  = lens _prPaths (\ s a -> s{_prPaths = a}) . _Default
      . _Coerce

instance FromJSON PathRule where
        parseJSON
          = withObject "PathRule"
              (\ o ->
                 PathRule <$>
                   (o .:? "service") <*> (o .:? "paths" .!= mempty))

instance ToJSON PathRule where
        toJSON PathRule{..}
          = object
              (catMaybes
                 [("service" .=) <$> _prService,
                  ("paths" .=) <$> _prPaths])

-- | Contains a list of instance resources.
--
-- /See:/ 'instanceList' smart constructor.
data InstanceList = InstanceList
    { _insNextPageToken :: !(Maybe Text)
    , _insKind          :: !Text
    , _insItems         :: !(Maybe [Instance])
    , _insSelfLink      :: !(Maybe Text)
    , _insId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insNextPageToken'
--
-- * 'insKind'
--
-- * 'insItems'
--
-- * 'insSelfLink'
--
-- * 'insId'
instanceList
    :: InstanceList
instanceList =
    InstanceList
    { _insNextPageToken = Nothing
    , _insKind = "compute#instanceList"
    , _insItems = Nothing
    , _insSelfLink = Nothing
    , _insId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
insNextPageToken :: Lens' InstanceList (Maybe Text)
insNextPageToken
  = lens _insNextPageToken
      (\ s a -> s{_insNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#instanceList for lists of
-- Instance resources.
insKind :: Lens' InstanceList Text
insKind = lens _insKind (\ s a -> s{_insKind = a})

-- | [Output Only] A list of Instance resources.
insItems :: Lens' InstanceList [Instance]
insItems
  = lens _insItems (\ s a -> s{_insItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server defined URL for this resource.
insSelfLink :: Lens' InstanceList (Maybe Text)
insSelfLink
  = lens _insSelfLink (\ s a -> s{_insSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
insId :: Lens' InstanceList (Maybe Text)
insId = lens _insId (\ s a -> s{_insId = a})

instance FromJSON InstanceList where
        parseJSON
          = withObject "InstanceList"
              (\ o ->
                 InstanceList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceList where
        toJSON InstanceList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _insNextPageToken,
                  Just ("kind" .= _insKind),
                  ("items" .=) <$> _insItems,
                  ("selfLink" .=) <$> _insSelfLink,
                  ("id" .=) <$> _insId])

--
-- /See:/ 'managedInstanceLastAttempt' smart constructor.
newtype ManagedInstanceLastAttempt = ManagedInstanceLastAttempt
    { _milaErrors :: Maybe ManagedInstanceLastAttemptErrors
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttempt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaErrors'
managedInstanceLastAttempt
    :: ManagedInstanceLastAttempt
managedInstanceLastAttempt =
    ManagedInstanceLastAttempt
    { _milaErrors = Nothing
    }

-- | Encountered errors during the last attempt to create or delete the
-- instance.
milaErrors :: Lens' ManagedInstanceLastAttempt (Maybe ManagedInstanceLastAttemptErrors)
milaErrors
  = lens _milaErrors (\ s a -> s{_milaErrors = a})

instance FromJSON ManagedInstanceLastAttempt where
        parseJSON
          = withObject "ManagedInstanceLastAttempt"
              (\ o ->
                 ManagedInstanceLastAttempt <$> (o .:? "errors"))

instance ToJSON ManagedInstanceLastAttempt where
        toJSON ManagedInstanceLastAttempt{..}
          = object (catMaybes [("errors" .=) <$> _milaErrors])

-- | Contains a list of BackendService resources.
--
-- /See:/ 'backendServiceList' smart constructor.
data BackendServiceList = BackendServiceList
    { _bslNextPageToken :: !(Maybe Text)
    , _bslKind          :: !Text
    , _bslItems         :: !(Maybe [BackendService])
    , _bslSelfLink      :: !(Maybe Text)
    , _bslId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bslNextPageToken'
--
-- * 'bslKind'
--
-- * 'bslItems'
--
-- * 'bslSelfLink'
--
-- * 'bslId'
backendServiceList
    :: BackendServiceList
backendServiceList =
    BackendServiceList
    { _bslNextPageToken = Nothing
    , _bslKind = "compute#backendServiceList"
    , _bslItems = Nothing
    , _bslSelfLink = Nothing
    , _bslId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
bslNextPageToken :: Lens' BackendServiceList (Maybe Text)
bslNextPageToken
  = lens _bslNextPageToken
      (\ s a -> s{_bslNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#backendServiceList for
-- lists of backend services.
bslKind :: Lens' BackendServiceList Text
bslKind = lens _bslKind (\ s a -> s{_bslKind = a})

-- | A list of BackendService resources.
bslItems :: Lens' BackendServiceList [BackendService]
bslItems
  = lens _bslItems (\ s a -> s{_bslItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
bslSelfLink :: Lens' BackendServiceList (Maybe Text)
bslSelfLink
  = lens _bslSelfLink (\ s a -> s{_bslSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
bslId :: Lens' BackendServiceList (Maybe Text)
bslId = lens _bslId (\ s a -> s{_bslId = a})

instance FromJSON BackendServiceList where
        parseJSON
          = withObject "BackendServiceList"
              (\ o ->
                 BackendServiceList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#backendServiceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON BackendServiceList where
        toJSON BackendServiceList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _bslNextPageToken,
                  Just ("kind" .= _bslKind),
                  ("items" .=) <$> _bslItems,
                  ("selfLink" .=) <$> _bslSelfLink,
                  ("id" .=) <$> _bslId])

-- | [Output Only] An informational warning that replaces the list of
-- instance groups when the list is empty.
--
-- /See:/ 'instanceGroupsScopedListWarning' smart constructor.
data InstanceGroupsScopedListWarning = InstanceGroupsScopedListWarning
    { _igslwData    :: !(Maybe [InstanceGroupsScopedListWarningDataItem])
    , _igslwCode    :: !(Maybe InstanceGroupsScopedListWarningCode)
    , _igslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslwData'
--
-- * 'igslwCode'
--
-- * 'igslwMessage'
instanceGroupsScopedListWarning
    :: InstanceGroupsScopedListWarning
instanceGroupsScopedListWarning =
    InstanceGroupsScopedListWarning
    { _igslwData = Nothing
    , _igslwCode = Nothing
    , _igslwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
igslwData :: Lens' InstanceGroupsScopedListWarning [InstanceGroupsScopedListWarningDataItem]
igslwData
  = lens _igslwData (\ s a -> s{_igslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
igslwCode :: Lens' InstanceGroupsScopedListWarning (Maybe InstanceGroupsScopedListWarningCode)
igslwCode
  = lens _igslwCode (\ s a -> s{_igslwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
igslwMessage :: Lens' InstanceGroupsScopedListWarning (Maybe Text)
igslwMessage
  = lens _igslwMessage (\ s a -> s{_igslwMessage = a})

instance FromJSON InstanceGroupsScopedListWarning
         where
        parseJSON
          = withObject "InstanceGroupsScopedListWarning"
              (\ o ->
                 InstanceGroupsScopedListWarning <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON InstanceGroupsScopedListWarning where
        toJSON InstanceGroupsScopedListWarning{..}
          = object
              (catMaybes
                 [("data" .=) <$> _igslwData,
                  ("code" .=) <$> _igslwCode,
                  ("message" .=) <$> _igslwMessage])

-- | CPU utilization policy.
--
-- /See:/ 'autoscalingPolicyCPUUtilization' smart constructor.
newtype AutoscalingPolicyCPUUtilization = AutoscalingPolicyCPUUtilization
    { _apcuUtilizationTarget :: Maybe Double
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCPUUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcuUtilizationTarget'
autoscalingPolicyCPUUtilization
    :: AutoscalingPolicyCPUUtilization
autoscalingPolicyCPUUtilization =
    AutoscalingPolicyCPUUtilization
    { _apcuUtilizationTarget = Nothing
    }

-- | The target utilization that the Autoscaler should maintain. It is
-- represented as a fraction of used cores. For example: 6 cores used in
-- 8-core VM are represented here as 0.75. Must be a float value between
-- (0, 1]. If not defined, the default is 0.8.
apcuUtilizationTarget :: Lens' AutoscalingPolicyCPUUtilization (Maybe Double)
apcuUtilizationTarget
  = lens _apcuUtilizationTarget
      (\ s a -> s{_apcuUtilizationTarget = a})

instance FromJSON AutoscalingPolicyCPUUtilization
         where
        parseJSON
          = withObject "AutoscalingPolicyCPUUtilization"
              (\ o ->
                 AutoscalingPolicyCPUUtilization <$>
                   (o .:? "utilizationTarget"))

instance ToJSON AutoscalingPolicyCPUUtilization where
        toJSON AutoscalingPolicyCPUUtilization{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _apcuUtilizationTarget])

--
-- /See:/ 'instanceGroupsScopedListWarningDataItem' smart constructor.
data InstanceGroupsScopedListWarningDataItem = InstanceGroupsScopedListWarningDataItem
    { _igslwdiValue :: !(Maybe Text)
    , _igslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslwdiValue'
--
-- * 'igslwdiKey'
instanceGroupsScopedListWarningDataItem
    :: InstanceGroupsScopedListWarningDataItem
instanceGroupsScopedListWarningDataItem =
    InstanceGroupsScopedListWarningDataItem
    { _igslwdiValue = Nothing
    , _igslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igslwdiValue :: Lens' InstanceGroupsScopedListWarningDataItem (Maybe Text)
igslwdiValue
  = lens _igslwdiValue (\ s a -> s{_igslwdiValue = a})

-- | [Output Only] A key for the warning data.
igslwdiKey :: Lens' InstanceGroupsScopedListWarningDataItem (Maybe Text)
igslwdiKey
  = lens _igslwdiKey (\ s a -> s{_igslwdiKey = a})

instance FromJSON
         InstanceGroupsScopedListWarningDataItem where
        parseJSON
          = withObject
              "InstanceGroupsScopedListWarningDataItem"
              (\ o ->
                 InstanceGroupsScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         InstanceGroupsScopedListWarningDataItem where
        toJSON InstanceGroupsScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _igslwdiValue,
                  ("key" .=) <$> _igslwdiKey])

--
-- /See:/ 'resourceGroupReference' smart constructor.
newtype ResourceGroupReference = ResourceGroupReference
    { _rgrGroup :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceGroupReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrGroup'
resourceGroupReference
    :: ResourceGroupReference
resourceGroupReference =
    ResourceGroupReference
    { _rgrGroup = Nothing
    }

-- | A URI referencing one of the resource views listed in the backend
-- service.
rgrGroup :: Lens' ResourceGroupReference (Maybe Text)
rgrGroup = lens _rgrGroup (\ s a -> s{_rgrGroup = a})

instance FromJSON ResourceGroupReference where
        parseJSON
          = withObject "ResourceGroupReference"
              (\ o -> ResourceGroupReference <$> (o .:? "group"))

instance ToJSON ResourceGroupReference where
        toJSON ResourceGroupReference{..}
          = object (catMaybes [("group" .=) <$> _rgrGroup])

-- | A Firewall resource.
--
-- /See:/ 'firewall' smart constructor.
data Firewall = Firewall
    { _fSourceTags        :: !(Maybe [Text])
    , _fKind              :: !Text
    , _fTargetTags        :: !(Maybe [Text])
    , _fNetwork           :: !(Maybe Text)
    , _fSourceRanges      :: !(Maybe [Text])
    , _fSelfLink          :: !(Maybe Text)
    , _fName              :: !(Maybe Text)
    , _fCreationTimestamp :: !(Maybe Text)
    , _fId                :: !(Maybe Word64)
    , _fAllowed           :: !(Maybe [FirewallAllowedItem])
    , _fDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Firewall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fSourceTags'
--
-- * 'fKind'
--
-- * 'fTargetTags'
--
-- * 'fNetwork'
--
-- * 'fSourceRanges'
--
-- * 'fSelfLink'
--
-- * 'fName'
--
-- * 'fCreationTimestamp'
--
-- * 'fId'
--
-- * 'fAllowed'
--
-- * 'fDescription'
firewall
    :: Firewall
firewall =
    Firewall
    { _fSourceTags = Nothing
    , _fKind = "compute#firewall"
    , _fTargetTags = Nothing
    , _fNetwork = Nothing
    , _fSourceRanges = Nothing
    , _fSelfLink = Nothing
    , _fName = Nothing
    , _fCreationTimestamp = Nothing
    , _fId = Nothing
    , _fAllowed = Nothing
    , _fDescription = Nothing
    }

-- | A list of instance tags which this rule applies to. One or both of
-- sourceRanges and sourceTags may be set. If both properties are set, an
-- inbound connection is allowed if the range matches the sourceRanges OR
-- the tag of the source matches the sourceTags property. The connection
-- does not need to match both properties.
fSourceTags :: Lens' Firewall [Text]
fSourceTags
  = lens _fSourceTags (\ s a -> s{_fSourceTags = a}) .
      _Default
      . _Coerce

-- | [Output Ony] Type of the resource. Always compute#firewall for firewall
-- rules.
fKind :: Lens' Firewall Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | A list of instance tags indicating sets of instances located in the
-- network that may make network connections as specified in allowed[]. If
-- no targetTags are specified, the firewall rule applies to all instances
-- on the specified network.
fTargetTags :: Lens' Firewall [Text]
fTargetTags
  = lens _fTargetTags (\ s a -> s{_fTargetTags = a}) .
      _Default
      . _Coerce

-- | URL of the network resource for this firewall rule. This field is
-- required for creating an instance but optional when creating a firewall
-- rule. If not specified when creating a firewall rule, the default
-- network is used: global\/networks\/default If you choose to specify this
-- property, you can specify the network as a full or partial URL. For
-- example, the following are all valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/myproject\/global\/networks\/my-network
-- - projects\/myproject\/global\/networks\/my-network -
-- global\/networks\/default
fNetwork :: Lens' Firewall (Maybe Text)
fNetwork = lens _fNetwork (\ s a -> s{_fNetwork = a})

-- | The IP address blocks that this rule applies to, expressed in CIDR
-- format. One or both of sourceRanges and sourceTags may be set. If both
-- properties are set, an inbound connection is allowed if the range
-- matches the sourceRanges OR the tag of the source matches the sourceTags
-- property. The connection does not need to match both properties.
fSourceRanges :: Lens' Firewall [Text]
fSourceRanges
  = lens _fSourceRanges
      (\ s a -> s{_fSourceRanges = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
fSelfLink :: Lens' Firewall (Maybe Text)
fSelfLink
  = lens _fSelfLink (\ s a -> s{_fSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
fName :: Lens' Firewall (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
fCreationTimestamp :: Lens' Firewall (Maybe Text)
fCreationTimestamp
  = lens _fCreationTimestamp
      (\ s a -> s{_fCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
fId :: Lens' Firewall (Maybe Word64)
fId = lens _fId (\ s a -> s{_fId = a})

-- | The list of rules specified by this firewall. Each rule specifies a
-- protocol and port-range tuple that describes a permitted connection.
fAllowed :: Lens' Firewall [FirewallAllowedItem]
fAllowed
  = lens _fAllowed (\ s a -> s{_fAllowed = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
fDescription :: Lens' Firewall (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

instance FromJSON Firewall where
        parseJSON
          = withObject "Firewall"
              (\ o ->
                 Firewall <$>
                   (o .:? "sourceTags" .!= mempty) <*>
                     (o .:? "kind" .!= "compute#firewall")
                     <*> (o .:? "targetTags" .!= mempty)
                     <*> (o .:? "network")
                     <*> (o .:? "sourceRanges" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "allowed" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Firewall where
        toJSON Firewall{..}
          = object
              (catMaybes
                 [("sourceTags" .=) <$> _fSourceTags,
                  Just ("kind" .= _fKind),
                  ("targetTags" .=) <$> _fTargetTags,
                  ("network" .=) <$> _fNetwork,
                  ("sourceRanges" .=) <$> _fSourceRanges,
                  ("selfLink" .=) <$> _fSelfLink,
                  ("name" .=) <$> _fName,
                  ("creationTimestamp" .=) <$> _fCreationTimestamp,
                  ("id" .=) <$> _fId, ("allowed" .=) <$> _fAllowed,
                  ("description" .=) <$> _fDescription])

-- | UrlMaps A host-matching rule for a URL. If matched, will use the named
-- PathMatcher to select the BackendService.
--
-- /See:/ 'hostRule' smart constructor.
data HostRule = HostRule
    { _hrHosts       :: !(Maybe [Text])
    , _hrDescription :: !(Maybe Text)
    , _hrPathMatcher :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HostRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrHosts'
--
-- * 'hrDescription'
--
-- * 'hrPathMatcher'
hostRule
    :: HostRule
hostRule =
    HostRule
    { _hrHosts = Nothing
    , _hrDescription = Nothing
    , _hrPathMatcher = Nothing
    }

-- | The list of host patterns to match. They must be valid hostnames except
-- that they may start with *. or *-. The * acts like a glob and will match
-- any string of atoms (separated by .s and -s) to the left.
hrHosts :: Lens' HostRule [Text]
hrHosts
  = lens _hrHosts (\ s a -> s{_hrHosts = a}) . _Default
      . _Coerce

-- | An optional textual description.
hrDescription :: Lens' HostRule (Maybe Text)
hrDescription
  = lens _hrDescription
      (\ s a -> s{_hrDescription = a})

-- | The name of the PathMatcher to match the path portion of the URL, if the
-- this hostRule matches the URL\'s host portion.
hrPathMatcher :: Lens' HostRule (Maybe Text)
hrPathMatcher
  = lens _hrPathMatcher
      (\ s a -> s{_hrPathMatcher = a})

instance FromJSON HostRule where
        parseJSON
          = withObject "HostRule"
              (\ o ->
                 HostRule <$>
                   (o .:? "hosts" .!= mempty) <*> (o .:? "description")
                     <*> (o .:? "pathMatcher"))

instance ToJSON HostRule where
        toJSON HostRule{..}
          = object
              (catMaybes
                 [("hosts" .=) <$> _hrHosts,
                  ("description" .=) <$> _hrDescription,
                  ("pathMatcher" .=) <$> _hrPathMatcher])

-- | A quotas entry.
--
-- /See:/ 'quota' smart constructor.
data Quota = Quota
    { _qMetric :: !(Maybe QuotaMetric)
    , _qLimit  :: !(Maybe Double)
    , _qUsage  :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qMetric'
--
-- * 'qLimit'
--
-- * 'qUsage'
quota
    :: Quota
quota =
    Quota
    { _qMetric = Nothing
    , _qLimit = Nothing
    , _qUsage = Nothing
    }

-- | [Output Only] Name of the quota metric.
qMetric :: Lens' Quota (Maybe QuotaMetric)
qMetric = lens _qMetric (\ s a -> s{_qMetric = a})

-- | [Output Only] Quota limit for this metric.
qLimit :: Lens' Quota (Maybe Double)
qLimit = lens _qLimit (\ s a -> s{_qLimit = a})

-- | [Output Only] Current usage of this metric.
qUsage :: Lens' Quota (Maybe Double)
qUsage = lens _qUsage (\ s a -> s{_qUsage = a})

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota <$>
                   (o .:? "metric") <*> (o .:? "limit") <*>
                     (o .:? "usage"))

instance ToJSON Quota where
        toJSON Quota{..}
          = object
              (catMaybes
                 [("metric" .=) <$> _qMetric,
                  ("limit" .=) <$> _qLimit, ("usage" .=) <$> _qUsage])

--
-- /See:/ 'instanceGroup' smart constructor.
data InstanceGroup = InstanceGroup
    { _ig1Size              :: !(Maybe Int32)
    , _ig1Kind              :: !Text
    , _ig1Fingerprint       :: !(Maybe Word8)
    , _ig1Network           :: !(Maybe Text)
    , _ig1Zone              :: !(Maybe Text)
    , _ig1SelfLink          :: !(Maybe Text)
    , _ig1Name              :: !(Maybe Text)
    , _ig1CreationTimestamp :: !(Maybe Text)
    , _ig1Id                :: !(Maybe Word64)
    , _ig1Description       :: !(Maybe Text)
    , _ig1NamedPorts        :: !(Maybe [NamedPort])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ig1Size'
--
-- * 'ig1Kind'
--
-- * 'ig1Fingerprint'
--
-- * 'ig1Network'
--
-- * 'ig1Zone'
--
-- * 'ig1SelfLink'
--
-- * 'ig1Name'
--
-- * 'ig1CreationTimestamp'
--
-- * 'ig1Id'
--
-- * 'ig1Description'
--
-- * 'ig1NamedPorts'
instanceGroup
    :: InstanceGroup
instanceGroup =
    InstanceGroup
    { _ig1Size = Nothing
    , _ig1Kind = "compute#instanceGroup"
    , _ig1Fingerprint = Nothing
    , _ig1Network = Nothing
    , _ig1Zone = Nothing
    , _ig1SelfLink = Nothing
    , _ig1Name = Nothing
    , _ig1CreationTimestamp = Nothing
    , _ig1Id = Nothing
    , _ig1Description = Nothing
    , _ig1NamedPorts = Nothing
    }

-- | [Output Only] The total number of instances in the instance group.
ig1Size :: Lens' InstanceGroup (Maybe Int32)
ig1Size = lens _ig1Size (\ s a -> s{_ig1Size = a})

-- | [Output Only] The resource type, which is always compute#instanceGroup
-- for instance groups.
ig1Kind :: Lens' InstanceGroup Text
ig1Kind = lens _ig1Kind (\ s a -> s{_ig1Kind = a})

-- | [Output Only] The fingerprint of the named ports information. The system
-- uses this fingerprint to detect conflicts when multiple users change the
-- named ports information concurrently.
ig1Fingerprint :: Lens' InstanceGroup (Maybe Word8)
ig1Fingerprint
  = lens _ig1Fingerprint
      (\ s a -> s{_ig1Fingerprint = a})

-- | The URL of the network to which all instances in the instance group
-- belong.
ig1Network :: Lens' InstanceGroup (Maybe Text)
ig1Network
  = lens _ig1Network (\ s a -> s{_ig1Network = a})

-- | The URL of the zone where the instance group is located.
ig1Zone :: Lens' InstanceGroup (Maybe Text)
ig1Zone = lens _ig1Zone (\ s a -> s{_ig1Zone = a})

-- | [Output Only] The URL for this instance group. The server defines this
-- URL.
ig1SelfLink :: Lens' InstanceGroup (Maybe Text)
ig1SelfLink
  = lens _ig1SelfLink (\ s a -> s{_ig1SelfLink = a})

-- | The name of the instance group. The name must be 1-63 characters long,
-- and comply with RFC1035.
ig1Name :: Lens' InstanceGroup (Maybe Text)
ig1Name = lens _ig1Name (\ s a -> s{_ig1Name = a})

-- | [Output Only] The creation timestamp for this instance group in RFC3339
-- text format.
ig1CreationTimestamp :: Lens' InstanceGroup (Maybe Text)
ig1CreationTimestamp
  = lens _ig1CreationTimestamp
      (\ s a -> s{_ig1CreationTimestamp = a})

-- | [Output Only] A unique identifier for this instance group. The server
-- defines this identifier.
ig1Id :: Lens' InstanceGroup (Maybe Word64)
ig1Id = lens _ig1Id (\ s a -> s{_ig1Id = a})

-- | An optional text description for the instance group.
ig1Description :: Lens' InstanceGroup (Maybe Text)
ig1Description
  = lens _ig1Description
      (\ s a -> s{_ig1Description = a})

-- | Assigns a name to a port number. For example: {name: ?http?, port: 80}
-- This allows the system to reference ports by the assigned name instead
-- of a port number. Named ports can also contain multiple ports. For
-- example: [{name: ?http?, port: 80},{name: \"http\", port: 8080}] Named
-- ports apply to all instances in this instance group.
ig1NamedPorts :: Lens' InstanceGroup [NamedPort]
ig1NamedPorts
  = lens _ig1NamedPorts
      (\ s a -> s{_ig1NamedPorts = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroup where
        parseJSON
          = withObject "InstanceGroup"
              (\ o ->
                 InstanceGroup <$>
                   (o .:? "size") <*>
                     (o .:? "kind" .!= "compute#instanceGroup")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "network")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "namedPorts" .!= mempty))

instance ToJSON InstanceGroup where
        toJSON InstanceGroup{..}
          = object
              (catMaybes
                 [("size" .=) <$> _ig1Size, Just ("kind" .= _ig1Kind),
                  ("fingerprint" .=) <$> _ig1Fingerprint,
                  ("network" .=) <$> _ig1Network,
                  ("zone" .=) <$> _ig1Zone,
                  ("selfLink" .=) <$> _ig1SelfLink,
                  ("name" .=) <$> _ig1Name,
                  ("creationTimestamp" .=) <$> _ig1CreationTimestamp,
                  ("id" .=) <$> _ig1Id,
                  ("description" .=) <$> _ig1Description,
                  ("namedPorts" .=) <$> _ig1NamedPorts])

-- | Contains a list of Snapshot resources.
--
-- /See:/ 'snapshotList' smart constructor.
data SnapshotList = SnapshotList
    { _slNextPageToken :: !(Maybe Text)
    , _slKind          :: !Text
    , _slItems         :: !(Maybe [Snapshot])
    , _slSelfLink      :: !(Maybe Text)
    , _slId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slNextPageToken'
--
-- * 'slKind'
--
-- * 'slItems'
--
-- * 'slSelfLink'
--
-- * 'slId'
snapshotList
    :: SnapshotList
snapshotList =
    SnapshotList
    { _slNextPageToken = Nothing
    , _slKind = "compute#snapshotList"
    , _slItems = Nothing
    , _slSelfLink = Nothing
    , _slId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
slNextPageToken :: Lens' SnapshotList (Maybe Text)
slNextPageToken
  = lens _slNextPageToken
      (\ s a -> s{_slNextPageToken = a})

-- | Type of resource.
slKind :: Lens' SnapshotList Text
slKind = lens _slKind (\ s a -> s{_slKind = a})

-- | A list of Snapshot resources.
slItems :: Lens' SnapshotList [Snapshot]
slItems
  = lens _slItems (\ s a -> s{_slItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
slSelfLink :: Lens' SnapshotList (Maybe Text)
slSelfLink
  = lens _slSelfLink (\ s a -> s{_slSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
slId :: Lens' SnapshotList (Maybe Text)
slId = lens _slId (\ s a -> s{_slId = a})

instance FromJSON SnapshotList where
        parseJSON
          = withObject "SnapshotList"
              (\ o ->
                 SnapshotList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#snapshotList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON SnapshotList where
        toJSON SnapshotList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slNextPageToken,
                  Just ("kind" .= _slKind), ("items" .=) <$> _slItems,
                  ("selfLink" .=) <$> _slSelfLink,
                  ("id" .=) <$> _slId])

--
-- /See:/ 'testFailure' smart constructor.
data TestFailure = TestFailure
    { _tfPath            :: !(Maybe Text)
    , _tfExpectedService :: !(Maybe Text)
    , _tfHost            :: !(Maybe Text)
    , _tfActualService   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfPath'
--
-- * 'tfExpectedService'
--
-- * 'tfHost'
--
-- * 'tfActualService'
testFailure
    :: TestFailure
testFailure =
    TestFailure
    { _tfPath = Nothing
    , _tfExpectedService = Nothing
    , _tfHost = Nothing
    , _tfActualService = Nothing
    }

tfPath :: Lens' TestFailure (Maybe Text)
tfPath = lens _tfPath (\ s a -> s{_tfPath = a})

tfExpectedService :: Lens' TestFailure (Maybe Text)
tfExpectedService
  = lens _tfExpectedService
      (\ s a -> s{_tfExpectedService = a})

tfHost :: Lens' TestFailure (Maybe Text)
tfHost = lens _tfHost (\ s a -> s{_tfHost = a})

tfActualService :: Lens' TestFailure (Maybe Text)
tfActualService
  = lens _tfActualService
      (\ s a -> s{_tfActualService = a})

instance FromJSON TestFailure where
        parseJSON
          = withObject "TestFailure"
              (\ o ->
                 TestFailure <$>
                   (o .:? "path") <*> (o .:? "expectedService") <*>
                     (o .:? "host")
                     <*> (o .:? "actualService"))

instance ToJSON TestFailure where
        toJSON TestFailure{..}
          = object
              (catMaybes
                 [("path" .=) <$> _tfPath,
                  ("expectedService" .=) <$> _tfExpectedService,
                  ("host" .=) <$> _tfHost,
                  ("actualService" .=) <$> _tfActualService])

-- | An instance\'s serial console output.
--
-- /See:/ 'serialPortOutput' smart constructor.
data SerialPortOutput = SerialPortOutput
    { _spoContents :: !(Maybe Text)
    , _spoKind     :: !Text
    , _spoSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SerialPortOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spoContents'
--
-- * 'spoKind'
--
-- * 'spoSelfLink'
serialPortOutput
    :: SerialPortOutput
serialPortOutput =
    SerialPortOutput
    { _spoContents = Nothing
    , _spoKind = "compute#serialPortOutput"
    , _spoSelfLink = Nothing
    }

-- | [Output Only] The contents of the console output.
spoContents :: Lens' SerialPortOutput (Maybe Text)
spoContents
  = lens _spoContents (\ s a -> s{_spoContents = a})

-- | [Output Only] Type of the resource. Always compute#serialPortOutput for
-- serial port output.
spoKind :: Lens' SerialPortOutput Text
spoKind = lens _spoKind (\ s a -> s{_spoKind = a})

-- | [Output Only] Server defined URL for the resource.
spoSelfLink :: Lens' SerialPortOutput (Maybe Text)
spoSelfLink
  = lens _spoSelfLink (\ s a -> s{_spoSelfLink = a})

instance FromJSON SerialPortOutput where
        parseJSON
          = withObject "SerialPortOutput"
              (\ o ->
                 SerialPortOutput <$>
                   (o .:? "contents") <*>
                     (o .:? "kind" .!= "compute#serialPortOutput")
                     <*> (o .:? "selfLink"))

instance ToJSON SerialPortOutput where
        toJSON SerialPortOutput{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _spoContents,
                  Just ("kind" .= _spoKind),
                  ("selfLink" .=) <$> _spoSelfLink])

--
-- /See:/ 'targetVPNGatewayAggregatedList' smart constructor.
data TargetVPNGatewayAggregatedList = TargetVPNGatewayAggregatedList
    { _tvgalNextPageToken :: !(Maybe Text)
    , _tvgalKind          :: !Text
    , _tvgalItems         :: !(Maybe TargetVPNGatewayAggregatedListItems)
    , _tvgalSelfLink      :: !(Maybe Text)
    , _tvgalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewayAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgalNextPageToken'
--
-- * 'tvgalKind'
--
-- * 'tvgalItems'
--
-- * 'tvgalSelfLink'
--
-- * 'tvgalId'
targetVPNGatewayAggregatedList
    :: TargetVPNGatewayAggregatedList
targetVPNGatewayAggregatedList =
    TargetVPNGatewayAggregatedList
    { _tvgalNextPageToken = Nothing
    , _tvgalKind = "compute#targetVpnGatewayAggregatedList"
    , _tvgalItems = Nothing
    , _tvgalSelfLink = Nothing
    , _tvgalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
tvgalNextPageToken :: Lens' TargetVPNGatewayAggregatedList (Maybe Text)
tvgalNextPageToken
  = lens _tvgalNextPageToken
      (\ s a -> s{_tvgalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetVpnGateway for
-- target VPN gateways.
tvgalKind :: Lens' TargetVPNGatewayAggregatedList Text
tvgalKind
  = lens _tvgalKind (\ s a -> s{_tvgalKind = a})

-- | A map of scoped target vpn gateway lists.
tvgalItems :: Lens' TargetVPNGatewayAggregatedList (Maybe TargetVPNGatewayAggregatedListItems)
tvgalItems
  = lens _tvgalItems (\ s a -> s{_tvgalItems = a})

-- | [Output Only] Server-defined URL for the resource.
tvgalSelfLink :: Lens' TargetVPNGatewayAggregatedList (Maybe Text)
tvgalSelfLink
  = lens _tvgalSelfLink
      (\ s a -> s{_tvgalSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
tvgalId :: Lens' TargetVPNGatewayAggregatedList (Maybe Text)
tvgalId = lens _tvgalId (\ s a -> s{_tvgalId = a})

instance FromJSON TargetVPNGatewayAggregatedList
         where
        parseJSON
          = withObject "TargetVPNGatewayAggregatedList"
              (\ o ->
                 TargetVPNGatewayAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#targetVpnGatewayAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetVPNGatewayAggregatedList where
        toJSON TargetVPNGatewayAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tvgalNextPageToken,
                  Just ("kind" .= _tvgalKind),
                  ("items" .=) <$> _tvgalItems,
                  ("selfLink" .=) <$> _tvgalSelfLink,
                  ("id" .=) <$> _tvgalId])

--
-- /See:/ 'metadataItemsItem' smart constructor.
data MetadataItemsItem = MetadataItemsItem
    { _miiValue :: !(Maybe Text)
    , _miiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miiValue'
--
-- * 'miiKey'
metadataItemsItem
    :: MetadataItemsItem
metadataItemsItem =
    MetadataItemsItem
    { _miiValue = Nothing
    , _miiKey = Nothing
    }

-- | Value for the metadata entry. These are free-form strings, and only have
-- meaning as interpreted by the image running in the instance. The only
-- restriction placed on values is that their size must be less than or
-- equal to 32768 bytes.
miiValue :: Lens' MetadataItemsItem (Maybe Text)
miiValue = lens _miiValue (\ s a -> s{_miiValue = a})

-- | Key for the metadata entry. Keys must conform to the following regexp:
-- [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected
-- as part of a URL in the metadata server. Additionally, to avoid
-- ambiguity, keys must not conflict with any other metadata keys for the
-- project.
miiKey :: Lens' MetadataItemsItem (Maybe Text)
miiKey = lens _miiKey (\ s a -> s{_miiKey = a})

instance FromJSON MetadataItemsItem where
        parseJSON
          = withObject "MetadataItemsItem"
              (\ o ->
                 MetadataItemsItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON MetadataItemsItem where
        toJSON MetadataItemsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _miiValue, ("key" .=) <$> _miiKey])

--
-- /See:/ 'targetVPNGatewaysScopedList' smart constructor.
data TargetVPNGatewaysScopedList = TargetVPNGatewaysScopedList
    { _tvgslTargetVPNGateways :: !(Maybe [TargetVPNGateway])
    , _tvgslWarning           :: !(Maybe TargetVPNGatewaysScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgslTargetVPNGateways'
--
-- * 'tvgslWarning'
targetVPNGatewaysScopedList
    :: TargetVPNGatewaysScopedList
targetVPNGatewaysScopedList =
    TargetVPNGatewaysScopedList
    { _tvgslTargetVPNGateways = Nothing
    , _tvgslWarning = Nothing
    }

-- | [Output Only] List of target vpn gateways contained in this scope.
tvgslTargetVPNGateways :: Lens' TargetVPNGatewaysScopedList [TargetVPNGateway]
tvgslTargetVPNGateways
  = lens _tvgslTargetVPNGateways
      (\ s a -> s{_tvgslTargetVPNGateways = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
tvgslWarning :: Lens' TargetVPNGatewaysScopedList (Maybe TargetVPNGatewaysScopedListWarning)
tvgslWarning
  = lens _tvgslWarning (\ s a -> s{_tvgslWarning = a})

instance FromJSON TargetVPNGatewaysScopedList where
        parseJSON
          = withObject "TargetVPNGatewaysScopedList"
              (\ o ->
                 TargetVPNGatewaysScopedList <$>
                   (o .:? "targetVpnGateways" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON TargetVPNGatewaysScopedList where
        toJSON TargetVPNGatewaysScopedList{..}
          = object
              (catMaybes
                 [("targetVpnGateways" .=) <$>
                    _tvgslTargetVPNGateways,
                  ("warning" .=) <$> _tvgslWarning])

-- | An access configuration attached to an instance\'s network interface.
--
-- /See:/ 'accessConfig' smart constructor.
data AccessConfig = AccessConfig
    { _acKind  :: !Text
    , _acName  :: !(Maybe Text)
    , _acNATIP :: !(Maybe Text)
    , _acType  :: !AccessConfigType
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acKind'
--
-- * 'acName'
--
-- * 'acNATIP'
--
-- * 'acType'
accessConfig
    :: AccessConfig
accessConfig =
    AccessConfig
    { _acKind = "compute#accessConfig"
    , _acName = Nothing
    , _acNATIP = Nothing
    , _acType = OneToOneNAT
    }

-- | [Output Only] Type of the resource. Always compute#accessConfig for
-- access configs.
acKind :: Lens' AccessConfig Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | Name of this access configuration.
acName :: Lens' AccessConfig (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | An external IP address associated with this instance. Specify an unused
-- static external IP address available to the project or leave this field
-- undefined to use an IP from a shared ephemeral IP address pool. If you
-- specify a static external IP address, it must live in the same region as
-- the zone of the instance.
acNATIP :: Lens' AccessConfig (Maybe Text)
acNATIP = lens _acNATIP (\ s a -> s{_acNATIP = a})

-- | The type of configuration. The default and only option is
-- ONE_TO_ONE_NAT.
acType :: Lens' AccessConfig AccessConfigType
acType = lens _acType (\ s a -> s{_acType = a})

instance FromJSON AccessConfig where
        parseJSON
          = withObject "AccessConfig"
              (\ o ->
                 AccessConfig <$>
                   (o .:? "kind" .!= "compute#accessConfig") <*>
                     (o .:? "name")
                     <*> (o .:? "natIP")
                     <*> (o .:? "type" .!= OneToOneNAT))

instance ToJSON AccessConfig where
        toJSON AccessConfig{..}
          = object
              (catMaybes
                 [Just ("kind" .= _acKind), ("name" .=) <$> _acName,
                  ("natIP" .=) <$> _acNATIP, Just ("type" .= _acType)])

--
-- /See:/ 'managedInstanceLastAttemptErrorsErrorsItem' smart constructor.
data ManagedInstanceLastAttemptErrorsErrorsItem = ManagedInstanceLastAttemptErrorsErrorsItem
    { _milaeeiLocation :: !(Maybe Text)
    , _milaeeiCode     :: !(Maybe Text)
    , _milaeeiMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedInstanceLastAttemptErrorsErrorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'milaeeiLocation'
--
-- * 'milaeeiCode'
--
-- * 'milaeeiMessage'
managedInstanceLastAttemptErrorsErrorsItem
    :: ManagedInstanceLastAttemptErrorsErrorsItem
managedInstanceLastAttemptErrorsErrorsItem =
    ManagedInstanceLastAttemptErrorsErrorsItem
    { _milaeeiLocation = Nothing
    , _milaeeiCode = Nothing
    , _milaeeiMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
milaeeiLocation :: Lens' ManagedInstanceLastAttemptErrorsErrorsItem (Maybe Text)
milaeeiLocation
  = lens _milaeeiLocation
      (\ s a -> s{_milaeeiLocation = a})

-- | [Output Only] The error type identifier for this error.
milaeeiCode :: Lens' ManagedInstanceLastAttemptErrorsErrorsItem (Maybe Text)
milaeeiCode
  = lens _milaeeiCode (\ s a -> s{_milaeeiCode = a})

-- | [Output Only] An optional, human-readable error message.
milaeeiMessage :: Lens' ManagedInstanceLastAttemptErrorsErrorsItem (Maybe Text)
milaeeiMessage
  = lens _milaeeiMessage
      (\ s a -> s{_milaeeiMessage = a})

instance FromJSON
         ManagedInstanceLastAttemptErrorsErrorsItem where
        parseJSON
          = withObject
              "ManagedInstanceLastAttemptErrorsErrorsItem"
              (\ o ->
                 ManagedInstanceLastAttemptErrorsErrorsItem <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON
         ManagedInstanceLastAttemptErrorsErrorsItem where
        toJSON ManagedInstanceLastAttemptErrorsErrorsItem{..}
          = object
              (catMaybes
                 [("location" .=) <$> _milaeeiLocation,
                  ("code" .=) <$> _milaeeiCode,
                  ("message" .=) <$> _milaeeiMessage])

--
-- /See:/ 'instancesScopedListWarningDataItem' smart constructor.
data InstancesScopedListWarningDataItem = InstancesScopedListWarningDataItem
    { _islwdiValue :: !(Maybe Text)
    , _islwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islwdiValue'
--
-- * 'islwdiKey'
instancesScopedListWarningDataItem
    :: InstancesScopedListWarningDataItem
instancesScopedListWarningDataItem =
    InstancesScopedListWarningDataItem
    { _islwdiValue = Nothing
    , _islwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
islwdiValue :: Lens' InstancesScopedListWarningDataItem (Maybe Text)
islwdiValue
  = lens _islwdiValue (\ s a -> s{_islwdiValue = a})

-- | [Output Only] A key for the warning data.
islwdiKey :: Lens' InstancesScopedListWarningDataItem (Maybe Text)
islwdiKey
  = lens _islwdiKey (\ s a -> s{_islwdiKey = a})

instance FromJSON InstancesScopedListWarningDataItem
         where
        parseJSON
          = withObject "InstancesScopedListWarningDataItem"
              (\ o ->
                 InstancesScopedListWarningDataItem <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON InstancesScopedListWarningDataItem
         where
        toJSON InstancesScopedListWarningDataItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _islwdiValue,
                  ("key" .=) <$> _islwdiKey])

-- | A BackendService resource. This resource defines a group of backend
-- virtual machines together with their serving capacity.
--
-- /See:/ 'backendService' smart constructor.
data BackendService = BackendService
    { _bsBackends          :: !(Maybe [Backend])
    , _bsKind              :: !Text
    , _bsFingerprint       :: !(Maybe Word8)
    , _bsProtocol          :: !(Maybe BackendServiceProtocol)
    , _bsSelfLink          :: !(Maybe Text)
    , _bsName              :: !(Maybe Text)
    , _bsCreationTimestamp :: !(Maybe Text)
    , _bsId                :: !(Maybe Word64)
    , _bsTimeoutSec        :: !(Maybe Int32)
    , _bsDescription       :: !(Maybe Text)
    , _bsPortName          :: !(Maybe Text)
    , _bsHealthChecks      :: !(Maybe [Text])
    , _bsPort              :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsBackends'
--
-- * 'bsKind'
--
-- * 'bsFingerprint'
--
-- * 'bsProtocol'
--
-- * 'bsSelfLink'
--
-- * 'bsName'
--
-- * 'bsCreationTimestamp'
--
-- * 'bsId'
--
-- * 'bsTimeoutSec'
--
-- * 'bsDescription'
--
-- * 'bsPortName'
--
-- * 'bsHealthChecks'
--
-- * 'bsPort'
backendService
    :: BackendService
backendService =
    BackendService
    { _bsBackends = Nothing
    , _bsKind = "compute#backendService"
    , _bsFingerprint = Nothing
    , _bsProtocol = Nothing
    , _bsSelfLink = Nothing
    , _bsName = Nothing
    , _bsCreationTimestamp = Nothing
    , _bsId = Nothing
    , _bsTimeoutSec = Nothing
    , _bsDescription = Nothing
    , _bsPortName = Nothing
    , _bsHealthChecks = Nothing
    , _bsPort = Nothing
    }

-- | The list of backends that serve this BackendService.
bsBackends :: Lens' BackendService [Backend]
bsBackends
  = lens _bsBackends (\ s a -> s{_bsBackends = a}) .
      _Default
      . _Coerce

-- | [Output Only] Type of resource. Always compute#backendService for
-- backend services.
bsKind :: Lens' BackendService Text
bsKind = lens _bsKind (\ s a -> s{_bsKind = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a BackendService. An up-to-date fingerprint must
-- be provided in order to update the BackendService.
bsFingerprint :: Lens' BackendService (Maybe Word8)
bsFingerprint
  = lens _bsFingerprint
      (\ s a -> s{_bsFingerprint = a})

bsProtocol :: Lens' BackendService (Maybe BackendServiceProtocol)
bsProtocol
  = lens _bsProtocol (\ s a -> s{_bsProtocol = a})

-- | [Output Only] Server-defined URL for the resource.
bsSelfLink :: Lens' BackendService (Maybe Text)
bsSelfLink
  = lens _bsSelfLink (\ s a -> s{_bsSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
bsName :: Lens' BackendService (Maybe Text)
bsName = lens _bsName (\ s a -> s{_bsName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
bsCreationTimestamp :: Lens' BackendService (Maybe Text)
bsCreationTimestamp
  = lens _bsCreationTimestamp
      (\ s a -> s{_bsCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
bsId :: Lens' BackendService (Maybe Word64)
bsId = lens _bsId (\ s a -> s{_bsId = a})

-- | How many seconds to wait for the backend before considering it a failed
-- request. Default is 30 seconds.
bsTimeoutSec :: Lens' BackendService (Maybe Int32)
bsTimeoutSec
  = lens _bsTimeoutSec (\ s a -> s{_bsTimeoutSec = a})

-- | An optional textual description of the resource. Provided by the client
-- when the resource is created.
bsDescription :: Lens' BackendService (Maybe Text)
bsDescription
  = lens _bsDescription
      (\ s a -> s{_bsDescription = a})

-- | Name of backend port. The same name should appear in the resource views
-- referenced by this service. Required.
bsPortName :: Lens' BackendService (Maybe Text)
bsPortName
  = lens _bsPortName (\ s a -> s{_bsPortName = a})

-- | The list of URLs to the HttpHealthCheck resource for health checking
-- this BackendService. Currently at most one health check can be
-- specified, and a health check is required.
bsHealthChecks :: Lens' BackendService [Text]
bsHealthChecks
  = lens _bsHealthChecks
      (\ s a -> s{_bsHealthChecks = a})
      . _Default
      . _Coerce

-- | Deprecated in favor of port name. The TCP port to connect on the
-- backend. The default value is 80.
bsPort :: Lens' BackendService (Maybe Int32)
bsPort = lens _bsPort (\ s a -> s{_bsPort = a})

instance FromJSON BackendService where
        parseJSON
          = withObject "BackendService"
              (\ o ->
                 BackendService <$>
                   (o .:? "backends" .!= mempty) <*>
                     (o .:? "kind" .!= "compute#backendService")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "protocol")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "timeoutSec")
                     <*> (o .:? "description")
                     <*> (o .:? "portName")
                     <*> (o .:? "healthChecks" .!= mempty)
                     <*> (o .:? "port"))

instance ToJSON BackendService where
        toJSON BackendService{..}
          = object
              (catMaybes
                 [("backends" .=) <$> _bsBackends,
                  Just ("kind" .= _bsKind),
                  ("fingerprint" .=) <$> _bsFingerprint,
                  ("protocol" .=) <$> _bsProtocol,
                  ("selfLink" .=) <$> _bsSelfLink,
                  ("name" .=) <$> _bsName,
                  ("creationTimestamp" .=) <$> _bsCreationTimestamp,
                  ("id" .=) <$> _bsId,
                  ("timeoutSec" .=) <$> _bsTimeoutSec,
                  ("description" .=) <$> _bsDescription,
                  ("portName" .=) <$> _bsPortName,
                  ("healthChecks" .=) <$> _bsHealthChecks,
                  ("port" .=) <$> _bsPort])

--
-- /See:/ 'instanceMoveRequest' smart constructor.
data InstanceMoveRequest = InstanceMoveRequest
    { _imrTargetInstance  :: !(Maybe Text)
    , _imrDestinationZone :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceMoveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imrTargetInstance'
--
-- * 'imrDestinationZone'
instanceMoveRequest
    :: InstanceMoveRequest
instanceMoveRequest =
    InstanceMoveRequest
    { _imrTargetInstance = Nothing
    , _imrDestinationZone = Nothing
    }

-- | The URL of the target instance to move. This can be a full or partial
-- URL. For example, the following are all valid URLs to an instance: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/instance
-- - projects\/project\/zones\/zone\/instances\/instance -
-- zones\/zone\/instances\/instance
imrTargetInstance :: Lens' InstanceMoveRequest (Maybe Text)
imrTargetInstance
  = lens _imrTargetInstance
      (\ s a -> s{_imrTargetInstance = a})

-- | The URL of the destination zone to move the instance to. This can be a
-- full or partial URL. For example, the following are all valid URLs to a
-- zone: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone
-- - projects\/project\/zones\/zone - zones\/zone
imrDestinationZone :: Lens' InstanceMoveRequest (Maybe Text)
imrDestinationZone
  = lens _imrDestinationZone
      (\ s a -> s{_imrDestinationZone = a})

instance FromJSON InstanceMoveRequest where
        parseJSON
          = withObject "InstanceMoveRequest"
              (\ o ->
                 InstanceMoveRequest <$>
                   (o .:? "targetInstance") <*>
                     (o .:? "destinationZone"))

instance ToJSON InstanceMoveRequest where
        toJSON InstanceMoveRequest{..}
          = object
              (catMaybes
                 [("targetInstance" .=) <$> _imrTargetInstance,
                  ("destinationZone" .=) <$> _imrDestinationZone])

--
-- /See:/ 'instanceGroupsScopedList' smart constructor.
data InstanceGroupsScopedList = InstanceGroupsScopedList
    { _igslWarning        :: !(Maybe InstanceGroupsScopedListWarning)
    , _igslInstanceGroups :: !(Maybe [InstanceGroup])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igslWarning'
--
-- * 'igslInstanceGroups'
instanceGroupsScopedList
    :: InstanceGroupsScopedList
instanceGroupsScopedList =
    InstanceGroupsScopedList
    { _igslWarning = Nothing
    , _igslInstanceGroups = Nothing
    }

-- | [Output Only] An informational warning that replaces the list of
-- instance groups when the list is empty.
igslWarning :: Lens' InstanceGroupsScopedList (Maybe InstanceGroupsScopedListWarning)
igslWarning
  = lens _igslWarning (\ s a -> s{_igslWarning = a})

-- | [Output Only] The list of instance groups that are contained in this
-- scope.
igslInstanceGroups :: Lens' InstanceGroupsScopedList [InstanceGroup]
igslInstanceGroups
  = lens _igslInstanceGroups
      (\ s a -> s{_igslInstanceGroups = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupsScopedList where
        parseJSON
          = withObject "InstanceGroupsScopedList"
              (\ o ->
                 InstanceGroupsScopedList <$>
                   (o .:? "warning") <*>
                     (o .:? "instanceGroups" .!= mempty))

instance ToJSON InstanceGroupsScopedList where
        toJSON InstanceGroupsScopedList{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _igslWarning,
                  ("instanceGroups" .=) <$> _igslInstanceGroups])

-- | [Output Only] A map of scoped vpn tunnel lists.
--
-- /See:/ 'vpnTunnelAggregatedListItems' smart constructor.
newtype VPNTunnelAggregatedListItems = VPNTunnelAggregatedListItems
    { _vtaliAddtional :: HashMap Text VPNTunnelsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtaliAddtional'
vpnTunnelAggregatedListItems
    :: HashMap Text VPNTunnelsScopedList -- ^ 'addtional'
    -> VPNTunnelAggregatedListItems
vpnTunnelAggregatedListItems pVtaliAddtional_ =
    VPNTunnelAggregatedListItems
    { _vtaliAddtional = pVtaliAddtional_
    }

-- | Name of the scope containing this set of vpn tunnels.
vtaliAddtional :: Lens' VPNTunnelAggregatedListItems (HashMap Text VPNTunnelsScopedList)
vtaliAddtional
  = lens _vtaliAddtional
      (\ s a -> s{_vtaliAddtional = a})

instance FromJSON VPNTunnelAggregatedListItems where
        parseJSON
          = withObject "VPNTunnelAggregatedListItems"
              (\ o ->
                 VPNTunnelAggregatedListItems <$> (parseJSONObject o))

instance ToJSON VPNTunnelAggregatedListItems where
        toJSON = toJSON . _vtaliAddtional

-- | A set of instance tags.
--
-- /See:/ 'tags' smart constructor.
data Tags = Tags
    { _tFingerprint :: !(Maybe Word8)
    , _tItems       :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tFingerprint'
--
-- * 'tItems'
tags
    :: Tags
tags =
    Tags
    { _tFingerprint = Nothing
    , _tItems = Nothing
    }

-- | Specifies a fingerprint for this request, which is essentially a hash of
-- the metadata\'s contents and used for optimistic locking. The
-- fingerprint is initially generated by Compute Engine and changes after
-- every request to modify or update metadata. You must always provide an
-- up-to-date fingerprint hash in order to update or change metadata. To
-- see the latest fingerprint, make get() request to the instance.
tFingerprint :: Lens' Tags (Maybe Word8)
tFingerprint
  = lens _tFingerprint (\ s a -> s{_tFingerprint = a})

-- | An array of tags. Each tag must be 1-63 characters long, and comply with
-- RFC1035.
tItems :: Lens' Tags [Text]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON Tags where
        parseJSON
          = withObject "Tags"
              (\ o ->
                 Tags <$>
                   (o .:? "fingerprint") <*> (o .:? "items" .!= mempty))

instance ToJSON Tags where
        toJSON Tags{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _tFingerprint,
                  ("items" .=) <$> _tItems])

--
-- /See:/ 'addressAggregatedList' smart constructor.
data AddressAggregatedList = AddressAggregatedList
    { _addNextPageToken :: !(Maybe Text)
    , _addKind          :: !Text
    , _addItems         :: !(Maybe AddressAggregatedListItems)
    , _addSelfLink      :: !(Maybe Text)
    , _addId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addNextPageToken'
--
-- * 'addKind'
--
-- * 'addItems'
--
-- * 'addSelfLink'
--
-- * 'addId'
addressAggregatedList
    :: AddressAggregatedList
addressAggregatedList =
    AddressAggregatedList
    { _addNextPageToken = Nothing
    , _addKind = "compute#addressAggregatedList"
    , _addItems = Nothing
    , _addSelfLink = Nothing
    , _addId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
addNextPageToken :: Lens' AddressAggregatedList (Maybe Text)
addNextPageToken
  = lens _addNextPageToken
      (\ s a -> s{_addNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#addressAggregatedList for
-- aggregated lists of addresses.
addKind :: Lens' AddressAggregatedList Text
addKind = lens _addKind (\ s a -> s{_addKind = a})

-- | [Output Only] A map of scoped address lists.
addItems :: Lens' AddressAggregatedList (Maybe AddressAggregatedListItems)
addItems = lens _addItems (\ s a -> s{_addItems = a})

-- | [Output Only] Server-defined URL for this resource.
addSelfLink :: Lens' AddressAggregatedList (Maybe Text)
addSelfLink
  = lens _addSelfLink (\ s a -> s{_addSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
addId :: Lens' AddressAggregatedList (Maybe Text)
addId = lens _addId (\ s a -> s{_addId = a})

instance FromJSON AddressAggregatedList where
        parseJSON
          = withObject "AddressAggregatedList"
              (\ o ->
                 AddressAggregatedList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#addressAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AddressAggregatedList where
        toJSON AddressAggregatedList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _addNextPageToken,
                  Just ("kind" .= _addKind),
                  ("items" .=) <$> _addItems,
                  ("selfLink" .=) <$> _addSelfLink,
                  ("id" .=) <$> _addId])

--
-- /See:/ 'operationWarningsItem' smart constructor.
data OperationWarningsItem = OperationWarningsItem
    { _owiData    :: !(Maybe [OperationWarningsItemDataItem])
    , _owiCode    :: !(Maybe OperationWarningsItemCode)
    , _owiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationWarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owiData'
--
-- * 'owiCode'
--
-- * 'owiMessage'
operationWarningsItem
    :: OperationWarningsItem
operationWarningsItem =
    OperationWarningsItem
    { _owiData = Nothing
    , _owiCode = Nothing
    , _owiMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
owiData :: Lens' OperationWarningsItem [OperationWarningsItemDataItem]
owiData
  = lens _owiData (\ s a -> s{_owiData = a}) . _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
owiCode :: Lens' OperationWarningsItem (Maybe OperationWarningsItemCode)
owiCode = lens _owiCode (\ s a -> s{_owiCode = a})

-- | [Output Only] Optional human-readable details for this warning.
owiMessage :: Lens' OperationWarningsItem (Maybe Text)
owiMessage
  = lens _owiMessage (\ s a -> s{_owiMessage = a})

instance FromJSON OperationWarningsItem where
        parseJSON
          = withObject "OperationWarningsItem"
              (\ o ->
                 OperationWarningsItem <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationWarningsItem where
        toJSON OperationWarningsItem{..}
          = object
              (catMaybes
                 [("data" .=) <$> _owiData, ("code" .=) <$> _owiCode,
                  ("message" .=) <$> _owiMessage])

-- | Message for the expected URL mappings.
--
-- /See:/ 'urlMapTest' smart constructor.
data URLMapTest = URLMapTest
    { _umtPath        :: !(Maybe Text)
    , _umtService     :: !(Maybe Text)
    , _umtHost        :: !(Maybe Text)
    , _umtDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umtPath'
--
-- * 'umtService'
--
-- * 'umtHost'
--
-- * 'umtDescription'
urlMapTest
    :: URLMapTest
urlMapTest =
    URLMapTest
    { _umtPath = Nothing
    , _umtService = Nothing
    , _umtHost = Nothing
    , _umtDescription = Nothing
    }

-- | Path portion of the URL.
umtPath :: Lens' URLMapTest (Maybe Text)
umtPath = lens _umtPath (\ s a -> s{_umtPath = a})

-- | Expected BackendService resource the given URL should be mapped to.
umtService :: Lens' URLMapTest (Maybe Text)
umtService
  = lens _umtService (\ s a -> s{_umtService = a})

-- | Host portion of the URL.
umtHost :: Lens' URLMapTest (Maybe Text)
umtHost = lens _umtHost (\ s a -> s{_umtHost = a})

-- | Description of this test case.
umtDescription :: Lens' URLMapTest (Maybe Text)
umtDescription
  = lens _umtDescription
      (\ s a -> s{_umtDescription = a})

instance FromJSON URLMapTest where
        parseJSON
          = withObject "URLMapTest"
              (\ o ->
                 URLMapTest <$>
                   (o .:? "path") <*> (o .:? "service") <*>
                     (o .:? "host")
                     <*> (o .:? "description"))

instance ToJSON URLMapTest where
        toJSON URLMapTest{..}
          = object
              (catMaybes
                 [("path" .=) <$> _umtPath,
                  ("service" .=) <$> _umtService,
                  ("host" .=) <$> _umtHost,
                  ("description" .=) <$> _umtDescription])

-- | An Instance resource.
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance
    { _i1Status            :: !(Maybe InstanceStatus)
    , _i1ServiceAccounts   :: !(Maybe [ServiceAccount])
    , _i1NetworkInterfaces :: !(Maybe [NetworkInterface])
    , _i1Kind              :: !Text
    , _i1Zone              :: !(Maybe Text)
    , _i1CPUPlatform       :: !(Maybe Text)
    , _i1SelfLink          :: !(Maybe Text)
    , _i1Name              :: !(Maybe Text)
    , _i1StatusMessage     :: !(Maybe Text)
    , _i1CreationTimestamp :: !(Maybe Text)
    , _i1MachineType       :: !(Maybe Text)
    , _i1Metadata          :: !(Maybe Metadata)
    , _i1Id                :: !(Maybe Word64)
    , _i1Scheduling        :: !(Maybe Scheduling)
    , _i1Disks             :: !(Maybe [AttachedDisk])
    , _i1CanIPForward      :: !(Maybe Bool)
    , _i1Description       :: !(Maybe Text)
    , _i1Tags              :: !(Maybe Tags)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'i1Status'
--
-- * 'i1ServiceAccounts'
--
-- * 'i1NetworkInterfaces'
--
-- * 'i1Kind'
--
-- * 'i1Zone'
--
-- * 'i1CPUPlatform'
--
-- * 'i1SelfLink'
--
-- * 'i1Name'
--
-- * 'i1StatusMessage'
--
-- * 'i1CreationTimestamp'
--
-- * 'i1MachineType'
--
-- * 'i1Metadata'
--
-- * 'i1Id'
--
-- * 'i1Scheduling'
--
-- * 'i1Disks'
--
-- * 'i1CanIPForward'
--
-- * 'i1Description'
--
-- * 'i1Tags'
instance'
    :: Instance
instance' =
    Instance
    { _i1Status = Nothing
    , _i1ServiceAccounts = Nothing
    , _i1NetworkInterfaces = Nothing
    , _i1Kind = "compute#instance"
    , _i1Zone = Nothing
    , _i1CPUPlatform = Nothing
    , _i1SelfLink = Nothing
    , _i1Name = Nothing
    , _i1StatusMessage = Nothing
    , _i1CreationTimestamp = Nothing
    , _i1MachineType = Nothing
    , _i1Metadata = Nothing
    , _i1Id = Nothing
    , _i1Scheduling = Nothing
    , _i1Disks = Nothing
    , _i1CanIPForward = Nothing
    , _i1Description = Nothing
    , _i1Tags = Nothing
    }

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
i1Status :: Lens' Instance (Maybe InstanceStatus)
i1Status = lens _i1Status (\ s a -> s{_i1Status = a})

-- | A list of service accounts, with their specified scopes, authorized for
-- this instance. Service accounts generate access tokens that can be
-- accessed through the metadata server and used to authenticate
-- applications on the instance. See Authenticating from Google Compute
-- Engine for more information.
i1ServiceAccounts :: Lens' Instance [ServiceAccount]
i1ServiceAccounts
  = lens _i1ServiceAccounts
      (\ s a -> s{_i1ServiceAccounts = a})
      . _Default
      . _Coerce

-- | An array of configurations for this interface. This specifies how this
-- interface is configured to interact with other network services, such as
-- connecting to the internet.
i1NetworkInterfaces :: Lens' Instance [NetworkInterface]
i1NetworkInterfaces
  = lens _i1NetworkInterfaces
      (\ s a -> s{_i1NetworkInterfaces = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#instance for
-- instances.
i1Kind :: Lens' Instance Text
i1Kind = lens _i1Kind (\ s a -> s{_i1Kind = a})

-- | [Output Only] URL of the zone where the instance resides.
i1Zone :: Lens' Instance (Maybe Text)
i1Zone = lens _i1Zone (\ s a -> s{_i1Zone = a})

-- | [Output Only] The CPU platform used by this instance.
i1CPUPlatform :: Lens' Instance (Maybe Text)
i1CPUPlatform
  = lens _i1CPUPlatform
      (\ s a -> s{_i1CPUPlatform = a})

-- | [Output Only] Server defined URL for this resource.
i1SelfLink :: Lens' Instance (Maybe Text)
i1SelfLink
  = lens _i1SelfLink (\ s a -> s{_i1SelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
i1Name :: Lens' Instance (Maybe Text)
i1Name = lens _i1Name (\ s a -> s{_i1Name = a})

-- | [Output Only] An optional, human-readable explanation of the status.
i1StatusMessage :: Lens' Instance (Maybe Text)
i1StatusMessage
  = lens _i1StatusMessage
      (\ s a -> s{_i1StatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
i1CreationTimestamp :: Lens' Instance (Maybe Text)
i1CreationTimestamp
  = lens _i1CreationTimestamp
      (\ s a -> s{_i1CreationTimestamp = a})

-- | Full or partial URL of the machine type resource to use for this
-- instance. This is provided by the client when the instance is created.
-- For example, the following is a valid partial url:
-- zones\/zone\/machineTypes\/machine-type
i1MachineType :: Lens' Instance (Maybe Text)
i1MachineType
  = lens _i1MachineType
      (\ s a -> s{_i1MachineType = a})

-- | The metadata key\/value pairs assigned to this instance. This includes
-- custom metadata and predefined keys.
i1Metadata :: Lens' Instance (Maybe Metadata)
i1Metadata
  = lens _i1Metadata (\ s a -> s{_i1Metadata = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
i1Id :: Lens' Instance (Maybe Word64)
i1Id = lens _i1Id (\ s a -> s{_i1Id = a})

-- | Scheduling options for this instance.
i1Scheduling :: Lens' Instance (Maybe Scheduling)
i1Scheduling
  = lens _i1Scheduling (\ s a -> s{_i1Scheduling = a})

-- | Array of disks associated with this instance. Persistent disks must be
-- created before you can assign them.
i1Disks :: Lens' Instance [AttachedDisk]
i1Disks
  = lens _i1Disks (\ s a -> s{_i1Disks = a}) . _Default
      . _Coerce

-- | Allows this instance to send and receive packets with non-matching
-- destination or source IPs. This is required if you plan to use this
-- instance to forward routes. For more information, see Enabling IP
-- Forwarding.
i1CanIPForward :: Lens' Instance (Maybe Bool)
i1CanIPForward
  = lens _i1CanIPForward
      (\ s a -> s{_i1CanIPForward = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
i1Description :: Lens' Instance (Maybe Text)
i1Description
  = lens _i1Description
      (\ s a -> s{_i1Description = a})

-- | A list of tags to appy to this instance. Tags are used to identify valid
-- sources or targets for network firewalls and are specified by the client
-- during instance creation. The tags can be later modified by the setTags
-- method. Each tag within the list must comply with RFC1035.
i1Tags :: Lens' Instance (Maybe Tags)
i1Tags = lens _i1Tags (\ s a -> s{_i1Tags = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance <$>
                   (o .:? "status") <*>
                     (o .:? "serviceAccounts" .!= mempty)
                     <*> (o .:? "networkInterfaces" .!= mempty)
                     <*> (o .:? "kind" .!= "compute#instance")
                     <*> (o .:? "zone")
                     <*> (o .:? "cpuPlatform")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "id")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "disks" .!= mempty)
                     <*> (o .:? "canIpForward")
                     <*> (o .:? "description")
                     <*> (o .:? "tags"))

instance ToJSON Instance where
        toJSON Instance{..}
          = object
              (catMaybes
                 [("status" .=) <$> _i1Status,
                  ("serviceAccounts" .=) <$> _i1ServiceAccounts,
                  ("networkInterfaces" .=) <$> _i1NetworkInterfaces,
                  Just ("kind" .= _i1Kind), ("zone" .=) <$> _i1Zone,
                  ("cpuPlatform" .=) <$> _i1CPUPlatform,
                  ("selfLink" .=) <$> _i1SelfLink,
                  ("name" .=) <$> _i1Name,
                  ("statusMessage" .=) <$> _i1StatusMessage,
                  ("creationTimestamp" .=) <$> _i1CreationTimestamp,
                  ("machineType" .=) <$> _i1MachineType,
                  ("metadata" .=) <$> _i1Metadata, ("id" .=) <$> _i1Id,
                  ("scheduling" .=) <$> _i1Scheduling,
                  ("disks" .=) <$> _i1Disks,
                  ("canIpForward" .=) <$> _i1CanIPForward,
                  ("description" .=) <$> _i1Description,
                  ("tags" .=) <$> _i1Tags])

-- | A matcher for the path portion of the URL. The BackendService from the
-- longest-matched rule will serve the URL. If no rule was matched, the
-- default_service will be used.
--
-- /See:/ 'pathMatcher' smart constructor.
data PathMatcher = PathMatcher
    { _pmDefaultService :: !(Maybe Text)
    , _pmName           :: !(Maybe Text)
    , _pmPathRules      :: !(Maybe [PathRule])
    , _pmDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathMatcher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmDefaultService'
--
-- * 'pmName'
--
-- * 'pmPathRules'
--
-- * 'pmDescription'
pathMatcher
    :: PathMatcher
pathMatcher =
    PathMatcher
    { _pmDefaultService = Nothing
    , _pmName = Nothing
    , _pmPathRules = Nothing
    , _pmDescription = Nothing
    }

-- | The URL to the BackendService resource. This will be used if none of the
-- \'pathRules\' defined by this PathMatcher is met by the URL\'s path
-- portion.
pmDefaultService :: Lens' PathMatcher (Maybe Text)
pmDefaultService
  = lens _pmDefaultService
      (\ s a -> s{_pmDefaultService = a})

-- | The name to which this PathMatcher is referred by the HostRule.
pmName :: Lens' PathMatcher (Maybe Text)
pmName = lens _pmName (\ s a -> s{_pmName = a})

-- | The list of path rules.
pmPathRules :: Lens' PathMatcher [PathRule]
pmPathRules
  = lens _pmPathRules (\ s a -> s{_pmPathRules = a}) .
      _Default
      . _Coerce

-- | An optional textual description of the resource.
pmDescription :: Lens' PathMatcher (Maybe Text)
pmDescription
  = lens _pmDescription
      (\ s a -> s{_pmDescription = a})

instance FromJSON PathMatcher where
        parseJSON
          = withObject "PathMatcher"
              (\ o ->
                 PathMatcher <$>
                   (o .:? "defaultService") <*> (o .:? "name") <*>
                     (o .:? "pathRules" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON PathMatcher where
        toJSON PathMatcher{..}
          = object
              (catMaybes
                 [("defaultService" .=) <$> _pmDefaultService,
                  ("name" .=) <$> _pmName,
                  ("pathRules" .=) <$> _pmPathRules,
                  ("description" .=) <$> _pmDescription])
