{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPool.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPool.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types.Sum

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

-- | [Output Only] Metadata value for this warning.
owidiValue :: Lens' OperationWarningsItemDataItem (Maybe Text)
owidiValue
  = lens _owidiValue (\ s a -> s{_owidiValue = a})

-- | [Output Only] Metadata key for this warning.
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

-- | The names of one or more instances to abandon. For example: {
-- \'instances\': [ \'instance-c3po\', \'instance-r2d2\' ] }
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

-- | The full URL to an Instance Template from which all new instances will
-- be created.
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
    , _olKind = "replicapool#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | A token used to continue a truncated list request (output only).
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | Type of resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | The operation resources.
olItems :: Lens' OperationList [Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

-- | Server defined URL for this resource (output only).
olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

-- | Unique identifier for the resource; defined by the server (output only).
olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

instance FromJSON OperationList where
        parseJSON
          = withObject "OperationList"
              (\ o ->
                 OperationList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "replicapool#operationList")
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
    , _igmlKind = "replicapool#instanceGroupManagerList"
    , _igmlItems = Nothing
    , _igmlSelfLink = Nothing
    , _igmlId = Nothing
    }

-- | A token used to continue a truncated list request (output only).
igmlNextPageToken :: Lens' InstanceGroupManagerList (Maybe Text)
igmlNextPageToken
  = lens _igmlNextPageToken
      (\ s a -> s{_igmlNextPageToken = a})

-- | Type of resource.
igmlKind :: Lens' InstanceGroupManagerList Text
igmlKind = lens _igmlKind (\ s a -> s{_igmlKind = a})

-- | A list of instance resources.
igmlItems :: Lens' InstanceGroupManagerList [InstanceGroupManager]
igmlItems
  = lens _igmlItems (\ s a -> s{_igmlItems = a}) .
      _Default
      . _Coerce

-- | Server defined URL for this resource (output only).
igmlSelfLink :: Lens' InstanceGroupManagerList (Maybe Text)
igmlSelfLink
  = lens _igmlSelfLink (\ s a -> s{_igmlSelfLink = a})

-- | Unique identifier for the resource; defined by the server (output only).
igmlId :: Lens' InstanceGroupManagerList (Maybe Text)
igmlId = lens _igmlId (\ s a -> s{_igmlId = a})

instance FromJSON InstanceGroupManagerList where
        parseJSON
          = withObject "InstanceGroupManagerList"
              (\ o ->
                 InstanceGroupManagerList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "replicapool#instanceGroupManagerList")
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

-- | An operation resource, used to manage asynchronous API requests.
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
    , _oKind = "replicapool#operation"
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

-- | [Output Only] Status of the operation.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested, in RFC3339
-- text format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

-- | [Output only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess at when the operation
-- will be complete. This number should be monotonically increasing as the
-- operation progresses.
oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output Only] The time that this operation was started by the server, in
-- RFC3339 text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output only] Type of the resource.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | [Output Only] If errors occurred during processing of this operation,
-- this field will be populated.
oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

-- | [Output only] If operation fails, the HTTP error message returned.
oHTTPErrorMessage :: Lens' Operation (Maybe Text)
oHTTPErrorMessage
  = lens _oHTTPErrorMessage
      (\ s a -> s{_oHTTPErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides. Only
-- available when performing per-zone operations.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | [Output Only] If there are issues with this operation, a warning is
-- returned.
oWarnings :: Lens' Operation [OperationWarningsItem]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

-- | [Output only] If operation fails, the HTTP error status code returned.
oHTTPErrorStatusCode :: Lens' Operation (Maybe Int32)
oHTTPErrorStatusCode
  = lens _oHTTPErrorStatusCode
      (\ s a -> s{_oHTTPErrorStatusCode = a})

-- | [Output Only] User who requested the operation, for example:
-- user\'example.com.
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
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

-- | [Output Only] The time that this operation was requested, in RFC3339
-- text format.
oCreationTimestamp :: Lens' Operation (Maybe Text)
oCreationTimestamp
  = lens _oCreationTimestamp
      (\ s a -> s{_oCreationTimestamp = a})

-- | [Output Only] The time that this operation was completed, in RFC3339
-- text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] Unique identifier for the resource, generated by the
-- server.
oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

-- | [Output only] Type of the operation. Operations include insert, update,
-- and delete.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] URL of the region where the operation resides. Only
-- available when performing regional operations.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output only] URL of the resource the operation is mutating.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Output only] An optional identifier specified by the client when the
-- mutation was initiated. Must be unique for all operation resources in
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
                     <*> (o .:? "kind" .!= "replicapool#operation")
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

