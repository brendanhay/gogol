{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.InstanceGroupsUpdater.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.InstanceGroupsUpdater.Types.Product where

import           Network.Google.InstanceGroupsUpdater.Types.Sum
import           Network.Google.Prelude

-- | The following represents a resource describing a single update (rollout)
-- of a group of instances to the given template.
--
-- /See:/ 'rollingUpdate' smart constructor.
data RollingUpdate = RollingUpdate
    { _ruStatus               :: !(Maybe Text)
    , _ruProgress             :: !(Maybe Int32)
    , _ruInstanceGroupManager :: !(Maybe Text)
    , _ruKind                 :: !Text
    , _ruError                :: !(Maybe RollingUpdateError)
    , _ruInstanceTemplate     :: !(Maybe Text)
    , _ruUser                 :: !(Maybe Text)
    , _ruSelfLink             :: !(Maybe Text)
    , _ruStatusMessage        :: !(Maybe Text)
    , _ruCreationTimestamp    :: !(Maybe Text)
    , _ruId                   :: !(Maybe Text)
    , _ruPolicy               :: !(Maybe RollingUpdatePolicy)
    , _ruActionType           :: !(Maybe Text)
    , _ruOldInstanceTemplate  :: !(Maybe Text)
    , _ruDescription          :: !(Maybe Text)
    , _ruInstanceGroup        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruStatus'
--
-- * 'ruProgress'
--
-- * 'ruInstanceGroupManager'
--
-- * 'ruKind'
--
-- * 'ruError'
--
-- * 'ruInstanceTemplate'
--
-- * 'ruUser'
--
-- * 'ruSelfLink'
--
-- * 'ruStatusMessage'
--
-- * 'ruCreationTimestamp'
--
-- * 'ruId'
--
-- * 'ruPolicy'
--
-- * 'ruActionType'
--
-- * 'ruOldInstanceTemplate'
--
-- * 'ruDescription'
--
-- * 'ruInstanceGroup'
rollingUpdate
    :: RollingUpdate
rollingUpdate =
    RollingUpdate
    { _ruStatus = Nothing
    , _ruProgress = Nothing
    , _ruInstanceGroupManager = Nothing
    , _ruKind = "replicapoolupdater#rollingUpdate"
    , _ruError = Nothing
    , _ruInstanceTemplate = Nothing
    , _ruUser = Nothing
    , _ruSelfLink = Nothing
    , _ruStatusMessage = Nothing
    , _ruCreationTimestamp = Nothing
    , _ruId = Nothing
    , _ruPolicy = Nothing
    , _ruActionType = Nothing
    , _ruOldInstanceTemplate = Nothing
    , _ruDescription = Nothing
    , _ruInstanceGroup = Nothing
    }

-- | [Output Only] Status of the update. Possible values are: -
-- \"ROLLING_FORWARD\": The update is going forward. - \"ROLLING_BACK\":
-- The update is being rolled back. - \"PAUSED\": The update is temporarily
-- paused (inactive). - \"ROLLED_OUT\": The update is finished, all
-- instances have been updated successfully. - \"ROLLED_BACK\": The update
-- is finished, all instances have been reverted to the previous template.
-- - \"CANCELLED\": The update is paused and no longer can be resumed,
-- undefined how many instances are running in which template.
ruStatus :: Lens' RollingUpdate (Maybe Text)
ruStatus = lens _ruStatus (\ s a -> s{_ruStatus = a})

-- | [Output Only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess at when the update will
-- be complete. This number should be monotonically increasing as the
-- update progresses.
ruProgress :: Lens' RollingUpdate (Maybe Int32)
ruProgress
  = lens _ruProgress (\ s a -> s{_ruProgress = a})

-- | Fully-qualified URL of an instance group manager being updated. Exactly
-- one of instanceGroupManager and instanceGroup must be set.
ruInstanceGroupManager :: Lens' RollingUpdate (Maybe Text)
ruInstanceGroupManager
  = lens _ruInstanceGroupManager
      (\ s a -> s{_ruInstanceGroupManager = a})

-- | [Output Only] Type of the resource.
ruKind :: Lens' RollingUpdate Text
ruKind = lens _ruKind (\ s a -> s{_ruKind = a})

-- | [Output Only] Errors that occurred during the rolling update.
ruError :: Lens' RollingUpdate (Maybe RollingUpdateError)
ruError = lens _ruError (\ s a -> s{_ruError = a})

-- | Fully-qualified URL of an instance template to apply.
ruInstanceTemplate :: Lens' RollingUpdate (Maybe Text)
ruInstanceTemplate
  = lens _ruInstanceTemplate
      (\ s a -> s{_ruInstanceTemplate = a})

-- | [Output Only] User who requested the update, for example:
-- user\'example.com.
ruUser :: Lens' RollingUpdate (Maybe Text)
ruUser = lens _ruUser (\ s a -> s{_ruUser = a})

-- | [Output Only] The fully qualified URL for the resource.
ruSelfLink :: Lens' RollingUpdate (Maybe Text)
ruSelfLink
  = lens _ruSelfLink (\ s a -> s{_ruSelfLink = a})

-- | [Output Only] An optional textual description of the current status of
-- the update.
ruStatusMessage :: Lens' RollingUpdate (Maybe Text)
ruStatusMessage
  = lens _ruStatusMessage
      (\ s a -> s{_ruStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
ruCreationTimestamp :: Lens' RollingUpdate (Maybe Text)
ruCreationTimestamp
  = lens _ruCreationTimestamp
      (\ s a -> s{_ruCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ruId :: Lens' RollingUpdate (Maybe Text)
ruId = lens _ruId (\ s a -> s{_ruId = a})

-- | Parameters of the update process.
ruPolicy :: Lens' RollingUpdate (Maybe RollingUpdatePolicy)
ruPolicy = lens _ruPolicy (\ s a -> s{_ruPolicy = a})

-- | Specifies the action to take for each instance within the instance
-- group. This can be RECREATE which will recreate each instance and is
-- only available for managed instance groups. It can also be REBOOT which
-- performs a soft reboot for each instance and is only available for
-- regular (non-managed) instance groups.
ruActionType :: Lens' RollingUpdate (Maybe Text)
ruActionType
  = lens _ruActionType (\ s a -> s{_ruActionType = a})

-- | Fully-qualified URL of the instance template encountered while starting
-- the update.
ruOldInstanceTemplate :: Lens' RollingUpdate (Maybe Text)
ruOldInstanceTemplate
  = lens _ruOldInstanceTemplate
      (\ s a -> s{_ruOldInstanceTemplate = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
ruDescription :: Lens' RollingUpdate (Maybe Text)
ruDescription
  = lens _ruDescription
      (\ s a -> s{_ruDescription = a})

-- | Fully-qualified URL of an instance group being updated. Exactly one of
-- instanceGroupManager and instanceGroup must be set.
ruInstanceGroup :: Lens' RollingUpdate (Maybe Text)
ruInstanceGroup
  = lens _ruInstanceGroup
      (\ s a -> s{_ruInstanceGroup = a})

instance FromJSON RollingUpdate where
        parseJSON
          = withObject "RollingUpdate"
              (\ o ->
                 RollingUpdate <$>
                   (o .:? "status") <*> (o .:? "progress") <*>
                     (o .:? "instanceGroupManager")
                     <*>
                     (o .:? "kind" .!= "replicapoolupdater#rollingUpdate")
                     <*> (o .:? "error")
                     <*> (o .:? "instanceTemplate")
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "policy")
                     <*> (o .:? "actionType")
                     <*> (o .:? "oldInstanceTemplate")
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroup"))

instance ToJSON RollingUpdate where
        toJSON RollingUpdate{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ruStatus,
                  ("progress" .=) <$> _ruProgress,
                  ("instanceGroupManager" .=) <$>
                    _ruInstanceGroupManager,
                  Just ("kind" .= _ruKind), ("error" .=) <$> _ruError,
                  ("instanceTemplate" .=) <$> _ruInstanceTemplate,
                  ("user" .=) <$> _ruUser,
                  ("selfLink" .=) <$> _ruSelfLink,
                  ("statusMessage" .=) <$> _ruStatusMessage,
                  ("creationTimestamp" .=) <$> _ruCreationTimestamp,
                  ("id" .=) <$> _ruId, ("policy" .=) <$> _ruPolicy,
                  ("actionType" .=) <$> _ruActionType,
                  ("oldInstanceTemplate" .=) <$>
                    _ruOldInstanceTemplate,
                  ("description" .=) <$> _ruDescription,
                  ("instanceGroup" .=) <$> _ruInstanceGroup])

-- | Contains a list of Operation resources.
--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList
    { _olNextPageToken :: !(Maybe Text)
    , _olKind          :: !Text
    , _olItems         :: !(Maybe [Maybe Operation])
    , _olSelfLink      :: !(Maybe Text)
    , _olId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _olKind = "replicapoolupdater#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | [Output Only] A token used to continue a truncate.
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always replicapoolupdater#operations for
-- Operations resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | [Output Only] The Operation resources.
olItems :: Lens' OperationList [Maybe Operation]
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
                     (o .:? "kind" .!= "replicapoolupdater#operationList")
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

-- | Response returned by ListInstanceUpdates method.
--
-- /See:/ 'instanceUpdateList' smart constructor.
data InstanceUpdateList = InstanceUpdateList
    { _iulNextPageToken :: !(Maybe Text)
    , _iulKind          :: !Text
    , _iulItems         :: !(Maybe [Maybe InstanceUpdate])
    , _iulSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceUpdateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iulNextPageToken'
--
-- * 'iulKind'
--
-- * 'iulItems'
--
-- * 'iulSelfLink'
instanceUpdateList
    :: InstanceUpdateList
instanceUpdateList =
    InstanceUpdateList
    { _iulNextPageToken = Nothing
    , _iulKind = "replicapoolupdater#instanceUpdateList"
    , _iulItems = Nothing
    , _iulSelfLink = Nothing
    }

-- | A token used to continue a truncated list request.
iulNextPageToken :: Lens' InstanceUpdateList (Maybe Text)
iulNextPageToken
  = lens _iulNextPageToken
      (\ s a -> s{_iulNextPageToken = a})

-- | [Output Only] Type of the resource.
iulKind :: Lens' InstanceUpdateList Text
iulKind = lens _iulKind (\ s a -> s{_iulKind = a})

-- | Collection of requested instance updates.
iulItems :: Lens' InstanceUpdateList [Maybe InstanceUpdate]
iulItems
  = lens _iulItems (\ s a -> s{_iulItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The fully qualified URL for the resource.
iulSelfLink :: Lens' InstanceUpdateList (Maybe Text)
iulSelfLink
  = lens _iulSelfLink (\ s a -> s{_iulSelfLink = a})

instance FromJSON InstanceUpdateList where
        parseJSON
          = withObject "InstanceUpdateList"
              (\ o ->
                 InstanceUpdateList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "replicapoolupdater#instanceUpdateList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON InstanceUpdateList where
        toJSON InstanceUpdateList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _iulNextPageToken,
                  Just ("kind" .= _iulKind),
                  ("items" .=) <$> _iulItems,
                  ("selfLink" .=) <$> _iulSelfLink])

-- | An operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oTargetId            :: !(Maybe Word64)
    , _oStatus              :: !(Maybe Text)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe Int32)
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHttpErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationWarningsItem])
    , _oHttpErrorStatusCode :: !(Maybe Int32)
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'oHttpErrorMessage'
--
-- * 'oZone'
--
-- * 'oWarnings'
--
-- * 'oHttpErrorStatusCode'
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
    , _oKind = "replicapoolupdater#operation"
    , _oError = Nothing
    , _oHttpErrorMessage = Nothing
    , _oZone = Nothing
    , _oWarnings = Nothing
    , _oHttpErrorStatusCode = Nothing
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

-- | [Output Only] Unique target id which identifies a particular incarnation
-- of the target.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | [Output Only] Status of the operation. Can be one of the following:
-- \"PENDING\", \"RUNNING\", or \"DONE\".
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested. This is in RFC
-- 3339 format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output Only] The time that this operation was started by the server.
-- This is in RFC 3339 format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always replicapoolupdater#operation
-- for Operation resources.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | [Output Only] If errors occurred during processing of this operation,
-- this field will be populated.
oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

oHttpErrorMessage :: Lens' Operation (Maybe Text)
oHttpErrorMessage
  = lens _oHttpErrorMessage
      (\ s a -> s{_oHttpErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

oWarnings :: Lens' Operation [OperationWarningsItem]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

oHttpErrorStatusCode :: Lens' Operation (Maybe Int32)
oHttpErrorStatusCode
  = lens _oHttpErrorStatusCode
      (\ s a -> s{_oHttpErrorStatusCode = a})

oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | [Output Only] Server defined URL for the resource.
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

oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] URL of the region where the operation resides.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output Only] URL of the resource the operation is mutating.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

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
                     <*> (o .:? "kind" .!= "replicapoolupdater#operation")
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
                  ("httpErrorMessage" .=) <$> _oHttpErrorMessage,
                  ("zone" .=) <$> _oZone,
                  ("warnings" .=) <$> _oWarnings,
                  ("httpErrorStatusCode" .=) <$> _oHttpErrorStatusCode,
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

-- | Update of a single instance.
--
-- /See:/ 'instanceUpdate' smart constructor.
data InstanceUpdate = InstanceUpdate
    { _iuStatus   :: !(Maybe Text)
    , _iuError    :: !(Maybe InstanceUpdateError)
    , _iuInstance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuStatus'
--
-- * 'iuError'
--
-- * 'iuInstance'
instanceUpdate
    :: InstanceUpdate
instanceUpdate =
    InstanceUpdate
    { _iuStatus = Nothing
    , _iuError = Nothing
    , _iuInstance = Nothing
    }

-- | Status of the instance update. Possible values are: - \"PENDING\": The
-- instance update is pending execution. - \"ROLLING_FORWARD\": The
-- instance update is going forward. - \"ROLLING_BACK\": The instance
-- update is being rolled back. - \"PAUSED\": The instance update is
-- temporarily paused (inactive). - \"ROLLED_OUT\": The instance update is
-- finished, the instance is running the new template. - \"ROLLED_BACK\":
-- The instance update is finished, the instance has been reverted to the
-- previous template. - \"CANCELLED\": The instance update is paused and no
-- longer can be resumed, undefined in which template the instance is
-- running.
iuStatus :: Lens' InstanceUpdate (Maybe Text)
iuStatus = lens _iuStatus (\ s a -> s{_iuStatus = a})

-- | Errors that occurred during the instance update.
iuError :: Lens' InstanceUpdate (Maybe InstanceUpdateError)
iuError = lens _iuError (\ s a -> s{_iuError = a})

-- | Fully-qualified URL of the instance being updated.
iuInstance :: Lens' InstanceUpdate (Maybe Text)
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance FromJSON InstanceUpdate where
        parseJSON
          = withObject "InstanceUpdate"
              (\ o ->
                 InstanceUpdate <$>
                   (o .:? "status") <*> (o .:? "error") <*>
                     (o .:? "instance"))

instance ToJSON InstanceUpdate where
        toJSON InstanceUpdate{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iuStatus,
                  ("error" .=) <$> _iuError,
                  ("instance" .=) <$> _iuInstance])

-- | Response returned by List method.
--
-- /See:/ 'rollingUpdateList' smart constructor.
data RollingUpdateList = RollingUpdateList
    { _rulNextPageToken :: !(Maybe Text)
    , _rulKind          :: !Text
    , _rulItems         :: !(Maybe [Maybe RollingUpdate])
    , _rulSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollingUpdateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulNextPageToken'
--
-- * 'rulKind'
--
-- * 'rulItems'
--
-- * 'rulSelfLink'
rollingUpdateList
    :: RollingUpdateList
rollingUpdateList =
    RollingUpdateList
    { _rulNextPageToken = Nothing
    , _rulKind = "replicapoolupdater#rollingUpdateList"
    , _rulItems = Nothing
    , _rulSelfLink = Nothing
    }

-- | A token used to continue a truncated list request.
rulNextPageToken :: Lens' RollingUpdateList (Maybe Text)
rulNextPageToken
  = lens _rulNextPageToken
      (\ s a -> s{_rulNextPageToken = a})

-- | [Output Only] Type of the resource.
rulKind :: Lens' RollingUpdateList Text
rulKind = lens _rulKind (\ s a -> s{_rulKind = a})

-- | Collection of requested updates.
rulItems :: Lens' RollingUpdateList [Maybe RollingUpdate]
rulItems
  = lens _rulItems (\ s a -> s{_rulItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The fully qualified URL for the resource.
rulSelfLink :: Lens' RollingUpdateList (Maybe Text)
rulSelfLink
  = lens _rulSelfLink (\ s a -> s{_rulSelfLink = a})

instance FromJSON RollingUpdateList where
        parseJSON
          = withObject "RollingUpdateList"
              (\ o ->
                 RollingUpdateList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "replicapoolupdater#rollingUpdateList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON RollingUpdateList where
        toJSON RollingUpdateList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rulNextPageToken,
                  Just ("kind" .= _rulKind),
                  ("items" .=) <$> _rulItems,
                  ("selfLink" .=) <$> _rulSelfLink])
