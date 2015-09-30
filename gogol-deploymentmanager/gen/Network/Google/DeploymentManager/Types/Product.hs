{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types.Product where

import           Network.Google.DeploymentManager.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'operationWarnings' smart constructor.
data OperationWarnings = OperationWarnings
    { _owData    :: !(Maybe [OperationWarningsData])
    , _owCode    :: !(Maybe Text)
    , _owMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owData'
--
-- * 'owCode'
--
-- * 'owMessage'
operationWarnings
    :: OperationWarnings
operationWarnings =
    OperationWarnings
    { _owData = Nothing
    , _owCode = Nothing
    , _owMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
owData :: Lens' OperationWarnings [OperationWarningsData]
owData
  = lens _owData (\ s a -> s{_owData = a}) . _Default .
      _Coerce

-- | [Output Only] The warning type identifier for this warning.
owCode :: Lens' OperationWarnings (Maybe Text)
owCode = lens _owCode (\ s a -> s{_owCode = a})

-- | [Output Only] Optional human-readable details for this warning.
owMessage :: Lens' OperationWarnings (Maybe Text)
owMessage
  = lens _owMessage (\ s a -> s{_owMessage = a})

instance FromJSON OperationWarnings where
        parseJSON
          = withObject "OperationWarnings"
              (\ o ->
                 OperationWarnings <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationWarnings where
        toJSON OperationWarnings{..}
          = object
              (catMaybes
                 [("data" .=) <$> _owData, ("code" .=) <$> _owCode,
                  ("message" .=) <$> _owMessage])

--
-- /See:/ 'operationWarningsData' smart constructor.
data OperationWarningsData = OperationWarningsData
    { _owdValue :: !(Maybe Text)
    , _owdKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationWarningsData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owdValue'
--
-- * 'owdKey'
operationWarningsData
    :: OperationWarningsData
operationWarningsData =
    OperationWarningsData
    { _owdValue = Nothing
    , _owdKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
owdValue :: Lens' OperationWarningsData (Maybe Text)
owdValue = lens _owdValue (\ s a -> s{_owdValue = a})

-- | [Output Only] A key for the warning data.
owdKey :: Lens' OperationWarningsData (Maybe Text)
owdKey = lens _owdKey (\ s a -> s{_owdKey = a})

instance FromJSON OperationWarningsData where
        parseJSON
          = withObject "OperationWarningsData"
              (\ o ->
                 OperationWarningsData <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OperationWarningsData where
        toJSON OperationWarningsData{..}
          = object
              (catMaybes
                 [("value" .=) <$> _owdValue, ("key" .=) <$> _owdKey])

-- | A response containing a partial list of operations and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'operationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse
    { _olrNextPageToken :: !(Maybe Text)
    , _olrOperations    :: !(Maybe [Maybe Operation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    OperationsListResponse
    { _olrNextPageToken = Nothing
    , _olrOperations = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
olrNextPageToken :: Lens' OperationsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | [Output Only] Operations contained in this list response.
olrOperations :: Lens' OperationsListResponse [Maybe Operation]
olrOperations
  = lens _olrOperations
      (\ s a -> s{_olrOperations = a})
      . _Default
      . _Coerce

instance FromJSON OperationsListResponse where
        parseJSON
          = withObject "OperationsListResponse"
              (\ o ->
                 OperationsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON OperationsListResponse where
        toJSON OperationsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  ("operations" .=) <$> _olrOperations])

-- | A response that returns all Types supported by Deployment Manager
--
-- /See:/ 'typesListResponse' smart constructor.
data TypesListResponse = TypesListResponse
    { _tlrNextPageToken :: !(Maybe Text)
    , _tlrTypes         :: !(Maybe [Maybe Type])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TypesListResponse
    { _tlrNextPageToken = Nothing
    , _tlrTypes = Nothing
    }

-- | A token used to continue a truncated list request.
tlrNextPageToken :: Lens' TypesListResponse (Maybe Text)
tlrNextPageToken
  = lens _tlrNextPageToken
      (\ s a -> s{_tlrNextPageToken = a})

-- | [Output Only] A list of resource types supported by Deployment Manager.
tlrTypes :: Lens' TypesListResponse [Maybe Type]
tlrTypes
  = lens _tlrTypes (\ s a -> s{_tlrTypes = a}) .
      _Default
      . _Coerce

instance FromJSON TypesListResponse where
        parseJSON
          = withObject "TypesListResponse"
              (\ o ->
                 TypesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "types" .!= mempty))

instance ToJSON TypesListResponse where
        toJSON TypesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tlrNextPageToken,
                  ("types" .=) <$> _tlrTypes])

-- | An Operation resource, used to manage asynchronous API requests.
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
    , _oWarnings            :: !(Maybe [OperationWarnings])
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
    , _oKind = "deploymentmanager#operation"
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

-- | [Output Only] Unique target ID which identifies a particular incarnation
-- of the target.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
oStatus :: Lens' Operation (Maybe Text)
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
oHttpErrorMessage :: Lens' Operation (Maybe Text)
oHttpErrorMessage
  = lens _oHttpErrorMessage
      (\ s a -> s{_oHttpErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | [Output Only] If warning messages are generated during processing of the
-- operation, this field will be populated.
oWarnings :: Lens' Operation [OperationWarnings]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as 404.
oHttpErrorStatusCode :: Lens' Operation (Maybe Int32)
oHttpErrorStatusCode
  = lens _oHttpErrorStatusCode
      (\ s a -> s{_oHttpErrorStatusCode = a})

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

-- | A response containing a partial list of resources and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'resourcesListResponse' smart constructor.
data ResourcesListResponse = ResourcesListResponse
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrResources     :: !(Maybe [Maybe Resource])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ResourcesListResponse
    { _rlrNextPageToken = Nothing
    , _rlrResources = Nothing
    }

-- | A token used to continue a truncated list request.
rlrNextPageToken :: Lens' ResourcesListResponse (Maybe Text)
rlrNextPageToken
  = lens _rlrNextPageToken
      (\ s a -> s{_rlrNextPageToken = a})

-- | Resources contained in this list response.
rlrResources :: Lens' ResourcesListResponse [Maybe Resource]
rlrResources
  = lens _rlrResources (\ s a -> s{_rlrResources = a})
      . _Default
      . _Coerce

instance FromJSON ResourcesListResponse where
        parseJSON
          = withObject "ResourcesListResponse"
              (\ o ->
                 ResourcesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ResourcesListResponse where
        toJSON ResourcesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlrNextPageToken,
                  ("resources" .=) <$> _rlrResources])

-- |
--
-- /See:/ 'deploymentUpdate' smart constructor.
data DeploymentUpdate = DeploymentUpdate
    { _duManifest :: !(Maybe Text)
    , _duErrors   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duManifest'
--
-- * 'duErrors'
deploymentUpdate
    :: DeploymentUpdate
deploymentUpdate =
    DeploymentUpdate
    { _duManifest = Nothing
    , _duErrors = Nothing
    }

-- | [Output Only] URL of the manifest representing the update configuration
-- of this deployment.
duManifest :: Lens' DeploymentUpdate (Maybe Text)
duManifest
  = lens _duManifest (\ s a -> s{_duManifest = a})

-- | [Output Only] List of all errors encountered while trying to enact the
-- update.
duErrors :: Lens' DeploymentUpdate [Text]
duErrors
  = lens _duErrors (\ s a -> s{_duErrors = a}) .
      _Default
      . _Coerce

instance FromJSON DeploymentUpdate where
        parseJSON
          = withObject "DeploymentUpdate"
              (\ o ->
                 DeploymentUpdate <$>
                   (o .:? "manifest") <*> (o .:? "errors" .!= mempty))

instance ToJSON DeploymentUpdate where
        toJSON DeploymentUpdate{..}
          = object
              (catMaybes
                 [("manifest" .=) <$> _duManifest,
                  ("errors" .=) <$> _duErrors])

-- |
--
-- /See:/ 'resourceUpdate' smart constructor.
data ResourceUpdate = ResourceUpdate
    { _ruState           :: !(Maybe Text)
    , _ruIntent          :: !(Maybe Text)
    , _ruManifest        :: !(Maybe Text)
    , _ruFinalProperties :: !(Maybe Text)
    , _ruErrors          :: !(Maybe [Text])
    , _ruProperties      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruState'
--
-- * 'ruIntent'
--
-- * 'ruManifest'
--
-- * 'ruFinalProperties'
--
-- * 'ruErrors'
--
-- * 'ruProperties'
resourceUpdate
    :: ResourceUpdate
resourceUpdate =
    ResourceUpdate
    { _ruState = Nothing
    , _ruIntent = Nothing
    , _ruManifest = Nothing
    , _ruFinalProperties = Nothing
    , _ruErrors = Nothing
    , _ruProperties = Nothing
    }

-- | [Output Only] The state of the resource.
ruState :: Lens' ResourceUpdate (Maybe Text)
ruState = lens _ruState (\ s a -> s{_ruState = a})

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

-- | [Output Only] List of all errors encountered while trying to enact
-- update.intent.
ruErrors :: Lens' ResourceUpdate [Text]
ruErrors
  = lens _ruErrors (\ s a -> s{_ruErrors = a}) .
      _Default
      . _Coerce

-- | [Output Only] The set of updated properties for this resource, before
-- references are expanded. Returned as serialized YAML.
ruProperties :: Lens' ResourceUpdate (Maybe Text)
ruProperties
  = lens _ruProperties (\ s a -> s{_ruProperties = a})

instance FromJSON ResourceUpdate where
        parseJSON
          = withObject "ResourceUpdate"
              (\ o ->
                 ResourceUpdate <$>
                   (o .:? "state") <*> (o .:? "intent") <*>
                     (o .:? "manifest")
                     <*> (o .:? "finalProperties")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "properties"))

instance ToJSON ResourceUpdate where
        toJSON ResourceUpdate{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ruState,
                  ("intent" .=) <$> _ruIntent,
                  ("manifest" .=) <$> _ruManifest,
                  ("finalProperties" .=) <$> _ruFinalProperties,
                  ("errors" .=) <$> _ruErrors,
                  ("properties" .=) <$> _ruProperties])

-- |
--
-- /See:/ 'manifest' smart constructor.
data Manifest = Manifest
    { _mInsertTime      :: !(Maybe Text)
    , _mLayout          :: !(Maybe Text)
    , _mConfig          :: !(Maybe Text)
    , _mImports         :: !(Maybe [Maybe ImportFile])
    , _mSelfLink        :: !(Maybe Text)
    , _mName            :: !(Maybe Text)
    , _mEvaluatedConfig :: !(Maybe Text)
    , _mId              :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mImports'
--
-- * 'mSelfLink'
--
-- * 'mName'
--
-- * 'mEvaluatedConfig'
--
-- * 'mId'
manifest
    :: Manifest
manifest =
    Manifest
    { _mInsertTime = Nothing
    , _mLayout = Nothing
    , _mConfig = Nothing
    , _mImports = Nothing
    , _mSelfLink = Nothing
    , _mName = Nothing
    , _mEvaluatedConfig = Nothing
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
mConfig :: Lens' Manifest (Maybe Text)
mConfig = lens _mConfig (\ s a -> s{_mConfig = a})

-- | [Output Only] The imported files for this manifest.
mImports :: Lens' Manifest [Maybe ImportFile]
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

-- | [Output Only] The fully-expanded configuration file, including any
-- templates and references.
mEvaluatedConfig :: Lens' Manifest (Maybe Text)
mEvaluatedConfig
  = lens _mEvaluatedConfig
      (\ s a -> s{_mEvaluatedConfig = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
mId :: Lens' Manifest (Maybe Word64)
mId = lens _mId (\ s a -> s{_mId = a})

instance FromJSON Manifest where
        parseJSON
          = withObject "Manifest"
              (\ o ->
                 Manifest <$>
                   (o .:? "insertTime") <*> (o .:? "layout") <*>
                     (o .:? "config")
                     <*> (o .:? "imports" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "evaluatedConfig")
                     <*> (o .:? "id"))

instance ToJSON Manifest where
        toJSON Manifest{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _mInsertTime,
                  ("layout" .=) <$> _mLayout,
                  ("config" .=) <$> _mConfig,
                  ("imports" .=) <$> _mImports,
                  ("selfLink" .=) <$> _mSelfLink,
                  ("name" .=) <$> _mName,
                  ("evaluatedConfig" .=) <$> _mEvaluatedConfig,
                  ("id" .=) <$> _mId])

-- |
--
-- /See:/ 'resource' smart constructor.
data Resource = Resource
    { _rInsertTime      :: !(Maybe Text)
    , _rUrl             :: !(Maybe Text)
    , _rUpdateTime      :: !(Maybe Text)
    , _rName            :: !(Maybe Text)
    , _rManifest        :: !(Maybe Text)
    , _rFinalProperties :: !(Maybe Text)
    , _rId              :: !(Maybe Word64)
    , _rType            :: !(Maybe Text)
    , _rUpdate          :: !(Maybe (Maybe ResourceUpdate))
    , _rProperties      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rInsertTime'
--
-- * 'rUrl'
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
    Resource
    { _rInsertTime = Nothing
    , _rUrl = Nothing
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
rUrl :: Lens' Resource (Maybe Text)
rUrl = lens _rUrl (\ s a -> s{_rUrl = a})

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
rId = lens _rId (\ s a -> s{_rId = a})

-- | [Output Only] The type of the resource, for example compute.v1.instance,
-- or replicaPools.v1beta2.instanceGroupManager.
rType :: Lens' Resource (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | [Output Only] If Deployment Manager is currently updating or previewing
-- an update to this resource, the updated configuration appears here.
rUpdate :: Lens' Resource (Maybe (Maybe ResourceUpdate))
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
                 Resource <$>
                   (o .:? "insertTime") <*> (o .:? "url") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "manifest")
                     <*> (o .:? "finalProperties")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "update")
                     <*> (o .:? "properties"))

instance ToJSON Resource where
        toJSON Resource{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _rInsertTime,
                  ("url" .=) <$> _rUrl,
                  ("updateTime" .=) <$> _rUpdateTime,
                  ("name" .=) <$> _rName,
                  ("manifest" .=) <$> _rManifest,
                  ("finalProperties" .=) <$> _rFinalProperties,
                  ("id" .=) <$> _rId, ("type" .=) <$> _rType,
                  ("update" .=) <$> _rUpdate,
                  ("properties" .=) <$> _rProperties])

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
--
-- /See:/ 'operationError' smart constructor.
newtype OperationError = OperationError
    { _oeErrors :: Maybe [OperationErrorErrors]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
oeErrors :: Lens' OperationError [OperationErrorErrors]
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

-- | A response containing a partial list of manifests and a page token used
-- to build the next request if the request has been truncated.
--
-- /See:/ 'manifestsListResponse' smart constructor.
data ManifestsListResponse = ManifestsListResponse
    { _mlrNextPageToken :: !(Maybe Text)
    , _mlrManifests     :: !(Maybe [Maybe Manifest])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ManifestsListResponse
    { _mlrNextPageToken = Nothing
    , _mlrManifests = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
mlrNextPageToken :: Lens' ManifestsListResponse (Maybe Text)
mlrNextPageToken
  = lens _mlrNextPageToken
      (\ s a -> s{_mlrNextPageToken = a})

-- | [Output Only] Manifests contained in this list response.
mlrManifests :: Lens' ManifestsListResponse [Maybe Manifest]
mlrManifests
  = lens _mlrManifests (\ s a -> s{_mlrManifests = a})
      . _Default
      . _Coerce

instance FromJSON ManifestsListResponse where
        parseJSON
          = withObject "ManifestsListResponse"
              (\ o ->
                 ManifestsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "manifests" .!= mempty))

instance ToJSON ManifestsListResponse where
        toJSON ManifestsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mlrNextPageToken,
                  ("manifests" .=) <$> _mlrManifests])

-- | A resource type supported by Deployment Manager.
--
-- /See:/ 'type'' smart constructor.
data Type = Type
    { _tInsertTime :: !(Maybe Text)
    , _tSelfLink   :: !(Maybe Text)
    , _tName       :: !(Maybe Text)
    , _tId         :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Type
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
tId = lens _tId (\ s a -> s{_tId = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type <$>
                   (o .:? "insertTime") <*> (o .:? "selfLink") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Type where
        toJSON Type{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _tInsertTime,
                  ("selfLink" .=) <$> _tSelfLink,
                  ("name" .=) <$> _tName, ("id" .=) <$> _tId])

-- |
--
-- /See:/ 'importFile' smart constructor.
data ImportFile = ImportFile
    { _ifContent :: !(Maybe Text)
    , _ifName    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ImportFile
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
                 ImportFile <$> (o .:? "content") <*> (o .:? "name"))

instance ToJSON ImportFile where
        toJSON ImportFile{..}
          = object
              (catMaybes
                 [("content" .=) <$> _ifContent,
                  ("name" .=) <$> _ifName])

-- | A response containing a partial list of deployments and a page token
-- used to build the next request if the request has been truncated.
--
-- /See:/ 'deploymentsListResponse' smart constructor.
data DeploymentsListResponse = DeploymentsListResponse
    { _dlrNextPageToken :: !(Maybe Text)
    , _dlrDeployments   :: !(Maybe [Maybe Deployment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    DeploymentsListResponse
    { _dlrNextPageToken = Nothing
    , _dlrDeployments = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
dlrNextPageToken :: Lens' DeploymentsListResponse (Maybe Text)
dlrNextPageToken
  = lens _dlrNextPageToken
      (\ s a -> s{_dlrNextPageToken = a})

-- | [Output Only] The deployments contained in this response.
dlrDeployments :: Lens' DeploymentsListResponse [Maybe Deployment]
dlrDeployments
  = lens _dlrDeployments
      (\ s a -> s{_dlrDeployments = a})
      . _Default
      . _Coerce

instance FromJSON DeploymentsListResponse where
        parseJSON
          = withObject "DeploymentsListResponse"
              (\ o ->
                 DeploymentsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deployments" .!= mempty))

instance ToJSON DeploymentsListResponse where
        toJSON DeploymentsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrNextPageToken,
                  ("deployments" .=) <$> _dlrDeployments])

--
-- /See:/ 'operationErrorErrors' smart constructor.
data OperationErrorErrors = OperationErrorErrors
    { _oeeLocation :: !(Maybe Text)
    , _oeeCode     :: !(Maybe Text)
    , _oeeMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationErrorErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeeLocation'
--
-- * 'oeeCode'
--
-- * 'oeeMessage'
operationErrorErrors
    :: OperationErrorErrors
operationErrorErrors =
    OperationErrorErrors
    { _oeeLocation = Nothing
    , _oeeCode = Nothing
    , _oeeMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
oeeLocation :: Lens' OperationErrorErrors (Maybe Text)
oeeLocation
  = lens _oeeLocation (\ s a -> s{_oeeLocation = a})

-- | [Output Only] The error type identifier for this error.
oeeCode :: Lens' OperationErrorErrors (Maybe Text)
oeeCode = lens _oeeCode (\ s a -> s{_oeeCode = a})

-- | [Output Only] An optional, human-readable error message.
oeeMessage :: Lens' OperationErrorErrors (Maybe Text)
oeeMessage
  = lens _oeeMessage (\ s a -> s{_oeeMessage = a})

instance FromJSON OperationErrorErrors where
        parseJSON
          = withObject "OperationErrorErrors"
              (\ o ->
                 OperationErrorErrors <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationErrorErrors where
        toJSON OperationErrorErrors{..}
          = object
              (catMaybes
                 [("location" .=) <$> _oeeLocation,
                  ("code" .=) <$> _oeeCode,
                  ("message" .=) <$> _oeeMessage])

-- |
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment
    { _dState       :: !(Maybe Text)
    , _dInsertTime  :: !(Maybe Text)
    , _dFingerprint :: !(Maybe Word8)
    , _dIntent      :: !(Maybe Text)
    , _dUpdateTime  :: !(Maybe Text)
    , _dName        :: !(Maybe Text)
    , _dManifest    :: !(Maybe Text)
    , _dId          :: !(Maybe Word64)
    , _dDescription :: !(Maybe Text)
    , _dUpdate      :: !(Maybe (Maybe DeploymentUpdate))
    , _dTarget      :: !(Maybe (Maybe TargetConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dState'
--
-- * 'dInsertTime'
--
-- * 'dFingerprint'
--
-- * 'dIntent'
--
-- * 'dUpdateTime'
--
-- * 'dName'
--
-- * 'dManifest'
--
-- * 'dId'
--
-- * 'dDescription'
--
-- * 'dUpdate'
--
-- * 'dTarget'
deployment
    :: Deployment
deployment =
    Deployment
    { _dState = Nothing
    , _dInsertTime = Nothing
    , _dFingerprint = Nothing
    , _dIntent = Nothing
    , _dUpdateTime = Nothing
    , _dName = Nothing
    , _dManifest = Nothing
    , _dId = Nothing
    , _dDescription = Nothing
    , _dUpdate = Nothing
    , _dTarget = Nothing
    }

-- | [Output Only] The current state of the deployment. This can be DEPLOYED,
-- DEPLOYMENT_FAILED, PREVIEWING, UPDATING, and CANCELING.
dState :: Lens' Deployment (Maybe Text)
dState = lens _dState (\ s a -> s{_dState = a})

-- | [Output Only] Timestamp when the deployment was created, in RFC3339 text
-- format .
dInsertTime :: Lens' Deployment (Maybe Text)
dInsertTime
  = lens _dInsertTime (\ s a -> s{_dInsertTime = a})

-- | Specifies a fingerprint for update() requests. A fingerprint is a
-- randomly generated value that must be provided in update() requests to
-- perform optimistic locking. This ensures optimistic concurrency so that
-- only one update can be performed at a time. The fingerprint is initially
-- generated by Deployment Manager and changes after every request to
-- modify data. To get the latest fingerprint value, perform a get()
-- request to a deployment.
dFingerprint :: Lens' Deployment (Maybe Word8)
dFingerprint
  = lens _dFingerprint (\ s a -> s{_dFingerprint = a})

-- | [Input Only] Specifies how Deployment Manager should apply this
-- template. Possible options are PREVIEW, UPDATE, and CANCEL. PREVIEW
-- creates a deployment and creates \"shell\" resources but does not
-- actually instantiate these resources. This allows you to preview what
-- your deployment looks like. You can use this intent to preview updates
-- to deployments or preview new deployments. You must provide a
-- target.config with a configuration for this intent. After previewing a
-- deployment, you can deploy your resources by making a request with the
-- UPDATE intent or you can CANCEL the preview altogether. Note that the
-- deployment will still exist after you cancel the preview and you must
-- separately delete this deployment if you want to remove it. UPDATE
-- performs an update to the underlying resources in a deployment. If you
-- provide a populated target.config field with this request, Deployment
-- Manager uses that configuration to perform an update. If you had
-- previewed this update beforehand, and do not supply a target.config or
-- provide an empty target.config, Deployment Manager uses the last
-- previewed configuration. CANCEL cancels an update that is in PREVIEW or
-- UPDATE but does not undo any changes already made.
dIntent :: Lens' Deployment (Maybe Text)
dIntent = lens _dIntent (\ s a -> s{_dIntent = a})

-- | [Output Only] Timestamp when the deployment was updated, in RFC3339 text
-- format .
dUpdateTime :: Lens' Deployment (Maybe Text)
dUpdateTime
  = lens _dUpdateTime (\ s a -> s{_dUpdateTime = a})

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
dId = lens _dId (\ s a -> s{_dId = a})

-- | An optional user-provided description of the deployment.
dDescription :: Lens' Deployment (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | [Output Only] If Deployment Manager is currently updating or previewing
-- an update to this deployment, the updated configuration appears here.
dUpdate :: Lens' Deployment (Maybe (Maybe DeploymentUpdate))
dUpdate = lens _dUpdate (\ s a -> s{_dUpdate = a})

-- | [Input Only] The parameters that define your deployment, including the
-- deployment configuration and relevant templates.
dTarget :: Lens' Deployment (Maybe (Maybe TargetConfiguration))
dTarget = lens _dTarget (\ s a -> s{_dTarget = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment <$>
                   (o .:? "state") <*> (o .:? "insertTime") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "intent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "manifest")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "update")
                     <*> (o .:? "target"))

instance ToJSON Deployment where
        toJSON Deployment{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dState,
                  ("insertTime" .=) <$> _dInsertTime,
                  ("fingerprint" .=) <$> _dFingerprint,
                  ("intent" .=) <$> _dIntent,
                  ("updateTime" .=) <$> _dUpdateTime,
                  ("name" .=) <$> _dName,
                  ("manifest" .=) <$> _dManifest, ("id" .=) <$> _dId,
                  ("description" .=) <$> _dDescription,
                  ("update" .=) <$> _dUpdate,
                  ("target" .=) <$> _dTarget])

-- |
--
-- /See:/ 'targetConfiguration' smart constructor.
data TargetConfiguration = TargetConfiguration
    { _tcConfig  :: !(Maybe Text)
    , _tcImports :: !(Maybe [Maybe ImportFile])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TargetConfiguration
    { _tcConfig = Nothing
    , _tcImports = Nothing
    }

-- | The configuration to use for this deployment.
tcConfig :: Lens' TargetConfiguration (Maybe Text)
tcConfig = lens _tcConfig (\ s a -> s{_tcConfig = a})

-- | Specifies any files to import for this configuration. This can be used
-- to import templates or other files. For example, you might import a text
-- file in order to use the file in a template.
tcImports :: Lens' TargetConfiguration [Maybe ImportFile]
tcImports
  = lens _tcImports (\ s a -> s{_tcImports = a}) .
      _Default
      . _Coerce

instance FromJSON TargetConfiguration where
        parseJSON
          = withObject "TargetConfiguration"
              (\ o ->
                 TargetConfiguration <$>
                   (o .:? "config") <*> (o .:? "imports" .!= mempty))

instance ToJSON TargetConfiguration where
        toJSON TargetConfiguration{..}
          = object
              (catMaybes
                 [("config" .=) <$> _tcConfig,
                  ("imports" .=) <$> _tcImports])
