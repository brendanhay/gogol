{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types.Product where

import           Network.Google.DeploymentManager.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'operationWarningsItemDataItem' smart constructor.
data OperationWarningsItemDataItem = OperationWarningsItemDataItem'
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
    OperationWarningsItemDataItem'
    { _owidiValue = Nothing
    , _owidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
owidiValue :: Lens' OperationWarningsItemDataItem (Maybe Text)
owidiValue
  = lens _owidiValue (\ s a -> s{_owidiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
owidiKey :: Lens' OperationWarningsItemDataItem (Maybe Text)
owidiKey = lens _owidiKey (\ s a -> s{_owidiKey = a})

instance FromJSON OperationWarningsItemDataItem where
        parseJSON
          = withObject "OperationWarningsItemDataItem"
              (\ o ->
                 OperationWarningsItemDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OperationWarningsItemDataItem where
        toJSON OperationWarningsItemDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _owidiValue,
                  ("key" .=) <$> _owidiKey])

-- |
--
-- /See:/ 'configFile' smart constructor.
newtype ConfigFile = ConfigFile'
    { _cfContent :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfigFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfContent'
configFile
    :: ConfigFile
configFile =
    ConfigFile'
    { _cfContent = Nothing
    }

-- | The contents of the file.
cfContent :: Lens' ConfigFile (Maybe Text)
cfContent
  = lens _cfContent (\ s a -> s{_cfContent = a})

instance FromJSON ConfigFile where
        parseJSON
          = withObject "ConfigFile"
              (\ o -> ConfigFile' <$> (o .:? "content"))

instance ToJSON ConfigFile where
        toJSON ConfigFile'{..}
          = object (catMaybes [("content" .=) <$> _cfContent])

-- | A response containing a partial list of operations and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'operationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse'
    { _olrNextPageToken :: !(Maybe Text)
    , _olrOperations    :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrOperations'
operationsListResponse
    :: OperationsListResponse
operationsListResponse =
    OperationsListResponse'
    { _olrNextPageToken = Nothing
    , _olrOperations = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
olrNextPageToken :: Lens' OperationsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | [Output Only] Operations contained in this list response.
olrOperations :: Lens' OperationsListResponse [Operation]
olrOperations
  = lens _olrOperations
      (\ s a -> s{_olrOperations = a})
      . _Default
      . _Coerce

instance FromJSON OperationsListResponse where
        parseJSON
          = withObject "OperationsListResponse"
              (\ o ->
                 OperationsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON OperationsListResponse where
        toJSON OperationsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  ("operations" .=) <$> _olrOperations])

--
-- /See:/ 'resourceUpdateWarningsItemDataItem' smart constructor.
data ResourceUpdateWarningsItemDataItem = ResourceUpdateWarningsItemDataItem'
    { _ruwidiValue :: !(Maybe Text)
    , _ruwidiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdateWarningsItemDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruwidiValue'
--
-- * 'ruwidiKey'
resourceUpdateWarningsItemDataItem
    :: ResourceUpdateWarningsItemDataItem
resourceUpdateWarningsItemDataItem =
    ResourceUpdateWarningsItemDataItem'
    { _ruwidiValue = Nothing
    , _ruwidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
ruwidiValue :: Lens' ResourceUpdateWarningsItemDataItem (Maybe Text)
ruwidiValue
  = lens _ruwidiValue (\ s a -> s{_ruwidiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
ruwidiKey :: Lens' ResourceUpdateWarningsItemDataItem (Maybe Text)
ruwidiKey
  = lens _ruwidiKey (\ s a -> s{_ruwidiKey = a})

instance FromJSON ResourceUpdateWarningsItemDataItem
         where
        parseJSON
          = withObject "ResourceUpdateWarningsItemDataItem"
              (\ o ->
                 ResourceUpdateWarningsItemDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ResourceUpdateWarningsItemDataItem
         where
        toJSON ResourceUpdateWarningsItemDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ruwidiValue,
                  ("key" .=) <$> _ruwidiKey])

-- | A response that returns all Types supported by Deployment Manager
--
-- /See:/ 'typesListResponse' smart constructor.
data TypesListResponse = TypesListResponse'
    { _tlrNextPageToken :: !(Maybe Text)
    , _tlrTypes         :: !(Maybe [Type])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TypesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrNextPageToken'
--
-- * 'tlrTypes'
typesListResponse
    :: TypesListResponse
typesListResponse =
    TypesListResponse'
    { _tlrNextPageToken = Nothing
    , _tlrTypes = Nothing
    }

-- | A token used to continue a truncated list request.
tlrNextPageToken :: Lens' TypesListResponse (Maybe Text)
tlrNextPageToken
  = lens _tlrNextPageToken
      (\ s a -> s{_tlrNextPageToken = a})

-- | [Output Only] A list of resource types supported by Deployment Manager.
tlrTypes :: Lens' TypesListResponse [Type]
tlrTypes
  = lens _tlrTypes (\ s a -> s{_tlrTypes = a}) .
      _Default
      . _Coerce

instance FromJSON TypesListResponse where
        parseJSON
          = withObject "TypesListResponse"
              (\ o ->
                 TypesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "types" .!= mempty))

instance ToJSON TypesListResponse where
        toJSON TypesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tlrNextPageToken,
                  ("types" .=) <$> _tlrTypes])

-- | An Operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oTargetId            :: !(Maybe (Textual Word64))
    , _oStatus              :: !(Maybe Text)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe (Textual Int32))
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHTTPErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationWarningsItem])
    , _oHTTPErrorStatusCode :: !(Maybe (Textual Int32))
    , _oUser                :: !(Maybe Text)
    , _oSelfLink            :: !(Maybe Text)
    , _oName                :: !(Maybe Text)
    , _oStatusMessage       :: !(Maybe Text)
    , _oCreationTimestamp   :: !(Maybe Text)
    , _oEndTime             :: !(Maybe Text)
    , _oId                  :: !(Maybe (Textual Word64))
    , _oOperationType       :: !(Maybe Text)
    , _oRegion              :: !(Maybe Text)
    , _oDescription         :: !(Maybe Text)
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
-- * 'oDescription'
--
-- * 'oTargetLink'
--
-- * 'oClientOperationId'
operation
    :: Operation
operation =
    Operation'
    { _oTargetId = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oKind = "deploymentmanager#operation"
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
    , _oDescription = Nothing
    , _oTargetLink = Nothing
    , _oClientOperationId = Nothing
    }

-- | [Output Only] The unique target ID, which identifies a specific
-- incarnation of the target resource.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a}) .
      mapping _Coerce

-- | [Output Only] The status of the operation, which can be one of the
-- following: PENDING, RUNNING, or DONE.
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested. This value is
-- in RFC3339 text format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

-- | [Output Only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess when the operation will
-- be complete. This number should monotonically increase as the operation
-- progresses.
oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a}) .
      mapping _Coerce

-- | [Output Only] The time that this operation was started by the server.
-- This value is in RFC3339 text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always compute#operation for
-- operation resources.
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

-- | [Output Only] The URL of the zone where the operation resides. Only
-- available when performing per-zone operations.
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
-- status code that was returned. For example, a 404 means the resource was
-- not found.
oHTTPErrorStatusCode :: Lens' Operation (Maybe Int32)
oHTTPErrorStatusCode
  = lens _oHTTPErrorStatusCode
      (\ s a -> s{_oHTTPErrorStatusCode = a})
      . mapping _Coerce

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

-- | [Output Only] The time that this operation was completed. This value is
-- in RFC3339 text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
oId :: Lens' Operation (Maybe Word64)
oId
  = lens _oId (\ s a -> s{_oId = a}) . mapping _Coerce

-- | [Output Only] The type of operation, such as insert, update, or delete,
-- and so on.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] The URL of the region where the operation resides. Only
-- available when performing regional operations.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output Only] A textual description of the operation, which is set when
-- the operation is created.
oDescription :: Lens' Operation (Maybe Text)
oDescription
  = lens _oDescription (\ s a -> s{_oDescription = a})