-- | An Instance Group Manager resource.
--
-- /See:/ 'instanceGroupManager' smart constructor.
data InstanceGroupManager = InstanceGroupManager
    { _igmCurrentSize         :: !(Maybe Int32)
    , _igmGroup               :: !(Maybe Text)
    , _igmKind                :: !Text
    , _igmFingerprint         :: !(Maybe Word8)
    , _igmBaseInstanceName    :: !(Maybe Text)
    , _igmAutoHealingPolicies :: !(Maybe [ReplicaPoolAutoHealingPolicy])
    , _igmInstanceTemplate    :: !(Maybe Text)
    , _igmTargetSize          :: !(Maybe Int32)
    , _igmSelfLink            :: !(Maybe Text)
    , _igmName                :: !(Maybe Text)
    , _igmCreationTimestamp   :: !(Maybe Text)
    , _igmId                  :: !(Maybe Word64)
    , _igmTargetPools         :: !(Maybe [Text])
    , _igmDescription         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManager' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmCurrentSize'
--
-- * 'igmGroup'
--
-- * 'igmKind'
--
-- * 'igmFingerprint'
--
-- * 'igmBaseInstanceName'
--
-- * 'igmAutoHealingPolicies'
--
-- * 'igmInstanceTemplate'
--
-- * 'igmTargetSize'
--
-- * 'igmSelfLink'
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
instanceGroupManager
    :: InstanceGroupManager
instanceGroupManager =
    InstanceGroupManager
    { _igmCurrentSize = Nothing
    , _igmGroup = Nothing
    , _igmKind = "replicapool#instanceGroupManager"
    , _igmFingerprint = Nothing
    , _igmBaseInstanceName = Nothing
    , _igmAutoHealingPolicies = Nothing
    , _igmInstanceTemplate = Nothing
    , _igmTargetSize = Nothing
    , _igmSelfLink = Nothing
    , _igmName = Nothing
    , _igmCreationTimestamp = Nothing
    , _igmId = Nothing
    , _igmTargetPools = Nothing
    , _igmDescription = Nothing
    }

-- | [Output only] The number of instances that currently exist and are a
-- part of this group. This includes instances that are starting but are
-- not yet RUNNING, and instances that are in the process of being deleted
-- or abandoned.
igmCurrentSize :: Lens' InstanceGroupManager (Maybe Int32)
igmCurrentSize
  = lens _igmCurrentSize
      (\ s a -> s{_igmCurrentSize = a})

-- | [Output only] The full URL of the instance group created by the manager.
-- This group contains all of the instances being managed, and cannot
-- contain non-managed instances.
igmGroup :: Lens' InstanceGroupManager (Maybe Text)
igmGroup = lens _igmGroup (\ s a -> s{_igmGroup = a})

-- | [Output only] The resource type. Always
-- replicapool#instanceGroupManager.
igmKind :: Lens' InstanceGroupManager Text
igmKind = lens _igmKind (\ s a -> s{_igmKind = a})

-- | [Output only] Fingerprint of the instance group manager. This field is
-- used for optimistic locking. An up-to-date fingerprint must be provided
-- in order to modify the Instance Group Manager resource.
igmFingerprint :: Lens' InstanceGroupManager (Maybe Word8)
igmFingerprint
  = lens _igmFingerprint
      (\ s a -> s{_igmFingerprint = a})

-- | The base instance name to use for instances in this group. The value
-- must be a valid RFC1035 name. Supported characters are lowercase
-- letters, numbers, and hyphens (-). Instances are named by appending a
-- hyphen and a random four-character string to the base instance name.
igmBaseInstanceName :: Lens' InstanceGroupManager (Maybe Text)
igmBaseInstanceName
  = lens _igmBaseInstanceName
      (\ s a -> s{_igmBaseInstanceName = a})

-- | The autohealing policy for this managed instance group. You can specify
-- only one value.
igmAutoHealingPolicies :: Lens' InstanceGroupManager [ReplicaPoolAutoHealingPolicy]
igmAutoHealingPolicies
  = lens _igmAutoHealingPolicies
      (\ s a -> s{_igmAutoHealingPolicies = a})
      . _Default
      . _Coerce

-- | The full URL to an instance template from which all new instances will
-- be created.
igmInstanceTemplate :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceTemplate
  = lens _igmInstanceTemplate
      (\ s a -> s{_igmInstanceTemplate = a})

-- | [Output only] The number of instances that the manager is attempting to
-- maintain. Deleting or abandoning instances affects this number, as does
-- resizing the group.
igmTargetSize :: Lens' InstanceGroupManager (Maybe Int32)
igmTargetSize
  = lens _igmTargetSize
      (\ s a -> s{_igmTargetSize = a})

-- | [Output only] The fully qualified URL for this resource.
igmSelfLink :: Lens' InstanceGroupManager (Maybe Text)
igmSelfLink
  = lens _igmSelfLink (\ s a -> s{_igmSelfLink = a})

-- | The name of the instance group manager. Must be 1-63 characters long and
-- comply with RFC1035. Supported characters include lowercase letters,
-- numbers, and hyphens.
igmName :: Lens' InstanceGroupManager (Maybe Text)
igmName = lens _igmName (\ s a -> s{_igmName = a})

-- | [Output only] The time the instance group manager was created, in
-- RFC3339 text format.
igmCreationTimestamp :: Lens' InstanceGroupManager (Maybe Text)
igmCreationTimestamp
  = lens _igmCreationTimestamp
      (\ s a -> s{_igmCreationTimestamp = a})

-- | [Output only] A server-assigned unique identifier for the resource.
igmId :: Lens' InstanceGroupManager (Maybe Word64)
igmId = lens _igmId (\ s a -> s{_igmId = a})

-- | The full URL of all target pools to which new instances in the group are
-- added. Updating the target pool values does not affect existing
-- instances.
igmTargetPools :: Lens' InstanceGroupManager [Text]
igmTargetPools
  = lens _igmTargetPools
      (\ s a -> s{_igmTargetPools = a})
      . _Default
      . _Coerce

-- | An optional textual description of the instance group manager.
igmDescription :: Lens' InstanceGroupManager (Maybe Text)
igmDescription
  = lens _igmDescription
      (\ s a -> s{_igmDescription = a})

instance FromJSON InstanceGroupManager where
        parseJSON
          = withObject "InstanceGroupManager"
              (\ o ->
                 InstanceGroupManager <$>
                   (o .:? "currentSize") <*> (o .:? "group") <*>
                     (o .:? "kind" .!= "replicapool#instanceGroupManager")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "baseInstanceName")
                     <*> (o .:? "autoHealingPolicies" .!= mempty)
                     <*> (o .:? "instanceTemplate")
                     <*> (o .:? "targetSize")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "targetPools" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON InstanceGroupManager where
        toJSON InstanceGroupManager{..}
          = object
              (catMaybes
                 [("currentSize" .=) <$> _igmCurrentSize,
                  ("group" .=) <$> _igmGroup,
                  Just ("kind" .= _igmKind),
                  ("fingerprint" .=) <$> _igmFingerprint,
                  ("baseInstanceName" .=) <$> _igmBaseInstanceName,
                  ("autoHealingPolicies" .=) <$>
                    _igmAutoHealingPolicies,
                  ("instanceTemplate" .=) <$> _igmInstanceTemplate,
                  ("targetSize" .=) <$> _igmTargetSize,
                  ("selfLink" .=) <$> _igmSelfLink,
                  ("name" .=) <$> _igmName,
                  ("creationTimestamp" .=) <$> _igmCreationTimestamp,
                  ("id" .=) <$> _igmId,
                  ("targetPools" .=) <$> _igmTargetPools,
                  ("description" .=) <$> _igmDescription])

--
-- /See:/ 'replicaPoolAutoHealingPolicy' smart constructor.
data ReplicaPoolAutoHealingPolicy = ReplicaPoolAutoHealingPolicy
    { _rpahpHealthCheck :: !(Maybe Text)
    , _rpahpActionType  :: !(Maybe ReplicaPoolAutoHealingPolicyActionType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReplicaPoolAutoHealingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpahpHealthCheck'
--
-- * 'rpahpActionType'
replicaPoolAutoHealingPolicy
    :: ReplicaPoolAutoHealingPolicy
replicaPoolAutoHealingPolicy =
    ReplicaPoolAutoHealingPolicy
    { _rpahpHealthCheck = Nothing
    , _rpahpActionType = Nothing
    }

-- | The URL for the HealthCheck that signals autohealing.
rpahpHealthCheck :: Lens' ReplicaPoolAutoHealingPolicy (Maybe Text)
rpahpHealthCheck
  = lens _rpahpHealthCheck
      (\ s a -> s{_rpahpHealthCheck = a})

-- | The action to perform when an instance becomes unhealthy. Possible
-- values are RECREATE or REBOOT. RECREATE replaces an unhealthy instance
-- with a new instance that is based on the instance template for this
-- managed instance group. REBOOT performs a soft reboot on an instance. If
-- the instance cannot reboot, the instance performs a hard restart.
rpahpActionType :: Lens' ReplicaPoolAutoHealingPolicy (Maybe ReplicaPoolAutoHealingPolicyActionType)
rpahpActionType
  = lens _rpahpActionType
      (\ s a -> s{_rpahpActionType = a})

instance FromJSON ReplicaPoolAutoHealingPolicy where
        parseJSON
          = withObject "ReplicaPoolAutoHealingPolicy"
              (\ o ->
                 ReplicaPoolAutoHealingPolicy <$>
                   (o .:? "healthCheck") <*> (o .:? "actionType"))

instance ToJSON ReplicaPoolAutoHealingPolicy where
        toJSON ReplicaPoolAutoHealingPolicy{..}
          = object
              (catMaybes
                 [("healthCheck" .=) <$> _rpahpHealthCheck,
                  ("actionType" .=) <$> _rpahpActionType])

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

-- | The names of one or more instances to recreate. For example: {
-- \'instances\': [ \'instance-c3po\', \'instance-r2d2\' ] }
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

-- | Names of instances to delete. Example: \'instance-foo\',
-- \'instance-bar\'
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

-- | [Output Only] If errors occurred during processing of this operation,
-- this field will be populated.
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

-- | The current fingerprint of the Instance Group Manager resource. If this
-- does not match the server-side fingerprint of the resource, then the
-- request will be rejected.
igmstprFingerprint :: Lens' InstanceGroupManagersSetTargetPoolsRequest (Maybe Word8)
igmstprFingerprint
  = lens _igmstprFingerprint
      (\ s a -> s{_igmstprFingerprint = a})

-- | A list of fully-qualified URLs to existing Target Pool resources. New
-- instances in the Instance Group Manager will be added to the specified
-- target pools; existing instances are not affected.
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

-- | [Output only] Metadata for this warning in key:value format.
owiData :: Lens' OperationWarningsItem [OperationWarningsItemDataItem]
owiData
  = lens _owiData (\ s a -> s{_owiData = a}) . _Default
      . _Coerce

-- | [Output only] The warning type identifier for this warning.
owiCode :: Lens' OperationWarningsItem (Maybe OperationWarningsItemCode)
owiCode = lens _owiCode (\ s a -> s{_owiCode = a})

-- | [Output only] Optional human-readable details for this warning.
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
