{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceViews.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceViews.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types.Sum

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
    , _olKind = "resourceviews#operationList"
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
                     (o .:? "kind" .!= "resourceviews#operationList")
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

-- | The resource view object.
--
-- /See:/ 'resourceView' smart constructor.
data ResourceView = ResourceView
    { _rvSize              :: !(Maybe Word32)
    , _rvKind              :: !Text
    , _rvFingerprint       :: !(Maybe Text)
    , _rvNetwork           :: !(Maybe Text)
    , _rvResources         :: !(Maybe [Text])
    , _rvSelfLink          :: !(Maybe Text)
    , _rvName              :: !(Maybe Text)
    , _rvCreationTimestamp :: !(Maybe Text)
    , _rvId                :: !(Maybe Text)
    , _rvLabels            :: !(Maybe [Label])
    , _rvEndpoints         :: !(Maybe [ServiceEndpoint])
    , _rvDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvSize'
--
-- * 'rvKind'
--
-- * 'rvFingerprint'
--
-- * 'rvNetwork'
--
-- * 'rvResources'
--
-- * 'rvSelfLink'
--
-- * 'rvName'
--
-- * 'rvCreationTimestamp'
--
-- * 'rvId'
--
-- * 'rvLabels'
--
-- * 'rvEndpoints'
--
-- * 'rvDescription'
resourceView
    :: ResourceView
resourceView =
    ResourceView
    { _rvSize = Nothing
    , _rvKind = "resourceviews#resourceView"
    , _rvFingerprint = Nothing
    , _rvNetwork = Nothing
    , _rvResources = Nothing
    , _rvSelfLink = Nothing
    , _rvName = Nothing
    , _rvCreationTimestamp = Nothing
    , _rvId = Nothing
    , _rvLabels = Nothing
    , _rvEndpoints = Nothing
    , _rvDescription = Nothing
    }

-- | The total number of resources in the resource view.
rvSize :: Lens' ResourceView (Maybe Word32)
rvSize = lens _rvSize (\ s a -> s{_rvSize = a})

-- | Type of the resource.
rvKind :: Lens' ResourceView Text
rvKind = lens _rvKind (\ s a -> s{_rvKind = a})

-- | The fingerprint of the service endpoint information.
rvFingerprint :: Lens' ResourceView (Maybe Text)
rvFingerprint
  = lens _rvFingerprint
      (\ s a -> s{_rvFingerprint = a})

-- | The URL of a Compute Engine network to which the resources in the view
-- belong.
rvNetwork :: Lens' ResourceView (Maybe Text)
rvNetwork
  = lens _rvNetwork (\ s a -> s{_rvNetwork = a})

-- | A list of all resources in the resource view.
rvResources :: Lens' ResourceView [Text]
rvResources
  = lens _rvResources (\ s a -> s{_rvResources = a}) .
      _Default
      . _Coerce

-- | [Output Only] A self-link to the resource view.
rvSelfLink :: Lens' ResourceView (Maybe Text)
rvSelfLink
  = lens _rvSelfLink (\ s a -> s{_rvSelfLink = a})

-- | The name of the resource view.
rvName :: Lens' ResourceView (Maybe Text)
rvName = lens _rvName (\ s a -> s{_rvName = a})

-- | The creation time of the resource view.
rvCreationTimestamp :: Lens' ResourceView (Maybe Text)
rvCreationTimestamp
  = lens _rvCreationTimestamp
      (\ s a -> s{_rvCreationTimestamp = a})

-- | [Output Only] The ID of the resource view.
rvId :: Lens' ResourceView (Maybe Text)
rvId = lens _rvId (\ s a -> s{_rvId = a})

-- | The labels for events.
rvLabels :: Lens' ResourceView [Label]
rvLabels
  = lens _rvLabels (\ s a -> s{_rvLabels = a}) .
      _Default
      . _Coerce

-- | Services endpoint information.
rvEndpoints :: Lens' ResourceView [ServiceEndpoint]
rvEndpoints
  = lens _rvEndpoints (\ s a -> s{_rvEndpoints = a}) .
      _Default
      . _Coerce

-- | The detailed description of the resource view.
rvDescription :: Lens' ResourceView (Maybe Text)
rvDescription
  = lens _rvDescription
      (\ s a -> s{_rvDescription = a})

instance FromJSON ResourceView where
        parseJSON
          = withObject "ResourceView"
              (\ o ->
                 ResourceView <$>
                   (o .:? "size") <*>
                     (o .:? "kind" .!= "resourceviews#resourceView")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "network")
                     <*> (o .:? "resources" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "endpoints" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON ResourceView where
        toJSON ResourceView{..}
          = object
              (catMaybes
                 [("size" .=) <$> _rvSize, Just ("kind" .= _rvKind),
                  ("fingerprint" .=) <$> _rvFingerprint,
                  ("network" .=) <$> _rvNetwork,
                  ("resources" .=) <$> _rvResources,
                  ("selfLink" .=) <$> _rvSelfLink,
                  ("name" .=) <$> _rvName,
                  ("creationTimestamp" .=) <$> _rvCreationTimestamp,
                  ("id" .=) <$> _rvId, ("labels" .=) <$> _rvLabels,
                  ("endpoints" .=) <$> _rvEndpoints,
                  ("description" .=) <$> _rvDescription])

-- | The response to a list request.
--
-- /See:/ 'zoneViewsList' smart constructor.
data ZoneViewsList = ZoneViewsList
    { _zvlNextPageToken :: !(Maybe Text)
    , _zvlKind          :: !Text
    , _zvlItems         :: !(Maybe [ResourceView])
    , _zvlSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlNextPageToken'
--
-- * 'zvlKind'
--
-- * 'zvlItems'
--
-- * 'zvlSelfLink'
zoneViewsList
    :: ZoneViewsList
zoneViewsList =
    ZoneViewsList
    { _zvlNextPageToken = Nothing
    , _zvlKind = "resourceviews#zoneViewsList"
    , _zvlItems = Nothing
    , _zvlSelfLink = Nothing
    }

-- | A token used for pagination.
zvlNextPageToken :: Lens' ZoneViewsList (Maybe Text)
zvlNextPageToken
  = lens _zvlNextPageToken
      (\ s a -> s{_zvlNextPageToken = a})

-- | Type of resource.
zvlKind :: Lens' ZoneViewsList Text
zvlKind = lens _zvlKind (\ s a -> s{_zvlKind = a})

-- | The result that contains all resource views that meet the criteria.
zvlItems :: Lens' ZoneViewsList [ResourceView]
zvlItems
  = lens _zvlItems (\ s a -> s{_zvlItems = a}) .
      _Default
      . _Coerce

-- | Server defined URL for this resource (output only).
zvlSelfLink :: Lens' ZoneViewsList (Maybe Text)
zvlSelfLink
  = lens _zvlSelfLink (\ s a -> s{_zvlSelfLink = a})

instance FromJSON ZoneViewsList where
        parseJSON
          = withObject "ZoneViewsList"
              (\ o ->
                 ZoneViewsList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "resourceviews#zoneViewsList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON ZoneViewsList where
        toJSON ZoneViewsList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _zvlNextPageToken,
                  Just ("kind" .= _zvlKind),
                  ("items" .=) <$> _zvlItems,
                  ("selfLink" .=) <$> _zvlSelfLink])

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
    , _oKind = "resourceviews#operation"
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
oStatus :: Lens' Operation (Maybe Text)
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
                     <*> (o .:? "kind" .!= "resourceviews#operation")
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

-- | The response to a list resource request.
--
-- /See:/ 'zoneViewsListResourcesResponse' smart constructor.
data ZoneViewsListResourcesResponse = ZoneViewsListResourcesResponse
    { _zvlrrNextPageToken :: !(Maybe Text)
    , _zvlrrItems         :: !(Maybe [ListResourceResponseItem])
    , _zvlrrNetwork       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsListResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvlrrNextPageToken'
--
-- * 'zvlrrItems'
--
-- * 'zvlrrNetwork'
zoneViewsListResourcesResponse
    :: ZoneViewsListResourcesResponse
zoneViewsListResourcesResponse =
    ZoneViewsListResourcesResponse
    { _zvlrrNextPageToken = Nothing
    , _zvlrrItems = Nothing
    , _zvlrrNetwork = Nothing
    }

-- | A token used for pagination.
zvlrrNextPageToken :: Lens' ZoneViewsListResourcesResponse (Maybe Text)
zvlrrNextPageToken
  = lens _zvlrrNextPageToken
      (\ s a -> s{_zvlrrNextPageToken = a})

-- | The formatted JSON that is requested by the user.
zvlrrItems :: Lens' ZoneViewsListResourcesResponse [ListResourceResponseItem]
zvlrrItems
  = lens _zvlrrItems (\ s a -> s{_zvlrrItems = a}) .
      _Default
      . _Coerce

-- | The URL of a Compute Engine network to which the resources in the view
-- belong.
zvlrrNetwork :: Lens' ZoneViewsListResourcesResponse (Maybe Text)
zvlrrNetwork
  = lens _zvlrrNetwork (\ s a -> s{_zvlrrNetwork = a})

instance FromJSON ZoneViewsListResourcesResponse
         where
        parseJSON
          = withObject "ZoneViewsListResourcesResponse"
              (\ o ->
                 ZoneViewsListResourcesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "network"))

instance ToJSON ZoneViewsListResourcesResponse where
        toJSON ZoneViewsListResourcesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _zvlrrNextPageToken,
                  ("items" .=) <$> _zvlrrItems,
                  ("network" .=) <$> _zvlrrNetwork])

-- | The service endpoint that may be started in a VM.
--
-- /See:/ 'serviceEndpoint' smart constructor.
data ServiceEndpoint = ServiceEndpoint
    { _seName :: !(Maybe Text)
    , _sePort :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seName'
--
-- * 'sePort'
serviceEndpoint
    :: ServiceEndpoint
serviceEndpoint =
    ServiceEndpoint
    { _seName = Nothing
    , _sePort = Nothing
    }

-- | The name of the service endpoint.
seName :: Lens' ServiceEndpoint (Maybe Text)
seName = lens _seName (\ s a -> s{_seName = a})

-- | The port of the service endpoint.
sePort :: Lens' ServiceEndpoint (Maybe Int32)
sePort = lens _sePort (\ s a -> s{_sePort = a})

instance FromJSON ServiceEndpoint where
        parseJSON
          = withObject "ServiceEndpoint"
              (\ o ->
                 ServiceEndpoint <$>
                   (o .:? "name") <*> (o .:? "port"))

instance ToJSON ServiceEndpoint where
        toJSON ServiceEndpoint{..}
          = object
              (catMaybes
                 [("name" .=) <$> _seName, ("port" .=) <$> _sePort])

-- | The request to remove resources from the resource view.
--
-- /See:/ 'zoneViewsRemoveResourcesRequest' smart constructor.
newtype ZoneViewsRemoveResourcesRequest = ZoneViewsRemoveResourcesRequest
    { _zvrrrResources :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsRemoveResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvrrrResources'
zoneViewsRemoveResourcesRequest
    :: ZoneViewsRemoveResourcesRequest
zoneViewsRemoveResourcesRequest =
    ZoneViewsRemoveResourcesRequest
    { _zvrrrResources = Nothing
    }

-- | The list of resources to be removed.
zvrrrResources :: Lens' ZoneViewsRemoveResourcesRequest [Text]
zvrrrResources
  = lens _zvrrrResources
      (\ s a -> s{_zvrrrResources = a})
      . _Default
      . _Coerce

instance FromJSON ZoneViewsRemoveResourcesRequest
         where
        parseJSON
          = withObject "ZoneViewsRemoveResourcesRequest"
              (\ o ->
                 ZoneViewsRemoveResourcesRequest <$>
                   (o .:? "resources" .!= mempty))

instance ToJSON ZoneViewsRemoveResourcesRequest where
        toJSON ZoneViewsRemoveResourcesRequest{..}
          = object
              (catMaybes [("resources" .=) <$> _zvrrrResources])

-- | The list of service end points on the resource.
--
-- /See:/ 'listResourceResponseItemEndpoints' smart constructor.
data ListResourceResponseItemEndpoints =
    ListResourceResponseItemEndpoints
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListResourceResponseItemEndpoints' with the minimum fields required to make a request.
--
listResourceResponseItemEndpoints
    :: ListResourceResponseItemEndpoints
listResourceResponseItemEndpoints = ListResourceResponseItemEndpoints

instance FromJSON ListResourceResponseItemEndpoints
         where
        parseJSON
          = withObject "ListResourceResponseItemEndpoints"
              (\ o -> pure ListResourceResponseItemEndpoints)

instance ToJSON ListResourceResponseItemEndpoints
         where
        toJSON = const emptyObject

-- | The request to add resources to the resource view.
--
-- /See:/ 'zoneViewsAddResourcesRequest' smart constructor.
newtype ZoneViewsAddResourcesRequest = ZoneViewsAddResourcesRequest
    { _zvarrResources :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsAddResourcesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvarrResources'
zoneViewsAddResourcesRequest
    :: ZoneViewsAddResourcesRequest
zoneViewsAddResourcesRequest =
    ZoneViewsAddResourcesRequest
    { _zvarrResources = Nothing
    }

-- | The list of resources to be added.
zvarrResources :: Lens' ZoneViewsAddResourcesRequest [Text]
zvarrResources
  = lens _zvarrResources
      (\ s a -> s{_zvarrResources = a})
      . _Default
      . _Coerce

instance FromJSON ZoneViewsAddResourcesRequest where
        parseJSON
          = withObject "ZoneViewsAddResourcesRequest"
              (\ o ->
                 ZoneViewsAddResourcesRequest <$>
                   (o .:? "resources" .!= mempty))

instance ToJSON ZoneViewsAddResourcesRequest where
        toJSON ZoneViewsAddResourcesRequest{..}
          = object
              (catMaybes [("resources" .=) <$> _zvarrResources])

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
-- /See:/ 'zoneViewsGetServiceResponse' smart constructor.
data ZoneViewsGetServiceResponse = ZoneViewsGetServiceResponse
    { _zvgsrFingerprint :: !(Maybe Text)
    , _zvgsrEndpoints   :: !(Maybe [ServiceEndpoint])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsGetServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvgsrFingerprint'
--
-- * 'zvgsrEndpoints'
zoneViewsGetServiceResponse
    :: ZoneViewsGetServiceResponse
zoneViewsGetServiceResponse =
    ZoneViewsGetServiceResponse
    { _zvgsrFingerprint = Nothing
    , _zvgsrEndpoints = Nothing
    }

-- | The fingerprint of the service information.
zvgsrFingerprint :: Lens' ZoneViewsGetServiceResponse (Maybe Text)
zvgsrFingerprint
  = lens _zvgsrFingerprint
      (\ s a -> s{_zvgsrFingerprint = a})

-- | The service information.
zvgsrEndpoints :: Lens' ZoneViewsGetServiceResponse [ServiceEndpoint]
zvgsrEndpoints
  = lens _zvgsrEndpoints
      (\ s a -> s{_zvgsrEndpoints = a})
      . _Default
      . _Coerce

instance FromJSON ZoneViewsGetServiceResponse where
        parseJSON
          = withObject "ZoneViewsGetServiceResponse"
              (\ o ->
                 ZoneViewsGetServiceResponse <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "endpoints" .!= mempty))

instance ToJSON ZoneViewsGetServiceResponse where
        toJSON ZoneViewsGetServiceResponse{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _zvgsrFingerprint,
                  ("endpoints" .=) <$> _zvgsrEndpoints])

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
-- /See:/ 'zoneViewsSetServiceRequest' smart constructor.
data ZoneViewsSetServiceRequest = ZoneViewsSetServiceRequest
    { _zvssrResourceName :: !(Maybe Text)
    , _zvssrFingerprint  :: !(Maybe Text)
    , _zvssrEndpoints    :: !(Maybe [ServiceEndpoint])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneViewsSetServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zvssrResourceName'
--
-- * 'zvssrFingerprint'
--
-- * 'zvssrEndpoints'
zoneViewsSetServiceRequest
    :: ZoneViewsSetServiceRequest
zoneViewsSetServiceRequest =
    ZoneViewsSetServiceRequest
    { _zvssrResourceName = Nothing
    , _zvssrFingerprint = Nothing
    , _zvssrEndpoints = Nothing
    }

-- | The name of the resource if user wants to update the service information
-- of the resource.
zvssrResourceName :: Lens' ZoneViewsSetServiceRequest (Maybe Text)
zvssrResourceName
  = lens _zvssrResourceName
      (\ s a -> s{_zvssrResourceName = a})

-- | Fingerprint of the service information; a hash of the contents. This
-- field is used for optimistic locking when updating the service entries.
zvssrFingerprint :: Lens' ZoneViewsSetServiceRequest (Maybe Text)
zvssrFingerprint
  = lens _zvssrFingerprint
      (\ s a -> s{_zvssrFingerprint = a})

-- | The service information to be updated.
zvssrEndpoints :: Lens' ZoneViewsSetServiceRequest [ServiceEndpoint]
zvssrEndpoints
  = lens _zvssrEndpoints
      (\ s a -> s{_zvssrEndpoints = a})
      . _Default
      . _Coerce

instance FromJSON ZoneViewsSetServiceRequest where
        parseJSON
          = withObject "ZoneViewsSetServiceRequest"
              (\ o ->
                 ZoneViewsSetServiceRequest <$>
                   (o .:? "resourceName") <*> (o .:? "fingerprint") <*>
                     (o .:? "endpoints" .!= mempty))

instance ToJSON ZoneViewsSetServiceRequest where
        toJSON ZoneViewsSetServiceRequest{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _zvssrResourceName,
                  ("fingerprint" .=) <$> _zvssrFingerprint,
                  ("endpoints" .=) <$> _zvssrEndpoints])

-- | The list response item that contains the resource and end points
-- information.
--
-- /See:/ 'listResourceResponseItem' smart constructor.
data ListResourceResponseItem = ListResourceResponseItem
    { _lrriResource  :: !(Maybe Text)
    , _lrriEndpoints :: !(Maybe ListResourceResponseItemEndpoints)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListResourceResponseItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrriResource'
--
-- * 'lrriEndpoints'
listResourceResponseItem
    :: ListResourceResponseItem
listResourceResponseItem =
    ListResourceResponseItem
    { _lrriResource = Nothing
    , _lrriEndpoints = Nothing
    }

-- | The full URL of the resource.
lrriResource :: Lens' ListResourceResponseItem (Maybe Text)
lrriResource
  = lens _lrriResource (\ s a -> s{_lrriResource = a})

-- | The list of service end points on the resource.
lrriEndpoints :: Lens' ListResourceResponseItem (Maybe ListResourceResponseItemEndpoints)
lrriEndpoints
  = lens _lrriEndpoints
      (\ s a -> s{_lrriEndpoints = a})

instance FromJSON ListResourceResponseItem where
        parseJSON
          = withObject "ListResourceResponseItem"
              (\ o ->
                 ListResourceResponseItem <$>
                   (o .:? "resource") <*> (o .:? "endpoints"))

instance ToJSON ListResourceResponseItem where
        toJSON ListResourceResponseItem{..}
          = object
              (catMaybes
                 [("resource" .=) <$> _lrriResource,
                  ("endpoints" .=) <$> _lrriEndpoints])

-- | The Label to be applied to the resource views.
--
-- /See:/ 'label' smart constructor.
data Label = Label
    { _lValue :: !(Maybe Text)
    , _lKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lValue'
--
-- * 'lKey'
label
    :: Label
label =
    Label
    { _lValue = Nothing
    , _lKey = Nothing
    }

-- | Value of the label.
lValue :: Lens' Label (Maybe Text)
lValue = lens _lValue (\ s a -> s{_lValue = a})

-- | Key of the label.
lKey :: Lens' Label (Maybe Text)
lKey = lens _lKey (\ s a -> s{_lKey = a})

instance FromJSON Label where
        parseJSON
          = withObject "Label"
              (\ o -> Label <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON Label where
        toJSON Label{..}
          = object
              (catMaybes
                 [("value" .=) <$> _lValue, ("key" .=) <$> _lKey])

--
-- /See:/ 'operationWarningsItem' smart constructor.
data OperationWarningsItem = OperationWarningsItem
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
owiCode :: Lens' OperationWarningsItem (Maybe Text)
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