-- | [Output Only] The URL of the resource that the operation modifies.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Output Only] Reserved for future use.
oClientOperationId :: Lens' Operation (Maybe Text)
oClientOperationId
  = lens _oClientOperationId
      (\ s a -> s{_oClientOperationId = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "targetId") <*> (o .:? "status") <*>
                     (o .:? "insertTime")
                     <*> (o .:? "progress")
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "deploymentmanager#operation")
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
                     <*> (o .:? "description")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "clientOperationId"))

instance ToJSON Operation where
        toJSON Operation'{..}
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
                  ("description" .=) <$> _oDescription,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("clientOperationId" .=) <$> _oClientOperationId])

-- | A response containing a partial list of resources and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'resourcesListResponse' smart constructor.
data ResourcesListResponse = ResourcesListResponse'
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrResources     :: !(Maybe [Resource])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrNextPageToken'
--
-- * 'rlrResources'
resourcesListResponse
    :: ResourcesListResponse
resourcesListResponse =
    ResourcesListResponse'
    { _rlrNextPageToken = Nothing
    , _rlrResources = Nothing
    }

-- | A token used to continue a truncated list request.
rlrNextPageToken :: Lens' ResourcesListResponse (Maybe Text)
rlrNextPageToken
  = lens _rlrNextPageToken
      (\ s a -> s{_rlrNextPageToken = a})

-- | Resources contained in this list response.
rlrResources :: Lens' ResourcesListResponse [Resource]
rlrResources
  = lens _rlrResources (\ s a -> s{_rlrResources = a})
      . _Default
      . _Coerce

instance FromJSON ResourcesListResponse where
        parseJSON
          = withObject "ResourcesListResponse"
              (\ o ->
                 ResourcesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ResourcesListResponse where
        toJSON ResourcesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlrNextPageToken,
                  ("resources" .=) <$> _rlrResources])

-- |
--
-- /See:/ 'deploymentUpdate' smart constructor.
data DeploymentUpdate = DeploymentUpdate'
    { _duManifest :: !(Maybe Text)
    , _duLabels   :: !(Maybe [DeploymentUpdateLabelEntry])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duManifest'
--
-- * 'duLabels'
deploymentUpdate
    :: DeploymentUpdate
deploymentUpdate =
    DeploymentUpdate'
    { _duManifest = Nothing
    , _duLabels = Nothing
    }

-- | [Output Only] URL of the manifest representing the update configuration
-- of this deployment.
duManifest :: Lens' DeploymentUpdate (Maybe Text)
duManifest
  = lens _duManifest (\ s a -> s{_duManifest = a})

-- | [Output Only] Map of labels; provided by the client when the resource is
-- created or updated. Specifically: Label keys must be between 1 and 63
-- characters long and must conform to the following regular expression:
-- [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63
-- characters long and must conform to the regular expression
-- ([a-z]([-a-z0-9]*[a-z0-9])?)?
duLabels :: Lens' DeploymentUpdate [DeploymentUpdateLabelEntry]
duLabels
  = lens _duLabels (\ s a -> s{_duLabels = a}) .
      _Default
      . _Coerce

instance FromJSON DeploymentUpdate where
        parseJSON
          = withObject "DeploymentUpdate"
              (\ o ->
                 DeploymentUpdate' <$>
                   (o .:? "manifest") <*> (o .:? "labels" .!= mempty))

instance ToJSON DeploymentUpdate where
        toJSON DeploymentUpdate'{..}
          = object
              (catMaybes
                 [("manifest" .=) <$> _duManifest,
                  ("labels" .=) <$> _duLabels])

-- |
--
-- /See:/ 'resourceUpdate' smart constructor.
data ResourceUpdate = ResourceUpdate'
    { _ruState           :: !(Maybe Text)
    , _ruError           :: !(Maybe ResourceUpdateError)
    , _ruWarnings        :: !(Maybe [ResourceUpdateWarningsItem])
    , _ruIntent          :: !(Maybe Text)
    , _ruManifest        :: !(Maybe Text)
    , _ruFinalProperties :: !(Maybe Text)
    , _ruProperties      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruState'
--
-- * 'ruError'
--
-- * 'ruWarnings'
--
-- * 'ruIntent'
--
-- * 'ruManifest'
--
-- * 'ruFinalProperties'
--
-- * 'ruProperties'
resourceUpdate
    :: ResourceUpdate
resourceUpdate =
    ResourceUpdate'
    { _ruState = Nothing
    , _ruError = Nothing
    , _ruWarnings = Nothing
    , _ruIntent = Nothing
    , _ruManifest = Nothing
    , _ruFinalProperties = Nothing
    , _ruProperties = Nothing
    }

-- | [Output Only] The state of the resource.
ruState :: Lens' ResourceUpdate (Maybe Text)
ruState = lens _ruState (\ s a -> s{_ruState = a})

-- | [Output Only] If errors are generated during update of the resource,
-- this field will be populated.
ruError :: Lens' ResourceUpdate (Maybe ResourceUpdateError)
ruError = lens _ruError (\ s a -> s{_ruError = a})

-- | [Output Only] If warning messages are generated during processing of
-- this resource, this field will be populated.
ruWarnings :: Lens' ResourceUpdate [ResourceUpdateWarningsItem]
ruWarnings
  = lens _ruWarnings (\ s a -> s{_ruWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] The intent of the resource: PREVIEW, UPDATE, or CANCEL.
ruIntent :: Lens' ResourceUpdate (Maybe Text)
ruIntent = lens _ruIntent (\ s a -> s{_ruIntent = a})

-- | [Output Only] URL of the manifest representing the update configuration
-- of this resource.
ruManifest :: Lens' ResourceUpdate (Maybe Text)
ruManifest
  = lens _ruManifest (\ s a -> s{_ruManifest = a})

-- | [Output Only] The expanded properties of the resource with reference
-- values expanded. Returned as serialized YAML.
ruFinalProperties :: Lens' ResourceUpdate (Maybe Text)
ruFinalProperties
  = lens _ruFinalProperties
      (\ s a -> s{_ruFinalProperties = a})

-- | [Output Only] The set of updated properties for this resource, before
-- references are expanded. Returned as serialized YAML.
ruProperties :: Lens' ResourceUpdate (Maybe Text)
ruProperties
  = lens _ruProperties (\ s a -> s{_ruProperties = a})

instance FromJSON ResourceUpdate where
        parseJSON
          = withObject "ResourceUpdate"
              (\ o ->
                 ResourceUpdate' <$>
                   (o .:? "state") <*> (o .:? "error") <*>
                     (o .:? "warnings" .!= mempty)
                     <*> (o .:? "intent")
                     <*> (o .:? "manifest")
                     <*> (o .:? "finalProperties")
                     <*> (o .:? "properties"))

instance ToJSON ResourceUpdate where
        toJSON ResourceUpdate'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ruState,
                  ("error" .=) <$> _ruError,
                  ("warnings" .=) <$> _ruWarnings,
                  ("intent" .=) <$> _ruIntent,
                  ("manifest" .=) <$> _ruManifest,
                  ("finalProperties" .=) <$> _ruFinalProperties,
                  ("properties" .=) <$> _ruProperties])

--
-- /See:/ 'deploymentLabelEntry' smart constructor.
data DeploymentLabelEntry = DeploymentLabelEntry'
    { _dleValue :: !(Maybe Text)
    , _dleKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentLabelEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dleValue'
--
-- * 'dleKey'
deploymentLabelEntry
    :: DeploymentLabelEntry
deploymentLabelEntry =
    DeploymentLabelEntry'
    { _dleValue = Nothing
    , _dleKey = Nothing
    }

dleValue :: Lens' DeploymentLabelEntry (Maybe Text)
dleValue = lens _dleValue (\ s a -> s{_dleValue = a})

dleKey :: Lens' DeploymentLabelEntry (Maybe Text)
dleKey = lens _dleKey (\ s a -> s{_dleKey = a})

instance FromJSON DeploymentLabelEntry where
        parseJSON
          = withObject "DeploymentLabelEntry"
              (\ o ->
                 DeploymentLabelEntry' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DeploymentLabelEntry where
        toJSON DeploymentLabelEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dleValue, ("key" .=) <$> _dleKey])

-- |
--
-- /See:/ 'manifest' smart constructor.
data Manifest = Manifest'
    { _mInsertTime     :: !(Maybe Text)
    , _mLayout         :: !(Maybe Text)
    , _mConfig         :: !(Maybe ConfigFile)
    , _mExpandedConfig :: !(Maybe Text)
    , _mImports        :: !(Maybe [ImportFile])
    , _mSelfLink       :: !(Maybe Text)
    , _mName           :: !(Maybe Text)
    , _mId             :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Manifest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mInsertTime'
--
-- * 'mLayout'
--
-- * 'mConfig'
--
-- * 'mExpandedConfig'
--
-- * 'mImports'
--
-- * 'mSelfLink'
--
-- * 'mName'
--
-- * 'mId'
manifest
    :: Manifest
manifest =
    Manifest'
    { _mInsertTime = Nothing
    , _mLayout = Nothing
    , _mConfig = Nothing
    , _mExpandedConfig = Nothing
    , _mImports = Nothing
    , _mSelfLink = Nothing
    , _mName = Nothing
    , _mId = Nothing
    }

-- | [Output Only] Timestamp when the manifest was created, in RFC3339 text
-- format.
mInsertTime :: Lens' Manifest (Maybe Text)
mInsertTime
  = lens _mInsertTime (\ s a -> s{_mInsertTime = a})

-- | [Output Only] The YAML layout for this manifest.
mLayout :: Lens' Manifest (Maybe Text)
mLayout = lens _mLayout (\ s a -> s{_mLayout = a})

-- | [Output Only] The YAML configuration for this manifest.
mConfig :: Lens' Manifest (Maybe ConfigFile)
mConfig = lens _mConfig (\ s a -> s{_mConfig = a})

-- | [Output Only] The fully-expanded configuration file, including any
-- templates and references.
mExpandedConfig :: Lens' Manifest (Maybe Text)
mExpandedConfig
  = lens _mExpandedConfig
      (\ s a -> s{_mExpandedConfig = a})

-- | [Output Only] The imported files for this manifest.
mImports :: Lens' Manifest [ImportFile]
mImports
  = lens _mImports (\ s a -> s{_mImports = a}) .
      _Default
      . _Coerce

-- | [Output Only] Self link for the manifest.
mSelfLink :: Lens' Manifest (Maybe Text)
mSelfLink
  = lens _mSelfLink (\ s a -> s{_mSelfLink = a})

-- | [Output Only] The name of the manifest.
mName :: Lens' Manifest (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mId :: Lens' Manifest (Maybe Word64)
mId
  = lens _mId (\ s a -> s{_mId = a}) . mapping _Coerce

instance FromJSON Manifest where
        parseJSON
          = withObject "Manifest"
              (\ o ->
                 Manifest' <$>
                   (o .:? "insertTime") <*> (o .:? "layout") <*>
                     (o .:? "config")
                     <*> (o .:? "expandedConfig")
                     <*> (o .:? "imports" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Manifest where
        toJSON Manifest'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _mInsertTime,
                  ("layout" .=) <$> _mLayout,
                  ("config" .=) <$> _mConfig,
                  ("expandedConfig" .=) <$> _mExpandedConfig,
                  ("imports" .=) <$> _mImports,
                  ("selfLink" .=) <$> _mSelfLink,
                  ("name" .=) <$> _mName, ("id" .=) <$> _mId])

--
-- /See:/ 'resourceUpdateWarningsItem' smart constructor.
data ResourceUpdateWarningsItem = ResourceUpdateWarningsItem'
    { _ruwiData    :: !(Maybe [ResourceUpdateWarningsItemDataItem])
    , _ruwiCode    :: !(Maybe Text)
    , _ruwiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdateWarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruwiData'
--
-- * 'ruwiCode'
--
-- * 'ruwiMessage'
resourceUpdateWarningsItem
    :: ResourceUpdateWarningsItem
resourceUpdateWarningsItem =
    ResourceUpdateWarningsItem'
    { _ruwiData = Nothing
    , _ruwiCode = Nothing
    , _ruwiMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
ruwiData :: Lens' ResourceUpdateWarningsItem [ResourceUpdateWarningsItemDataItem]
ruwiData
  = lens _ruwiData (\ s a -> s{_ruwiData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
ruwiCode :: Lens' ResourceUpdateWarningsItem (Maybe Text)
ruwiCode = lens _ruwiCode (\ s a -> s{_ruwiCode = a})

-- | [Output Only] A human-readable description of the warning code.
ruwiMessage :: Lens' ResourceUpdateWarningsItem (Maybe Text)
ruwiMessage
  = lens _ruwiMessage (\ s a -> s{_ruwiMessage = a})

instance FromJSON ResourceUpdateWarningsItem where
        parseJSON
          = withObject "ResourceUpdateWarningsItem"
              (\ o ->
                 ResourceUpdateWarningsItem' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON ResourceUpdateWarningsItem where
        toJSON ResourceUpdateWarningsItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _ruwiData,
                  ("code" .=) <$> _ruwiCode,
                  ("message" .=) <$> _ruwiMessage])

-- |
--
-- /See:/ 'deploymentsCancelPreviewRequest' smart constructor.
newtype DeploymentsCancelPreviewRequest = DeploymentsCancelPreviewRequest'
    { _dcprFingerprint :: Maybe (Textual Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsCancelPreviewRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprFingerprint'
deploymentsCancelPreviewRequest
    :: DeploymentsCancelPreviewRequest
deploymentsCancelPreviewRequest =
    DeploymentsCancelPreviewRequest'
    { _dcprFingerprint = Nothing
    }

-- | Specifies a fingerprint for cancelPreview() requests. A fingerprint is a
-- randomly generated value that must be provided in cancelPreview()
-- requests to perform optimistic locking. This ensures optimistic
-- concurrency so that the deployment does not have conflicting requests
-- (e.g. if someone attempts to make a new update request while another
-- user attempts to cancel a preview, this would prevent one of the
-- requests). The fingerprint is initially generated by Deployment Manager
-- and changes after every request to modify a deployment. To get the
-- latest fingerprint value, perform a get() request on the deployment.
dcprFingerprint :: Lens' DeploymentsCancelPreviewRequest (Maybe Word8)
dcprFingerprint
  = lens _dcprFingerprint
      (\ s a -> s{_dcprFingerprint = a})
      . mapping _Coerce

instance FromJSON DeploymentsCancelPreviewRequest
         where
        parseJSON
          = withObject "DeploymentsCancelPreviewRequest"
              (\ o ->
                 DeploymentsCancelPreviewRequest' <$>
                   (o .:? "fingerprint"))

instance ToJSON DeploymentsCancelPreviewRequest where
        toJSON DeploymentsCancelPreviewRequest'{..}
          = object
              (catMaybes [("fingerprint" .=) <$> _dcprFingerprint])

-- |
--
-- /See:/ 'resource' smart constructor.
data Resource = Resource'
    { _rInsertTime      :: !(Maybe Text)
    , _rURL             :: !(Maybe Text)
    , _rWarnings        :: !(Maybe [ResourceWarningsItem])
    , _rUpdateTime      :: !(Maybe Text)
    , _rName            :: !(Maybe Text)
    , _rManifest        :: !(Maybe Text)
    , _rFinalProperties :: !(Maybe Text)
    , _rId              :: !(Maybe (Textual Word64))
    , _rType            :: !(Maybe Text)
    , _rUpdate          :: !(Maybe ResourceUpdate)
    , _rProperties      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rInsertTime'
--
-- * 'rURL'
--
-- * 'rWarnings'
--
-- * 'rUpdateTime'
--
-- * 'rName'
--
-- * 'rManifest'
--
-- * 'rFinalProperties'
--
-- * 'rId'
--
-- * 'rType'
--
-- * 'rUpdate'
--
-- * 'rProperties'
resource
    :: Resource
resource =
    Resource'
    { _rInsertTime = Nothing
    , _rURL = Nothing
    , _rWarnings = Nothing
    , _rUpdateTime = Nothing
    , _rName = Nothing
    , _rManifest = Nothing
    , _rFinalProperties = Nothing
    , _rId = Nothing
    , _rType = Nothing
    , _rUpdate = Nothing
    , _rProperties = Nothing
    }

-- | [Output Only] Timestamp when the resource was created or acquired, in
-- RFC3339 text format .
rInsertTime :: Lens' Resource (Maybe Text)
rInsertTime
  = lens _rInsertTime (\ s a -> s{_rInsertTime = a})

-- | [Output Only] The URL of the actual resource.
rURL :: Lens' Resource (Maybe Text)
rURL = lens _rURL (\ s a -> s{_rURL = a})

-- | [Output Only] If warning messages are generated during processing of
-- this resource, this field will be populated.
rWarnings :: Lens' Resource [ResourceWarningsItem]
rWarnings
  = lens _rWarnings (\ s a -> s{_rWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] Timestamp when the resource was updated, in RFC3339 text
-- format .
rUpdateTime :: Lens' Resource (Maybe Text)
rUpdateTime
  = lens _rUpdateTime (\ s a -> s{_rUpdateTime = a})

-- | [Output Only] The name of the resource as it appears in the YAML config.
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | [Output Only] URL of the manifest representing the current configuration
-- of this resource.
rManifest :: Lens' Resource (Maybe Text)
rManifest
  = lens _rManifest (\ s a -> s{_rManifest = a})

-- | [Output Only] The evaluated properties of the resource with references
-- expanded. Returned as serialized YAML.
rFinalProperties :: Lens' Resource (Maybe Text)
rFinalProperties
  = lens _rFinalProperties
      (\ s a -> s{_rFinalProperties = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
rId :: Lens' Resource (Maybe Word64)
rId
  = lens _rId (\ s a -> s{_rId = a}) . mapping _Coerce

-- | [Output Only] The type of the resource, for example compute.v1.instance,
-- or replicaPools.v1beta2.instanceGroupManager.
rType :: Lens' Resource (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | [Output Only] If Deployment Manager is currently updating or previewing
-- an update to this resource, the updated configuration appears here.
rUpdate :: Lens' Resource (Maybe ResourceUpdate)
rUpdate = lens _rUpdate (\ s a -> s{_rUpdate = a})

-- | [Output Only] The current properties of the resource before any
-- references have been filled in. Returned as serialized YAML.
rProperties :: Lens' Resource (Maybe Text)
rProperties
  = lens _rProperties (\ s a -> s{_rProperties = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "insertTime") <*> (o .:? "url") <*>
                     (o .:? "warnings" .!= mempty)
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "manifest")
                     <*> (o .:? "finalProperties")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "update")
                     <*> (o .:? "properties"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _rInsertTime,
                  ("url" .=) <$> _rURL, ("warnings" .=) <$> _rWarnings,
                  ("updateTime" .=) <$> _rUpdateTime,
                  ("name" .=) <$> _rName,
                  ("manifest" .=) <$> _rManifest,
                  ("finalProperties" .=) <$> _rFinalProperties,
                  ("id" .=) <$> _rId, ("type" .=) <$> _rType,
                  ("update" .=) <$> _rUpdate,
                  ("properties" .=) <$> _rProperties])

--
-- /See:/ 'deploymentUpdateLabelEntry' smart constructor.
data DeploymentUpdateLabelEntry = DeploymentUpdateLabelEntry'
    { _duleValue :: !(Maybe Text)
    , _duleKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentUpdateLabelEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duleValue'
--
-- * 'duleKey'
deploymentUpdateLabelEntry
    :: DeploymentUpdateLabelEntry
deploymentUpdateLabelEntry =
    DeploymentUpdateLabelEntry'
    { _duleValue = Nothing
    , _duleKey = Nothing
    }

duleValue :: Lens' DeploymentUpdateLabelEntry (Maybe Text)
duleValue
  = lens _duleValue (\ s a -> s{_duleValue = a})

duleKey :: Lens' DeploymentUpdateLabelEntry (Maybe Text)
duleKey = lens _duleKey (\ s a -> s{_duleKey = a})

instance FromJSON DeploymentUpdateLabelEntry where
        parseJSON
          = withObject "DeploymentUpdateLabelEntry"
              (\ o ->
                 DeploymentUpdateLabelEntry' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DeploymentUpdateLabelEntry where
        toJSON DeploymentUpdateLabelEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _duleValue,
                  ("key" .=) <$> _duleKey])

--
-- /See:/ 'resourceUpdateErrorErrorsItem' smart constructor.
data ResourceUpdateErrorErrorsItem = ResourceUpdateErrorErrorsItem'
    { _rueeiLocation :: !(Maybe Text)
    , _rueeiCode     :: !(Maybe Text)
    , _rueeiMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdateErrorErrorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rueeiLocation'
--
-- * 'rueeiCode'
--
-- * 'rueeiMessage'
resourceUpdateErrorErrorsItem
    :: ResourceUpdateErrorErrorsItem
resourceUpdateErrorErrorsItem =
    ResourceUpdateErrorErrorsItem'
    { _rueeiLocation = Nothing
    , _rueeiCode = Nothing
    , _rueeiMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request that caused the error.
-- This property is optional.
rueeiLocation :: Lens' ResourceUpdateErrorErrorsItem (Maybe Text)
rueeiLocation
  = lens _rueeiLocation
      (\ s a -> s{_rueeiLocation = a})

-- | [Output Only] The error type identifier for this error.
rueeiCode :: Lens' ResourceUpdateErrorErrorsItem (Maybe Text)
rueeiCode
  = lens _rueeiCode (\ s a -> s{_rueeiCode = a})

-- | [Output Only] An optional, human-readable error message.
rueeiMessage :: Lens' ResourceUpdateErrorErrorsItem (Maybe Text)
rueeiMessage
  = lens _rueeiMessage (\ s a -> s{_rueeiMessage = a})

instance FromJSON ResourceUpdateErrorErrorsItem where
        parseJSON
          = withObject "ResourceUpdateErrorErrorsItem"
              (\ o ->
                 ResourceUpdateErrorErrorsItem' <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON ResourceUpdateErrorErrorsItem where
        toJSON ResourceUpdateErrorErrorsItem'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _rueeiLocation,
                  ("code" .=) <$> _rueeiCode,
                  ("message" .=) <$> _rueeiMessage])

-- | A response containing a partial list of manifests and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'manifestsListResponse' smart constructor.
data ManifestsListResponse = ManifestsListResponse'
    { _mlrNextPageToken :: !(Maybe Text)
    , _mlrManifests     :: !(Maybe [Manifest])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrNextPageToken'
--
-- * 'mlrManifests'
manifestsListResponse
    :: ManifestsListResponse
manifestsListResponse =
    ManifestsListResponse'
    { _mlrNextPageToken = Nothing
    , _mlrManifests = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mlrNextPageToken :: Lens' ManifestsListResponse (Maybe Text)
mlrNextPageToken
  = lens _mlrNextPageToken
      (\ s a -> s{_mlrNextPageToken = a})

-- | [Output Only] Manifests contained in this list response.
mlrManifests :: Lens' ManifestsListResponse [Manifest]
mlrManifests
  = lens _mlrManifests (\ s a -> s{_mlrManifests = a})
      . _Default
      . _Coerce

instance FromJSON ManifestsListResponse where
        parseJSON
          = withObject "ManifestsListResponse"
              (\ o ->
                 ManifestsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "manifests" .!= mempty))

instance ToJSON ManifestsListResponse where
        toJSON ManifestsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mlrNextPageToken,
                  ("manifests" .=) <$> _mlrManifests])

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
--
-- /See:/ 'operationError' smart constructor.
newtype OperationError = OperationError'
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
    OperationError'
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
                 OperationError' <$> (o .:? "errors" .!= mempty))

instance ToJSON OperationError where
        toJSON OperationError'{..}
          = object (catMaybes [("errors" .=) <$> _oeErrors])

-- | A resource type supported by Deployment Manager.
--
-- /See:/ 'type'' smart constructor.
data Type = Type'
    { _tInsertTime :: !(Maybe Text)
    , _tSelfLink   :: !(Maybe Text)
    , _tName       :: !(Maybe Text)
    , _tId         :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tInsertTime'
--
-- * 'tSelfLink'
--
-- * 'tName'
--
-- * 'tId'
type'
    :: Type
type' =
    Type'
    { _tInsertTime = Nothing
    , _tSelfLink = Nothing
    , _tName = Nothing
    , _tId = Nothing
    }

-- | [Output Only] Timestamp when the type was created, in RFC3339 text
-- format.
tInsertTime :: Lens' Type (Maybe Text)
tInsertTime
  = lens _tInsertTime (\ s a -> s{_tInsertTime = a})

-- | [Output Only] Self link for the type.
tSelfLink :: Lens' Type (Maybe Text)
tSelfLink
  = lens _tSelfLink (\ s a -> s{_tSelfLink = a})

-- | Name of the type.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
tId :: Lens' Type (Maybe Word64)
tId
  = lens _tId (\ s a -> s{_tId = a}) . mapping _Coerce

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "insertTime") <*> (o .:? "selfLink") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _tInsertTime,
                  ("selfLink" .=) <$> _tSelfLink,
                  ("name" .=) <$> _tName, ("id" .=) <$> _tId])

-- |
--
-- /See:/ 'importFile' smart constructor.
data ImportFile = ImportFile'
    { _ifContent :: !(Maybe Text)
    , _ifName    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifContent'
--
-- * 'ifName'
importFile
    :: ImportFile
importFile =
    ImportFile'
    { _ifContent = Nothing
    , _ifName = Nothing
    }

-- | The contents of the file.
ifContent :: Lens' ImportFile (Maybe Text)
ifContent
  = lens _ifContent (\ s a -> s{_ifContent = a})

-- | The name of the file.
ifName :: Lens' ImportFile (Maybe Text)
ifName = lens _ifName (\ s a -> s{_ifName = a})

instance FromJSON ImportFile where
        parseJSON
          = withObject "ImportFile"
              (\ o ->
                 ImportFile' <$> (o .:? "content") <*> (o .:? "name"))

instance ToJSON ImportFile where
        toJSON ImportFile'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _ifContent,
                  ("name" .=) <$> _ifName])

--
-- /See:/ 'operationErrorErrorsItem' smart constructor.
data OperationErrorErrorsItem = OperationErrorErrorsItem'
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
    OperationErrorErrorsItem'
    { _oeeiLocation = Nothing
    , _oeeiCode = Nothing
    , _oeeiMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request that caused the error.
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
                 OperationErrorErrorsItem' <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationErrorErrorsItem where
        toJSON OperationErrorErrorsItem'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _oeeiLocation,
                  ("code" .=) <$> _oeeiCode,
                  ("message" .=) <$> _oeeiMessage])

-- |
--
-- /See:/ 'deploymentsStopRequest' smart constructor.
newtype DeploymentsStopRequest = DeploymentsStopRequest'
    { _dsrFingerprint :: Maybe (Textual Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsStopRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrFingerprint'
deploymentsStopRequest
    :: DeploymentsStopRequest
deploymentsStopRequest =
    DeploymentsStopRequest'
    { _dsrFingerprint = Nothing
    }

-- | Specifies a fingerprint for stop() requests. A fingerprint is a randomly
-- generated value that must be provided in stop() requests to perform
-- optimistic locking. This ensures optimistic concurrency so that the
-- deployment does not have conflicting requests (e.g. if someone attempts
-- to make a new update request while another user attempts to stop an
-- ongoing update request, this would prevent a collision). The fingerprint
-- is initially generated by Deployment Manager and changes after every
-- request to modify a deployment. To get the latest fingerprint value,
-- perform a get() request on the deployment.
dsrFingerprint :: Lens' DeploymentsStopRequest (Maybe Word8)
dsrFingerprint
  = lens _dsrFingerprint
      (\ s a -> s{_dsrFingerprint = a})
      . mapping _Coerce

instance FromJSON DeploymentsStopRequest where
        parseJSON
          = withObject "DeploymentsStopRequest"
              (\ o ->
                 DeploymentsStopRequest' <$> (o .:? "fingerprint"))

instance ToJSON DeploymentsStopRequest where
        toJSON DeploymentsStopRequest'{..}
          = object
              (catMaybes [("fingerprint" .=) <$> _dsrFingerprint])

--
-- /See:/ 'resourceWarningsItemDataItem' smart constructor.
data ResourceWarningsItemDataItem = ResourceWarningsItemDataItem'
    { _rwidiValue :: !(Maybe Text)
    , _rwidiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceWarningsItemDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwidiValue'
--
-- * 'rwidiKey'
resourceWarningsItemDataItem
    :: ResourceWarningsItemDataItem
resourceWarningsItemDataItem =
    ResourceWarningsItemDataItem'
    { _rwidiValue = Nothing
    , _rwidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
rwidiValue :: Lens' ResourceWarningsItemDataItem (Maybe Text)
rwidiValue
  = lens _rwidiValue (\ s a -> s{_rwidiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
rwidiKey :: Lens' ResourceWarningsItemDataItem (Maybe Text)
rwidiKey = lens _rwidiKey (\ s a -> s{_rwidiKey = a})

instance FromJSON ResourceWarningsItemDataItem where
        parseJSON
          = withObject "ResourceWarningsItemDataItem"
              (\ o ->
                 ResourceWarningsItemDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ResourceWarningsItemDataItem where
        toJSON ResourceWarningsItemDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rwidiValue,
                  ("key" .=) <$> _rwidiKey])

-- | [Output Only] If errors are generated during update of the resource,
-- this field will be populated.
--
-- /See:/ 'resourceUpdateError' smart constructor.
newtype ResourceUpdateError = ResourceUpdateError'
    { _rueErrors :: Maybe [ResourceUpdateErrorErrorsItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdateError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rueErrors'
resourceUpdateError
    :: ResourceUpdateError
resourceUpdateError =
    ResourceUpdateError'
    { _rueErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
rueErrors :: Lens' ResourceUpdateError [ResourceUpdateErrorErrorsItem]
rueErrors
  = lens _rueErrors (\ s a -> s{_rueErrors = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceUpdateError where
        parseJSON
          = withObject "ResourceUpdateError"
              (\ o ->
                 ResourceUpdateError' <$> (o .:? "errors" .!= mempty))

instance ToJSON ResourceUpdateError where
        toJSON ResourceUpdateError'{..}
          = object (catMaybes [("errors" .=) <$> _rueErrors])

-- | A response containing a partial list of deployments and a page token
-- used to build the next request if the request has been truncated.
--
-- /See:/ 'deploymentsListResponse' smart constructor.
data DeploymentsListResponse = DeploymentsListResponse'
    { _dlrNextPageToken :: !(Maybe Text)
    , _dlrDeployments   :: !(Maybe [Deployment])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrNextPageToken'
--
-- * 'dlrDeployments'
deploymentsListResponse
    :: DeploymentsListResponse
deploymentsListResponse =
    DeploymentsListResponse'
    { _dlrNextPageToken = Nothing
    , _dlrDeployments = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dlrNextPageToken :: Lens' DeploymentsListResponse (Maybe Text)
dlrNextPageToken
  = lens _dlrNextPageToken
      (\ s a -> s{_dlrNextPageToken = a})

-- | [Output Only] The deployments contained in this response.
dlrDeployments :: Lens' DeploymentsListResponse [Deployment]
dlrDeployments
  = lens _dlrDeployments
      (\ s a -> s{_dlrDeployments = a})
      . _Default
      . _Coerce

instance FromJSON DeploymentsListResponse where
        parseJSON
          = withObject "DeploymentsListResponse"
              (\ o ->
                 DeploymentsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deployments" .!= mempty))

instance ToJSON DeploymentsListResponse where
        toJSON DeploymentsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrNextPageToken,
                  ("deployments" .=) <$> _dlrDeployments])

--
-- /See:/ 'resourceWarningsItem' smart constructor.
data ResourceWarningsItem = ResourceWarningsItem'
    { _rwiData    :: !(Maybe [ResourceWarningsItemDataItem])
    , _rwiCode    :: !(Maybe Text)
    , _rwiMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceWarningsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwiData'
--
-- * 'rwiCode'
--
-- * 'rwiMessage'
resourceWarningsItem
    :: ResourceWarningsItem
resourceWarningsItem =
    ResourceWarningsItem'
    { _rwiData = Nothing
    , _rwiCode = Nothing
    , _rwiMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
rwiData :: Lens' ResourceWarningsItem [ResourceWarningsItemDataItem]
rwiData
  = lens _rwiData (\ s a -> s{_rwiData = a}) . _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
rwiCode :: Lens' ResourceWarningsItem (Maybe Text)
rwiCode = lens _rwiCode (\ s a -> s{_rwiCode = a})

-- | [Output Only] A human-readable description of the warning code.
rwiMessage :: Lens' ResourceWarningsItem (Maybe Text)
rwiMessage
  = lens _rwiMessage (\ s a -> s{_rwiMessage = a})

instance FromJSON ResourceWarningsItem where
        parseJSON
          = withObject "ResourceWarningsItem"
              (\ o ->
                 ResourceWarningsItem' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON ResourceWarningsItem where
        toJSON ResourceWarningsItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _rwiData, ("code" .=) <$> _rwiCode,
                  ("message" .=) <$> _rwiMessage])

-- |
--
-- /See:/ 'targetConfiguration' smart constructor.
data TargetConfiguration = TargetConfiguration'
    { _tcConfig  :: !(Maybe ConfigFile)
    , _tcImports :: !(Maybe [ImportFile])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcConfig'
--
-- * 'tcImports'
targetConfiguration
    :: TargetConfiguration
targetConfiguration =
    TargetConfiguration'
    { _tcConfig = Nothing
    , _tcImports = Nothing
    }

-- | The configuration to use for this deployment.
tcConfig :: Lens' TargetConfiguration (Maybe ConfigFile)
tcConfig = lens _tcConfig (\ s a -> s{_tcConfig = a})

-- | Specifies any files to import for this configuration. This can be used
-- to import templates or other files. For example, you might import a text
-- file in order to use the file in a template.
tcImports :: Lens' TargetConfiguration [ImportFile]
tcImports
  = lens _tcImports (\ s a -> s{_tcImports = a}) .
      _Default
      . _Coerce

instance FromJSON TargetConfiguration where
        parseJSON
          = withObject "TargetConfiguration"
              (\ o ->
                 TargetConfiguration' <$>
                   (o .:? "config") <*> (o .:? "imports" .!= mempty))

instance ToJSON TargetConfiguration where
        toJSON TargetConfiguration'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _tcConfig,
                  ("imports" .=) <$> _tcImports])

--
-- /See:/ 'operationWarningsItem' smart constructor.
data OperationWarningsItem = OperationWarningsItem'
    { _owiData    :: !(Maybe [OperationWarningsItemDataItem])
    , _owiCode    :: !(Maybe Text)
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
    OperationWarningsItem'
    { _owiData = Nothing
    , _owiCode = Nothing
    , _owiMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
owiData :: Lens' OperationWarningsItem [OperationWarningsItemDataItem]
owiData
  = lens _owiData (\ s a -> s{_owiData = a}) . _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
owiCode :: Lens' OperationWarningsItem (Maybe Text)
owiCode = lens _owiCode (\ s a -> s{_owiCode = a})

-- | [Output Only] A human-readable description of the warning code.
owiMessage :: Lens' OperationWarningsItem (Maybe Text)
owiMessage
  = lens _owiMessage (\ s a -> s{_owiMessage = a})

instance FromJSON OperationWarningsItem where
        parseJSON
          = withObject "OperationWarningsItem"
              (\ o ->
                 OperationWarningsItem' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationWarningsItem where
        toJSON OperationWarningsItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _owiData, ("code" .=) <$> _owiCode,
                  ("message" .=) <$> _owiMessage])

-- |
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment'
    { _dInsertTime  :: !(Maybe Text)
    , _dOperation   :: !(Maybe Operation)
    , _dFingerprint :: !(Maybe (Textual Word8))
    , _dName        :: !(Maybe Text)
    , _dManifest    :: !(Maybe Text)
    , _dId          :: !(Maybe (Textual Word64))
    , _dLabels      :: !(Maybe [DeploymentLabelEntry])
    , _dDescription :: !(Maybe Text)
    , _dUpdate      :: !(Maybe DeploymentUpdate)
    , _dTarget      :: !(Maybe TargetConfiguration)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dInsertTime'
--
-- * 'dOperation'
--
-- * 'dFingerprint'
--
-- * 'dName'
--
-- * 'dManifest'
--
-- * 'dId'
--
-- * 'dLabels'
--
-- * 'dDescription'
--
-- * 'dUpdate'
--
-- * 'dTarget'
deployment
    :: Deployment
deployment =
    Deployment'
    { _dInsertTime = Nothing
    , _dOperation = Nothing
    , _dFingerprint = Nothing
    , _dName = Nothing
    , _dManifest = Nothing
    , _dId = Nothing
    , _dLabels = Nothing
    , _dDescription = Nothing
    , _dUpdate = Nothing
    , _dTarget = Nothing
    }

-- | [Output Only] Timestamp when the deployment was created, in RFC3339 text
-- format .
dInsertTime :: Lens' Deployment (Maybe Text)
dInsertTime
  = lens _dInsertTime (\ s a -> s{_dInsertTime = a})

-- | [Output Only] The Operation that most recently ran, or is currently
-- running, on this deployment.
dOperation :: Lens' Deployment (Maybe Operation)
dOperation
  = lens _dOperation (\ s a -> s{_dOperation = a})

-- | Provides a fingerprint to use in requests to modify a deployment, such
-- as update(), stop(), and cancelPreview() requests. A fingerprint is a
-- randomly generated value that must be provided with update(), stop(),
-- and cancelPreview() requests to perform optimistic locking. This ensures
-- optimistic concurrency so that only one request happens at a time. The
-- fingerprint is initially generated by Deployment Manager and changes
-- after every request to modify data. To get the latest fingerprint value,
-- perform a get() request to a deployment.
dFingerprint :: Lens' Deployment (Maybe Word8)
dFingerprint
  = lens _dFingerprint (\ s a -> s{_dFingerprint = a})
      . mapping _Coerce

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
dName :: Lens' Deployment (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | [Output Only] URL of the manifest representing the last manifest that
-- was successfully deployed.
dManifest :: Lens' Deployment (Maybe Text)
dManifest
  = lens _dManifest (\ s a -> s{_dManifest = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
dId :: Lens' Deployment (Maybe Word64)
dId
  = lens _dId (\ s a -> s{_dId = a}) . mapping _Coerce

-- | Map of labels; provided by the client when the resource is created or
-- updated. Specifically: Label keys must be between 1 and 63 characters
-- long and must conform to the following regular expression:
-- [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63
-- characters long and must conform to the regular expression
-- ([a-z]([-a-z0-9]*[a-z0-9])?)?
dLabels :: Lens' Deployment [DeploymentLabelEntry]
dLabels
  = lens _dLabels (\ s a -> s{_dLabels = a}) . _Default
      . _Coerce

-- | An optional user-provided description of the deployment.
dDescription :: Lens' Deployment (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | [Output Only] If Deployment Manager is currently updating or previewing
-- an update to this deployment, the updated configuration appears here.
dUpdate :: Lens' Deployment (Maybe DeploymentUpdate)
dUpdate = lens _dUpdate (\ s a -> s{_dUpdate = a})

-- | [Input Only] The parameters that define your deployment, including the
-- deployment configuration and relevant templates.
dTarget :: Lens' Deployment (Maybe TargetConfiguration)
dTarget = lens _dTarget (\ s a -> s{_dTarget = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment' <$>
                   (o .:? "insertTime") <*> (o .:? "operation") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "name")
                     <*> (o .:? "manifest")
                     <*> (o .:? "id")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "update")
                     <*> (o .:? "target"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _dInsertTime,
                  ("operation" .=) <$> _dOperation,
                  ("fingerprint" .=) <$> _dFingerprint,
                  ("name" .=) <$> _dName,
                  ("manifest" .=) <$> _dManifest, ("id" .=) <$> _dId,
                  ("labels" .=) <$> _dLabels,
                  ("description" .=) <$> _dDescription,
                  ("update" .=) <$> _dUpdate,
                  ("target" .=) <$> _dTarget])
