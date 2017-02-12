{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Product where

import           Network.Google.Compute.Types.Sum
import           Network.Google.Prelude

-- | Contains a list of TargetHttpsProxy resources.
--
-- /See:/ 'targetHTTPSProxyList' smart constructor.
data TargetHTTPSProxyList = TargetHTTPSProxyList'
    { _thplNextPageToken :: !(Maybe Text)
    , _thplKind          :: !Text
    , _thplItems         :: !(Maybe [TargetHTTPSProxy])
    , _thplSelfLink      :: !(Maybe Text)
    , _thplId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thplNextPageToken'
--
-- * 'thplKind'
--
-- * 'thplItems'
--
-- * 'thplSelfLink'
--
-- * 'thplId'
targetHTTPSProxyList
    :: TargetHTTPSProxyList
targetHTTPSProxyList =
    TargetHTTPSProxyList'
    { _thplNextPageToken = Nothing
    , _thplKind = "compute#targetHttpsProxyList"
    , _thplItems = Nothing
    , _thplSelfLink = Nothing
    , _thplId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
thplNextPageToken :: Lens' TargetHTTPSProxyList (Maybe Text)
thplNextPageToken
  = lens _thplNextPageToken
      (\ s a -> s{_thplNextPageToken = a})

-- | Type of resource. Always compute#targetHttpsProxyList for lists of
-- target HTTPS proxies.
thplKind :: Lens' TargetHTTPSProxyList Text
thplKind = lens _thplKind (\ s a -> s{_thplKind = a})

-- | A list of TargetHttpsProxy resources.
thplItems :: Lens' TargetHTTPSProxyList [TargetHTTPSProxy]
thplItems
  = lens _thplItems (\ s a -> s{_thplItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
thplSelfLink :: Lens' TargetHTTPSProxyList (Maybe Text)
thplSelfLink
  = lens _thplSelfLink (\ s a -> s{_thplSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
thplId :: Lens' TargetHTTPSProxyList (Maybe Text)
thplId = lens _thplId (\ s a -> s{_thplId = a})

instance FromJSON TargetHTTPSProxyList where
        parseJSON
          = withObject "TargetHTTPSProxyList"
              (\ o ->
                 TargetHTTPSProxyList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetHttpsProxyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetHTTPSProxyList where
        toJSON TargetHTTPSProxyList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _thplNextPageToken,
                  Just ("kind" .= _thplKind),
                  ("items" .=) <$> _thplItems,
                  ("selfLink" .=) <$> _thplSelfLink,
                  ("id" .=) <$> _thplId])

--
-- /See:/ 'routersScopedList' smart constructor.
data RoutersScopedList = RoutersScopedList'
    { _rslRouters :: !(Maybe [Router])
    , _rslWarning :: !(Maybe RoutersScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rslRouters'
--
-- * 'rslWarning'
routersScopedList
    :: RoutersScopedList
routersScopedList =
    RoutersScopedList'
    { _rslRouters = Nothing
    , _rslWarning = Nothing
    }

-- | List of routers contained in this scope.
rslRouters :: Lens' RoutersScopedList [Router]
rslRouters
  = lens _rslRouters (\ s a -> s{_rslRouters = a}) .
      _Default
      . _Coerce

-- | Informational warning which replaces the list of routers when the list
-- is empty.
rslWarning :: Lens' RoutersScopedList (Maybe RoutersScopedListWarning)
rslWarning
  = lens _rslWarning (\ s a -> s{_rslWarning = a})

instance FromJSON RoutersScopedList where
        parseJSON
          = withObject "RoutersScopedList"
              (\ o ->
                 RoutersScopedList' <$>
                   (o .:? "routers" .!= mempty) <*> (o .:? "warning"))

instance ToJSON RoutersScopedList where
        toJSON RoutersScopedList'{..}
          = object
              (catMaybes
                 [("routers" .=) <$> _rslRouters,
                  ("warning" .=) <$> _rslWarning])

--
-- /See:/ 'routerStatusResponse' smart constructor.
data RouterStatusResponse = RouterStatusResponse'
    { _rsrKind   :: !Text
    , _rsrResult :: !(Maybe RouterStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsrKind'
--
-- * 'rsrResult'
routerStatusResponse
    :: RouterStatusResponse
routerStatusResponse =
    RouterStatusResponse'
    { _rsrKind = "compute#routerStatusResponse"
    , _rsrResult = Nothing
    }

-- | Type of resource.
rsrKind :: Lens' RouterStatusResponse Text
rsrKind = lens _rsrKind (\ s a -> s{_rsrKind = a})

rsrResult :: Lens' RouterStatusResponse (Maybe RouterStatus)
rsrResult
  = lens _rsrResult (\ s a -> s{_rsrResult = a})

instance FromJSON RouterStatusResponse where
        parseJSON
          = withObject "RouterStatusResponse"
              (\ o ->
                 RouterStatusResponse' <$>
                   (o .:? "kind" .!= "compute#routerStatusResponse") <*>
                     (o .:? "result"))

instance ToJSON RouterStatusResponse where
        toJSON RouterStatusResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rsrKind),
                  ("result" .=) <$> _rsrResult])

--
-- /See:/ 'regionInstanceGroupManagersDeleteInstancesRequest' smart constructor.
newtype RegionInstanceGroupManagersDeleteInstancesRequest = RegionInstanceGroupManagersDeleteInstancesRequest'
    { _rigmdirInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersDeleteInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmdirInstances'
regionInstanceGroupManagersDeleteInstancesRequest
    :: RegionInstanceGroupManagersDeleteInstancesRequest
regionInstanceGroupManagersDeleteInstancesRequest =
    RegionInstanceGroupManagersDeleteInstancesRequest'
    { _rigmdirInstances = Nothing
    }

-- | The names of one or more instances to delete.
rigmdirInstances :: Lens' RegionInstanceGroupManagersDeleteInstancesRequest [Text]
rigmdirInstances
  = lens _rigmdirInstances
      (\ s a -> s{_rigmdirInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupManagersDeleteInstancesRequest
         where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersDeleteInstancesRequest"
              (\ o ->
                 RegionInstanceGroupManagersDeleteInstancesRequest'
                   <$> (o .:? "instances" .!= mempty))

instance ToJSON
         RegionInstanceGroupManagersDeleteInstancesRequest
         where
        toJSON
          RegionInstanceGroupManagersDeleteInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _rigmdirInstances])

--
-- /See:/ 'addressesScopedList' smart constructor.
data AddressesScopedList = AddressesScopedList'
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
    AddressesScopedList'
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
                 AddressesScopedList' <$>
                   (o .:? "addresses" .!= mempty) <*> (o .:? "warning"))

instance ToJSON AddressesScopedList where
        toJSON AddressesScopedList'{..}
          = object
              (catMaybes
                 [("addresses" .=) <$> _aslAddresses,
                  ("warning" .=) <$> _aslWarning])

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

--
-- /See:/ 'regionInstanceGroupsListInstancesRequest' smart constructor.
data RegionInstanceGroupsListInstancesRequest = RegionInstanceGroupsListInstancesRequest'
    { _riglirInstanceState :: !(Maybe RegionInstanceGroupsListInstancesRequestInstanceState)
    , _riglirPortName      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsListInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riglirInstanceState'
--
-- * 'riglirPortName'
regionInstanceGroupsListInstancesRequest
    :: RegionInstanceGroupsListInstancesRequest
regionInstanceGroupsListInstancesRequest =
    RegionInstanceGroupsListInstancesRequest'
    { _riglirInstanceState = Nothing
    , _riglirPortName = Nothing
    }

-- | Instances in which state should be returned. Valid options are: \'ALL\',
-- \'RUNNING\'. By default, it lists all instances.
riglirInstanceState :: Lens' RegionInstanceGroupsListInstancesRequest (Maybe RegionInstanceGroupsListInstancesRequestInstanceState)
riglirInstanceState
  = lens _riglirInstanceState
      (\ s a -> s{_riglirInstanceState = a})

-- | Name of port user is interested in. It is optional. If it is set, only
-- information about this ports will be returned. If it is not set, all the
-- named ports will be returned. Always lists all instances.
riglirPortName :: Lens' RegionInstanceGroupsListInstancesRequest (Maybe Text)
riglirPortName
  = lens _riglirPortName
      (\ s a -> s{_riglirPortName = a})

instance FromJSON
         RegionInstanceGroupsListInstancesRequest where
        parseJSON
          = withObject
              "RegionInstanceGroupsListInstancesRequest"
              (\ o ->
                 RegionInstanceGroupsListInstancesRequest' <$>
                   (o .:? "instanceState") <*> (o .:? "portName"))

instance ToJSON
         RegionInstanceGroupsListInstancesRequest where
        toJSON RegionInstanceGroupsListInstancesRequest'{..}
          = object
              (catMaybes
                 [("instanceState" .=) <$> _riglirInstanceState,
                  ("portName" .=) <$> _riglirPortName])

--
-- /See:/ 'instanceGroupManagersAbandonInstancesRequest' smart constructor.
newtype InstanceGroupManagersAbandonInstancesRequest = InstanceGroupManagersAbandonInstancesRequest'
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
    InstanceGroupManagersAbandonInstancesRequest'
    { _igmairInstances = Nothing
    }

-- | The URL for one or more instances to abandon from the managed instance
-- group.
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
                 InstanceGroupManagersAbandonInstancesRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersAbandonInstancesRequest where
        toJSON
          InstanceGroupManagersAbandonInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _igmairInstances])

-- | [Output Only] A map of scoped machine type lists.
--
-- /See:/ 'machineTypeAggregatedListItems' smart constructor.
newtype MachineTypeAggregatedListItems = MachineTypeAggregatedListItems'
    { _mtaliAddtional :: HashMap Text MachineTypesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtaliAddtional'
machineTypeAggregatedListItems
    :: HashMap Text MachineTypesScopedList -- ^ 'mtaliAddtional'
    -> MachineTypeAggregatedListItems
machineTypeAggregatedListItems pMtaliAddtional_ =
    MachineTypeAggregatedListItems'
    { _mtaliAddtional = _Coerce # pMtaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of machine types.
mtaliAddtional :: Lens' MachineTypeAggregatedListItems (HashMap Text MachineTypesScopedList)
mtaliAddtional
  = lens _mtaliAddtional
      (\ s a -> s{_mtaliAddtional = a})
      . _Coerce

instance FromJSON MachineTypeAggregatedListItems
         where
        parseJSON
          = withObject "MachineTypeAggregatedListItems"
              (\ o ->
                 MachineTypeAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON MachineTypeAggregatedListItems where
        toJSON = toJSON . _mtaliAddtional

-- | [Output Only] A map of scoped disk type lists.
--
-- /See:/ 'diskTypeAggregatedListItems' smart constructor.
newtype DiskTypeAggregatedListItems = DiskTypeAggregatedListItems'
    { _dtaliAddtional :: HashMap Text DiskTypesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypeAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtaliAddtional'
diskTypeAggregatedListItems
    :: HashMap Text DiskTypesScopedList -- ^ 'dtaliAddtional'
    -> DiskTypeAggregatedListItems
diskTypeAggregatedListItems pDtaliAddtional_ =
    DiskTypeAggregatedListItems'
    { _dtaliAddtional = _Coerce # pDtaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of disk types.
dtaliAddtional :: Lens' DiskTypeAggregatedListItems (HashMap Text DiskTypesScopedList)
dtaliAddtional
  = lens _dtaliAddtional
      (\ s a -> s{_dtaliAddtional = a})
      . _Coerce

instance FromJSON DiskTypeAggregatedListItems where
        parseJSON
          = withObject "DiskTypeAggregatedListItems"
              (\ o ->
                 DiskTypeAggregatedListItems' <$> (parseJSONObject o))

instance ToJSON DiskTypeAggregatedListItems where
        toJSON = toJSON . _dtaliAddtional

-- | Contains a list of routers.
--
-- /See:/ 'routerAggregatedList' smart constructor.
data RouterAggregatedList = RouterAggregatedList'
    { _ralNextPageToken :: !(Maybe Text)
    , _ralKind          :: !Text
    , _ralItems         :: !(Maybe RouterAggregatedListItems)
    , _ralSelfLink      :: !(Maybe Text)
    , _ralId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ralNextPageToken'
--
-- * 'ralKind'
--
-- * 'ralItems'
--
-- * 'ralSelfLink'
--
-- * 'ralId'
routerAggregatedList
    :: RouterAggregatedList
routerAggregatedList =
    RouterAggregatedList'
    { _ralNextPageToken = Nothing
    , _ralKind = "compute#routerAggregatedList"
    , _ralItems = Nothing
    , _ralSelfLink = Nothing
    , _ralId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
ralNextPageToken :: Lens' RouterAggregatedList (Maybe Text)
ralNextPageToken
  = lens _ralNextPageToken
      (\ s a -> s{_ralNextPageToken = a})

-- | Type of resource.
ralKind :: Lens' RouterAggregatedList Text
ralKind = lens _ralKind (\ s a -> s{_ralKind = a})

-- | A map of scoped router lists.
ralItems :: Lens' RouterAggregatedList (Maybe RouterAggregatedListItems)
ralItems = lens _ralItems (\ s a -> s{_ralItems = a})

-- | [Output Only] Server-defined URL for this resource.
ralSelfLink :: Lens' RouterAggregatedList (Maybe Text)
ralSelfLink
  = lens _ralSelfLink (\ s a -> s{_ralSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
ralId :: Lens' RouterAggregatedList (Maybe Text)
ralId = lens _ralId (\ s a -> s{_ralId = a})

instance FromJSON RouterAggregatedList where
        parseJSON
          = withObject "RouterAggregatedList"
              (\ o ->
                 RouterAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#routerAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RouterAggregatedList where
        toJSON RouterAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ralNextPageToken,
                  Just ("kind" .= _ralKind),
                  ("items" .=) <$> _ralItems,
                  ("selfLink" .=) <$> _ralSelfLink,
                  ("id" .=) <$> _ralId])

-- | Contains a list of firewalls.
--
-- /See:/ 'firewallList' smart constructor.
data FirewallList = FirewallList'
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
    FirewallList'
    { _flNextPageToken = Nothing
    , _flKind = "compute#firewallList"
    , _flItems = Nothing
    , _flSelfLink = Nothing
    , _flId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
flId :: Lens' FirewallList (Maybe Text)
flId = lens _flId (\ s a -> s{_flId = a})

instance FromJSON FirewallList where
        parseJSON
          = withObject "FirewallList"
              (\ o ->
                 FirewallList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#firewallList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON FirewallList where
        toJSON FirewallList'{..}
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
data InstancesScopedListWarning = InstancesScopedListWarning'
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
    InstancesScopedListWarning'
    { _islwData = Nothing
    , _islwCode = Nothing
    , _islwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
islwData :: Lens' InstancesScopedListWarning [InstancesScopedListWarningDataItem]
islwData
  = lens _islwData (\ s a -> s{_islwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
islwCode :: Lens' InstancesScopedListWarning (Maybe InstancesScopedListWarningCode)
islwCode = lens _islwCode (\ s a -> s{_islwCode = a})

-- | [Output Only] A human-readable description of the warning code.
islwMessage :: Lens' InstancesScopedListWarning (Maybe Text)
islwMessage
  = lens _islwMessage (\ s a -> s{_islwMessage = a})

instance FromJSON InstancesScopedListWarning where
        parseJSON
          = withObject "InstancesScopedListWarning"
              (\ o ->
                 InstancesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON InstancesScopedListWarning where
        toJSON InstancesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _islwData,
                  ("code" .=) <$> _islwCode,
                  ("message" .=) <$> _islwMessage])

--
-- /See:/ 'regionInstanceGroupManagersRecreateRequest' smart constructor.
newtype RegionInstanceGroupManagersRecreateRequest = RegionInstanceGroupManagersRecreateRequest'
    { _rigmrrInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersRecreateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmrrInstances'
regionInstanceGroupManagersRecreateRequest
    :: RegionInstanceGroupManagersRecreateRequest
regionInstanceGroupManagersRecreateRequest =
    RegionInstanceGroupManagersRecreateRequest'
    { _rigmrrInstances = Nothing
    }

-- | The URL for one or more instances to recreate.
rigmrrInstances :: Lens' RegionInstanceGroupManagersRecreateRequest [Text]
rigmrrInstances
  = lens _rigmrrInstances
      (\ s a -> s{_rigmrrInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupManagersRecreateRequest where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersRecreateRequest"
              (\ o ->
                 RegionInstanceGroupManagersRecreateRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         RegionInstanceGroupManagersRecreateRequest where
        toJSON
          RegionInstanceGroupManagersRecreateRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _rigmrrInstances])

-- | Informational warning which replaces the list of backend services when
-- the list is empty.
--
-- /See:/ 'backendServicesScopedListWarning' smart constructor.
data BackendServicesScopedListWarning = BackendServicesScopedListWarning'
    { _bsslwData    :: !(Maybe [BackendServicesScopedListWarningDataItem])
    , _bsslwCode    :: !(Maybe BackendServicesScopedListWarningCode)
    , _bsslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsslwData'
--
-- * 'bsslwCode'
--
-- * 'bsslwMessage'
backendServicesScopedListWarning
    :: BackendServicesScopedListWarning
backendServicesScopedListWarning =
    BackendServicesScopedListWarning'
    { _bsslwData = Nothing
    , _bsslwCode = Nothing
    , _bsslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
bsslwData :: Lens' BackendServicesScopedListWarning [BackendServicesScopedListWarningDataItem]
bsslwData
  = lens _bsslwData (\ s a -> s{_bsslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
bsslwCode :: Lens' BackendServicesScopedListWarning (Maybe BackendServicesScopedListWarningCode)
bsslwCode
  = lens _bsslwCode (\ s a -> s{_bsslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
bsslwMessage :: Lens' BackendServicesScopedListWarning (Maybe Text)
bsslwMessage
  = lens _bsslwMessage (\ s a -> s{_bsslwMessage = a})

instance FromJSON BackendServicesScopedListWarning
         where
        parseJSON
          = withObject "BackendServicesScopedListWarning"
              (\ o ->
                 BackendServicesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON BackendServicesScopedListWarning
         where
        toJSON BackendServicesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _bsslwData,
                  ("code" .=) <$> _bsslwCode,
                  ("message" .=) <$> _bsslwMessage])

-- | A list of InstanceGroup resources.
--
-- /See:/ 'instanceGroupList' smart constructor.
data InstanceGroupList = InstanceGroupList'
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
    InstanceGroupList'
    { _iglNextPageToken = Nothing
    , _iglKind = "compute#instanceGroupList"
    , _iglItems = Nothing
    , _iglSelfLink = Nothing
    , _iglId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
iglNextPageToken :: Lens' InstanceGroupList (Maybe Text)
iglNextPageToken
  = lens _iglNextPageToken
      (\ s a -> s{_iglNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupList for instance group lists.
iglKind :: Lens' InstanceGroupList Text
iglKind = lens _iglKind (\ s a -> s{_iglKind = a})

-- | A list of instance groups.
iglItems :: Lens' InstanceGroupList [InstanceGroup]
iglItems
  = lens _iglItems (\ s a -> s{_iglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this resource type. The server generates this
-- URL.
iglSelfLink :: Lens' InstanceGroupList (Maybe Text)
iglSelfLink
  = lens _iglSelfLink (\ s a -> s{_iglSelfLink = a})

-- | [Output Only] A unique identifier for this list of instance groups. The
-- server generates this identifier.
iglId :: Lens' InstanceGroupList (Maybe Text)
iglId = lens _iglId (\ s a -> s{_iglId = a})

instance FromJSON InstanceGroupList where
        parseJSON
          = withObject "InstanceGroupList"
              (\ o ->
                 InstanceGroupList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceGroupList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupList where
        toJSON InstanceGroupList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _iglNextPageToken,
                  Just ("kind" .= _iglKind),
                  ("items" .=) <$> _iglItems,
                  ("selfLink" .=) <$> _iglSelfLink,
                  ("id" .=) <$> _iglId])

--
-- /See:/ 'instancesSetMachineTypeRequest' smart constructor.
newtype InstancesSetMachineTypeRequest = InstancesSetMachineTypeRequest'
    { _ismtrMachineType :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetMachineTypeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismtrMachineType'
instancesSetMachineTypeRequest
    :: InstancesSetMachineTypeRequest
instancesSetMachineTypeRequest =
    InstancesSetMachineTypeRequest'
    { _ismtrMachineType = Nothing
    }

-- | Full or partial URL of the machine type resource. See Machine Types for
-- a full list of machine types. For example:
-- zones\/us-central1-f\/machineTypes\/n1-standard-1
ismtrMachineType :: Lens' InstancesSetMachineTypeRequest (Maybe Text)
ismtrMachineType
  = lens _ismtrMachineType
      (\ s a -> s{_ismtrMachineType = a})

instance FromJSON InstancesSetMachineTypeRequest
         where
        parseJSON
          = withObject "InstancesSetMachineTypeRequest"
              (\ o ->
                 InstancesSetMachineTypeRequest' <$>
                   (o .:? "machineType"))

instance ToJSON InstancesSetMachineTypeRequest where
        toJSON InstancesSetMachineTypeRequest'{..}
          = object
              (catMaybes
                 [("machineType" .=) <$> _ismtrMachineType])

-- | Represents a customer-supplied encryption key
--
-- /See:/ 'customerEncryptionKey' smart constructor.
data CustomerEncryptionKey = CustomerEncryptionKey'
    { _cekSha256 :: !(Maybe Text)
    , _cekRawKey :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerEncryptionKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cekSha256'
--
-- * 'cekRawKey'
customerEncryptionKey
    :: CustomerEncryptionKey
customerEncryptionKey =
    CustomerEncryptionKey'
    { _cekSha256 = Nothing
    , _cekRawKey = Nothing
    }

-- | [Output only] The RFC 4648 base64 encoded SHA-256 hash of the
-- customer-supplied encryption key that protects this resource.
cekSha256 :: Lens' CustomerEncryptionKey (Maybe Text)
cekSha256
  = lens _cekSha256 (\ s a -> s{_cekSha256 = a})

-- | Specifies a 256-bit customer-supplied encryption key, encoded in RFC
-- 4648 base64 to either encrypt or decrypt this resource.
cekRawKey :: Lens' CustomerEncryptionKey (Maybe Text)
cekRawKey
  = lens _cekRawKey (\ s a -> s{_cekRawKey = a})

instance FromJSON CustomerEncryptionKey where
        parseJSON
          = withObject "CustomerEncryptionKey"
              (\ o ->
                 CustomerEncryptionKey' <$>
                   (o .:? "sha256") <*> (o .:? "rawKey"))

instance ToJSON CustomerEncryptionKey where
        toJSON CustomerEncryptionKey'{..}
          = object
              (catMaybes
                 [("sha256" .=) <$> _cekSha256,
                  ("rawKey" .=) <$> _cekRawKey])

-- | A map of scoped autoscaler lists.
--
-- /See:/ 'autoscalerAggregatedListItems' smart constructor.
newtype AutoscalerAggregatedListItems = AutoscalerAggregatedListItems'
    { _aaliAddtional :: HashMap Text AutoscalersScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalerAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaliAddtional'
autoscalerAggregatedListItems
    :: HashMap Text AutoscalersScopedList -- ^ 'aaliAddtional'
    -> AutoscalerAggregatedListItems
autoscalerAggregatedListItems pAaliAddtional_ =
    AutoscalerAggregatedListItems'
    { _aaliAddtional = _Coerce # pAaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of autoscalers.
aaliAddtional :: Lens' AutoscalerAggregatedListItems (HashMap Text AutoscalersScopedList)
aaliAddtional
  = lens _aaliAddtional
      (\ s a -> s{_aaliAddtional = a})
      . _Coerce

instance FromJSON AutoscalerAggregatedListItems where
        parseJSON
          = withObject "AutoscalerAggregatedListItems"
              (\ o ->
                 AutoscalerAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON AutoscalerAggregatedListItems where
        toJSON = toJSON . _aaliAddtional

--
-- /See:/ 'instanceGroupManagersSetInstanceTemplateRequest' smart constructor.
newtype InstanceGroupManagersSetInstanceTemplateRequest = InstanceGroupManagersSetInstanceTemplateRequest'
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
    InstanceGroupManagersSetInstanceTemplateRequest'
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
                 InstanceGroupManagersSetInstanceTemplateRequest' <$>
                   (o .:? "instanceTemplate"))

instance ToJSON
         InstanceGroupManagersSetInstanceTemplateRequest where
        toJSON
          InstanceGroupManagersSetInstanceTemplateRequest'{..}
          = object
              (catMaybes
                 [("instanceTemplate" .=) <$>
                    _igmsitrInstanceTemplate])

-- | Deprecation status for a public resource.
--
-- /See:/ 'deprecationStatus' smart constructor.
data DeprecationStatus = DeprecationStatus'
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
    DeprecationStatus'
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

-- | An optional RFC3339 timestamp on or after which the state of this
-- resource is intended to change to DELETED. This is only informational
-- and the status will not change unless the client explicitly changes it.
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

-- | An optional RFC3339 timestamp on or after which the state of this
-- resource is intended to change to OBSOLETE. This is only informational
-- and the status will not change unless the client explicitly changes it.
dsObsolete :: Lens' DeprecationStatus (Maybe Text)
dsObsolete
  = lens _dsObsolete (\ s a -> s{_dsObsolete = a})

-- | An optional RFC3339 timestamp on or after which the state of this
-- resource is intended to change to DEPRECATED. This is only informational
-- and the status will not change unless the client explicitly changes it.
dsDeprecated :: Lens' DeprecationStatus (Maybe Text)
dsDeprecated
  = lens _dsDeprecated (\ s a -> s{_dsDeprecated = a})

instance FromJSON DeprecationStatus where
        parseJSON
          = withObject "DeprecationStatus"
              (\ o ->
                 DeprecationStatus' <$>
                   (o .:? "state") <*> (o .:? "deleted") <*>
                     (o .:? "replacement")
                     <*> (o .:? "obsolete")
                     <*> (o .:? "deprecated"))

instance ToJSON DeprecationStatus where
        toJSON DeprecationStatus'{..}
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
data Snapshot = Snapshot'
    { _sStorageBytesStatus      :: !(Maybe SnapshotStorageBytesStatus)
    , _sStatus                  :: !(Maybe SnapshotStatus)
    , _sDiskSizeGb              :: !(Maybe (Textual Int64))
    , _sSourceDiskId            :: !(Maybe Text)
    , _sKind                    :: !Text
    , _sSourceDiskEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _sStorageBytes            :: !(Maybe (Textual Int64))
    , _sSelfLink                :: !(Maybe Text)
    , _sSnapshotEncryptionKey   :: !(Maybe CustomerEncryptionKey)
    , _sName                    :: !(Maybe Text)
    , _sCreationTimestamp       :: !(Maybe Text)
    , _sId                      :: !(Maybe (Textual Word64))
    , _sLicenses                :: !(Maybe [Text])
    , _sSourceDisk              :: !(Maybe Text)
    , _sDescription             :: !(Maybe Text)
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
-- * 'sSourceDiskEncryptionKey'
--
-- * 'sStorageBytes'
--
-- * 'sSelfLink'
--
-- * 'sSnapshotEncryptionKey'
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
    Snapshot'
    { _sStorageBytesStatus = Nothing
    , _sStatus = Nothing
    , _sDiskSizeGb = Nothing
    , _sSourceDiskId = Nothing
    , _sKind = "compute#snapshot"
    , _sSourceDiskEncryptionKey = Nothing
    , _sStorageBytes = Nothing
    , _sSelfLink = Nothing
    , _sSnapshotEncryptionKey = Nothing
    , _sName = Nothing
    , _sCreationTimestamp = Nothing
    , _sId = Nothing
    , _sLicenses = Nothing
    , _sSourceDisk = Nothing
    , _sDescription = Nothing
    }

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation. This
-- status can either be UPDATING, meaning the size of the snapshot is being
-- updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
sStorageBytesStatus :: Lens' Snapshot (Maybe SnapshotStorageBytesStatus)
sStorageBytesStatus
  = lens _sStorageBytesStatus
      (\ s a -> s{_sStorageBytesStatus = a})

-- | [Output Only] The status of the snapshot. This can be CREATING,
-- DELETING, FAILED, READY, or UPLOADING.
sStatus :: Lens' Snapshot (Maybe SnapshotStatus)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | [Output Only] Size of the snapshot, specified in GB.
sDiskSizeGb :: Lens' Snapshot (Maybe Int64)
sDiskSizeGb
  = lens _sDiskSizeGb (\ s a -> s{_sDiskSizeGb = a}) .
      mapping _Coerce

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

-- | The customer-supplied encryption key of the source disk. Required if the
-- source disk is protected by a customer-supplied encryption key.
sSourceDiskEncryptionKey :: Lens' Snapshot (Maybe CustomerEncryptionKey)
sSourceDiskEncryptionKey
  = lens _sSourceDiskEncryptionKey
      (\ s a -> s{_sSourceDiskEncryptionKey = a})

-- | [Output Only] A size of the the storage used by the snapshot. As
-- snapshots share storage, this number is expected to change with snapshot
-- creation\/deletion.
sStorageBytes :: Lens' Snapshot (Maybe Int64)
sStorageBytes
  = lens _sStorageBytes
      (\ s a -> s{_sStorageBytes = a})
      . mapping _Coerce

-- | [Output Only] Server-defined URL for the resource.
sSelfLink :: Lens' Snapshot (Maybe Text)
sSelfLink
  = lens _sSelfLink (\ s a -> s{_sSelfLink = a})

-- | Encrypts the snapshot using a customer-supplied encryption key. After
-- you encrypt a snapshot using a customer-supplied key, you must provide
-- the same key if you use the image later For example, you must provide
-- the encryption key when you create a disk from the encrypted snapshot in
-- a future request. Customer-supplied encryption keys do not protect
-- access to metadata of the disk. If you do not provide an encryption key
-- when creating the snapshot, then the snapshot will be encrypted using an
-- automatically generated key and you do not need to provide a key to use
-- the snapshot later.
sSnapshotEncryptionKey :: Lens' Snapshot (Maybe CustomerEncryptionKey)
sSnapshotEncryptionKey
  = lens _sSnapshotEncryptionKey
      (\ s a -> s{_sSnapshotEncryptionKey = a})

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
sId :: Lens' Snapshot (Maybe Word64)
sId
  = lens _sId (\ s a -> s{_sId = a}) . mapping _Coerce

-- | [Output Only] A list of public visible licenses that apply to this
-- snapshot. This can be because the original image had licenses attached
-- (such as a Windows image).
sLicenses :: Lens' Snapshot [Text]
sLicenses
  = lens _sLicenses (\ s a -> s{_sLicenses = a}) .
      _Default
      . _Coerce

-- | [Output Only] The source disk used to create this snapshot.
sSourceDisk :: Lens' Snapshot (Maybe Text)
sSourceDisk
  = lens _sSourceDisk (\ s a -> s{_sSourceDisk = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
sDescription :: Lens' Snapshot (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Snapshot where
        parseJSON
          = withObject "Snapshot"
              (\ o ->
                 Snapshot' <$>
                   (o .:? "storageBytesStatus") <*> (o .:? "status") <*>
                     (o .:? "diskSizeGb")
                     <*> (o .:? "sourceDiskId")
                     <*> (o .:? "kind" .!= "compute#snapshot")
                     <*> (o .:? "sourceDiskEncryptionKey")
                     <*> (o .:? "storageBytes")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "snapshotEncryptionKey")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "sourceDisk")
                     <*> (o .:? "description"))

instance ToJSON Snapshot where
        toJSON Snapshot'{..}
          = object
              (catMaybes
                 [("storageBytesStatus" .=) <$> _sStorageBytesStatus,
                  ("status" .=) <$> _sStatus,
                  ("diskSizeGb" .=) <$> _sDiskSizeGb,
                  ("sourceDiskId" .=) <$> _sSourceDiskId,
                  Just ("kind" .= _sKind),
                  ("sourceDiskEncryptionKey" .=) <$>
                    _sSourceDiskEncryptionKey,
                  ("storageBytes" .=) <$> _sStorageBytes,
                  ("selfLink" .=) <$> _sSelfLink,
                  ("snapshotEncryptionKey" .=) <$>
                    _sSnapshotEncryptionKey,
                  ("name" .=) <$> _sName,
                  ("creationTimestamp" .=) <$> _sCreationTimestamp,
                  ("id" .=) <$> _sId, ("licenses" .=) <$> _sLicenses,
                  ("sourceDisk" .=) <$> _sSourceDisk,
                  ("description" .=) <$> _sDescription])

--
-- /See:/ 'routerStatus' smart constructor.
data RouterStatus = RouterStatus'
    { _rsBGPPeerStatus :: !(Maybe [RouterStatusBGPPeerStatus])
    , _rsNetwork       :: !(Maybe Text)
    , _rsBestRoutes    :: !(Maybe [Route])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsBGPPeerStatus'
--
-- * 'rsNetwork'
--
-- * 'rsBestRoutes'
routerStatus
    :: RouterStatus
routerStatus =
    RouterStatus'
    { _rsBGPPeerStatus = Nothing
    , _rsNetwork = Nothing
    , _rsBestRoutes = Nothing
    }

rsBGPPeerStatus :: Lens' RouterStatus [RouterStatusBGPPeerStatus]
rsBGPPeerStatus
  = lens _rsBGPPeerStatus
      (\ s a -> s{_rsBGPPeerStatus = a})
      . _Default
      . _Coerce

-- | URI of the network to which this router belongs.
rsNetwork :: Lens' RouterStatus (Maybe Text)
rsNetwork
  = lens _rsNetwork (\ s a -> s{_rsNetwork = a})

-- | Best routes for this router\'s network.
rsBestRoutes :: Lens' RouterStatus [Route]
rsBestRoutes
  = lens _rsBestRoutes (\ s a -> s{_rsBestRoutes = a})
      . _Default
      . _Coerce

instance FromJSON RouterStatus where
        parseJSON
          = withObject "RouterStatus"
              (\ o ->
                 RouterStatus' <$>
                   (o .:? "bgpPeerStatus" .!= mempty) <*>
                     (o .:? "network")
                     <*> (o .:? "bestRoutes" .!= mempty))

instance ToJSON RouterStatus where
        toJSON RouterStatus'{..}
          = object
              (catMaybes
                 [("bgpPeerStatus" .=) <$> _rsBGPPeerStatus,
                  ("network" .=) <$> _rsNetwork,
                  ("bestRoutes" .=) <$> _rsBestRoutes])

-- | Custom utilization metric policy.
--
-- /See:/ 'autoscalingPolicyCustomMetricUtilization' smart constructor.
data AutoscalingPolicyCustomMetricUtilization = AutoscalingPolicyCustomMetricUtilization'
    { _apcmuUtilizationTarget     :: !(Maybe (Textual Double))
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
    AutoscalingPolicyCustomMetricUtilization'
    { _apcmuUtilizationTarget = Nothing
    , _apcmuMetric = Nothing
    , _apcmuUtilizationTargetType = Nothing
    }

-- | Target value of the metric which autoscaler should maintain. Must be a
-- positive value.
apcmuUtilizationTarget :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Double)
apcmuUtilizationTarget
  = lens _apcmuUtilizationTarget
      (\ s a -> s{_apcmuUtilizationTarget = a})
      . mapping _Coerce

-- | The identifier of the Stackdriver Monitoring metric. The metric cannot
-- have negative values and should be a utilization metric, which means
-- that the number of virtual machines handling requests should increase or
-- decrease proportionally to the metric. The metric must also have a label
-- of compute.googleapis.com\/resource_id with the value of the instance\'s
-- unique ID, although this alone does not guarantee that the metric is
-- valid. For example, the following is a valid metric:
-- compute.googleapis.com\/instance\/network\/received_bytes_count The
-- following is not a valid metric because it does not increase or decrease
-- based on usage: compute.googleapis.com\/instance\/cpu\/reserved_cores
apcmuMetric :: Lens' AutoscalingPolicyCustomMetricUtilization (Maybe Text)
apcmuMetric
  = lens _apcmuMetric (\ s a -> s{_apcmuMetric = a})

-- | Defines how target utilization value is expressed for a Stackdriver
-- Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
-- If not specified, the default is GAUGE.
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
                 AutoscalingPolicyCustomMetricUtilization' <$>
                   (o .:? "utilizationTarget") <*> (o .:? "metric") <*>
                     (o .:? "utilizationTargetType"))

instance ToJSON
         AutoscalingPolicyCustomMetricUtilization where
        toJSON AutoscalingPolicyCustomMetricUtilization'{..}
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
data ForwardingRuleList = ForwardingRuleList'
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
    ForwardingRuleList'
    { _frlNextPageToken = Nothing
    , _frlKind = "compute#forwardingRuleList"
    , _frlItems = Nothing
    , _frlSelfLink = Nothing
    , _frlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 ForwardingRuleList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#forwardingRuleList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ForwardingRuleList where
        toJSON ForwardingRuleList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _frlNextPageToken,
                  Just ("kind" .= _frlKind),
                  ("items" .=) <$> _frlItems,
                  ("selfLink" .=) <$> _frlSelfLink,
                  ("id" .=) <$> _frlId])

--
-- /See:/ 'vpnTunnelsScopedList' smart constructor.
data VPNTunnelsScopedList = VPNTunnelsScopedList'
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
    VPNTunnelsScopedList'
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
                 VPNTunnelsScopedList' <$>
                   (o .:? "vpnTunnels" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON VPNTunnelsScopedList where
        toJSON VPNTunnelsScopedList'{..}
          = object
              (catMaybes
                 [("vpnTunnels" .=) <$> _vtslVPNTunnels,
                  ("warning" .=) <$> _vtslWarning])

--
-- /See:/ 'instanceGroupsSetNamedPortsRequest' smart constructor.
data InstanceGroupsSetNamedPortsRequest = InstanceGroupsSetNamedPortsRequest'
    { _igsnprFingerprint :: !(Maybe Bytes)
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
    InstanceGroupsSetNamedPortsRequest'
    { _igsnprFingerprint = Nothing
    , _igsnprNamedPorts = Nothing
    }

-- | The fingerprint of the named ports information for this instance group.
-- Use this optional property to prevent conflicts when multiple users
-- change the named ports settings concurrently. Obtain the fingerprint
-- with the instanceGroups.get method. Then, include the fingerprint in
-- your request to ensure that you do not overwrite changes that were
-- applied from another concurrent request.
igsnprFingerprint :: Lens' InstanceGroupsSetNamedPortsRequest (Maybe ByteString)
igsnprFingerprint
  = lens _igsnprFingerprint
      (\ s a -> s{_igsnprFingerprint = a})
      . mapping _Bytes

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
                 InstanceGroupsSetNamedPortsRequest' <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "namedPorts" .!= mempty))

instance ToJSON InstanceGroupsSetNamedPortsRequest
         where
        toJSON InstanceGroupsSetNamedPortsRequest'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _igsnprFingerprint,
                  ("namedPorts" .=) <$> _igsnprNamedPorts])

-- | Contains a list of Operation resources.
--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList'
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
    OperationList'
    { _olNextPageToken = Nothing
    , _olKind = "compute#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operations for Operations
-- resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | [Output Only] A list of Operation resources.
olItems :: Lens' OperationList [Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

instance FromJSON OperationList where
        parseJSON
          = withObject "OperationList"
              (\ o ->
                 OperationList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#operationList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON OperationList where
        toJSON OperationList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olNextPageToken,
                  Just ("kind" .= _olKind), ("items" .=) <$> _olItems,
                  ("selfLink" .=) <$> _olSelfLink,
                  ("id" .=) <$> _olId])

-- | A list of Disk resources.
--
-- /See:/ 'diskList' smart constructor.
data DiskList = DiskList'
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
    DiskList'
    { _dlNextPageToken = Nothing
    , _dlKind = "compute#diskList"
    , _dlItems = Nothing
    , _dlSelfLink = Nothing
    , _dlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dlId :: Lens' DiskList (Maybe Text)
dlId = lens _dlId (\ s a -> s{_dlId = a})

instance FromJSON DiskList where
        parseJSON
          = withObject "DiskList"
              (\ o ->
                 DiskList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskList where
        toJSON DiskList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlNextPageToken,
                  Just ("kind" .= _dlKind), ("items" .=) <$> _dlItems,
                  ("selfLink" .=) <$> _dlSelfLink,
                  ("id" .=) <$> _dlId])

--
-- /See:/ 'targetPoolsAddInstanceRequest' smart constructor.
newtype TargetPoolsAddInstanceRequest = TargetPoolsAddInstanceRequest'
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
    TargetPoolsAddInstanceRequest'
    { _tpairInstances = Nothing
    }

-- | A full or partial URL to an instance to add to this target pool. This
-- can be a full or partial URL. For example, the following are valid URLs:
-- -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project-id\/zones\/zone\/instances\/instance-name
-- - projects\/project-id\/zones\/zone\/instances\/instance-name -
-- zones\/zone\/instances\/instance-name
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
                 TargetPoolsAddInstanceRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON TargetPoolsAddInstanceRequest where
        toJSON TargetPoolsAddInstanceRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _tpairInstances])

-- | Contains a list of autoscalers.
--
-- /See:/ 'regionAutoscalerList' smart constructor.
data RegionAutoscalerList = RegionAutoscalerList'
    { _rNextPageToken :: !(Maybe Text)
    , _rKind          :: !Text
    , _rItems         :: !(Maybe [Autoscaler])
    , _rSelfLink      :: !(Maybe Text)
    , _rId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rNextPageToken'
--
-- * 'rKind'
--
-- * 'rItems'
--
-- * 'rSelfLink'
--
-- * 'rId'
regionAutoscalerList
    :: RegionAutoscalerList
regionAutoscalerList =
    RegionAutoscalerList'
    { _rNextPageToken = Nothing
    , _rKind = "compute#regionAutoscalerList"
    , _rItems = Nothing
    , _rSelfLink = Nothing
    , _rId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
rNextPageToken :: Lens' RegionAutoscalerList (Maybe Text)
rNextPageToken
  = lens _rNextPageToken
      (\ s a -> s{_rNextPageToken = a})

-- | Type of resource.
rKind :: Lens' RegionAutoscalerList Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | A list of autoscalers.
rItems :: Lens' RegionAutoscalerList [Autoscaler]
rItems
  = lens _rItems (\ s a -> s{_rItems = a}) . _Default .
      _Coerce

-- | [Output Only] Server-defined URL for this resource.
rSelfLink :: Lens' RegionAutoscalerList (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
rId :: Lens' RegionAutoscalerList (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

instance FromJSON RegionAutoscalerList where
        parseJSON
          = withObject "RegionAutoscalerList"
              (\ o ->
                 RegionAutoscalerList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#regionAutoscalerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionAutoscalerList where
        toJSON RegionAutoscalerList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rNextPageToken,
                  Just ("kind" .= _rKind), ("items" .=) <$> _rItems,
                  ("selfLink" .=) <$> _rSelfLink, ("id" .=) <$> _rId])

--
-- /See:/ 'instanceGroupsAddInstancesRequest' smart constructor.
newtype InstanceGroupsAddInstancesRequest = InstanceGroupsAddInstancesRequest'
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
    InstanceGroupsAddInstancesRequest'
    { _igairInstances = Nothing
    }

-- | The list of instances to add to the instance group.
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
                 InstanceGroupsAddInstancesRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON InstanceGroupsAddInstancesRequest
         where
        toJSON InstanceGroupsAddInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _igairInstances])

-- | [Output Only] A list of managed instance groups.
--
-- /See:/ 'instanceGroupManagerList' smart constructor.
data InstanceGroupManagerList = InstanceGroupManagerList'
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
    InstanceGroupManagerList'
    { _igmlNextPageToken = Nothing
    , _igmlKind = "compute#instanceGroupManagerList"
    , _igmlItems = Nothing
    , _igmlSelfLink = Nothing
    , _igmlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
igmlNextPageToken :: Lens' InstanceGroupManagerList (Maybe Text)
igmlNextPageToken
  = lens _igmlNextPageToken
      (\ s a -> s{_igmlNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManagerList for a list of managed instance groups.
igmlKind :: Lens' InstanceGroupManagerList Text
igmlKind = lens _igmlKind (\ s a -> s{_igmlKind = a})

-- | [Output Only] A list of managed instance groups.
igmlItems :: Lens' InstanceGroupManagerList [InstanceGroupManager]
igmlItems
  = lens _igmlItems (\ s a -> s{_igmlItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
igmlSelfLink :: Lens' InstanceGroupManagerList (Maybe Text)
igmlSelfLink
  = lens _igmlSelfLink (\ s a -> s{_igmlSelfLink = a})

-- | [Output Only] A unique identifier for this resource type. The server
-- generates this identifier.
igmlId :: Lens' InstanceGroupManagerList (Maybe Text)
igmlId = lens _igmlId (\ s a -> s{_igmlId = a})

instance FromJSON InstanceGroupManagerList where
        parseJSON
          = withObject "InstanceGroupManagerList"
              (\ o ->
                 InstanceGroupManagerList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceGroupManagerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupManagerList where
        toJSON InstanceGroupManagerList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igmlNextPageToken,
                  Just ("kind" .= _igmlKind),
                  ("items" .=) <$> _igmlItems,
                  ("selfLink" .=) <$> _igmlSelfLink,
                  ("id" .=) <$> _igmlId])

-- | An informational warning that appears when the list of addresses is
-- empty.
--
-- /See:/ 'subnetworksScopedListWarning' smart constructor.
data SubnetworksScopedListWarning = SubnetworksScopedListWarning'
    { _sslwData    :: !(Maybe [SubnetworksScopedListWarningDataItem])
    , _sslwCode    :: !(Maybe SubnetworksScopedListWarningCode)
    , _sslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslwData'
--
-- * 'sslwCode'
--
-- * 'sslwMessage'
subnetworksScopedListWarning
    :: SubnetworksScopedListWarning
subnetworksScopedListWarning =
    SubnetworksScopedListWarning'
    { _sslwData = Nothing
    , _sslwCode = Nothing
    , _sslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
sslwData :: Lens' SubnetworksScopedListWarning [SubnetworksScopedListWarningDataItem]
sslwData
  = lens _sslwData (\ s a -> s{_sslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
sslwCode :: Lens' SubnetworksScopedListWarning (Maybe SubnetworksScopedListWarningCode)
sslwCode = lens _sslwCode (\ s a -> s{_sslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
sslwMessage :: Lens' SubnetworksScopedListWarning (Maybe Text)
sslwMessage
  = lens _sslwMessage (\ s a -> s{_sslwMessage = a})

instance FromJSON SubnetworksScopedListWarning where
        parseJSON
          = withObject "SubnetworksScopedListWarning"
              (\ o ->
                 SubnetworksScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON SubnetworksScopedListWarning where
        toJSON SubnetworksScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _sslwData,
                  ("code" .=) <$> _sslwCode,
                  ("message" .=) <$> _sslwMessage])

-- | An Image resource.
--
-- /See:/ 'image' smart constructor.
data Image = Image'
    { _iStatus                  :: !(Maybe ImageStatus)
    , _iImageEncryptionKey      :: !(Maybe CustomerEncryptionKey)
    , _iDiskSizeGb              :: !(Maybe (Textual Int64))
    , _iSourceType              :: !ImageSourceType
    , _iSourceDiskId            :: !(Maybe Text)
    , _iKind                    :: !Text
    , _iSourceDiskEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _iGuestOSFeatures         :: !(Maybe [GuestOSFeature])
    , _iArchiveSizeBytes        :: !(Maybe (Textual Int64))
    , _iFamily                  :: !(Maybe Text)
    , _iRawDisk                 :: !(Maybe ImageRawDisk)
    , _iSelfLink                :: !(Maybe Text)
    , _iName                    :: !(Maybe Text)
    , _iCreationTimestamp       :: !(Maybe Text)
    , _iId                      :: !(Maybe (Textual Word64))
    , _iLicenses                :: !(Maybe [Text])
    , _iSourceDisk              :: !(Maybe Text)
    , _iDescription             :: !(Maybe Text)
    , _iDeprecated              :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStatus'
--
-- * 'iImageEncryptionKey'
--
-- * 'iDiskSizeGb'
--
-- * 'iSourceType'
--
-- * 'iSourceDiskId'
--
-- * 'iKind'
--
-- * 'iSourceDiskEncryptionKey'
--
-- * 'iGuestOSFeatures'
--
-- * 'iArchiveSizeBytes'
--
-- * 'iFamily'
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
    Image'
    { _iStatus = Nothing
    , _iImageEncryptionKey = Nothing
    , _iDiskSizeGb = Nothing
    , _iSourceType = Raw
    , _iSourceDiskId = Nothing
    , _iKind = "compute#image"
    , _iSourceDiskEncryptionKey = Nothing
    , _iGuestOSFeatures = Nothing
    , _iArchiveSizeBytes = Nothing
    , _iFamily = Nothing
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

-- | Encrypts the image using a customer-supplied encryption key. After you
-- encrypt an image with a customer-supplied key, you must provide the same
-- key if you use the image later (e.g. to create a disk from the image).
-- Customer-supplied encryption keys do not protect access to metadata of
-- the disk. If you do not provide an encryption key when creating the
-- image, then the disk will be encrypted using an automatically generated
-- key and you do not need to provide a key to use the image later.
iImageEncryptionKey :: Lens' Image (Maybe CustomerEncryptionKey)
iImageEncryptionKey
  = lens _iImageEncryptionKey
      (\ s a -> s{_iImageEncryptionKey = a})

-- | Size of the image when restored onto a persistent disk (in GB).
iDiskSizeGb :: Lens' Image (Maybe Int64)
iDiskSizeGb
  = lens _iDiskSizeGb (\ s a -> s{_iDiskSizeGb = a}) .
      mapping _Coerce

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

-- | The customer-supplied encryption key of the source disk. Required if the
-- source disk is protected by a customer-supplied encryption key.
iSourceDiskEncryptionKey :: Lens' Image (Maybe CustomerEncryptionKey)
iSourceDiskEncryptionKey
  = lens _iSourceDiskEncryptionKey
      (\ s a -> s{_iSourceDiskEncryptionKey = a})

-- | A list of features to enable on the guest OS. Applicable for bootable
-- images only. Currently, only one feature can be enabled,
-- VIRTIO_SCSCI_MULTIQUEUE, which allows each virtual CPU to have its own
-- queue. For Windows images, you can only enable VIRTIO_SCSCI_MULTIQUEUE
-- on images with driver version 1.2.0.1621 or higher. Linux images with
-- kernel versions 3.17 and higher will support VIRTIO_SCSCI_MULTIQUEUE.
-- For new Windows images, the server might also populate this field with
-- the value WINDOWS, to indicate that this is a Windows image. This value
-- is purely informational and does not enable or disable any features.
iGuestOSFeatures :: Lens' Image [GuestOSFeature]
iGuestOSFeatures
  = lens _iGuestOSFeatures
      (\ s a -> s{_iGuestOSFeatures = a})
      . _Default
      . _Coerce

-- | Size of the image tar.gz archive stored in Google Cloud Storage (in
-- bytes).
iArchiveSizeBytes :: Lens' Image (Maybe Int64)
iArchiveSizeBytes
  = lens _iArchiveSizeBytes
      (\ s a -> s{_iArchiveSizeBytes = a})
      . mapping _Coerce

-- | The name of the image family to which this image belongs. You can create
-- disks by specifying an image family instead of a specific image name.
-- The image family always returns its latest image that is not deprecated.
-- The name of the image family must comply with RFC1035.
iFamily :: Lens' Image (Maybe Text)
iFamily = lens _iFamily (\ s a -> s{_iFamily = a})

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
iId :: Lens' Image (Maybe Word64)
iId
  = lens _iId (\ s a -> s{_iId = a}) . mapping _Coerce

-- | Any applicable license URI.
iLicenses :: Lens' Image [Text]
iLicenses
  = lens _iLicenses (\ s a -> s{_iLicenses = a}) .
      _Default
      . _Coerce

-- | URL of the source disk used to create this image. This can be a full or
-- valid partial URL. You must provide either this property or the
-- rawDisk.source property but not both to create an image. For example,
-- the following are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/disks\/disk
-- - projects\/project\/zones\/zone\/disks\/disk - zones\/zone\/disks\/disk
iSourceDisk :: Lens' Image (Maybe Text)
iSourceDisk
  = lens _iSourceDisk (\ s a -> s{_iSourceDisk = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
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
                 Image' <$>
                   (o .:? "status") <*> (o .:? "imageEncryptionKey") <*>
                     (o .:? "diskSizeGb")
                     <*> (o .:? "sourceType" .!= Raw)
                     <*> (o .:? "sourceDiskId")
                     <*> (o .:? "kind" .!= "compute#image")
                     <*> (o .:? "sourceDiskEncryptionKey")
                     <*> (o .:? "guestOsFeatures" .!= mempty)
                     <*> (o .:? "archiveSizeBytes")
                     <*> (o .:? "family")
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
        toJSON Image'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iStatus,
                  ("imageEncryptionKey" .=) <$> _iImageEncryptionKey,
                  ("diskSizeGb" .=) <$> _iDiskSizeGb,
                  Just ("sourceType" .= _iSourceType),
                  ("sourceDiskId" .=) <$> _iSourceDiskId,
                  Just ("kind" .= _iKind),
                  ("sourceDiskEncryptionKey" .=) <$>
                    _iSourceDiskEncryptionKey,
                  ("guestOsFeatures" .=) <$> _iGuestOSFeatures,
                  ("archiveSizeBytes" .=) <$> _iArchiveSizeBytes,
                  ("family" .=) <$> _iFamily,
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
data URLMap = URLMap'
    { _umTests             :: !(Maybe [URLMapTest])
    , _umKind              :: !Text
    , _umFingerprint       :: !(Maybe Bytes)
    , _umDefaultService    :: !(Maybe Text)
    , _umSelfLink          :: !(Maybe Text)
    , _umName              :: !(Maybe Text)
    , _umCreationTimestamp :: !(Maybe Text)
    , _umPathMatchers      :: !(Maybe [PathMatcher])
    , _umId                :: !(Maybe (Textual Word64))
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
    URLMap'
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
-- succeed only if all of the test cases pass.
umTests :: Lens' URLMap [URLMapTest]
umTests
  = lens _umTests (\ s a -> s{_umTests = a}) . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#urlMaps for url maps.
umKind :: Lens' URLMap Text
umKind = lens _umKind (\ s a -> s{_umKind = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a UrlMap. An up-to-date fingerprint must be
-- provided in order to update the UrlMap.
umFingerprint :: Lens' URLMap (Maybe ByteString)
umFingerprint
  = lens _umFingerprint
      (\ s a -> s{_umFingerprint = a})
      . mapping _Bytes

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
umId :: Lens' URLMap (Maybe Word64)
umId
  = lens _umId (\ s a -> s{_umId = a}) .
      mapping _Coerce

-- | The list of HostRules to use against the URL.
umHostRules :: Lens' URLMap [HostRule]
umHostRules
  = lens _umHostRules (\ s a -> s{_umHostRules = a}) .
      _Default
      . _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
umDescription :: Lens' URLMap (Maybe Text)
umDescription
  = lens _umDescription
      (\ s a -> s{_umDescription = a})

instance FromJSON URLMap where
        parseJSON
          = withObject "URLMap"
              (\ o ->
                 URLMap' <$>
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
        toJSON URLMap'{..}
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
newtype InstanceGroupAggregatedListItems = InstanceGroupAggregatedListItems'
    { _igaliAddtional :: HashMap Text InstanceGroupsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igaliAddtional'
instanceGroupAggregatedListItems
    :: HashMap Text InstanceGroupsScopedList -- ^ 'igaliAddtional'
    -> InstanceGroupAggregatedListItems
instanceGroupAggregatedListItems pIgaliAddtional_ =
    InstanceGroupAggregatedListItems'
    { _igaliAddtional = _Coerce # pIgaliAddtional_
    }

-- | The name of the scope that contains this set of instance groups.
igaliAddtional :: Lens' InstanceGroupAggregatedListItems (HashMap Text InstanceGroupsScopedList)
igaliAddtional
  = lens _igaliAddtional
      (\ s a -> s{_igaliAddtional = a})
      . _Coerce

instance FromJSON InstanceGroupAggregatedListItems
         where
        parseJSON
          = withObject "InstanceGroupAggregatedListItems"
              (\ o ->
                 InstanceGroupAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON InstanceGroupAggregatedListItems
         where
        toJSON = toJSON . _igaliAddtional

-- | Contains a list of TargetPool resources.
--
-- /See:/ 'targetPoolList' smart constructor.
data TargetPoolList = TargetPoolList'
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
    TargetPoolList'
    { _tplNextPageToken = Nothing
    , _tplKind = "compute#targetPoolList"
    , _tplItems = Nothing
    , _tplSelfLink = Nothing
    , _tplId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
tplNextPageToken :: Lens' TargetPoolList (Maybe Text)
tplNextPageToken
  = lens _tplNextPageToken
      (\ s a -> s{_tplNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetPoolList for lists
-- of target pools.
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
                 TargetPoolList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetPoolList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetPoolList where
        toJSON TargetPoolList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tplNextPageToken,
                  Just ("kind" .= _tplKind),
                  ("items" .=) <$> _tplItems,
                  ("selfLink" .=) <$> _tplSelfLink,
                  ("id" .=) <$> _tplId])

--
-- /See:/ 'targetInstanceAggregatedList' smart constructor.
data TargetInstanceAggregatedList = TargetInstanceAggregatedList'
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
    TargetInstanceAggregatedList'
    { _tialNextPageToken = Nothing
    , _tialKind = "compute#targetInstanceAggregatedList"
    , _tialItems = Nothing
    , _tialSelfLink = Nothing
    , _tialId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 TargetInstanceAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#targetInstanceAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetInstanceAggregatedList where
        toJSON TargetInstanceAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tialNextPageToken,
                  Just ("kind" .= _tialKind),
                  ("items" .=) <$> _tialItems,
                  ("selfLink" .=) <$> _tialSelfLink,
                  ("id" .=) <$> _tialId])

--
-- /See:/ 'disksScopedList' smart constructor.
data DisksScopedList = DisksScopedList'
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
    DisksScopedList'
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
                 DisksScopedList' <$>
                   (o .:? "warning") <*> (o .:? "disks" .!= mempty))

instance ToJSON DisksScopedList where
        toJSON DisksScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _dslWarning,
                  ("disks" .=) <$> _dslDisks])

--
-- /See:/ 'instanceGroupManagersScopedList' smart constructor.
data InstanceGroupManagersScopedList = InstanceGroupManagersScopedList'
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
    InstanceGroupManagersScopedList'
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
                 InstanceGroupManagersScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "instanceGroupManagers" .!= mempty))

instance ToJSON InstanceGroupManagersScopedList where
        toJSON InstanceGroupManagersScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _igmslWarning,
                  ("instanceGroupManagers" .=) <$>
                    _igmslInstanceGroupManagers])

-- | An HealthCheck resource. This resource defines a template for how
-- individual virtual machines should be checked for health, via one of the
-- supported protocols.
--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck = HealthCheck'
    { _hcHealthyThreshold   :: !(Maybe (Textual Int32))
    , _hcTCPHealthCheck     :: !(Maybe TCPHealthCheck)
    , _hcKind               :: !Text
    , _hcSSLHealthCheck     :: !(Maybe SSLHealthCheck)
    , _hcSelfLink           :: !(Maybe Text)
    , _hcCheckIntervalSec   :: !(Maybe (Textual Int32))
    , _hcName               :: !(Maybe Text)
    , _hcCreationTimestamp  :: !(Maybe Text)
    , _hcHTTPHealthCheck    :: !(Maybe HTTPHealthCheck)
    , _hcId                 :: !(Maybe (Textual Word64))
    , _hcType               :: !(Maybe HealthCheckType)
    , _hcTimeoutSec         :: !(Maybe (Textual Int32))
    , _hcDescription        :: !(Maybe Text)
    , _hcUnhealthyThreshold :: !(Maybe (Textual Int32))
    , _hcHTTPSHealthCheck   :: !(Maybe HTTPSHealthCheck)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcHealthyThreshold'
--
-- * 'hcTCPHealthCheck'
--
-- * 'hcKind'
--
-- * 'hcSSLHealthCheck'
--
-- * 'hcSelfLink'
--
-- * 'hcCheckIntervalSec'
--
-- * 'hcName'
--
-- * 'hcCreationTimestamp'
--
-- * 'hcHTTPHealthCheck'
--
-- * 'hcId'
--
-- * 'hcType'
--
-- * 'hcTimeoutSec'
--
-- * 'hcDescription'
--
-- * 'hcUnhealthyThreshold'
--
-- * 'hcHTTPSHealthCheck'
healthCheck
    :: HealthCheck
healthCheck =
    HealthCheck'
    { _hcHealthyThreshold = Nothing
    , _hcTCPHealthCheck = Nothing
    , _hcKind = "compute#healthCheck"
    , _hcSSLHealthCheck = Nothing
    , _hcSelfLink = Nothing
    , _hcCheckIntervalSec = Nothing
    , _hcName = Nothing
    , _hcCreationTimestamp = Nothing
    , _hcHTTPHealthCheck = Nothing
    , _hcId = Nothing
    , _hcType = Nothing
    , _hcTimeoutSec = Nothing
    , _hcDescription = Nothing
    , _hcUnhealthyThreshold = Nothing
    , _hcHTTPSHealthCheck = Nothing
    }

-- | A so-far unhealthy instance will be marked healthy after this many
-- consecutive successes. The default value is 2.
hcHealthyThreshold :: Lens' HealthCheck (Maybe Int32)
hcHealthyThreshold
  = lens _hcHealthyThreshold
      (\ s a -> s{_hcHealthyThreshold = a})
      . mapping _Coerce

hcTCPHealthCheck :: Lens' HealthCheck (Maybe TCPHealthCheck)
hcTCPHealthCheck
  = lens _hcTCPHealthCheck
      (\ s a -> s{_hcTCPHealthCheck = a})

-- | Type of the resource.
hcKind :: Lens' HealthCheck Text
hcKind = lens _hcKind (\ s a -> s{_hcKind = a})

hcSSLHealthCheck :: Lens' HealthCheck (Maybe SSLHealthCheck)
hcSSLHealthCheck
  = lens _hcSSLHealthCheck
      (\ s a -> s{_hcSSLHealthCheck = a})

-- | [Output Only] Server-defined URL for the resource.
hcSelfLink :: Lens' HealthCheck (Maybe Text)
hcSelfLink
  = lens _hcSelfLink (\ s a -> s{_hcSelfLink = a})

-- | How often (in seconds) to send a health check. The default value is 5
-- seconds.
hcCheckIntervalSec :: Lens' HealthCheck (Maybe Int32)
hcCheckIntervalSec
  = lens _hcCheckIntervalSec
      (\ s a -> s{_hcCheckIntervalSec = a})
      . mapping _Coerce

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
hcName :: Lens' HealthCheck (Maybe Text)
hcName = lens _hcName (\ s a -> s{_hcName = a})

-- | [Output Only] Creation timestamp in 3339 text format.
hcCreationTimestamp :: Lens' HealthCheck (Maybe Text)
hcCreationTimestamp
  = lens _hcCreationTimestamp
      (\ s a -> s{_hcCreationTimestamp = a})

hcHTTPHealthCheck :: Lens' HealthCheck (Maybe HTTPHealthCheck)
hcHTTPHealthCheck
  = lens _hcHTTPHealthCheck
      (\ s a -> s{_hcHTTPHealthCheck = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
hcId :: Lens' HealthCheck (Maybe Word64)
hcId
  = lens _hcId (\ s a -> s{_hcId = a}) .
      mapping _Coerce

-- | Specifies the type of the healthCheck, either TCP, SSL, HTTP or HTTPS.
-- If not specified, the default is TCP. Exactly one of the
-- protocol-specific health check field must be specified, which must match
-- type field.
hcType :: Lens' HealthCheck (Maybe HealthCheckType)
hcType = lens _hcType (\ s a -> s{_hcType = a})

-- | How long (in seconds) to wait before claiming failure. The default value
-- is 5 seconds. It is invalid for timeoutSec to have greater value than
-- checkIntervalSec.
hcTimeoutSec :: Lens' HealthCheck (Maybe Int32)
hcTimeoutSec
  = lens _hcTimeoutSec (\ s a -> s{_hcTimeoutSec = a})
      . mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
hcDescription :: Lens' HealthCheck (Maybe Text)
hcDescription
  = lens _hcDescription
      (\ s a -> s{_hcDescription = a})

-- | A so-far healthy instance will be marked unhealthy after this many
-- consecutive failures. The default value is 2.
hcUnhealthyThreshold :: Lens' HealthCheck (Maybe Int32)
hcUnhealthyThreshold
  = lens _hcUnhealthyThreshold
      (\ s a -> s{_hcUnhealthyThreshold = a})
      . mapping _Coerce

hcHTTPSHealthCheck :: Lens' HealthCheck (Maybe HTTPSHealthCheck)
hcHTTPSHealthCheck
  = lens _hcHTTPSHealthCheck
      (\ s a -> s{_hcHTTPSHealthCheck = a})

instance FromJSON HealthCheck where
        parseJSON
          = withObject "HealthCheck"
              (\ o ->
                 HealthCheck' <$>
                   (o .:? "healthyThreshold") <*>
                     (o .:? "tcpHealthCheck")
                     <*> (o .:? "kind" .!= "compute#healthCheck")
                     <*> (o .:? "sslHealthCheck")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "checkIntervalSec")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "httpHealthCheck")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "timeoutSec")
                     <*> (o .:? "description")
                     <*> (o .:? "unhealthyThreshold")
                     <*> (o .:? "httpsHealthCheck"))

instance ToJSON HealthCheck where
        toJSON HealthCheck'{..}
          = object
              (catMaybes
                 [("healthyThreshold" .=) <$> _hcHealthyThreshold,
                  ("tcpHealthCheck" .=) <$> _hcTCPHealthCheck,
                  Just ("kind" .= _hcKind),
                  ("sslHealthCheck" .=) <$> _hcSSLHealthCheck,
                  ("selfLink" .=) <$> _hcSelfLink,
                  ("checkIntervalSec" .=) <$> _hcCheckIntervalSec,
                  ("name" .=) <$> _hcName,
                  ("creationTimestamp" .=) <$> _hcCreationTimestamp,
                  ("httpHealthCheck" .=) <$> _hcHTTPHealthCheck,
                  ("id" .=) <$> _hcId, ("type" .=) <$> _hcType,
                  ("timeoutSec" .=) <$> _hcTimeoutSec,
                  ("description" .=) <$> _hcDescription,
                  ("unhealthyThreshold" .=) <$> _hcUnhealthyThreshold,
                  ("httpsHealthCheck" .=) <$> _hcHTTPSHealthCheck])

--
-- /See:/ 'diskAggregatedList' smart constructor.
data DiskAggregatedList = DiskAggregatedList'
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
    DiskAggregatedList'
    { _dalNextPageToken = Nothing
    , _dalKind = "compute#diskAggregatedList"
    , _dalItems = Nothing
    , _dalSelfLink = Nothing
    , _dalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dalId :: Lens' DiskAggregatedList (Maybe Text)
dalId = lens _dalId (\ s a -> s{_dalId = a})

instance FromJSON DiskAggregatedList where
        parseJSON
          = withObject "DiskAggregatedList"
              (\ o ->
                 DiskAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskAggregatedList where
        toJSON DiskAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dalNextPageToken,
                  Just ("kind" .= _dalKind),
                  ("items" .=) <$> _dalItems,
                  ("selfLink" .=) <$> _dalSelfLink,
                  ("id" .=) <$> _dalId])

--
-- /See:/ 'instanceWithNamedPorts' smart constructor.
data InstanceWithNamedPorts = InstanceWithNamedPorts'
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
    InstanceWithNamedPorts'
    { _iwnpStatus = Nothing
    , _iwnpNamedPorts = Nothing
    , _iwnpInstance = Nothing
    }

-- | [Output Only] The status of the instance.
iwnpStatus :: Lens' InstanceWithNamedPorts (Maybe InstanceWithNamedPortsStatus)
iwnpStatus
  = lens _iwnpStatus (\ s a -> s{_iwnpStatus = a})

-- | [Output Only] The named ports that belong to this instance group.
iwnpNamedPorts :: Lens' InstanceWithNamedPorts [NamedPort]
iwnpNamedPorts
  = lens _iwnpNamedPorts
      (\ s a -> s{_iwnpNamedPorts = a})
      . _Default
      . _Coerce

-- | [Output Only] The URL of the instance.
iwnpInstance :: Lens' InstanceWithNamedPorts (Maybe Text)
iwnpInstance
  = lens _iwnpInstance (\ s a -> s{_iwnpInstance = a})

instance FromJSON InstanceWithNamedPorts where
        parseJSON
          = withObject "InstanceWithNamedPorts"
              (\ o ->
                 InstanceWithNamedPorts' <$>
                   (o .:? "status") <*> (o .:? "namedPorts" .!= mempty)
                     <*> (o .:? "instance"))

instance ToJSON InstanceWithNamedPorts where
        toJSON InstanceWithNamedPorts'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iwnpStatus,
                  ("namedPorts" .=) <$> _iwnpNamedPorts,
                  ("instance" .=) <$> _iwnpInstance])

--
-- /See:/ 'forwardingRulesScopedList' smart constructor.
data ForwardingRulesScopedList = ForwardingRulesScopedList'
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
    ForwardingRulesScopedList'
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
                 ForwardingRulesScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "forwardingRules" .!= mempty))

instance ToJSON ForwardingRulesScopedList where
        toJSON ForwardingRulesScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _frslWarning,
                  ("forwardingRules" .=) <$> _frslForwardingRules])

--
-- /See:/ 'instanceReference' smart constructor.
newtype InstanceReference = InstanceReference'
    { _iInstance :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInstance'
instanceReference
    :: InstanceReference
instanceReference =
    InstanceReference'
    { _iInstance = Nothing
    }

-- | The URL for a specific instance.
iInstance :: Lens' InstanceReference (Maybe Text)
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance FromJSON InstanceReference where
        parseJSON
          = withObject "InstanceReference"
              (\ o -> InstanceReference' <$> (o .:? "instance"))

instance ToJSON InstanceReference where
        toJSON InstanceReference'{..}
          = object (catMaybes [("instance" .=) <$> _iInstance])

--
-- /See:/ 'operationAggregatedList' smart constructor.
data OperationAggregatedList = OperationAggregatedList'
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
    OperationAggregatedList'
    { _oalNextPageToken = Nothing
    , _oalKind = "compute#operationAggregatedList"
    , _oalItems = Nothing
    , _oalSelfLink = Nothing
    , _oalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
oalId :: Lens' OperationAggregatedList (Maybe Text)
oalId = lens _oalId (\ s a -> s{_oalId = a})

instance FromJSON OperationAggregatedList where
        parseJSON
          = withObject "OperationAggregatedList"
              (\ o ->
                 OperationAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#operationAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON OperationAggregatedList where
        toJSON OperationAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oalNextPageToken,
                  Just ("kind" .= _oalKind),
                  ("items" .=) <$> _oalItems,
                  ("selfLink" .=) <$> _oalSelfLink,
                  ("id" .=) <$> _oalId])

--
-- /See:/ 'operationsScopedList' smart constructor.
data OperationsScopedList = OperationsScopedList'
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
    OperationsScopedList'
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
                 OperationsScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON OperationsScopedList where
        toJSON OperationsScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _oslWarning,
                  ("operations" .=) <$> _oslOperations])

-- | The named port. For example: .
--
-- /See:/ 'namedPort' smart constructor.
data NamedPort = NamedPort'
    { _npName :: !(Maybe Text)
    , _npPort :: !(Maybe (Textual Int32))
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
    NamedPort'
    { _npName = Nothing
    , _npPort = Nothing
    }

-- | The name for this named port. The name must be 1-63 characters long, and
-- comply with RFC1035.
npName :: Lens' NamedPort (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | The port number, which can be a value between 1 and 65535.
npPort :: Lens' NamedPort (Maybe Int32)
npPort
  = lens _npPort (\ s a -> s{_npPort = a}) .
      mapping _Coerce

instance FromJSON NamedPort where
        parseJSON
          = withObject "NamedPort"
              (\ o ->
                 NamedPort' <$> (o .:? "name") <*> (o .:? "port"))

instance ToJSON NamedPort where
        toJSON NamedPort'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _npName, ("port" .=) <$> _npPort])

-- | Contains a list of TargetInstance resources.
--
-- /See:/ 'targetInstanceList' smart constructor.
data TargetInstanceList = TargetInstanceList'
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
    TargetInstanceList'
    { _tilNextPageToken = Nothing
    , _tilKind = "compute#targetInstanceList"
    , _tilItems = Nothing
    , _tilSelfLink = Nothing
    , _tilId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tilId :: Lens' TargetInstanceList (Maybe Text)
tilId = lens _tilId (\ s a -> s{_tilId = a})

instance FromJSON TargetInstanceList where
        parseJSON
          = withObject "TargetInstanceList"
              (\ o ->
                 TargetInstanceList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetInstanceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetInstanceList where
        toJSON TargetInstanceList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tilNextPageToken,
                  Just ("kind" .= _tilKind),
                  ("items" .=) <$> _tilItems,
                  ("selfLink" .=) <$> _tilSelfLink,
                  ("id" .=) <$> _tilId])

--
-- /See:/ 'instanceGroupManagerAggregatedList' smart constructor.
data InstanceGroupManagerAggregatedList = InstanceGroupManagerAggregatedList'
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
    InstanceGroupManagerAggregatedList'
    { _igmalNextPageToken = Nothing
    , _igmalKind = "compute#instanceGroupManagerAggregatedList"
    , _igmalItems = Nothing
    , _igmalSelfLink = Nothing
    , _igmalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
igmalNextPageToken :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalNextPageToken
  = lens _igmalNextPageToken
      (\ s a -> s{_igmalNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManagerAggregatedList for an aggregated list of
-- managed instance groups.
igmalKind :: Lens' InstanceGroupManagerAggregatedList Text
igmalKind
  = lens _igmalKind (\ s a -> s{_igmalKind = a})

-- | [Output Only] A map of filtered managed instance group lists.
igmalItems :: Lens' InstanceGroupManagerAggregatedList (Maybe InstanceGroupManagerAggregatedListItems)
igmalItems
  = lens _igmalItems (\ s a -> s{_igmalItems = a})

-- | [Output Only] The URL for this resource type. The server generates this
-- URL.
igmalSelfLink :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalSelfLink
  = lens _igmalSelfLink
      (\ s a -> s{_igmalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of managed
-- instance groups. The server generates this identifier.
igmalId :: Lens' InstanceGroupManagerAggregatedList (Maybe Text)
igmalId = lens _igmalId (\ s a -> s{_igmalId = a})

instance FromJSON InstanceGroupManagerAggregatedList
         where
        parseJSON
          = withObject "InstanceGroupManagerAggregatedList"
              (\ o ->
                 InstanceGroupManagerAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupManagerAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupManagerAggregatedList
         where
        toJSON InstanceGroupManagerAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igmalNextPageToken,
                  Just ("kind" .= _igmalKind),
                  ("items" .=) <$> _igmalItems,
                  ("selfLink" .=) <$> _igmalSelfLink,
                  ("id" .=) <$> _igmalId])

--
-- /See:/ 'targetPoolsScopedList' smart constructor.
data TargetPoolsScopedList = TargetPoolsScopedList'
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
    TargetPoolsScopedList'
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
                 TargetPoolsScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "targetPools" .!= mempty))

instance ToJSON TargetPoolsScopedList where
        toJSON TargetPoolsScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _tpslWarning,
                  ("targetPools" .=) <$> _tpslTargetPools])

--
-- /See:/ 'forwardingRuleAggregatedList' smart constructor.
data ForwardingRuleAggregatedList = ForwardingRuleAggregatedList'
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
    ForwardingRuleAggregatedList'
    { _fralNextPageToken = Nothing
    , _fralKind = "compute#forwardingRuleAggregatedList"
    , _fralItems = Nothing
    , _fralSelfLink = Nothing
    , _fralId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
fralNextPageToken :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralNextPageToken
  = lens _fralNextPageToken
      (\ s a -> s{_fralNextPageToken = a})

-- | [Output Only] Type of resource. Always
-- compute#forwardingRuleAggregatedList for lists of forwarding rules.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
fralId :: Lens' ForwardingRuleAggregatedList (Maybe Text)
fralId = lens _fralId (\ s a -> s{_fralId = a})

instance FromJSON ForwardingRuleAggregatedList where
        parseJSON
          = withObject "ForwardingRuleAggregatedList"
              (\ o ->
                 ForwardingRuleAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#forwardingRuleAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ForwardingRuleAggregatedList where
        toJSON ForwardingRuleAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _fralNextPageToken,
                  Just ("kind" .= _fralKind),
                  ("items" .=) <$> _fralItems,
                  ("selfLink" .=) <$> _fralSelfLink,
                  ("id" .=) <$> _fralId])

--
-- /See:/ 'targetReference' smart constructor.
newtype TargetReference = TargetReference'
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
    TargetReference'
    { _trTarget = Nothing
    }

trTarget :: Lens' TargetReference (Maybe Text)
trTarget = lens _trTarget (\ s a -> s{_trTarget = a})

instance FromJSON TargetReference where
        parseJSON
          = withObject "TargetReference"
              (\ o -> TargetReference' <$> (o .:? "target"))

instance ToJSON TargetReference where
        toJSON TargetReference'{..}
          = object (catMaybes [("target" .=) <$> _trTarget])

--
-- /See:/ 'targetPoolAggregatedList' smart constructor.
data TargetPoolAggregatedList = TargetPoolAggregatedList'
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
    TargetPoolAggregatedList'
    { _tpalNextPageToken = Nothing
    , _tpalKind = "compute#targetPoolAggregatedList"
    , _tpalItems = Nothing
    , _tpalSelfLink = Nothing
    , _tpalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
tpalNextPageToken :: Lens' TargetPoolAggregatedList (Maybe Text)
tpalNextPageToken
  = lens _tpalNextPageToken
      (\ s a -> s{_tpalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#targetPoolAggregatedList
-- for aggregated lists of target pools.
tpalKind :: Lens' TargetPoolAggregatedList Text
tpalKind = lens _tpalKind (\ s a -> s{_tpalKind = a})

-- | [Output Only] A map of scoped target pool lists.
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
                 TargetPoolAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetPoolAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetPoolAggregatedList where
        toJSON TargetPoolAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpalNextPageToken,
                  Just ("kind" .= _tpalKind),
                  ("items" .=) <$> _tpalItems,
                  ("selfLink" .=) <$> _tpalSelfLink,
                  ("id" .=) <$> _tpalId])

--
-- /See:/ 'operationsScopedListWarningDataItem' smart constructor.
data OperationsScopedListWarningDataItem = OperationsScopedListWarningDataItem'
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
    OperationsScopedListWarningDataItem'
    { _oslwdiValue = Nothing
    , _oslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
oslwdiValue :: Lens' OperationsScopedListWarningDataItem (Maybe Text)
oslwdiValue
  = lens _oslwdiValue (\ s a -> s{_oslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
oslwdiKey :: Lens' OperationsScopedListWarningDataItem (Maybe Text)
oslwdiKey
  = lens _oslwdiKey (\ s a -> s{_oslwdiKey = a})

instance FromJSON OperationsScopedListWarningDataItem
         where
        parseJSON
          = withObject "OperationsScopedListWarningDataItem"
              (\ o ->
                 OperationsScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OperationsScopedListWarningDataItem
         where
        toJSON OperationsScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oslwdiValue,
                  ("key" .=) <$> _oslwdiKey])

-- | A TargetPool resource. This resource defines a pool of instances,
-- associated HttpHealthCheck resources, and the fallback target pool.
--
-- /See:/ 'targetPool' smart constructor.
data TargetPool = TargetPool'
    { _tpSessionAffinity   :: !(Maybe TargetPoolSessionAffinity)
    , _tpBackupPool        :: !(Maybe Text)
    , _tpKind              :: !Text
    , _tpSelfLink          :: !(Maybe Text)
    , _tpName              :: !(Maybe Text)
    , _tpCreationTimestamp :: !(Maybe Text)
    , _tpInstances         :: !(Maybe [Text])
    , _tpId                :: !(Maybe (Textual Word64))
    , _tpFailoverRatio     :: !(Maybe (Textual Double))
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
    TargetPool'
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
-- Connections from the same client IP may go to any instance in the pool.
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

-- | [Output Only] Type of the resource. Always compute#targetPool for target
-- pools.
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

-- | A list of resource URLs to the virtual machine instances serving this
-- pool. They must live in zones contained in the same region as this pool.
tpInstances :: Lens' TargetPool [Text]
tpInstances
  = lens _tpInstances (\ s a -> s{_tpInstances = a}) .
      _Default
      . _Coerce

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tpId :: Lens' TargetPool (Maybe Word64)
tpId
  = lens _tpId (\ s a -> s{_tpId = a}) .
      mapping _Coerce

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
tpFailoverRatio :: Lens' TargetPool (Maybe Double)
tpFailoverRatio
  = lens _tpFailoverRatio
      (\ s a -> s{_tpFailoverRatio = a})
      . mapping _Coerce

-- | [Output Only] URL of the region where the target pool resides.
tpRegion :: Lens' TargetPool (Maybe Text)
tpRegion = lens _tpRegion (\ s a -> s{_tpRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
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
                 TargetPool' <$>
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
        toJSON TargetPool'{..}
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

-- | Contains a list of images.
--
-- /See:/ 'imageList' smart constructor.
data ImageList = ImageList'
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
    ImageList'
    { _ilNextPageToken = Nothing
    , _ilKind = "compute#imageList"
    , _ilItems = Nothing
    , _ilSelfLink = Nothing
    , _ilId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
ilNextPageToken :: Lens' ImageList (Maybe Text)
ilNextPageToken
  = lens _ilNextPageToken
      (\ s a -> s{_ilNextPageToken = a})

-- | Type of resource.
ilKind :: Lens' ImageList Text
ilKind = lens _ilKind (\ s a -> s{_ilKind = a})

-- | [Output Only] A list of Image resources.
ilItems :: Lens' ImageList [Image]
ilItems
  = lens _ilItems (\ s a -> s{_ilItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
ilSelfLink :: Lens' ImageList (Maybe Text)
ilSelfLink
  = lens _ilSelfLink (\ s a -> s{_ilSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
ilId :: Lens' ImageList (Maybe Text)
ilId = lens _ilId (\ s a -> s{_ilId = a})

instance FromJSON ImageList where
        parseJSON
          = withObject "ImageList"
              (\ o ->
                 ImageList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#imageList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ImageList where
        toJSON ImageList'{..}
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
data VPNTunnelsScopedListWarning = VPNTunnelsScopedListWarning'
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
    VPNTunnelsScopedListWarning'
    { _vtslwData = Nothing
    , _vtslwCode = Nothing
    , _vtslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
vtslwData :: Lens' VPNTunnelsScopedListWarning [VPNTunnelsScopedListWarningDataItem]
vtslwData
  = lens _vtslwData (\ s a -> s{_vtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
vtslwCode :: Lens' VPNTunnelsScopedListWarning (Maybe VPNTunnelsScopedListWarningCode)
vtslwCode
  = lens _vtslwCode (\ s a -> s{_vtslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
vtslwMessage :: Lens' VPNTunnelsScopedListWarning (Maybe Text)
vtslwMessage
  = lens _vtslwMessage (\ s a -> s{_vtslwMessage = a})

instance FromJSON VPNTunnelsScopedListWarning where
        parseJSON
          = withObject "VPNTunnelsScopedListWarning"
              (\ o ->
                 VPNTunnelsScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON VPNTunnelsScopedListWarning where
        toJSON VPNTunnelsScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _vtslwData,
                  ("code" .=) <$> _vtslwCode,
                  ("message" .=) <$> _vtslwMessage])

--
-- /See:/ 'targetSSLProxiesSetBackendServiceRequest' smart constructor.
newtype TargetSSLProxiesSetBackendServiceRequest = TargetSSLProxiesSetBackendServiceRequest'
    { _tspsbsrService :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetBackendServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsbsrService'
targetSSLProxiesSetBackendServiceRequest
    :: TargetSSLProxiesSetBackendServiceRequest
targetSSLProxiesSetBackendServiceRequest =
    TargetSSLProxiesSetBackendServiceRequest'
    { _tspsbsrService = Nothing
    }

-- | The URL of the new BackendService resource for the targetSslProxy.
tspsbsrService :: Lens' TargetSSLProxiesSetBackendServiceRequest (Maybe Text)
tspsbsrService
  = lens _tspsbsrService
      (\ s a -> s{_tspsbsrService = a})

instance FromJSON
         TargetSSLProxiesSetBackendServiceRequest where
        parseJSON
          = withObject
              "TargetSSLProxiesSetBackendServiceRequest"
              (\ o ->
                 TargetSSLProxiesSetBackendServiceRequest' <$>
                   (o .:? "service"))

instance ToJSON
         TargetSSLProxiesSetBackendServiceRequest where
        toJSON TargetSSLProxiesSetBackendServiceRequest'{..}
          = object
              (catMaybes [("service" .=) <$> _tspsbsrService])

-- | A ForwardingRule resource. A ForwardingRule resource specifies which
-- pool of target virtual machines to forward a packet to if it matches the
-- given [IPAddress, IPProtocol, portRange] tuple.
--
-- /See:/ 'forwardingRule' smart constructor.
data ForwardingRule = ForwardingRule'
    { _frIPAddress           :: !(Maybe Text)
    , _frLoadBalancingScheme :: !(Maybe ForwardingRuleLoadBalancingScheme)
    , _frKind                :: !Text
    , _frNetwork             :: !(Maybe Text)
    , _frPortRange           :: !(Maybe Text)
    , _frSelfLink            :: !(Maybe Text)
    , _frName                :: !(Maybe Text)
    , _frIPProtocol          :: !(Maybe ForwardingRuleIPProtocol)
    , _frCreationTimestamp   :: !(Maybe Text)
    , _frSubnetwork          :: !(Maybe Text)
    , _frPorts               :: !(Maybe [Text])
    , _frId                  :: !(Maybe (Textual Word64))
    , _frRegion              :: !(Maybe Text)
    , _frDescription         :: !(Maybe Text)
    , _frTarget              :: !(Maybe Text)
    , _frBackendService      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frIPAddress'
--
-- * 'frLoadBalancingScheme'
--
-- * 'frKind'
--
-- * 'frNetwork'
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
-- * 'frSubnetwork'
--
-- * 'frPorts'
--
-- * 'frId'
--
-- * 'frRegion'
--
-- * 'frDescription'
--
-- * 'frTarget'
--
-- * 'frBackendService'
forwardingRule
    :: ForwardingRule
forwardingRule =
    ForwardingRule'
    { _frIPAddress = Nothing
    , _frLoadBalancingScheme = Nothing
    , _frKind = "compute#forwardingRule"
    , _frNetwork = Nothing
    , _frPortRange = Nothing
    , _frSelfLink = Nothing
    , _frName = Nothing
    , _frIPProtocol = Nothing
    , _frCreationTimestamp = Nothing
    , _frSubnetwork = Nothing
    , _frPorts = Nothing
    , _frId = Nothing
    , _frRegion = Nothing
    , _frDescription = Nothing
    , _frTarget = Nothing
    , _frBackendService = Nothing
    }

-- | The IP address that this forwarding rule is serving on behalf of. For
-- global forwarding rules, the address must be a global IP; for regional
-- forwarding rules, the address must live in the same region as the
-- forwarding rule. By default, this field is empty and an ephemeral IP
-- from the same scope (global or regional) will be assigned. When the load
-- balancing scheme is INTERNAL, this can only be an RFC 1918 IP address
-- belonging to the network\/subnetwork configured for the forwarding rule.
-- A reserved address cannot be used. If the field is empty, the IP address
-- will be automatically allocated from the internal IP range of the
-- subnetwork or network configured for this forwarding rule. Only IPv4 is
-- supported.
frIPAddress :: Lens' ForwardingRule (Maybe Text)
frIPAddress
  = lens _frIPAddress (\ s a -> s{_frIPAddress = a})

-- | This signifies what the ForwardingRule will be used for and can only
-- take the following values: INTERNAL EXTERNAL The value of INTERNAL means
-- that this will be used for Internal Network Load Balancing (TCP, UDP).
-- The value of EXTERNAL means that this will be used for External Load
-- Balancing (HTTP(S) LB, External TCP\/UDP LB, SSL Proxy)
frLoadBalancingScheme :: Lens' ForwardingRule (Maybe ForwardingRuleLoadBalancingScheme)
frLoadBalancingScheme
  = lens _frLoadBalancingScheme
      (\ s a -> s{_frLoadBalancingScheme = a})

-- | [Output Only] Type of the resource. Always compute#forwardingRule for
-- Forwarding Rule resources.
frKind :: Lens' ForwardingRule Text
frKind = lens _frKind (\ s a -> s{_frKind = a})

-- | This field is not used for external load balancing. For internal load
-- balancing, this field identifies the network that the load balanced IP
-- should belong to for this Forwarding Rule. If this field is not
-- specified, the default network will be used.
frNetwork :: Lens' ForwardingRule (Maybe Text)
frNetwork
  = lens _frNetwork (\ s a -> s{_frNetwork = a})

-- | Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets
-- addressed to ports in the specified range will be forwarded to target.
-- Forwarding rules with the same [IPAddress, IPProtocol] pair must have
-- disjoint port ranges. This field is not used for internal load
-- balancing.
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
-- ESP, AH, SCTP or ICMP. When the load balancing scheme is INTERNAL
frIPProtocol :: Lens' ForwardingRule (Maybe ForwardingRuleIPProtocol)
frIPProtocol
  = lens _frIPProtocol (\ s a -> s{_frIPProtocol = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
frCreationTimestamp :: Lens' ForwardingRule (Maybe Text)
frCreationTimestamp
  = lens _frCreationTimestamp
      (\ s a -> s{_frCreationTimestamp = a})

-- | This field is not used for external load balancing. For internal load
-- balancing, this field identifies the subnetwork that the load balanced
-- IP should belong to for this Forwarding Rule. If the network specified
-- is in auto subnet mode, this field is optional. However, if the network
-- is in custom subnet mode, a subnetwork must be specified.
frSubnetwork :: Lens' ForwardingRule (Maybe Text)
frSubnetwork
  = lens _frSubnetwork (\ s a -> s{_frSubnetwork = a})

-- | This field is not used for external load balancing. When the load
-- balancing scheme is INTERNAL, a single port or a comma separated list of
-- ports can be configured. Only packets addressed to these ports will be
-- forwarded to the backends configured with this forwarding rule. If the
-- port list is not provided then all ports are allowed to pass through.
-- You may specify a maximum of up to 5 ports.
frPorts :: Lens' ForwardingRule [Text]
frPorts
  = lens _frPorts (\ s a -> s{_frPorts = a}) . _Default
      . _Coerce

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
frId :: Lens' ForwardingRule (Maybe Word64)
frId
  = lens _frId (\ s a -> s{_frId = a}) .
      mapping _Coerce

-- | [Output Only] URL of the region where the regional forwarding rule
-- resides. This field is not applicable to global forwarding rules.
frRegion :: Lens' ForwardingRule (Maybe Text)
frRegion = lens _frRegion (\ s a -> s{_frRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
frDescription :: Lens' ForwardingRule (Maybe Text)
frDescription
  = lens _frDescription
      (\ s a -> s{_frDescription = a})

-- | The URL of the target resource to receive the matched traffic. For
-- regional forwarding rules, this target must live in the same region as
-- the forwarding rule. For global forwarding rules, this target must be a
-- global TargetHttpProxy or TargetHttpsProxy resource. The forwarded
-- traffic must be of a type appropriate to the target object. For example,
-- TargetHttpProxy requires HTTP traffic, and TargetHttpsProxy requires
-- HTTPS traffic. This field is not used for internal load balancing.
frTarget :: Lens' ForwardingRule (Maybe Text)
frTarget = lens _frTarget (\ s a -> s{_frTarget = a})

-- | This field is not used for external load balancing. For internal load
-- balancing, this field identifies the BackendService resource to receive
-- the matched traffic.
frBackendService :: Lens' ForwardingRule (Maybe Text)
frBackendService
  = lens _frBackendService
      (\ s a -> s{_frBackendService = a})

instance FromJSON ForwardingRule where
        parseJSON
          = withObject "ForwardingRule"
              (\ o ->
                 ForwardingRule' <$>
                   (o .:? "IPAddress") <*> (o .:? "loadBalancingScheme")
                     <*> (o .:? "kind" .!= "compute#forwardingRule")
                     <*> (o .:? "network")
                     <*> (o .:? "portRange")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "IPProtocol")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "ports" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "target")
                     <*> (o .:? "backendService"))

instance ToJSON ForwardingRule where
        toJSON ForwardingRule'{..}
          = object
              (catMaybes
                 [("IPAddress" .=) <$> _frIPAddress,
                  ("loadBalancingScheme" .=) <$>
                    _frLoadBalancingScheme,
                  Just ("kind" .= _frKind),
                  ("network" .=) <$> _frNetwork,
                  ("portRange" .=) <$> _frPortRange,
                  ("selfLink" .=) <$> _frSelfLink,
                  ("name" .=) <$> _frName,
                  ("IPProtocol" .=) <$> _frIPProtocol,
                  ("creationTimestamp" .=) <$> _frCreationTimestamp,
                  ("subnetwork" .=) <$> _frSubnetwork,
                  ("ports" .=) <$> _frPorts, ("id" .=) <$> _frId,
                  ("region" .=) <$> _frRegion,
                  ("description" .=) <$> _frDescription,
                  ("target" .=) <$> _frTarget,
                  ("backendService" .=) <$> _frBackendService])

-- | Contains a list of UrlMap resources.
--
-- /See:/ 'urlMapList' smart constructor.
data URLMapList = URLMapList'
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
    URLMapList'
    { _umlNextPageToken = Nothing
    , _umlKind = "compute#urlMapList"
    , _umlItems = Nothing
    , _umlSelfLink = Nothing
    , _umlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 URLMapList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#urlMapList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON URLMapList where
        toJSON URLMapList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _umlNextPageToken,
                  Just ("kind" .= _umlKind),
                  ("items" .=) <$> _umlItems,
                  ("selfLink" .=) <$> _umlSelfLink,
                  ("id" .=) <$> _umlId])

--
-- /See:/ 'forwardingRulesScopedListWarningDataItem' smart constructor.
data ForwardingRulesScopedListWarningDataItem = ForwardingRulesScopedListWarningDataItem'
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
    ForwardingRulesScopedListWarningDataItem'
    { _frslwdiValue = Nothing
    , _frslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
frslwdiValue :: Lens' ForwardingRulesScopedListWarningDataItem (Maybe Text)
frslwdiValue
  = lens _frslwdiValue (\ s a -> s{_frslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
frslwdiKey :: Lens' ForwardingRulesScopedListWarningDataItem (Maybe Text)
frslwdiKey
  = lens _frslwdiKey (\ s a -> s{_frslwdiKey = a})

instance FromJSON
         ForwardingRulesScopedListWarningDataItem where
        parseJSON
          = withObject
              "ForwardingRulesScopedListWarningDataItem"
              (\ o ->
                 ForwardingRulesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         ForwardingRulesScopedListWarningDataItem where
        toJSON ForwardingRulesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _frslwdiValue,
                  ("key" .=) <$> _frslwdiKey])

--
-- /See:/ 'instanceGroupManagersScopedListWarningDataItem' smart constructor.
data InstanceGroupManagersScopedListWarningDataItem = InstanceGroupManagersScopedListWarningDataItem'
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
    InstanceGroupManagersScopedListWarningDataItem'
    { _igmslwdiValue = Nothing
    , _igmslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igmslwdiValue :: Lens' InstanceGroupManagersScopedListWarningDataItem (Maybe Text)
igmslwdiValue
  = lens _igmslwdiValue
      (\ s a -> s{_igmslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
igmslwdiKey :: Lens' InstanceGroupManagersScopedListWarningDataItem (Maybe Text)
igmslwdiKey
  = lens _igmslwdiKey (\ s a -> s{_igmslwdiKey = a})

instance FromJSON
         InstanceGroupManagersScopedListWarningDataItem where
        parseJSON
          = withObject
              "InstanceGroupManagersScopedListWarningDataItem"
              (\ o ->
                 InstanceGroupManagersScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         InstanceGroupManagersScopedListWarningDataItem where
        toJSON
          InstanceGroupManagersScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _igmslwdiValue,
                  ("key" .=) <$> _igmslwdiKey])

--
-- /See:/ 'subnetworksScopedList' smart constructor.
data SubnetworksScopedList = SubnetworksScopedList'
    { _sslSubnetworks :: !(Maybe [Subnetwork])
    , _sslWarning     :: !(Maybe SubnetworksScopedListWarning)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslSubnetworks'
--
-- * 'sslWarning'
subnetworksScopedList
    :: SubnetworksScopedList
subnetworksScopedList =
    SubnetworksScopedList'
    { _sslSubnetworks = Nothing
    , _sslWarning = Nothing
    }

-- | List of subnetworks contained in this scope.
sslSubnetworks :: Lens' SubnetworksScopedList [Subnetwork]
sslSubnetworks
  = lens _sslSubnetworks
      (\ s a -> s{_sslSubnetworks = a})
      . _Default
      . _Coerce

-- | An informational warning that appears when the list of addresses is
-- empty.
sslWarning :: Lens' SubnetworksScopedList (Maybe SubnetworksScopedListWarning)
sslWarning
  = lens _sslWarning (\ s a -> s{_sslWarning = a})

instance FromJSON SubnetworksScopedList where
        parseJSON
          = withObject "SubnetworksScopedList"
              (\ o ->
                 SubnetworksScopedList' <$>
                   (o .:? "subnetworks" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON SubnetworksScopedList where
        toJSON SubnetworksScopedList'{..}
          = object
              (catMaybes
                 [("subnetworks" .=) <$> _sslSubnetworks,
                  ("warning" .=) <$> _sslWarning])

-- | A Project resource. Projects can only be created in the Google Cloud
-- Platform Console. Unless marked otherwise, values can only be modified
-- in the console.
--
-- /See:/ 'project' smart constructor.
data Project = Project'
    { _pKind                   :: !Text
    , _pUsageExportLocation    :: !(Maybe UsageExportLocation)
    , _pSelfLink               :: !(Maybe Text)
    , _pName                   :: !(Maybe Text)
    , _pDefaultServiceAccount  :: !(Maybe Text)
    , _pCreationTimestamp      :: !(Maybe Text)
    , _pEnabledFeatures        :: !(Maybe [Text])
    , _pQuotas                 :: !(Maybe [Quota])
    , _pId                     :: !(Maybe (Textual Word64))
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
-- * 'pDefaultServiceAccount'
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
    Project'
    { _pKind = "compute#project"
    , _pUsageExportLocation = Nothing
    , _pSelfLink = Nothing
    , _pName = Nothing
    , _pDefaultServiceAccount = Nothing
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

-- | The naming prefix for daily usage reports and the Google Cloud Storage
-- bucket where they are stored.
pUsageExportLocation :: Lens' Project (Maybe UsageExportLocation)
pUsageExportLocation
  = lens _pUsageExportLocation
      (\ s a -> s{_pUsageExportLocation = a})

-- | [Output Only] Server-defined URL for the resource.
pSelfLink :: Lens' Project (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | The project ID. For example: my-example-project. Use the project ID to
-- make requests to Compute Engine.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | [Output Only] Default service account used by VMs running in this
-- project.
pDefaultServiceAccount :: Lens' Project (Maybe Text)
pDefaultServiceAccount
  = lens _pDefaultServiceAccount
      (\ s a -> s{_pDefaultServiceAccount = a})

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server. This is not the project ID, and is just a unique
-- ID used by Compute Engine to identify resources.
pId :: Lens' Project (Maybe Word64)
pId
  = lens _pId (\ s a -> s{_pId = a}) . mapping _Coerce

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
                 Project' <$>
                   (o .:? "kind" .!= "compute#project") <*>
                     (o .:? "usageExportLocation")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "defaultServiceAccount")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "enabledFeatures" .!= mempty)
                     <*> (o .:? "quotas" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "commonInstanceMetadata"))

instance ToJSON Project where
        toJSON Project'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind),
                  ("usageExportLocation" .=) <$> _pUsageExportLocation,
                  ("selfLink" .=) <$> _pSelfLink,
                  ("name" .=) <$> _pName,
                  ("defaultServiceAccount" .=) <$>
                    _pDefaultServiceAccount,
                  ("creationTimestamp" .=) <$> _pCreationTimestamp,
                  ("enabledFeatures" .=) <$> _pEnabledFeatures,
                  ("quotas" .=) <$> _pQuotas, ("id" .=) <$> _pId,
                  ("description" .=) <$> _pDescription,
                  ("commonInstanceMetadata" .=) <$>
                    _pCommonInstanceMetadata])

--
-- /See:/ 'regionInstanceGroupManagersListInstancesResponse' smart constructor.
newtype RegionInstanceGroupManagersListInstancesResponse = RegionInstanceGroupManagersListInstancesResponse'
    { _rigmlirManagedInstances :: Maybe [ManagedInstance]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlirManagedInstances'
regionInstanceGroupManagersListInstancesResponse
    :: RegionInstanceGroupManagersListInstancesResponse
regionInstanceGroupManagersListInstancesResponse =
    RegionInstanceGroupManagersListInstancesResponse'
    { _rigmlirManagedInstances = Nothing
    }

-- | List of managed instances.
rigmlirManagedInstances :: Lens' RegionInstanceGroupManagersListInstancesResponse [ManagedInstance]
rigmlirManagedInstances
  = lens _rigmlirManagedInstances
      (\ s a -> s{_rigmlirManagedInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupManagersListInstancesResponse
         where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersListInstancesResponse"
              (\ o ->
                 RegionInstanceGroupManagersListInstancesResponse' <$>
                   (o .:? "managedInstances" .!= mempty))

instance ToJSON
         RegionInstanceGroupManagersListInstancesResponse
         where
        toJSON
          RegionInstanceGroupManagersListInstancesResponse'{..}
          = object
              (catMaybes
                 [("managedInstances" .=) <$>
                    _rigmlirManagedInstances])

-- | An Operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oTargetId            :: !(Maybe (Textual Word64))
    , _oStatus              :: !(Maybe OperationStatus)
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
oStatus :: Lens' Operation (Maybe OperationStatus)
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

-- | [Output Only] The URL of the resource that the operation modifies. For
-- operations related to creating a snapshot, this points to the persistent
-- disk that the snapshot was created from.
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

--
-- /See:/ 'disksScopedListWarningDataItem' smart constructor.
data DisksScopedListWarningDataItem = DisksScopedListWarningDataItem'
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
    DisksScopedListWarningDataItem'
    { _dslwdiValue = Nothing
    , _dslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dslwdiValue :: Lens' DisksScopedListWarningDataItem (Maybe Text)
dslwdiValue
  = lens _dslwdiValue (\ s a -> s{_dslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
dslwdiKey :: Lens' DisksScopedListWarningDataItem (Maybe Text)
dslwdiKey
  = lens _dslwdiKey (\ s a -> s{_dslwdiKey = a})

instance FromJSON DisksScopedListWarningDataItem
         where
        parseJSON
          = withObject "DisksScopedListWarningDataItem"
              (\ o ->
                 DisksScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DisksScopedListWarningDataItem where
        toJSON DisksScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dslwdiValue,
                  ("key" .=) <$> _dslwdiKey])

-- | A Disk resource.
--
-- /See:/ 'disk' smart constructor.
data Disk = Disk'
    { _dStatus                      :: !(Maybe DiskStatus)
    , _dSourceSnapshotId            :: !(Maybe Text)
    , _dLastAttachTimestamp         :: !(Maybe Text)
    , _dUsers                       :: !(Maybe [Text])
    , _dSourceImage                 :: !(Maybe Text)
    , _dDiskEncryptionKey           :: !(Maybe CustomerEncryptionKey)
    , _dSizeGb                      :: !(Maybe (Textual Int64))
    , _dKind                        :: !Text
    , _dLastDetachTimestamp         :: !(Maybe Text)
    , _dZone                        :: !(Maybe Text)
    , _dSelfLink                    :: !(Maybe Text)
    , _dName                        :: !(Maybe Text)
    , _dSourceImageId               :: !(Maybe Text)
    , _dCreationTimestamp           :: !(Maybe Text)
    , _dSourceImageEncryptionKey    :: !(Maybe CustomerEncryptionKey)
    , _dId                          :: !(Maybe (Textual Word64))
    , _dLicenses                    :: !(Maybe [Text])
    , _dOptions                     :: !(Maybe Text)
    , _dType                        :: !(Maybe Text)
    , _dDescription                 :: !(Maybe Text)
    , _dSourceSnapshotEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _dSourceSnapshot              :: !(Maybe Text)
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
-- * 'dDiskEncryptionKey'
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
-- * 'dSourceImageEncryptionKey'
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
-- * 'dSourceSnapshotEncryptionKey'
--
-- * 'dSourceSnapshot'
disk
    :: Disk
disk =
    Disk'
    { _dStatus = Nothing
    , _dSourceSnapshotId = Nothing
    , _dLastAttachTimestamp = Nothing
    , _dUsers = Nothing
    , _dSourceImage = Nothing
    , _dDiskEncryptionKey = Nothing
    , _dSizeGb = Nothing
    , _dKind = "compute#disk"
    , _dLastDetachTimestamp = Nothing
    , _dZone = Nothing
    , _dSelfLink = Nothing
    , _dName = Nothing
    , _dSourceImageId = Nothing
    , _dCreationTimestamp = Nothing
    , _dSourceImageEncryptionKey = Nothing
    , _dId = Nothing
    , _dLicenses = Nothing
    , _dOptions = Nothing
    , _dType = Nothing
    , _dDescription = Nothing
    , _dSourceSnapshotEncryptionKey = Nothing
    , _dSourceSnapshot = Nothing
    }

-- | [Output Only] The status of disk creation.
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

-- | [Output Only] Links to the users of the disk (attached instances) in
-- form: project\/zones\/zone\/instances\/instance
dUsers :: Lens' Disk [Text]
dUsers
  = lens _dUsers (\ s a -> s{_dUsers = a}) . _Default .
      _Coerce

-- | The source image used to create this disk. If the source image is
-- deleted, this field will not be set. To create a disk with one of the
-- public operating system images, specify the image by its family name.
-- For example, specify family\/debian-8 to use the latest Debian 8 image:
-- projects\/debian-cloud\/global\/images\/family\/debian-8 Alternatively,
-- use a specific version of a public operating system image:
-- projects\/debian-cloud\/global\/images\/debian-8-jessie-vYYYYMMDD To
-- create a disk with a private image that you created, specify the image
-- name in the following format: global\/images\/my-private-image You can
-- also specify a private image by its image family, which returns the
-- latest version of the image in that family. Replace the image name with
-- family\/family-name: global\/images\/family\/my-private-family
dSourceImage :: Lens' Disk (Maybe Text)
dSourceImage
  = lens _dSourceImage (\ s a -> s{_dSourceImage = a})

-- | Encrypts the disk using a customer-supplied encryption key. After you
-- encrypt a disk with a customer-supplied key, you must provide the same
-- key if you use the disk later (e.g. to create a disk snapshot or an
-- image, or to attach the disk to a virtual machine). Customer-supplied
-- encryption keys do not protect access to metadata of the disk. If you do
-- not provide an encryption key when creating the disk, then the disk will
-- be encrypted using an automatically generated key and you do not need to
-- provide a key to use the disk later.
dDiskEncryptionKey :: Lens' Disk (Maybe CustomerEncryptionKey)
dDiskEncryptionKey
  = lens _dDiskEncryptionKey
      (\ s a -> s{_dDiskEncryptionKey = a})

-- | Size of the persistent disk, specified in GB. You can specify this field
-- when creating a persistent disk using the sourceImage or sourceSnapshot
-- parameter, or specify it alone to create an empty persistent disk. If
-- you specify this field along with sourceImage or sourceSnapshot, the
-- value of sizeGb must not be less than the size of the sourceImage or the
-- size of the snapshot.
dSizeGb :: Lens' Disk (Maybe Int64)
dSizeGb
  = lens _dSizeGb (\ s a -> s{_dSizeGb = a}) .
      mapping _Coerce

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

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
dName :: Lens' Disk (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | [Output Only] The ID value of the image used to create this disk. This
-- value identifies the exact image that was used to create this persistent
-- disk. For example, if you created the persistent disk from an image that
-- was later deleted and recreated under the same name, the source image ID
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

-- | The customer-supplied encryption key of the source image. Required if
-- the source image is protected by a customer-supplied encryption key.
dSourceImageEncryptionKey :: Lens' Disk (Maybe CustomerEncryptionKey)
dSourceImageEncryptionKey
  = lens _dSourceImageEncryptionKey
      (\ s a -> s{_dSourceImageEncryptionKey = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dId :: Lens' Disk (Maybe Word64)
dId
  = lens _dId (\ s a -> s{_dId = a}) . mapping _Coerce

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
-- create the disk. Provide this when creating the disk.
dType :: Lens' Disk (Maybe Text)
dType = lens _dType (\ s a -> s{_dType = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
dDescription :: Lens' Disk (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | The customer-supplied encryption key of the source snapshot. Required if
-- the source snapshot is protected by a customer-supplied encryption key.
dSourceSnapshotEncryptionKey :: Lens' Disk (Maybe CustomerEncryptionKey)
dSourceSnapshotEncryptionKey
  = lens _dSourceSnapshotEncryptionKey
      (\ s a -> s{_dSourceSnapshotEncryptionKey = a})

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
                 Disk' <$>
                   (o .:? "status") <*> (o .:? "sourceSnapshotId") <*>
                     (o .:? "lastAttachTimestamp")
                     <*> (o .:? "users" .!= mempty)
                     <*> (o .:? "sourceImage")
                     <*> (o .:? "diskEncryptionKey")
                     <*> (o .:? "sizeGb")
                     <*> (o .:? "kind" .!= "compute#disk")
                     <*> (o .:? "lastDetachTimestamp")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "sourceImageId")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "sourceImageEncryptionKey")
                     <*> (o .:? "id")
                     <*> (o .:? "licenses" .!= mempty)
                     <*> (o .:? "options")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "sourceSnapshotEncryptionKey")
                     <*> (o .:? "sourceSnapshot"))

instance ToJSON Disk where
        toJSON Disk'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dStatus,
                  ("sourceSnapshotId" .=) <$> _dSourceSnapshotId,
                  ("lastAttachTimestamp" .=) <$> _dLastAttachTimestamp,
                  ("users" .=) <$> _dUsers,
                  ("sourceImage" .=) <$> _dSourceImage,
                  ("diskEncryptionKey" .=) <$> _dDiskEncryptionKey,
                  ("sizeGb" .=) <$> _dSizeGb, Just ("kind" .= _dKind),
                  ("lastDetachTimestamp" .=) <$> _dLastDetachTimestamp,
                  ("zone" .=) <$> _dZone,
                  ("selfLink" .=) <$> _dSelfLink,
                  ("name" .=) <$> _dName,
                  ("sourceImageId" .=) <$> _dSourceImageId,
                  ("creationTimestamp" .=) <$> _dCreationTimestamp,
                  ("sourceImageEncryptionKey" .=) <$>
                    _dSourceImageEncryptionKey,
                  ("id" .=) <$> _dId, ("licenses" .=) <$> _dLicenses,
                  ("options" .=) <$> _dOptions, ("type" .=) <$> _dType,
                  ("description" .=) <$> _dDescription,
                  ("sourceSnapshotEncryptionKey" .=) <$>
                    _dSourceSnapshotEncryptionKey,
                  ("sourceSnapshot" .=) <$> _dSourceSnapshot])

--
-- /See:/ 'diskMoveRequest' smart constructor.
data DiskMoveRequest = DiskMoveRequest'
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
    DiskMoveRequest'
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

-- | The URL of the destination zone to move the disk. This can be a full or
-- partial URL. For example, the following are all valid URLs to a zone: -
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
                 DiskMoveRequest' <$>
                   (o .:? "targetDisk") <*> (o .:? "destinationZone"))

instance ToJSON DiskMoveRequest where
        toJSON DiskMoveRequest'{..}
          = object
              (catMaybes
                 [("targetDisk" .=) <$> _dmrTargetDisk,
                  ("destinationZone" .=) <$> _dmrDestinationZone])

-- | Configuration parameters of autoscaling based on load balancing.
--
-- /See:/ 'autoscalingPolicyLoadBalancingUtilization' smart constructor.
newtype AutoscalingPolicyLoadBalancingUtilization = AutoscalingPolicyLoadBalancingUtilization'
    { _aplbuUtilizationTarget :: Maybe (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyLoadBalancingUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplbuUtilizationTarget'
autoscalingPolicyLoadBalancingUtilization
    :: AutoscalingPolicyLoadBalancingUtilization
autoscalingPolicyLoadBalancingUtilization =
    AutoscalingPolicyLoadBalancingUtilization'
    { _aplbuUtilizationTarget = Nothing
    }

-- | Fraction of backend capacity utilization (set in HTTP(s) load balancing
-- configuration) that autoscaler should maintain. Must be a positive float
-- value. If not defined, the default is 0.8.
aplbuUtilizationTarget :: Lens' AutoscalingPolicyLoadBalancingUtilization (Maybe Double)
aplbuUtilizationTarget
  = lens _aplbuUtilizationTarget
      (\ s a -> s{_aplbuUtilizationTarget = a})
      . mapping _Coerce

instance FromJSON
         AutoscalingPolicyLoadBalancingUtilization where
        parseJSON
          = withObject
              "AutoscalingPolicyLoadBalancingUtilization"
              (\ o ->
                 AutoscalingPolicyLoadBalancingUtilization' <$>
                   (o .:? "utilizationTarget"))

instance ToJSON
         AutoscalingPolicyLoadBalancingUtilization where
        toJSON AutoscalingPolicyLoadBalancingUtilization'{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _aplbuUtilizationTarget])

--
-- /See:/ 'targetPoolsScopedListWarningDataItem' smart constructor.
data TargetPoolsScopedListWarningDataItem = TargetPoolsScopedListWarningDataItem'
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
    TargetPoolsScopedListWarningDataItem'
    { _tpslwdiValue = Nothing
    , _tpslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tpslwdiValue :: Lens' TargetPoolsScopedListWarningDataItem (Maybe Text)
tpslwdiValue
  = lens _tpslwdiValue (\ s a -> s{_tpslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
tpslwdiKey :: Lens' TargetPoolsScopedListWarningDataItem (Maybe Text)
tpslwdiKey
  = lens _tpslwdiKey (\ s a -> s{_tpslwdiKey = a})

instance FromJSON
         TargetPoolsScopedListWarningDataItem where
        parseJSON
          = withObject "TargetPoolsScopedListWarningDataItem"
              (\ o ->
                 TargetPoolsScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON TargetPoolsScopedListWarningDataItem
         where
        toJSON TargetPoolsScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tpslwdiValue,
                  ("key" .=) <$> _tpslwdiKey])

-- | An Instance Group Manager resource.
--
-- /See:/ 'instanceGroupManager' smart constructor.
data InstanceGroupManager = InstanceGroupManager'
    { _igmKind              :: !Text
    , _igmFingerprint       :: !(Maybe Bytes)
    , _igmBaseInstanceName  :: !(Maybe Text)
    , _igmZone              :: !(Maybe Text)
    , _igmInstanceTemplate  :: !(Maybe Text)
    , _igmTargetSize        :: !(Maybe (Textual Int32))
    , _igmSelfLink          :: !(Maybe Text)
    , _igmCurrentActions    :: !(Maybe InstanceGroupManagerActionsSummary)
    , _igmName              :: !(Maybe Text)
    , _igmCreationTimestamp :: !(Maybe Text)
    , _igmId                :: !(Maybe (Textual Word64))
    , _igmRegion            :: !(Maybe Text)
    , _igmTargetPools       :: !(Maybe [Text])
    , _igmDescription       :: !(Maybe Text)
    , _igmInstanceGroup     :: !(Maybe Text)
    , _igmNamedPorts        :: !(Maybe [NamedPort])
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
-- * 'igmRegion'
--
-- * 'igmTargetPools'
--
-- * 'igmDescription'
--
-- * 'igmInstanceGroup'
--
-- * 'igmNamedPorts'
instanceGroupManager
    :: InstanceGroupManager
instanceGroupManager =
    InstanceGroupManager'
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
    , _igmRegion = Nothing
    , _igmTargetPools = Nothing
    , _igmDescription = Nothing
    , _igmInstanceGroup = Nothing
    , _igmNamedPorts = Nothing
    }

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManager for managed instance groups.
igmKind :: Lens' InstanceGroupManager Text
igmKind = lens _igmKind (\ s a -> s{_igmKind = a})

-- | [Output Only] The fingerprint of the resource data. You can use this
-- optional field for optimistic locking when you update the resource.
igmFingerprint :: Lens' InstanceGroupManager (Maybe ByteString)
igmFingerprint
  = lens _igmFingerprint
      (\ s a -> s{_igmFingerprint = a})
      . mapping _Bytes

-- | The base instance name to use for instances in this group. The value
-- must be 1-58 characters long. Instances are named by appending a hyphen
-- and a random four-character string to the base instance name. The base
-- instance name must comply with RFC1035.
igmBaseInstanceName :: Lens' InstanceGroupManager (Maybe Text)
igmBaseInstanceName
  = lens _igmBaseInstanceName
      (\ s a -> s{_igmBaseInstanceName = a})

-- | [Output Only] The URL of the zone where the managed instance group is
-- located (for zonal resources).
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
      . mapping _Coerce

-- | [Output Only] The URL for this managed instance group. The server
-- defines this URL.
igmSelfLink :: Lens' InstanceGroupManager (Maybe Text)
igmSelfLink
  = lens _igmSelfLink (\ s a -> s{_igmSelfLink = a})

-- | [Output Only] The list of instance actions and the number of instances
-- in this managed instance group that are scheduled for each of those
-- actions.
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

-- | [Output Only] A unique identifier for this resource type. The server
-- generates this identifier.
igmId :: Lens' InstanceGroupManager (Maybe Word64)
igmId
  = lens _igmId (\ s a -> s{_igmId = a}) .
      mapping _Coerce

-- | [Output Only] The URL of the region where the managed instance group
-- resides (for regional resources).
igmRegion :: Lens' InstanceGroupManager (Maybe Text)
igmRegion
  = lens _igmRegion (\ s a -> s{_igmRegion = a})

-- | The URLs for all TargetPool resources to which instances in the
-- instanceGroup field are added. The target pools automatically apply to
-- all of the instances in the managed instance group.
igmTargetPools :: Lens' InstanceGroupManager [Text]
igmTargetPools
  = lens _igmTargetPools
      (\ s a -> s{_igmTargetPools = a})
      . _Default
      . _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
igmDescription :: Lens' InstanceGroupManager (Maybe Text)
igmDescription
  = lens _igmDescription
      (\ s a -> s{_igmDescription = a})

-- | [Output Only] The URL of the Instance Group resource.
igmInstanceGroup :: Lens' InstanceGroupManager (Maybe Text)
igmInstanceGroup
  = lens _igmInstanceGroup
      (\ s a -> s{_igmInstanceGroup = a})

-- | Named ports configured for the Instance Groups complementary to this
-- Instance Group Manager.
igmNamedPorts :: Lens' InstanceGroupManager [NamedPort]
igmNamedPorts
  = lens _igmNamedPorts
      (\ s a -> s{_igmNamedPorts = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupManager where
        parseJSON
          = withObject "InstanceGroupManager"
              (\ o ->
                 InstanceGroupManager' <$>
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
                     <*> (o .:? "region")
                     <*> (o .:? "targetPools" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroup")
                     <*> (o .:? "namedPorts" .!= mempty))

instance ToJSON InstanceGroupManager where
        toJSON InstanceGroupManager'{..}
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
                  ("id" .=) <$> _igmId, ("region" .=) <$> _igmRegion,
                  ("targetPools" .=) <$> _igmTargetPools,
                  ("description" .=) <$> _igmDescription,
                  ("instanceGroup" .=) <$> _igmInstanceGroup,
                  ("namedPorts" .=) <$> _igmNamedPorts])

--
-- /See:/ 'regionInstanceGroupsListInstances' smart constructor.
data RegionInstanceGroupsListInstances = RegionInstanceGroupsListInstances'
    { _rigliNextPageToken :: !(Maybe Text)
    , _rigliKind          :: !Text
    , _rigliItems         :: !(Maybe [InstanceWithNamedPorts])
    , _rigliSelfLink      :: !(Maybe Text)
    , _rigliId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsListInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigliNextPageToken'
--
-- * 'rigliKind'
--
-- * 'rigliItems'
--
-- * 'rigliSelfLink'
--
-- * 'rigliId'
regionInstanceGroupsListInstances
    :: RegionInstanceGroupsListInstances
regionInstanceGroupsListInstances =
    RegionInstanceGroupsListInstances'
    { _rigliNextPageToken = Nothing
    , _rigliKind = "compute#regionInstanceGroupsListInstances"
    , _rigliItems = Nothing
    , _rigliSelfLink = Nothing
    , _rigliId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
rigliNextPageToken :: Lens' RegionInstanceGroupsListInstances (Maybe Text)
rigliNextPageToken
  = lens _rigliNextPageToken
      (\ s a -> s{_rigliNextPageToken = a})

-- | The resource type.
rigliKind :: Lens' RegionInstanceGroupsListInstances Text
rigliKind
  = lens _rigliKind (\ s a -> s{_rigliKind = a})

-- | A list of instances and any named ports that are assigned to those
-- instances.
rigliItems :: Lens' RegionInstanceGroupsListInstances [InstanceWithNamedPorts]
rigliItems
  = lens _rigliItems (\ s a -> s{_rigliItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
rigliSelfLink :: Lens' RegionInstanceGroupsListInstances (Maybe Text)
rigliSelfLink
  = lens _rigliSelfLink
      (\ s a -> s{_rigliSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
rigliId :: Lens' RegionInstanceGroupsListInstances (Maybe Text)
rigliId = lens _rigliId (\ s a -> s{_rigliId = a})

instance FromJSON RegionInstanceGroupsListInstances
         where
        parseJSON
          = withObject "RegionInstanceGroupsListInstances"
              (\ o ->
                 RegionInstanceGroupsListInstances' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#regionInstanceGroupsListInstances")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionInstanceGroupsListInstances
         where
        toJSON RegionInstanceGroupsListInstances'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rigliNextPageToken,
                  Just ("kind" .= _rigliKind),
                  ("items" .=) <$> _rigliItems,
                  ("selfLink" .=) <$> _rigliSelfLink,
                  ("id" .=) <$> _rigliId])

--
-- /See:/ 'tcpHealthCheck' smart constructor.
data TCPHealthCheck = TCPHealthCheck'
    { _thcResponse    :: !(Maybe Text)
    , _thcProxyHeader :: !(Maybe TCPHealthCheckProxyHeader)
    , _thcPortName    :: !(Maybe Text)
    , _thcPort        :: !(Maybe (Textual Int32))
    , _thcRequest     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TCPHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thcResponse'
--
-- * 'thcProxyHeader'
--
-- * 'thcPortName'
--
-- * 'thcPort'
--
-- * 'thcRequest'
tcpHealthCheck
    :: TCPHealthCheck
tcpHealthCheck =
    TCPHealthCheck'
    { _thcResponse = Nothing
    , _thcProxyHeader = Nothing
    , _thcPortName = Nothing
    , _thcPort = Nothing
    , _thcRequest = Nothing
    }

-- | The bytes to match against the beginning of the response data. If left
-- empty (the default value), any response will indicate health. The
-- response data can only be ASCII.
thcResponse :: Lens' TCPHealthCheck (Maybe Text)
thcResponse
  = lens _thcResponse (\ s a -> s{_thcResponse = a})

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
thcProxyHeader :: Lens' TCPHealthCheck (Maybe TCPHealthCheckProxyHeader)
thcProxyHeader
  = lens _thcProxyHeader
      (\ s a -> s{_thcProxyHeader = a})

-- | Port name as defined in InstanceGroup#NamedPort#name. If both port and
-- port_name are defined, port takes precedence.
thcPortName :: Lens' TCPHealthCheck (Maybe Text)
thcPortName
  = lens _thcPortName (\ s a -> s{_thcPortName = a})

-- | The TCP port number for the health check request. The default value is
-- 80.
thcPort :: Lens' TCPHealthCheck (Maybe Int32)
thcPort
  = lens _thcPort (\ s a -> s{_thcPort = a}) .
      mapping _Coerce

-- | The application data to send once the TCP connection has been
-- established (default value is empty). If both request and response are
-- empty, the connection establishment alone will indicate health. The
-- request data can only be ASCII.
thcRequest :: Lens' TCPHealthCheck (Maybe Text)
thcRequest
  = lens _thcRequest (\ s a -> s{_thcRequest = a})

instance FromJSON TCPHealthCheck where
        parseJSON
          = withObject "TCPHealthCheck"
              (\ o ->
                 TCPHealthCheck' <$>
                   (o .:? "response") <*> (o .:? "proxyHeader") <*>
                     (o .:? "portName")
                     <*> (o .:? "port")
                     <*> (o .:? "request"))

instance ToJSON TCPHealthCheck where
        toJSON TCPHealthCheck'{..}
          = object
              (catMaybes
                 [("response" .=) <$> _thcResponse,
                  ("proxyHeader" .=) <$> _thcProxyHeader,
                  ("portName" .=) <$> _thcPortName,
                  ("port" .=) <$> _thcPort,
                  ("request" .=) <$> _thcRequest])

--
-- /See:/ 'instanceGroupsRemoveInstancesRequest' smart constructor.
newtype InstanceGroupsRemoveInstancesRequest = InstanceGroupsRemoveInstancesRequest'
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
    InstanceGroupsRemoveInstancesRequest'
    { _igrirInstances = Nothing
    }

-- | The list of instances to remove from the instance group.
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
                 InstanceGroupsRemoveInstancesRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON InstanceGroupsRemoveInstancesRequest
         where
        toJSON InstanceGroupsRemoveInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _igrirInstances])

--
-- /See:/ 'routeWarningsItemDataItem' smart constructor.
data RouteWarningsItemDataItem = RouteWarningsItemDataItem'
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
    RouteWarningsItemDataItem'
    { _rwidiValue = Nothing
    , _rwidiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
rwidiValue :: Lens' RouteWarningsItemDataItem (Maybe Text)
rwidiValue
  = lens _rwidiValue (\ s a -> s{_rwidiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
rwidiKey :: Lens' RouteWarningsItemDataItem (Maybe Text)
rwidiKey = lens _rwidiKey (\ s a -> s{_rwidiKey = a})

instance FromJSON RouteWarningsItemDataItem where
        parseJSON
          = withObject "RouteWarningsItemDataItem"
              (\ o ->
                 RouteWarningsItemDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON RouteWarningsItemDataItem where
        toJSON RouteWarningsItemDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rwidiValue,
                  ("key" .=) <$> _rwidiKey])

-- | A map of scoped BackendService lists.
--
-- /See:/ 'backendServiceAggregatedListItems' smart constructor.
newtype BackendServiceAggregatedListItems = BackendServiceAggregatedListItems'
    { _bsaliAddtional :: HashMap Text BackendServicesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsaliAddtional'
backendServiceAggregatedListItems
    :: HashMap Text BackendServicesScopedList -- ^ 'bsaliAddtional'
    -> BackendServiceAggregatedListItems
backendServiceAggregatedListItems pBsaliAddtional_ =
    BackendServiceAggregatedListItems'
    { _bsaliAddtional = _Coerce # pBsaliAddtional_
    }

-- | Name of the scope containing this set of BackendServices.
bsaliAddtional :: Lens' BackendServiceAggregatedListItems (HashMap Text BackendServicesScopedList)
bsaliAddtional
  = lens _bsaliAddtional
      (\ s a -> s{_bsaliAddtional = a})
      . _Coerce

instance FromJSON BackendServiceAggregatedListItems
         where
        parseJSON
          = withObject "BackendServiceAggregatedListItems"
              (\ o ->
                 BackendServiceAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON BackendServiceAggregatedListItems
         where
        toJSON = toJSON . _bsaliAddtional

-- | [Output Only] A map of scoped instance lists.
--
-- /See:/ 'instanceAggregatedListItems' smart constructor.
newtype InstanceAggregatedListItems = InstanceAggregatedListItems'
    { _ialiAddtional :: HashMap Text InstancesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialiAddtional'
instanceAggregatedListItems
    :: HashMap Text InstancesScopedList -- ^ 'ialiAddtional'
    -> InstanceAggregatedListItems
instanceAggregatedListItems pIaliAddtional_ =
    InstanceAggregatedListItems'
    { _ialiAddtional = _Coerce # pIaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of instances.
ialiAddtional :: Lens' InstanceAggregatedListItems (HashMap Text InstancesScopedList)
ialiAddtional
  = lens _ialiAddtional
      (\ s a -> s{_ialiAddtional = a})
      . _Coerce

instance FromJSON InstanceAggregatedListItems where
        parseJSON
          = withObject "InstanceAggregatedListItems"
              (\ o ->
                 InstanceAggregatedListItems' <$> (parseJSONObject o))

instance ToJSON InstanceAggregatedListItems where
        toJSON = toJSON . _ialiAddtional

-- | [Output Only] Informational warning which replaces the list of
-- autoscalers when the list is empty.
--
-- /See:/ 'autoscalersScopedListWarning' smart constructor.
data AutoscalersScopedListWarning = AutoscalersScopedListWarning'
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
    AutoscalersScopedListWarning'
    { _aslwData = Nothing
    , _aslwCode = Nothing
    , _aslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
aslwData :: Lens' AutoscalersScopedListWarning [AutoscalersScopedListWarningDataItem]
aslwData
  = lens _aslwData (\ s a -> s{_aslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
aslwCode :: Lens' AutoscalersScopedListWarning (Maybe AutoscalersScopedListWarningCode)
aslwCode = lens _aslwCode (\ s a -> s{_aslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
aslwMessage :: Lens' AutoscalersScopedListWarning (Maybe Text)
aslwMessage
  = lens _aslwMessage (\ s a -> s{_aslwMessage = a})

instance FromJSON AutoscalersScopedListWarning where
        parseJSON
          = withObject "AutoscalersScopedListWarning"
              (\ o ->
                 AutoscalersScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON AutoscalersScopedListWarning where
        toJSON AutoscalersScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _aslwData,
                  ("code" .=) <$> _aslwCode,
                  ("message" .=) <$> _aslwMessage])

-- | Contains a list of HealthCheck resources.
--
-- /See:/ 'healthCheckList' smart constructor.
data HealthCheckList = HealthCheckList'
    { _hclNextPageToken :: !(Maybe Text)
    , _hclKind          :: !Text
    , _hclItems         :: !(Maybe [HealthCheck])
    , _hclSelfLink      :: !(Maybe Text)
    , _hclId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthCheckList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hclNextPageToken'
--
-- * 'hclKind'
--
-- * 'hclItems'
--
-- * 'hclSelfLink'
--
-- * 'hclId'
healthCheckList
    :: HealthCheckList
healthCheckList =
    HealthCheckList'
    { _hclNextPageToken = Nothing
    , _hclKind = "compute#healthCheckList"
    , _hclItems = Nothing
    , _hclSelfLink = Nothing
    , _hclId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
hclNextPageToken :: Lens' HealthCheckList (Maybe Text)
hclNextPageToken
  = lens _hclNextPageToken
      (\ s a -> s{_hclNextPageToken = a})

-- | Type of resource.
hclKind :: Lens' HealthCheckList Text
hclKind = lens _hclKind (\ s a -> s{_hclKind = a})

-- | A list of HealthCheck resources.
hclItems :: Lens' HealthCheckList [HealthCheck]
hclItems
  = lens _hclItems (\ s a -> s{_hclItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
hclSelfLink :: Lens' HealthCheckList (Maybe Text)
hclSelfLink
  = lens _hclSelfLink (\ s a -> s{_hclSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
hclId :: Lens' HealthCheckList (Maybe Text)
hclId = lens _hclId (\ s a -> s{_hclId = a})

instance FromJSON HealthCheckList where
        parseJSON
          = withObject "HealthCheckList"
              (\ o ->
                 HealthCheckList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#healthCheckList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON HealthCheckList where
        toJSON HealthCheckList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _hclNextPageToken,
                  Just ("kind" .= _hclKind),
                  ("items" .=) <$> _hclItems,
                  ("selfLink" .=) <$> _hclSelfLink,
                  ("id" .=) <$> _hclId])

-- | [Output Only] Encountered errors during the last attempt to create or
-- delete the instance.
--
-- /See:/ 'managedInstanceLastAttemptErrors' smart constructor.
newtype ManagedInstanceLastAttemptErrors = ManagedInstanceLastAttemptErrors'
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
    ManagedInstanceLastAttemptErrors'
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
                 ManagedInstanceLastAttemptErrors' <$>
                   (o .:? "errors" .!= mempty))

instance ToJSON ManagedInstanceLastAttemptErrors
         where
        toJSON ManagedInstanceLastAttemptErrors'{..}
          = object (catMaybes [("errors" .=) <$> _milaeErrors])

--
-- /See:/ 'targetPoolsRemoveInstanceRequest' smart constructor.
newtype TargetPoolsRemoveInstanceRequest = TargetPoolsRemoveInstanceRequest'
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
    TargetPoolsRemoveInstanceRequest'
    { _tprirInstances = Nothing
    }

-- | URLs of the instances to be removed from target pool.
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
                 TargetPoolsRemoveInstanceRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON TargetPoolsRemoveInstanceRequest
         where
        toJSON TargetPoolsRemoveInstanceRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _tprirInstances])

--
-- /See:/ 'targetInstancesScopedListWarningDataItem' smart constructor.
data TargetInstancesScopedListWarningDataItem = TargetInstancesScopedListWarningDataItem'
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
    TargetInstancesScopedListWarningDataItem'
    { _tislwdiValue = Nothing
    , _tislwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tislwdiValue :: Lens' TargetInstancesScopedListWarningDataItem (Maybe Text)
tislwdiValue
  = lens _tislwdiValue (\ s a -> s{_tislwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
tislwdiKey :: Lens' TargetInstancesScopedListWarningDataItem (Maybe Text)
tislwdiKey
  = lens _tislwdiKey (\ s a -> s{_tislwdiKey = a})

instance FromJSON
         TargetInstancesScopedListWarningDataItem where
        parseJSON
          = withObject
              "TargetInstancesScopedListWarningDataItem"
              (\ o ->
                 TargetInstancesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         TargetInstancesScopedListWarningDataItem where
        toJSON TargetInstancesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tislwdiValue,
                  ("key" .=) <$> _tislwdiKey])

-- | [Output Only] An informational warning that appears when the machine
-- types list is empty.
--
-- /See:/ 'machineTypesScopedListWarning' smart constructor.
data MachineTypesScopedListWarning = MachineTypesScopedListWarning'
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
    MachineTypesScopedListWarning'
    { _mtslwData = Nothing
    , _mtslwCode = Nothing
    , _mtslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
mtslwData :: Lens' MachineTypesScopedListWarning [MachineTypesScopedListWarningDataItem]
mtslwData
  = lens _mtslwData (\ s a -> s{_mtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
mtslwCode :: Lens' MachineTypesScopedListWarning (Maybe MachineTypesScopedListWarningCode)
mtslwCode
  = lens _mtslwCode (\ s a -> s{_mtslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
mtslwMessage :: Lens' MachineTypesScopedListWarning (Maybe Text)
mtslwMessage
  = lens _mtslwMessage (\ s a -> s{_mtslwMessage = a})

instance FromJSON MachineTypesScopedListWarning where
        parseJSON
          = withObject "MachineTypesScopedListWarning"
              (\ o ->
                 MachineTypesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON MachineTypesScopedListWarning where
        toJSON MachineTypesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _mtslwData,
                  ("code" .=) <$> _mtslwCode,
                  ("message" .=) <$> _mtslwMessage])

-- | A TargetInstance resource. This resource defines an endpoint instance
-- that terminates traffic of certain protocols.
--
-- /See:/ 'targetInstance' smart constructor.
data TargetInstance = TargetInstance'
    { _tiKind              :: !Text
    , _tiNATPolicy         :: !(Maybe TargetInstanceNATPolicy)
    , _tiZone              :: !(Maybe Text)
    , _tiSelfLink          :: !(Maybe Text)
    , _tiName              :: !(Maybe Text)
    , _tiCreationTimestamp :: !(Maybe Text)
    , _tiId                :: !(Maybe (Textual Word64))
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
    TargetInstance'
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

-- | [Output Only] The type of the resource. Always compute#targetInstance
-- for target instances.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tiId :: Lens' TargetInstance (Maybe Word64)
tiId
  = lens _tiId (\ s a -> s{_tiId = a}) .
      mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
tiDescription :: Lens' TargetInstance (Maybe Text)
tiDescription
  = lens _tiDescription
      (\ s a -> s{_tiDescription = a})

-- | A URL to the virtual machine instance that handles traffic for this
-- target instance. When creating a target instance, you can provide the
-- fully-qualified URL or a valid partial URL to the desired virtual
-- machine. For example, the following are all valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/instance
-- - projects\/project\/zones\/zone\/instances\/instance -
-- zones\/zone\/instances\/instance
tiInstance :: Lens' TargetInstance (Maybe Text)
tiInstance
  = lens _tiInstance (\ s a -> s{_tiInstance = a})

instance FromJSON TargetInstance where
        parseJSON
          = withObject "TargetInstance"
              (\ o ->
                 TargetInstance' <$>
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
        toJSON TargetInstance'{..}
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
data TargetPoolInstanceHealth = TargetPoolInstanceHealth'
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
    TargetPoolInstanceHealth'
    { _tpihKind = "compute#targetPoolInstanceHealth"
    , _tpihHealthStatus = Nothing
    }

-- | [Output Only] Type of resource. Always compute#targetPoolInstanceHealth
-- when checking the health of an instance.
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
                 TargetPoolInstanceHealth' <$>
                   (o .:? "kind" .!= "compute#targetPoolInstanceHealth")
                     <*> (o .:? "healthStatus" .!= mempty))

instance ToJSON TargetPoolInstanceHealth where
        toJSON TargetPoolInstanceHealth'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tpihKind),
                  ("healthStatus" .=) <$> _tpihHealthStatus])

--
-- /See:/ 'instanceGroupManagersListManagedInstancesResponse' smart constructor.
newtype InstanceGroupManagersListManagedInstancesResponse = InstanceGroupManagersListManagedInstancesResponse'
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
    InstanceGroupManagersListManagedInstancesResponse'
    { _igmlmirManagedInstances = Nothing
    }

-- | [Output Only] The list of instances in the managed instance group.
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
                 InstanceGroupManagersListManagedInstancesResponse'
                   <$> (o .:? "managedInstances" .!= mempty))

instance ToJSON
         InstanceGroupManagersListManagedInstancesResponse
         where
        toJSON
          InstanceGroupManagersListManagedInstancesResponse'{..}
          = object
              (catMaybes
                 [("managedInstances" .=) <$>
                    _igmlmirManagedInstances])

-- |
--
-- /See:/ 'instanceProperties' smart constructor.
data InstanceProperties = InstanceProperties'
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
    InstanceProperties'
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

-- | An array of network access configurations for this interface.
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

-- | Specifies the scheduling options for the instances that are created from
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

-- | Enables instances created based on this template to send packets with
-- source IP addresses other than their own and receive packets with
-- destination IP addresses other than their own. If these instances will
-- be used as an IP gateway or it will be set as the next-hop in a Route
-- resource, specify true. If unsure, leave this set to false. See the
-- Enable IP forwarding for instances documentation for more information.
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
                 InstanceProperties' <$>
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
        toJSON InstanceProperties'{..}
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
data DiskTypesScopedListWarning = DiskTypesScopedListWarning'
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
    DiskTypesScopedListWarning'
    { _dtslwData = Nothing
    , _dtslwCode = Nothing
    , _dtslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
dtslwData :: Lens' DiskTypesScopedListWarning [DiskTypesScopedListWarningDataItem]
dtslwData
  = lens _dtslwData (\ s a -> s{_dtslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
dtslwCode :: Lens' DiskTypesScopedListWarning (Maybe DiskTypesScopedListWarningCode)
dtslwCode
  = lens _dtslwCode (\ s a -> s{_dtslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
dtslwMessage :: Lens' DiskTypesScopedListWarning (Maybe Text)
dtslwMessage
  = lens _dtslwMessage (\ s a -> s{_dtslwMessage = a})

instance FromJSON DiskTypesScopedListWarning where
        parseJSON
          = withObject "DiskTypesScopedListWarning"
              (\ o ->
                 DiskTypesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON DiskTypesScopedListWarning where
        toJSON DiskTypesScopedListWarning'{..}
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
data AttachedDiskInitializeParams = AttachedDiskInitializeParams'
    { _adipSourceImage              :: !(Maybe Text)
    , _adipDiskSizeGb               :: !(Maybe (Textual Int64))
    , _adipDiskName                 :: !(Maybe Text)
    , _adipSourceImageEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _adipDiskType                 :: !(Maybe Text)
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
-- * 'adipSourceImageEncryptionKey'
--
-- * 'adipDiskType'
attachedDiskInitializeParams
    :: AttachedDiskInitializeParams
attachedDiskInitializeParams =
    AttachedDiskInitializeParams'
    { _adipSourceImage = Nothing
    , _adipDiskSizeGb = Nothing
    , _adipDiskName = Nothing
    , _adipSourceImageEncryptionKey = Nothing
    , _adipDiskType = Nothing
    }

-- | The source image to create this disk. When creating a new instance, one
-- of initializeParams.sourceImage or disks.source is required. To create a
-- disk with one of the public operating system images, specify the image
-- by its family name. For example, specify family\/debian-8 to use the
-- latest Debian 8 image:
-- projects\/debian-cloud\/global\/images\/family\/debian-8 Alternatively,
-- use a specific version of a public operating system image:
-- projects\/debian-cloud\/global\/images\/debian-8-jessie-vYYYYMMDD To
-- create a disk with a private image that you created, specify the image
-- name in the following format: global\/images\/my-private-image You can
-- also specify a private image by its image family, which returns the
-- latest version of the image in that family. Replace the image name with
-- family\/family-name: global\/images\/family\/my-private-family If the
-- source image is deleted later, this field will not be set.
adipSourceImage :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipSourceImage
  = lens _adipSourceImage
      (\ s a -> s{_adipSourceImage = a})

-- | Specifies the size of the disk in base-2 GB.
adipDiskSizeGb :: Lens' AttachedDiskInitializeParams (Maybe Int64)
adipDiskSizeGb
  = lens _adipDiskSizeGb
      (\ s a -> s{_adipDiskSizeGb = a})
      . mapping _Coerce

-- | Specifies the disk name. If not specified, the default is to use the
-- name of the instance.
adipDiskName :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskName
  = lens _adipDiskName (\ s a -> s{_adipDiskName = a})

-- | The customer-supplied encryption key of the source image. Required if
-- the source image is protected by a customer-supplied encryption key.
-- Instance templates do not store customer-supplied encryption keys, so
-- you cannot create disks for instances in a managed instance group if the
-- source images are encrypted with your own keys.
adipSourceImageEncryptionKey :: Lens' AttachedDiskInitializeParams (Maybe CustomerEncryptionKey)
adipSourceImageEncryptionKey
  = lens _adipSourceImageEncryptionKey
      (\ s a -> s{_adipSourceImageEncryptionKey = a})

-- | Specifies the disk type to use to create the instance. If not specified,
-- the default is pd-standard, specified using the full URL. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/pd-standard
-- Other values include pd-ssd and local-ssd. If you define this field, you
-- can provide either the full or partial URL. For example, the following
-- are valid values: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/diskTypes\/diskType
-- - projects\/project\/zones\/zone\/diskTypes\/diskType -
-- zones\/zone\/diskTypes\/diskType Note that for InstanceTemplate, this is
-- the name of the disk type, not URL.
adipDiskType :: Lens' AttachedDiskInitializeParams (Maybe Text)
adipDiskType
  = lens _adipDiskType (\ s a -> s{_adipDiskType = a})

instance FromJSON AttachedDiskInitializeParams where
        parseJSON
          = withObject "AttachedDiskInitializeParams"
              (\ o ->
                 AttachedDiskInitializeParams' <$>
                   (o .:? "sourceImage") <*> (o .:? "diskSizeGb") <*>
                     (o .:? "diskName")
                     <*> (o .:? "sourceImageEncryptionKey")
                     <*> (o .:? "diskType"))

instance ToJSON AttachedDiskInitializeParams where
        toJSON AttachedDiskInitializeParams'{..}
          = object
              (catMaybes
                 [("sourceImage" .=) <$> _adipSourceImage,
                  ("diskSizeGb" .=) <$> _adipDiskSizeGb,
                  ("diskName" .=) <$> _adipDiskName,
                  ("sourceImageEncryptionKey" .=) <$>
                    _adipSourceImageEncryptionKey,
                  ("diskType" .=) <$> _adipDiskType])

--
-- /See:/ 'addressesScopedListWarningDataItem' smart constructor.
data AddressesScopedListWarningDataItem = AddressesScopedListWarningDataItem'
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
    AddressesScopedListWarningDataItem'
    { _aslwdiValue = Nothing
    , _aslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aslwdiValue :: Lens' AddressesScopedListWarningDataItem (Maybe Text)
aslwdiValue
  = lens _aslwdiValue (\ s a -> s{_aslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
aslwdiKey :: Lens' AddressesScopedListWarningDataItem (Maybe Text)
aslwdiKey
  = lens _aslwdiKey (\ s a -> s{_aslwdiKey = a})

instance FromJSON AddressesScopedListWarningDataItem
         where
        parseJSON
          = withObject "AddressesScopedListWarningDataItem"
              (\ o ->
                 AddressesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON AddressesScopedListWarningDataItem
         where
        toJSON AddressesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aslwdiValue,
                  ("key" .=) <$> _aslwdiKey])

-- | A network interface resource attached to an instance.
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface = NetworkInterface'
    { _niKind          :: !Text
    , _niNetwork       :: !(Maybe Text)
    , _niName          :: !(Maybe Text)
    , _niNetworkIP     :: !(Maybe Text)
    , _niSubnetwork    :: !(Maybe Text)
    , _niAccessConfigs :: !(Maybe [AccessConfig])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niKind'
--
-- * 'niNetwork'
--
-- * 'niName'
--
-- * 'niNetworkIP'
--
-- * 'niSubnetwork'
--
-- * 'niAccessConfigs'
networkInterface
    :: NetworkInterface
networkInterface =
    NetworkInterface'
    { _niKind = "compute#networkInterface"
    , _niNetwork = Nothing
    , _niName = Nothing
    , _niNetworkIP = Nothing
    , _niSubnetwork = Nothing
    , _niAccessConfigs = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#networkInterface for
-- network interfaces.
niKind :: Lens' NetworkInterface Text
niKind = lens _niKind (\ s a -> s{_niKind = a})

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

-- | An IPv4 internal network address to assign to the instance for this
-- network interface. If not specified by the user, an unused internal IP
-- is assigned by the system.
niNetworkIP :: Lens' NetworkInterface (Maybe Text)
niNetworkIP
  = lens _niNetworkIP (\ s a -> s{_niNetworkIP = a})

-- | The URL of the Subnetwork resource for this instance. If the network
-- resource is in legacy mode, do not provide this property. If the network
-- is in auto subnet mode, providing the subnetwork is optional. If the
-- network is in custom subnet mode, then this field should be specified.
-- If you specify this property, you can specify the subnetwork as a full
-- or partial URL. For example, the following are all valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/regions\/region\/subnetworks\/subnetwork
-- - regions\/region\/subnetworks\/subnetwork
niSubnetwork :: Lens' NetworkInterface (Maybe Text)
niSubnetwork
  = lens _niSubnetwork (\ s a -> s{_niSubnetwork = a})

-- | An array of configurations for this interface. Currently, only one
-- access config, ONE_TO_ONE_NAT, is supported. If there are no
-- accessConfigs specified, then this instance will have no external
-- internet access.
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
                   (o .:? "kind" .!= "compute#networkInterface") <*>
                     (o .:? "network")
                     <*> (o .:? "name")
                     <*> (o .:? "networkIP")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "accessConfigs" .!= mempty))

instance ToJSON NetworkInterface where
        toJSON NetworkInterface'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _niKind),
                  ("network" .=) <$> _niNetwork,
                  ("name" .=) <$> _niName,
                  ("networkIP" .=) <$> _niNetworkIP,
                  ("subnetwork" .=) <$> _niSubnetwork,
                  ("accessConfigs" .=) <$> _niAccessConfigs])

--
-- /See:/ 'targetPoolsRemoveHealthCheckRequest' smart constructor.
newtype TargetPoolsRemoveHealthCheckRequest = TargetPoolsRemoveHealthCheckRequest'
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
    TargetPoolsRemoveHealthCheckRequest'
    { _tprhcrHealthChecks = Nothing
    }

-- | Health check URL to be removed. This can be a full or valid partial URL.
-- For example, the following are valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/project\/global\/httpHealthChecks\/health-check
-- - projects\/project\/global\/httpHealthChecks\/health-check -
-- global\/httpHealthChecks\/health-check
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
                 TargetPoolsRemoveHealthCheckRequest' <$>
                   (o .:? "healthChecks" .!= mempty))

instance ToJSON TargetPoolsRemoveHealthCheckRequest
         where
        toJSON TargetPoolsRemoveHealthCheckRequest'{..}
          = object
              (catMaybes
                 [("healthChecks" .=) <$> _tprhcrHealthChecks])

--
-- /See:/ 'regionInstanceGroupManagersSetTargetPoolsRequest' smart constructor.
data RegionInstanceGroupManagersSetTargetPoolsRequest = RegionInstanceGroupManagersSetTargetPoolsRequest'
    { _rigmstprFingerprint :: !(Maybe Bytes)
    , _rigmstprTargetPools :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersSetTargetPoolsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmstprFingerprint'
--
-- * 'rigmstprTargetPools'
regionInstanceGroupManagersSetTargetPoolsRequest
    :: RegionInstanceGroupManagersSetTargetPoolsRequest
regionInstanceGroupManagersSetTargetPoolsRequest =
    RegionInstanceGroupManagersSetTargetPoolsRequest'
    { _rigmstprFingerprint = Nothing
    , _rigmstprTargetPools = Nothing
    }

-- | Fingerprint of the target pools information, which is a hash of the
-- contents. This field is used for optimistic locking when you update the
-- target pool entries. This field is optional.
rigmstprFingerprint :: Lens' RegionInstanceGroupManagersSetTargetPoolsRequest (Maybe ByteString)
rigmstprFingerprint
  = lens _rigmstprFingerprint
      (\ s a -> s{_rigmstprFingerprint = a})
      . mapping _Bytes

-- | The URL of all TargetPool resources to which instances in the
-- instanceGroup field are added. The target pools automatically apply to
-- all of the instances in the managed instance group.
rigmstprTargetPools :: Lens' RegionInstanceGroupManagersSetTargetPoolsRequest [Text]
rigmstprTargetPools
  = lens _rigmstprTargetPools
      (\ s a -> s{_rigmstprTargetPools = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupManagersSetTargetPoolsRequest
         where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersSetTargetPoolsRequest"
              (\ o ->
                 RegionInstanceGroupManagersSetTargetPoolsRequest' <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "targetPools" .!= mempty))

instance ToJSON
         RegionInstanceGroupManagersSetTargetPoolsRequest
         where
        toJSON
          RegionInstanceGroupManagersSetTargetPoolsRequest'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _rigmstprFingerprint,
                  ("targetPools" .=) <$> _rigmstprTargetPools])

-- | Contains a list of TargetSslProxy resources.
--
-- /See:/ 'targetSSLProxyList' smart constructor.
data TargetSSLProxyList = TargetSSLProxyList'
    { _tsplNextPageToken :: !(Maybe Text)
    , _tsplKind          :: !Text
    , _tsplItems         :: !(Maybe [TargetSSLProxy])
    , _tsplSelfLink      :: !(Maybe Text)
    , _tsplId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsplNextPageToken'
--
-- * 'tsplKind'
--
-- * 'tsplItems'
--
-- * 'tsplSelfLink'
--
-- * 'tsplId'
targetSSLProxyList
    :: TargetSSLProxyList
targetSSLProxyList =
    TargetSSLProxyList'
    { _tsplNextPageToken = Nothing
    , _tsplKind = "compute#targetSslProxyList"
    , _tsplItems = Nothing
    , _tsplSelfLink = Nothing
    , _tsplId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
tsplNextPageToken :: Lens' TargetSSLProxyList (Maybe Text)
tsplNextPageToken
  = lens _tsplNextPageToken
      (\ s a -> s{_tsplNextPageToken = a})

-- | Type of resource.
tsplKind :: Lens' TargetSSLProxyList Text
tsplKind = lens _tsplKind (\ s a -> s{_tsplKind = a})

-- | A list of TargetSslProxy resources.
tsplItems :: Lens' TargetSSLProxyList [TargetSSLProxy]
tsplItems
  = lens _tsplItems (\ s a -> s{_tsplItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
tsplSelfLink :: Lens' TargetSSLProxyList (Maybe Text)
tsplSelfLink
  = lens _tsplSelfLink (\ s a -> s{_tsplSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tsplId :: Lens' TargetSSLProxyList (Maybe Text)
tsplId = lens _tsplId (\ s a -> s{_tsplId = a})

instance FromJSON TargetSSLProxyList where
        parseJSON
          = withObject "TargetSSLProxyList"
              (\ o ->
                 TargetSSLProxyList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetSslProxyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetSSLProxyList where
        toJSON TargetSSLProxyList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tsplNextPageToken,
                  Just ("kind" .= _tsplKind),
                  ("items" .=) <$> _tsplItems,
                  ("selfLink" .=) <$> _tsplSelfLink,
                  ("id" .=) <$> _tsplId])

--
-- /See:/ 'customerEncryptionKeyProtectedDisk' smart constructor.
data CustomerEncryptionKeyProtectedDisk = CustomerEncryptionKeyProtectedDisk'
    { _cekpdDiskEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _cekpdSource            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerEncryptionKeyProtectedDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cekpdDiskEncryptionKey'
--
-- * 'cekpdSource'
customerEncryptionKeyProtectedDisk
    :: CustomerEncryptionKeyProtectedDisk
customerEncryptionKeyProtectedDisk =
    CustomerEncryptionKeyProtectedDisk'
    { _cekpdDiskEncryptionKey = Nothing
    , _cekpdSource = Nothing
    }

-- | Decrypts data associated with the disk with a customer-supplied
-- encryption key.
cekpdDiskEncryptionKey :: Lens' CustomerEncryptionKeyProtectedDisk (Maybe CustomerEncryptionKey)
cekpdDiskEncryptionKey
  = lens _cekpdDiskEncryptionKey
      (\ s a -> s{_cekpdDiskEncryptionKey = a})

-- | Specifies a valid partial or full URL to an existing Persistent Disk
-- resource. This field is only applicable for persistent disks.
cekpdSource :: Lens' CustomerEncryptionKeyProtectedDisk (Maybe Text)
cekpdSource
  = lens _cekpdSource (\ s a -> s{_cekpdSource = a})

instance FromJSON CustomerEncryptionKeyProtectedDisk
         where
        parseJSON
          = withObject "CustomerEncryptionKeyProtectedDisk"
              (\ o ->
                 CustomerEncryptionKeyProtectedDisk' <$>
                   (o .:? "diskEncryptionKey") <*> (o .:? "source"))

instance ToJSON CustomerEncryptionKeyProtectedDisk
         where
        toJSON CustomerEncryptionKeyProtectedDisk'{..}
          = object
              (catMaybes
                 [("diskEncryptionKey" .=) <$>
                    _cekpdDiskEncryptionKey,
                  ("source" .=) <$> _cekpdSource])

-- | A list of instance templates.
--
-- /See:/ 'instanceTemplateList' smart constructor.
data InstanceTemplateList = InstanceTemplateList'
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
    InstanceTemplateList'
    { _itlNextPageToken = Nothing
    , _itlKind = "compute#instanceTemplateList"
    , _itlItems = Nothing
    , _itlSelfLink = Nothing
    , _itlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
itlNextPageToken :: Lens' InstanceTemplateList (Maybe Text)
itlNextPageToken
  = lens _itlNextPageToken
      (\ s a -> s{_itlNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceTemplatesListResponse for instance template lists.
itlKind :: Lens' InstanceTemplateList Text
itlKind = lens _itlKind (\ s a -> s{_itlKind = a})

-- | [Output Only] list of InstanceTemplate resources.
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
                 InstanceTemplateList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceTemplateList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceTemplateList where
        toJSON InstanceTemplateList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _itlNextPageToken,
                  Just ("kind" .= _itlKind),
                  ("items" .=) <$> _itlItems,
                  ("selfLink" .=) <$> _itlSelfLink,
                  ("id" .=) <$> _itlId])

-- | Contains a list of Route resources.
--
-- /See:/ 'routeList' smart constructor.
data RouteList = RouteList'
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
    RouteList'
    { _rlNextPageToken = Nothing
    , _rlKind = "compute#routeList"
    , _rlItems = Nothing
    , _rlSelfLink = Nothing
    , _rlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
rlNextPageToken :: Lens' RouteList (Maybe Text)
rlNextPageToken
  = lens _rlNextPageToken
      (\ s a -> s{_rlNextPageToken = a})

-- | Type of resource.
rlKind :: Lens' RouteList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | [Output Only] A list of Route resources.
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
                 RouteList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#routeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RouteList where
        toJSON RouteList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlNextPageToken,
                  Just ("kind" .= _rlKind), ("items" .=) <$> _rlItems,
                  ("selfLink" .=) <$> _rlSelfLink,
                  ("id" .=) <$> _rlId])

-- | Router resource.
--
-- /See:/ 'router' smart constructor.
data Router = Router'
    { _rouBGPPeers          :: !(Maybe [RouterBGPPeer])
    , _rouBGP               :: !(Maybe RouterBGP)
    , _rouKind              :: !Text
    , _rouNetwork           :: !(Maybe Text)
    , _rouInterfaces        :: !(Maybe [RouterInterface])
    , _rouSelfLink          :: !(Maybe Text)
    , _rouName              :: !(Maybe Text)
    , _rouCreationTimestamp :: !(Maybe Text)
    , _rouId                :: !(Maybe (Textual Word64))
    , _rouRegion            :: !(Maybe Text)
    , _rouDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Router' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rouBGPPeers'
--
-- * 'rouBGP'
--
-- * 'rouKind'
--
-- * 'rouNetwork'
--
-- * 'rouInterfaces'
--
-- * 'rouSelfLink'
--
-- * 'rouName'
--
-- * 'rouCreationTimestamp'
--
-- * 'rouId'
--
-- * 'rouRegion'
--
-- * 'rouDescription'
router
    :: Router
router =
    Router'
    { _rouBGPPeers = Nothing
    , _rouBGP = Nothing
    , _rouKind = "compute#router"
    , _rouNetwork = Nothing
    , _rouInterfaces = Nothing
    , _rouSelfLink = Nothing
    , _rouName = Nothing
    , _rouCreationTimestamp = Nothing
    , _rouId = Nothing
    , _rouRegion = Nothing
    , _rouDescription = Nothing
    }

-- | BGP information that needs to be configured into the routing stack to
-- establish the BGP peering. It must specify peer ASN and either interface
-- name, IP, or peer IP. Please refer to RFC4273.
rouBGPPeers :: Lens' Router [RouterBGPPeer]
rouBGPPeers
  = lens _rouBGPPeers (\ s a -> s{_rouBGPPeers = a}) .
      _Default
      . _Coerce

-- | BGP information specific to this router.
rouBGP :: Lens' Router (Maybe RouterBGP)
rouBGP = lens _rouBGP (\ s a -> s{_rouBGP = a})

-- | [Output Only] Type of resource. Always compute#router for routers.
rouKind :: Lens' Router Text
rouKind = lens _rouKind (\ s a -> s{_rouKind = a})

-- | URI of the network to which this router belongs.
rouNetwork :: Lens' Router (Maybe Text)
rouNetwork
  = lens _rouNetwork (\ s a -> s{_rouNetwork = a})

-- | Router interfaces. Each interface requires either one linked resource
-- (e.g. linkedVpnTunnel), or IP address and IP address range (e.g.
-- ipRange), or both.
rouInterfaces :: Lens' Router [RouterInterface]
rouInterfaces
  = lens _rouInterfaces
      (\ s a -> s{_rouInterfaces = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
rouSelfLink :: Lens' Router (Maybe Text)
rouSelfLink
  = lens _rouSelfLink (\ s a -> s{_rouSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
rouName :: Lens' Router (Maybe Text)
rouName = lens _rouName (\ s a -> s{_rouName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rouCreationTimestamp :: Lens' Router (Maybe Text)
rouCreationTimestamp
  = lens _rouCreationTimestamp
      (\ s a -> s{_rouCreationTimestamp = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
rouId :: Lens' Router (Maybe Word64)
rouId
  = lens _rouId (\ s a -> s{_rouId = a}) .
      mapping _Coerce

-- | [Output Only] URI of the region where the router resides.
rouRegion :: Lens' Router (Maybe Text)
rouRegion
  = lens _rouRegion (\ s a -> s{_rouRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
rouDescription :: Lens' Router (Maybe Text)
rouDescription
  = lens _rouDescription
      (\ s a -> s{_rouDescription = a})

instance FromJSON Router where
        parseJSON
          = withObject "Router"
              (\ o ->
                 Router' <$>
                   (o .:? "bgpPeers" .!= mempty) <*> (o .:? "bgp") <*>
                     (o .:? "kind" .!= "compute#router")
                     <*> (o .:? "network")
                     <*> (o .:? "interfaces" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description"))

instance ToJSON Router where
        toJSON Router'{..}
          = object
              (catMaybes
                 [("bgpPeers" .=) <$> _rouBGPPeers,
                  ("bgp" .=) <$> _rouBGP, Just ("kind" .= _rouKind),
                  ("network" .=) <$> _rouNetwork,
                  ("interfaces" .=) <$> _rouInterfaces,
                  ("selfLink" .=) <$> _rouSelfLink,
                  ("name" .=) <$> _rouName,
                  ("creationTimestamp" .=) <$> _rouCreationTimestamp,
                  ("id" .=) <$> _rouId, ("region" .=) <$> _rouRegion,
                  ("description" .=) <$> _rouDescription])

--
-- /See:/ 'routersScopedListWarningDataItem' smart constructor.
data RoutersScopedListWarningDataItem = RoutersScopedListWarningDataItem'
    { _rslwdiValue :: !(Maybe Text)
    , _rslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rslwdiValue'
--
-- * 'rslwdiKey'
routersScopedListWarningDataItem
    :: RoutersScopedListWarningDataItem
routersScopedListWarningDataItem =
    RoutersScopedListWarningDataItem'
    { _rslwdiValue = Nothing
    , _rslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
rslwdiValue :: Lens' RoutersScopedListWarningDataItem (Maybe Text)
rslwdiValue
  = lens _rslwdiValue (\ s a -> s{_rslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
rslwdiKey :: Lens' RoutersScopedListWarningDataItem (Maybe Text)
rslwdiKey
  = lens _rslwdiKey (\ s a -> s{_rslwdiKey = a})

instance FromJSON RoutersScopedListWarningDataItem
         where
        parseJSON
          = withObject "RoutersScopedListWarningDataItem"
              (\ o ->
                 RoutersScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON RoutersScopedListWarningDataItem
         where
        toJSON RoutersScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rslwdiValue,
                  ("key" .=) <$> _rslwdiKey])

-- | Contains a list of TargetVpnGateway resources.
--
-- /See:/ 'targetVPNGatewayList' smart constructor.
data TargetVPNGatewayList = TargetVPNGatewayList'
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
    TargetVPNGatewayList'
    { _tvglNextPageToken = Nothing
    , _tvglKind = "compute#targetVpnGatewayList"
    , _tvglItems = Nothing
    , _tvglSelfLink = Nothing
    , _tvglId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] Server-defined URL for this resource.
tvglSelfLink :: Lens' TargetVPNGatewayList (Maybe Text)
tvglSelfLink
  = lens _tvglSelfLink (\ s a -> s{_tvglSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tvglId :: Lens' TargetVPNGatewayList (Maybe Text)
tvglId = lens _tvglId (\ s a -> s{_tvglId = a})

instance FromJSON TargetVPNGatewayList where
        parseJSON
          = withObject "TargetVPNGatewayList"
              (\ o ->
                 TargetVPNGatewayList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetVpnGatewayList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetVPNGatewayList where
        toJSON TargetVPNGatewayList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tvglNextPageToken,
                  Just ("kind" .= _tvglKind),
                  ("items" .=) <$> _tvglItems,
                  ("selfLink" .=) <$> _tvglSelfLink,
                  ("id" .=) <$> _tvglId])

-- | Contains a list of SslCertificate resources.
--
-- /See:/ 'sslCertificateList' smart constructor.
data SSLCertificateList = SSLCertificateList'
    { _sclNextPageToken :: !(Maybe Text)
    , _sclKind          :: !Text
    , _sclItems         :: !(Maybe [SSLCertificate])
    , _sclSelfLink      :: !(Maybe Text)
    , _sclId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclNextPageToken'
--
-- * 'sclKind'
--
-- * 'sclItems'
--
-- * 'sclSelfLink'
--
-- * 'sclId'
sslCertificateList
    :: SSLCertificateList
sslCertificateList =
    SSLCertificateList'
    { _sclNextPageToken = Nothing
    , _sclKind = "compute#sslCertificateList"
    , _sclItems = Nothing
    , _sclSelfLink = Nothing
    , _sclId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
sclNextPageToken :: Lens' SSLCertificateList (Maybe Text)
sclNextPageToken
  = lens _sclNextPageToken
      (\ s a -> s{_sclNextPageToken = a})

-- | Type of resource.
sclKind :: Lens' SSLCertificateList Text
sclKind = lens _sclKind (\ s a -> s{_sclKind = a})

-- | A list of SslCertificate resources.
sclItems :: Lens' SSLCertificateList [SSLCertificate]
sclItems
  = lens _sclItems (\ s a -> s{_sclItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
sclSelfLink :: Lens' SSLCertificateList (Maybe Text)
sclSelfLink
  = lens _sclSelfLink (\ s a -> s{_sclSelfLink = a})

-- | [Output Only] Unique identifier for the resource. Defined by the server.
sclId :: Lens' SSLCertificateList (Maybe Text)
sclId = lens _sclId (\ s a -> s{_sclId = a})

instance FromJSON SSLCertificateList where
        parseJSON
          = withObject "SSLCertificateList"
              (\ o ->
                 SSLCertificateList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#sslCertificateList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON SSLCertificateList where
        toJSON SSLCertificateList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sclNextPageToken,
                  Just ("kind" .= _sclKind),
                  ("items" .=) <$> _sclItems,
                  ("selfLink" .=) <$> _sclSelfLink,
                  ("id" .=) <$> _sclId])

--
-- /See:/ 'firewallAllowedItem' smart constructor.
data FirewallAllowedItem = FirewallAllowedItem'
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
    FirewallAllowedItem'
    { _faiIPProtocol = Nothing
    , _faiPorts = Nothing
    }

-- | The IP protocol to which this rule applies. The protocol type is
-- required when creating a firewall rule. This value can either be one of
-- the following well known protocol strings (tcp, udp, icmp, esp, ah,
-- sctp), or the IP protocol number.
faiIPProtocol :: Lens' FirewallAllowedItem (Maybe Text)
faiIPProtocol
  = lens _faiIPProtocol
      (\ s a -> s{_faiIPProtocol = a})

-- | An optional list of ports to which this rule applies. This field is only
-- applicable for UDP or TCP protocol. Each entry must be either an integer
-- or a range. If not specified, this rule applies to connections through
-- any port. Example inputs include: [\"22\"], [\"80\",\"443\"], and
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
                 FirewallAllowedItem' <$>
                   (o .:? "IPProtocol") <*> (o .:? "ports" .!= mempty))

instance ToJSON FirewallAllowedItem where
        toJSON FirewallAllowedItem'{..}
          = object
              (catMaybes
                 [("IPProtocol" .=) <$> _faiIPProtocol,
                  ("ports" .=) <$> _faiPorts])

-- | Contains a list of BackendServicesScopedList.
--
-- /See:/ 'backendServiceAggregatedList' smart constructor.
data BackendServiceAggregatedList = BackendServiceAggregatedList'
    { _bsalNextPageToken :: !(Maybe Text)
    , _bsalKind          :: !Text
    , _bsalItems         :: !(Maybe BackendServiceAggregatedListItems)
    , _bsalSelfLink      :: !(Maybe Text)
    , _bsalId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServiceAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsalNextPageToken'
--
-- * 'bsalKind'
--
-- * 'bsalItems'
--
-- * 'bsalSelfLink'
--
-- * 'bsalId'
backendServiceAggregatedList
    :: BackendServiceAggregatedList
backendServiceAggregatedList =
    BackendServiceAggregatedList'
    { _bsalNextPageToken = Nothing
    , _bsalKind = "compute#backendServiceAggregatedList"
    , _bsalItems = Nothing
    , _bsalSelfLink = Nothing
    , _bsalId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
bsalNextPageToken :: Lens' BackendServiceAggregatedList (Maybe Text)
bsalNextPageToken
  = lens _bsalNextPageToken
      (\ s a -> s{_bsalNextPageToken = a})

-- | Type of resource.
bsalKind :: Lens' BackendServiceAggregatedList Text
bsalKind = lens _bsalKind (\ s a -> s{_bsalKind = a})

-- | A map of scoped BackendService lists.
bsalItems :: Lens' BackendServiceAggregatedList (Maybe BackendServiceAggregatedListItems)
bsalItems
  = lens _bsalItems (\ s a -> s{_bsalItems = a})

-- | [Output Only] Server-defined URL for this resource.
bsalSelfLink :: Lens' BackendServiceAggregatedList (Maybe Text)
bsalSelfLink
  = lens _bsalSelfLink (\ s a -> s{_bsalSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
bsalId :: Lens' BackendServiceAggregatedList (Maybe Text)
bsalId = lens _bsalId (\ s a -> s{_bsalId = a})

instance FromJSON BackendServiceAggregatedList where
        parseJSON
          = withObject "BackendServiceAggregatedList"
              (\ o ->
                 BackendServiceAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#backendServiceAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON BackendServiceAggregatedList where
        toJSON BackendServiceAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _bsalNextPageToken,
                  Just ("kind" .= _bsalKind),
                  ("items" .=) <$> _bsalItems,
                  ("selfLink" .=) <$> _bsalSelfLink,
                  ("id" .=) <$> _bsalId])

-- | Represents a Network resource. Read Networks and Firewalls for more
-- information.
--
-- /See:/ 'network' smart constructor.
data Network = Network'
    { _nAutoCreateSubnetworks :: !(Maybe Bool)
    , _nKind                  :: !Text
    , _nSubnetworks           :: !(Maybe [Text])
    , _nIPv4Range             :: !(Maybe Text)
    , _nSelfLink              :: !(Maybe Text)
    , _nName                  :: !(Maybe Text)
    , _nCreationTimestamp     :: !(Maybe Text)
    , _nId                    :: !(Maybe (Textual Word64))
    , _nGatewayIPv4           :: !(Maybe Text)
    , _nDescription           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nAutoCreateSubnetworks'
--
-- * 'nKind'
--
-- * 'nSubnetworks'
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
    Network'
    { _nAutoCreateSubnetworks = Nothing
    , _nKind = "compute#network"
    , _nSubnetworks = Nothing
    , _nIPv4Range = Nothing
    , _nSelfLink = Nothing
    , _nName = Nothing
    , _nCreationTimestamp = Nothing
    , _nId = Nothing
    , _nGatewayIPv4 = Nothing
    , _nDescription = Nothing
    }

-- | When set to true, the network is created in \"auto subnet mode\". When
-- set to false, the network is in \"custom subnet mode\". In \"auto subnet
-- mode\", a newly created network is assigned the default CIDR of
-- 10.128.0.0\/9 and it automatically creates one subnetwork per region.
nAutoCreateSubnetworks :: Lens' Network (Maybe Bool)
nAutoCreateSubnetworks
  = lens _nAutoCreateSubnetworks
      (\ s a -> s{_nAutoCreateSubnetworks = a})

-- | [Output Only] Type of the resource. Always compute#network for networks.
nKind :: Lens' Network Text
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | [Output Only] Server-defined fully-qualified URLs for all subnetworks in
-- this network.
nSubnetworks :: Lens' Network [Text]
nSubnetworks
  = lens _nSubnetworks (\ s a -> s{_nSubnetworks = a})
      . _Default
      . _Coerce

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
nId :: Lens' Network (Maybe Word64)
nId
  = lens _nId (\ s a -> s{_nId = a}) . mapping _Coerce

-- | A gateway address for default routing to other networks. This value is
-- read only and is selected by the Google Compute Engine, typically as the
-- first usable address in the IPv4Range.
nGatewayIPv4 :: Lens' Network (Maybe Text)
nGatewayIPv4
  = lens _nGatewayIPv4 (\ s a -> s{_nGatewayIPv4 = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
nDescription :: Lens' Network (Maybe Text)
nDescription
  = lens _nDescription (\ s a -> s{_nDescription = a})

instance FromJSON Network where
        parseJSON
          = withObject "Network"
              (\ o ->
                 Network' <$>
                   (o .:? "autoCreateSubnetworks") <*>
                     (o .:? "kind" .!= "compute#network")
                     <*> (o .:? "subnetworks" .!= mempty)
                     <*> (o .:? "IPv4Range")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "gatewayIPv4")
                     <*> (o .:? "description"))

instance ToJSON Network where
        toJSON Network'{..}
          = object
              (catMaybes
                 [("autoCreateSubnetworks" .=) <$>
                    _nAutoCreateSubnetworks,
                  Just ("kind" .= _nKind),
                  ("subnetworks" .=) <$> _nSubnetworks,
                  ("IPv4Range" .=) <$> _nIPv4Range,
                  ("selfLink" .=) <$> _nSelfLink,
                  ("name" .=) <$> _nName,
                  ("creationTimestamp" .=) <$> _nCreationTimestamp,
                  ("id" .=) <$> _nId,
                  ("gatewayIPv4" .=) <$> _nGatewayIPv4,
                  ("description" .=) <$> _nDescription])

-- | Informational warning which replaces the list of routers when the list
-- is empty.
--
-- /See:/ 'routersScopedListWarning' smart constructor.
data RoutersScopedListWarning = RoutersScopedListWarning'
    { _rslwData    :: !(Maybe [RoutersScopedListWarningDataItem])
    , _rslwCode    :: !(Maybe RoutersScopedListWarningCode)
    , _rslwMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersScopedListWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rslwData'
--
-- * 'rslwCode'
--
-- * 'rslwMessage'
routersScopedListWarning
    :: RoutersScopedListWarning
routersScopedListWarning =
    RoutersScopedListWarning'
    { _rslwData = Nothing
    , _rslwCode = Nothing
    , _rslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
rslwData :: Lens' RoutersScopedListWarning [RoutersScopedListWarningDataItem]
rslwData
  = lens _rslwData (\ s a -> s{_rslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
rslwCode :: Lens' RoutersScopedListWarning (Maybe RoutersScopedListWarningCode)
rslwCode = lens _rslwCode (\ s a -> s{_rslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
rslwMessage :: Lens' RoutersScopedListWarning (Maybe Text)
rslwMessage
  = lens _rslwMessage (\ s a -> s{_rslwMessage = a})

instance FromJSON RoutersScopedListWarning where
        parseJSON
          = withObject "RoutersScopedListWarning"
              (\ o ->
                 RoutersScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON RoutersScopedListWarning where
        toJSON RoutersScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _rslwData,
                  ("code" .=) <$> _rslwCode,
                  ("message" .=) <$> _rslwMessage])

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'addressesScopedListWarning' smart constructor.
data AddressesScopedListWarning = AddressesScopedListWarning'
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
    AddressesScopedListWarning'
    { _aData = Nothing
    , _aCode = Nothing
    , _aMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
aData :: Lens' AddressesScopedListWarning [AddressesScopedListWarningDataItem]
aData
  = lens _aData (\ s a -> s{_aData = a}) . _Default .
      _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
aCode :: Lens' AddressesScopedListWarning (Maybe AddressesScopedListWarningCode)
aCode = lens _aCode (\ s a -> s{_aCode = a})

-- | [Output Only] A human-readable description of the warning code.
aMessage :: Lens' AddressesScopedListWarning (Maybe Text)
aMessage = lens _aMessage (\ s a -> s{_aMessage = a})

instance FromJSON AddressesScopedListWarning where
        parseJSON
          = withObject "AddressesScopedListWarning"
              (\ o ->
                 AddressesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON AddressesScopedListWarning where
        toJSON AddressesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _aData, ("code" .=) <$> _aCode,
                  ("message" .=) <$> _aMessage])

-- | The parameters of the raw disk image.
--
-- /See:/ 'imageRawDisk' smart constructor.
data ImageRawDisk = ImageRawDisk'
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
    ImageRawDisk'
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
                 ImageRawDisk' <$>
                   (o .:? "containerType") <*> (o .:? "source") <*>
                     (o .:? "sha1Checksum"))

instance ToJSON ImageRawDisk where
        toJSON ImageRawDisk'{..}
          = object
              (catMaybes
                 [("containerType" .=) <$> _irdContainerType,
                  ("source" .=) <$> _irdSource,
                  ("sha1Checksum" .=) <$> _irdSha1Checksum])

--
-- /See:/ 'instanceAggregatedList' smart constructor.
data InstanceAggregatedList = InstanceAggregatedList'
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
    InstanceAggregatedList'
    { _ialNextPageToken = Nothing
    , _ialKind = "compute#instanceAggregatedList"
    , _ialItems = Nothing
    , _ialSelfLink = Nothing
    , _ialId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] Server-defined URL for this resource.
ialSelfLink :: Lens' InstanceAggregatedList (Maybe Text)
ialSelfLink
  = lens _ialSelfLink (\ s a -> s{_ialSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
ialId :: Lens' InstanceAggregatedList (Maybe Text)
ialId = lens _ialId (\ s a -> s{_ialId = a})

instance FromJSON InstanceAggregatedList where
        parseJSON
          = withObject "InstanceAggregatedList"
              (\ o ->
                 InstanceAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceAggregatedList where
        toJSON InstanceAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ialNextPageToken,
                  Just ("kind" .= _ialKind),
                  ("items" .=) <$> _ialItems,
                  ("selfLink" .=) <$> _ialSelfLink,
                  ("id" .=) <$> _ialId])

--
-- /See:/ 'sslHealthCheck' smart constructor.
data SSLHealthCheck = SSLHealthCheck'
    { _shcResponse    :: !(Maybe Text)
    , _shcProxyHeader :: !(Maybe SSLHealthCheckProxyHeader)
    , _shcPortName    :: !(Maybe Text)
    , _shcPort        :: !(Maybe (Textual Int32))
    , _shcRequest     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shcResponse'
--
-- * 'shcProxyHeader'
--
-- * 'shcPortName'
--
-- * 'shcPort'
--
-- * 'shcRequest'
sslHealthCheck
    :: SSLHealthCheck
sslHealthCheck =
    SSLHealthCheck'
    { _shcResponse = Nothing
    , _shcProxyHeader = Nothing
    , _shcPortName = Nothing
    , _shcPort = Nothing
    , _shcRequest = Nothing
    }

-- | The bytes to match against the beginning of the response data. If left
-- empty (the default value), any response will indicate health. The
-- response data can only be ASCII.
shcResponse :: Lens' SSLHealthCheck (Maybe Text)
shcResponse
  = lens _shcResponse (\ s a -> s{_shcResponse = a})

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
shcProxyHeader :: Lens' SSLHealthCheck (Maybe SSLHealthCheckProxyHeader)
shcProxyHeader
  = lens _shcProxyHeader
      (\ s a -> s{_shcProxyHeader = a})

-- | Port name as defined in InstanceGroup#NamedPort#name. If both port and
-- port_name are defined, port takes precedence.
shcPortName :: Lens' SSLHealthCheck (Maybe Text)
shcPortName
  = lens _shcPortName (\ s a -> s{_shcPortName = a})

-- | The TCP port number for the health check request. The default value is
-- 443.
shcPort :: Lens' SSLHealthCheck (Maybe Int32)
shcPort
  = lens _shcPort (\ s a -> s{_shcPort = a}) .
      mapping _Coerce

-- | The application data to send once the SSL connection has been
-- established (default value is empty). If both request and response are
-- empty, the connection establishment alone will indicate health. The
-- request data can only be ASCII.
shcRequest :: Lens' SSLHealthCheck (Maybe Text)
shcRequest
  = lens _shcRequest (\ s a -> s{_shcRequest = a})

instance FromJSON SSLHealthCheck where
        parseJSON
          = withObject "SSLHealthCheck"
              (\ o ->
                 SSLHealthCheck' <$>
                   (o .:? "response") <*> (o .:? "proxyHeader") <*>
                     (o .:? "portName")
                     <*> (o .:? "port")
                     <*> (o .:? "request"))

instance ToJSON SSLHealthCheck where
        toJSON SSLHealthCheck'{..}
          = object
              (catMaybes
                 [("response" .=) <$> _shcResponse,
                  ("proxyHeader" .=) <$> _shcProxyHeader,
                  ("portName" .=) <$> _shcPortName,
                  ("port" .=) <$> _shcPort,
                  ("request" .=) <$> _shcRequest])

-- | A reserved address resource.
--
-- /See:/ 'address' smart constructor.
data Address = Address'
    { _aStatus            :: !(Maybe AddressStatus)
    , _aUsers             :: !(Maybe [Text])
    , _aKind              :: !Text
    , _aAddress           :: !(Maybe Text)
    , _aSelfLink          :: !(Maybe Text)
    , _aName              :: !(Maybe Text)
    , _aCreationTimestamp :: !(Maybe Text)
    , _aId                :: !(Maybe (Textual Word64))
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
    Address'
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

-- | The static external IP address represented by this resource. Only IPv4
-- is supported.
aAddress :: Lens' Address (Maybe Text)
aAddress = lens _aAddress (\ s a -> s{_aAddress = a})

-- | [Output Only] Server-defined URL for the resource.
aSelfLink :: Lens' Address (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
aId :: Lens' Address (Maybe Word64)
aId
  = lens _aId (\ s a -> s{_aId = a}) . mapping _Coerce

-- | [Output Only] URL of the region where the regional address resides. This
-- field is not applicable to global addresses.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
aDescription :: Lens' Address (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address' <$>
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
        toJSON Address'{..}
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
data Zone = Zone'
    { _zStatus            :: !(Maybe ZoneStatus)
    , _zKind              :: !Text
    , _zSelfLink          :: !(Maybe Text)
    , _zName              :: !(Maybe Text)
    , _zCreationTimestamp :: !(Maybe Text)
    , _zId                :: !(Maybe (Textual Word64))
    , _zRegion            :: !(Maybe Text)
    , _zDescription       :: !(Maybe Text)
    , _zDeprecated        :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Zone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zStatus'
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
    Zone'
    { _zStatus = Nothing
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

-- | [Output Only] Type of the resource. Always compute#zone for zones.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
zId :: Lens' Zone (Maybe Word64)
zId
  = lens _zId (\ s a -> s{_zId = a}) . mapping _Coerce

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
                 Zone' <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "compute#zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "deprecated"))

instance ToJSON Zone where
        toJSON Zone'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _zStatus, Just ("kind" .= _zKind),
                  ("selfLink" .=) <$> _zSelfLink,
                  ("name" .=) <$> _zName,
                  ("creationTimestamp" .=) <$> _zCreationTimestamp,
                  ("id" .=) <$> _zId, ("region" .=) <$> _zRegion,
                  ("description" .=) <$> _zDescription,
                  ("deprecated" .=) <$> _zDeprecated])

--
-- /See:/ 'routerBGP' smart constructor.
newtype RouterBGP = RouterBGP'
    { _rbASN :: Maybe (Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterBGP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbASN'
routerBGP
    :: RouterBGP
routerBGP =
    RouterBGP'
    { _rbASN = Nothing
    }

-- | Local BGP Autonomous System Number (ASN). Must be an RFC6996 private
-- ASN, either 16-bit or 32-bit. The value will be fixed for this router
-- resource. All VPN tunnels that link to this router will have the same
-- local ASN.
rbASN :: Lens' RouterBGP (Maybe Word32)
rbASN
  = lens _rbASN (\ s a -> s{_rbASN = a}) .
      mapping _Coerce

instance FromJSON RouterBGP where
        parseJSON
          = withObject "RouterBGP"
              (\ o -> RouterBGP' <$> (o .:? "asn"))

instance ToJSON RouterBGP where
        toJSON RouterBGP'{..}
          = object (catMaybes [("asn" .=) <$> _rbASN])

--
-- /See:/ 'backendServicesScopedList' smart constructor.
data BackendServicesScopedList = BackendServicesScopedList'
    { _bsslWarning         :: !(Maybe BackendServicesScopedListWarning)
    , _bsslBackendServices :: !(Maybe [BackendService])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesScopedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsslWarning'
--
-- * 'bsslBackendServices'
backendServicesScopedList
    :: BackendServicesScopedList
backendServicesScopedList =
    BackendServicesScopedList'
    { _bsslWarning = Nothing
    , _bsslBackendServices = Nothing
    }

-- | Informational warning which replaces the list of backend services when
-- the list is empty.
bsslWarning :: Lens' BackendServicesScopedList (Maybe BackendServicesScopedListWarning)
bsslWarning
  = lens _bsslWarning (\ s a -> s{_bsslWarning = a})

-- | List of BackendServices contained in this scope.
bsslBackendServices :: Lens' BackendServicesScopedList [BackendService]
bsslBackendServices
  = lens _bsslBackendServices
      (\ s a -> s{_bsslBackendServices = a})
      . _Default
      . _Coerce

instance FromJSON BackendServicesScopedList where
        parseJSON
          = withObject "BackendServicesScopedList"
              (\ o ->
                 BackendServicesScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "backendServices" .!= mempty))

instance ToJSON BackendServicesScopedList where
        toJSON BackendServicesScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _bsslWarning,
                  ("backendServices" .=) <$> _bsslBackendServices])

--
-- /See:/ 'instanceGroupManagersRecreateInstancesRequest' smart constructor.
newtype InstanceGroupManagersRecreateInstancesRequest = InstanceGroupManagersRecreateInstancesRequest'
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
    InstanceGroupManagersRecreateInstancesRequest'
    { _igmrirInstances = Nothing
    }

-- | The URL for one or more instances to recreate.
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
                 InstanceGroupManagersRecreateInstancesRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersRecreateInstancesRequest where
        toJSON
          InstanceGroupManagersRecreateInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _igmrirInstances])

--
-- /See:/ 'targetSSLProxiesSetSSLCertificatesRequest' smart constructor.
newtype TargetSSLProxiesSetSSLCertificatesRequest = TargetSSLProxiesSetSSLCertificatesRequest'
    { _tspsscrSSLCertificates :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetSSLCertificatesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsscrSSLCertificates'
targetSSLProxiesSetSSLCertificatesRequest
    :: TargetSSLProxiesSetSSLCertificatesRequest
targetSSLProxiesSetSSLCertificatesRequest =
    TargetSSLProxiesSetSSLCertificatesRequest'
    { _tspsscrSSLCertificates = Nothing
    }

-- | New set of URLs to SslCertificate resources to associate with this
-- TargetSslProxy. Currently exactly one ssl certificate must be specified.
tspsscrSSLCertificates :: Lens' TargetSSLProxiesSetSSLCertificatesRequest [Text]
tspsscrSSLCertificates
  = lens _tspsscrSSLCertificates
      (\ s a -> s{_tspsscrSSLCertificates = a})
      . _Default
      . _Coerce

instance FromJSON
         TargetSSLProxiesSetSSLCertificatesRequest where
        parseJSON
          = withObject
              "TargetSSLProxiesSetSSLCertificatesRequest"
              (\ o ->
                 TargetSSLProxiesSetSSLCertificatesRequest' <$>
                   (o .:? "sslCertificates" .!= mempty))

instance ToJSON
         TargetSSLProxiesSetSSLCertificatesRequest where
        toJSON TargetSSLProxiesSetSSLCertificatesRequest'{..}
          = object
              (catMaybes
                 [("sslCertificates" .=) <$> _tspsscrSSLCertificates])

--
-- /See:/ 'instancesScopedList' smart constructor.
data InstancesScopedList = InstancesScopedList'
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
    InstancesScopedList'
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
                 InstancesScopedList' <$>
                   (o .:? "warning") <*> (o .:? "instances" .!= mempty))

instance ToJSON InstancesScopedList where
        toJSON InstancesScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _islWarning,
                  ("instances" .=) <$> _islInstances])

-- | A full or valid partial URL to a health check. For example, the
-- following are valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/project-id\/global\/httpHealthChecks\/health-check
-- - projects\/project-id\/global\/httpHealthChecks\/health-check -
-- global\/httpHealthChecks\/health-check
--
-- /See:/ 'healthCheckReference' smart constructor.
newtype HealthCheckReference = HealthCheckReference'
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
    HealthCheckReference'
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
                 HealthCheckReference' <$> (o .:? "healthCheck"))

instance ToJSON HealthCheckReference where
        toJSON HealthCheckReference'{..}
          = object
              (catMaybes [("healthCheck" .=) <$> _hcrHealthCheck])

-- | A map of scoped target instance lists.
--
-- /See:/ 'targetInstanceAggregatedListItems' smart constructor.
newtype TargetInstanceAggregatedListItems = TargetInstanceAggregatedListItems'
    { _tialiAddtional :: HashMap Text TargetInstancesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstanceAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialiAddtional'
targetInstanceAggregatedListItems
    :: HashMap Text TargetInstancesScopedList -- ^ 'tialiAddtional'
    -> TargetInstanceAggregatedListItems
targetInstanceAggregatedListItems pTialiAddtional_ =
    TargetInstanceAggregatedListItems'
    { _tialiAddtional = _Coerce # pTialiAddtional_
    }

-- | Name of the scope containing this set of target instances.
tialiAddtional :: Lens' TargetInstanceAggregatedListItems (HashMap Text TargetInstancesScopedList)
tialiAddtional
  = lens _tialiAddtional
      (\ s a -> s{_tialiAddtional = a})
      . _Coerce

instance FromJSON TargetInstanceAggregatedListItems
         where
        parseJSON
          = withObject "TargetInstanceAggregatedListItems"
              (\ o ->
                 TargetInstanceAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON TargetInstanceAggregatedListItems
         where
        toJSON = toJSON . _tialiAddtional

--
-- /See:/ 'instanceGroupAggregatedList' smart constructor.
data InstanceGroupAggregatedList = InstanceGroupAggregatedList'
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
    InstanceGroupAggregatedList'
    { _igalNextPageToken = Nothing
    , _igalKind = "compute#instanceGroupAggregatedList"
    , _igalItems = Nothing
    , _igalSelfLink = Nothing
    , _igalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The URL for this resource type. The server generates this
-- URL.
igalSelfLink :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalSelfLink
  = lens _igalSelfLink (\ s a -> s{_igalSelfLink = a})

-- | [Output Only] A unique identifier for this aggregated list of instance
-- groups. The server generates this identifier.
igalId :: Lens' InstanceGroupAggregatedList (Maybe Text)
igalId = lens _igalId (\ s a -> s{_igalId = a})

instance FromJSON InstanceGroupAggregatedList where
        parseJSON
          = withObject "InstanceGroupAggregatedList"
              (\ o ->
                 InstanceGroupAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupAggregatedList where
        toJSON InstanceGroupAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igalNextPageToken,
                  Just ("kind" .= _igalKind),
                  ("items" .=) <$> _igalItems,
                  ("selfLink" .=) <$> _igalSelfLink,
                  ("id" .=) <$> _igalId])

-- | Represents a Route resource. A route specifies how certain packets
-- should be handled by the network. Routes are associated with instances
-- by tags and the set of routes for a particular instance is called its
-- routing table. For each packet leaving a instance, the system searches
-- that instance\'s routing table for a single best matching route. Routes
-- match packets by destination IP address, preferring smaller or more
-- specific ranges over larger ones. If there is a tie, the system selects
-- the route with the smallest priority value. If there is still a tie, it
-- uses the layer three and four packet headers to select just one of the
-- remaining matching routes. The packet is then forwarded as specified by
-- the nextHop field of the winning route - either to another instance
-- destination, a instance gateway or a Google Compute Engine-operated
-- gateway. Packets that do not match any route in the sending instance\'s
-- routing table are dropped.
--
-- /See:/ 'route' smart constructor.
data Route = Route'
    { _rrPriority          :: !(Maybe (Textual Word32))
    , _rrKind              :: !Text
    , _rrNextHopGateway    :: !(Maybe Text)
    , _rrNextHopNetwork    :: !(Maybe Text)
    , _rrNetwork           :: !(Maybe Text)
    , _rrWarnings          :: !(Maybe [RouteWarningsItem])
    , _rrNextHopIP         :: !(Maybe Text)
    , _rrDestRange         :: !(Maybe Text)
    , _rrSelfLink          :: !(Maybe Text)
    , _rrName              :: !(Maybe Text)
    , _rrCreationTimestamp :: !(Maybe Text)
    , _rrId                :: !(Maybe (Textual Word64))
    , _rrNextHopVPNTunnel  :: !(Maybe Text)
    , _rrDescription       :: !(Maybe Text)
    , _rrTags              :: !(Maybe [Text])
    , _rrNextHopInstance   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrPriority'
--
-- * 'rrKind'
--
-- * 'rrNextHopGateway'
--
-- * 'rrNextHopNetwork'
--
-- * 'rrNetwork'
--
-- * 'rrWarnings'
--
-- * 'rrNextHopIP'
--
-- * 'rrDestRange'
--
-- * 'rrSelfLink'
--
-- * 'rrName'
--
-- * 'rrCreationTimestamp'
--
-- * 'rrId'
--
-- * 'rrNextHopVPNTunnel'
--
-- * 'rrDescription'
--
-- * 'rrTags'
--
-- * 'rrNextHopInstance'
route
    :: Route
route =
    Route'
    { _rrPriority = Nothing
    , _rrKind = "compute#route"
    , _rrNextHopGateway = Nothing
    , _rrNextHopNetwork = Nothing
    , _rrNetwork = Nothing
    , _rrWarnings = Nothing
    , _rrNextHopIP = Nothing
    , _rrDestRange = Nothing
    , _rrSelfLink = Nothing
    , _rrName = Nothing
    , _rrCreationTimestamp = Nothing
    , _rrId = Nothing
    , _rrNextHopVPNTunnel = Nothing
    , _rrDescription = Nothing
    , _rrTags = Nothing
    , _rrNextHopInstance = Nothing
    }

-- | The priority of this route. Priority is used to break ties in cases
-- where there is more than one matching route of equal prefix length. In
-- the case of two routes with equal prefix length, the one with the
-- lowest-numbered priority value wins. Default value is 1000. Valid range
-- is 0 through 65535.
rrPriority :: Lens' Route (Maybe Word32)
rrPriority
  = lens _rrPriority (\ s a -> s{_rrPriority = a}) .
      mapping _Coerce

-- | [Output Only] Type of this resource. Always compute#routes for Route
-- resources.
rrKind :: Lens' Route Text
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | The URL to a gateway that should handle matching packets. You can only
-- specify the internet gateway using a full or partial valid URL:
-- projects\/\/global\/gateways\/default-internet-gateway
rrNextHopGateway :: Lens' Route (Maybe Text)
rrNextHopGateway
  = lens _rrNextHopGateway
      (\ s a -> s{_rrNextHopGateway = a})

-- | The URL of the local network if it should handle matching packets.
rrNextHopNetwork :: Lens' Route (Maybe Text)
rrNextHopNetwork
  = lens _rrNextHopNetwork
      (\ s a -> s{_rrNextHopNetwork = a})

-- | Fully-qualified URL of the network that this route applies to.
rrNetwork :: Lens' Route (Maybe Text)
rrNetwork
  = lens _rrNetwork (\ s a -> s{_rrNetwork = a})

-- | [Output Only] If potential misconfigurations are detected for this
-- route, this field will be populated with warning messages.
rrWarnings :: Lens' Route [RouteWarningsItem]
rrWarnings
  = lens _rrWarnings (\ s a -> s{_rrWarnings = a}) .
      _Default
      . _Coerce

-- | The network IP address of an instance that should handle matching
-- packets. Only IPv4 is supported.
rrNextHopIP :: Lens' Route (Maybe Text)
rrNextHopIP
  = lens _rrNextHopIP (\ s a -> s{_rrNextHopIP = a})

-- | The destination range of outgoing packets that this route applies to.
-- Only IPv4 is supported.
rrDestRange :: Lens' Route (Maybe Text)
rrDestRange
  = lens _rrDestRange (\ s a -> s{_rrDestRange = a})

-- | [Output Only] Server-defined fully-qualified URL for this resource.
rrSelfLink :: Lens' Route (Maybe Text)
rrSelfLink
  = lens _rrSelfLink (\ s a -> s{_rrSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
rrName :: Lens' Route (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
rrCreationTimestamp :: Lens' Route (Maybe Text)
rrCreationTimestamp
  = lens _rrCreationTimestamp
      (\ s a -> s{_rrCreationTimestamp = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
rrId :: Lens' Route (Maybe Word64)
rrId
  = lens _rrId (\ s a -> s{_rrId = a}) .
      mapping _Coerce

-- | The URL to a VpnTunnel that should handle matching packets.
rrNextHopVPNTunnel :: Lens' Route (Maybe Text)
rrNextHopVPNTunnel
  = lens _rrNextHopVPNTunnel
      (\ s a -> s{_rrNextHopVPNTunnel = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
rrDescription :: Lens' Route (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

-- | A list of instance tags to which this route applies.
rrTags :: Lens' Route [Text]
rrTags
  = lens _rrTags (\ s a -> s{_rrTags = a}) . _Default .
      _Coerce

-- | The URL to an instance that should handle matching packets. You can
-- specify this as a full or partial URL. For example:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/zones\/zone\/instances\/
rrNextHopInstance :: Lens' Route (Maybe Text)
rrNextHopInstance
  = lens _rrNextHopInstance
      (\ s a -> s{_rrNextHopInstance = a})

instance FromJSON Route where
        parseJSON
          = withObject "Route"
              (\ o ->
                 Route' <$>
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
        toJSON Route'{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _rrPriority,
                  Just ("kind" .= _rrKind),
                  ("nextHopGateway" .=) <$> _rrNextHopGateway,
                  ("nextHopNetwork" .=) <$> _rrNextHopNetwork,
                  ("network" .=) <$> _rrNetwork,
                  ("warnings" .=) <$> _rrWarnings,
                  ("nextHopIp" .=) <$> _rrNextHopIP,
                  ("destRange" .=) <$> _rrDestRange,
                  ("selfLink" .=) <$> _rrSelfLink,
                  ("name" .=) <$> _rrName,
                  ("creationTimestamp" .=) <$> _rrCreationTimestamp,
                  ("id" .=) <$> _rrId,
                  ("nextHopVpnTunnel" .=) <$> _rrNextHopVPNTunnel,
                  ("description" .=) <$> _rrDescription,
                  ("tags" .=) <$> _rrTags,
                  ("nextHopInstance" .=) <$> _rrNextHopInstance])

--
-- /See:/ 'targetVPNGatewaysScopedListWarningDataItem' smart constructor.
data TargetVPNGatewaysScopedListWarningDataItem = TargetVPNGatewaysScopedListWarningDataItem'
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
    TargetVPNGatewaysScopedListWarningDataItem'
    { _tvgslwdiValue = Nothing
    , _tvgslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
tvgslwdiValue :: Lens' TargetVPNGatewaysScopedListWarningDataItem (Maybe Text)
tvgslwdiValue
  = lens _tvgslwdiValue
      (\ s a -> s{_tvgslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
tvgslwdiKey :: Lens' TargetVPNGatewaysScopedListWarningDataItem (Maybe Text)
tvgslwdiKey
  = lens _tvgslwdiKey (\ s a -> s{_tvgslwdiKey = a})

instance FromJSON
         TargetVPNGatewaysScopedListWarningDataItem where
        parseJSON
          = withObject
              "TargetVPNGatewaysScopedListWarningDataItem"
              (\ o ->
                 TargetVPNGatewaysScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         TargetVPNGatewaysScopedListWarningDataItem where
        toJSON
          TargetVPNGatewaysScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tvgslwdiValue,
                  ("key" .=) <$> _tvgslwdiKey])

--
-- /See:/ 'targetHTTPSProxiesSetSSLCertificatesRequest' smart constructor.
newtype TargetHTTPSProxiesSetSSLCertificatesRequest = TargetHTTPSProxiesSetSSLCertificatesRequest'
    { _thpsscrSSLCertificates :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxiesSetSSLCertificatesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpsscrSSLCertificates'
targetHTTPSProxiesSetSSLCertificatesRequest
    :: TargetHTTPSProxiesSetSSLCertificatesRequest
targetHTTPSProxiesSetSSLCertificatesRequest =
    TargetHTTPSProxiesSetSSLCertificatesRequest'
    { _thpsscrSSLCertificates = Nothing
    }

-- | New set of SslCertificate resources to associate with this
-- TargetHttpsProxy resource. Currently exactly one SslCertificate resource
-- must be specified.
thpsscrSSLCertificates :: Lens' TargetHTTPSProxiesSetSSLCertificatesRequest [Text]
thpsscrSSLCertificates
  = lens _thpsscrSSLCertificates
      (\ s a -> s{_thpsscrSSLCertificates = a})
      . _Default
      . _Coerce

instance FromJSON
         TargetHTTPSProxiesSetSSLCertificatesRequest where
        parseJSON
          = withObject
              "TargetHTTPSProxiesSetSSLCertificatesRequest"
              (\ o ->
                 TargetHTTPSProxiesSetSSLCertificatesRequest' <$>
                   (o .:? "sslCertificates" .!= mempty))

instance ToJSON
         TargetHTTPSProxiesSetSSLCertificatesRequest where
        toJSON
          TargetHTTPSProxiesSetSSLCertificatesRequest'{..}
          = object
              (catMaybes
                 [("sslCertificates" .=) <$> _thpsscrSSLCertificates])

-- | An Instance Template resource.
--
-- /See:/ 'instanceTemplate' smart constructor.
data InstanceTemplate = InstanceTemplate'
    { _itKind              :: !Text
    , _itSelfLink          :: !(Maybe Text)
    , _itName              :: !(Maybe Text)
    , _itCreationTimestamp :: !(Maybe Text)
    , _itId                :: !(Maybe (Textual Word64))
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
    InstanceTemplate'
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

-- | Name of the resource; provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
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
itId
  = lens _itId (\ s a -> s{_itId = a}) .
      mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
itDescription :: Lens' InstanceTemplate (Maybe Text)
itDescription
  = lens _itDescription
      (\ s a -> s{_itDescription = a})

-- | The instance properties for this instance template.
itProperties :: Lens' InstanceTemplate (Maybe InstanceProperties)
itProperties
  = lens _itProperties (\ s a -> s{_itProperties = a})

instance FromJSON InstanceTemplate where
        parseJSON
          = withObject "InstanceTemplate"
              (\ o ->
                 InstanceTemplate' <$>
                   (o .:? "kind" .!= "compute#instanceTemplate") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description")
                     <*> (o .:? "properties"))

instance ToJSON InstanceTemplate where
        toJSON InstanceTemplate'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _itKind),
                  ("selfLink" .=) <$> _itSelfLink,
                  ("name" .=) <$> _itName,
                  ("creationTimestamp" .=) <$> _itCreationTimestamp,
                  ("id" .=) <$> _itId,
                  ("description" .=) <$> _itDescription,
                  ("properties" .=) <$> _itProperties])

-- | Contains a list of Router resources.
--
-- /See:/ 'routerList' smart constructor.
data RouterList = RouterList'
    { _rllNextPageToken :: !(Maybe Text)
    , _rllKind          :: !Text
    , _rllItems         :: !(Maybe [Router])
    , _rllSelfLink      :: !(Maybe Text)
    , _rllId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllNextPageToken'
--
-- * 'rllKind'
--
-- * 'rllItems'
--
-- * 'rllSelfLink'
--
-- * 'rllId'
routerList
    :: RouterList
routerList =
    RouterList'
    { _rllNextPageToken = Nothing
    , _rllKind = "compute#routerList"
    , _rllItems = Nothing
    , _rllSelfLink = Nothing
    , _rllId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
rllNextPageToken :: Lens' RouterList (Maybe Text)
rllNextPageToken
  = lens _rllNextPageToken
      (\ s a -> s{_rllNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#router for routers.
rllKind :: Lens' RouterList Text
rllKind = lens _rllKind (\ s a -> s{_rllKind = a})

-- | A list of Router resources.
rllItems :: Lens' RouterList [Router]
rllItems
  = lens _rllItems (\ s a -> s{_rllItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
rllSelfLink :: Lens' RouterList (Maybe Text)
rllSelfLink
  = lens _rllSelfLink (\ s a -> s{_rllSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
rllId :: Lens' RouterList (Maybe Text)
rllId = lens _rllId (\ s a -> s{_rllId = a})

instance FromJSON RouterList where
        parseJSON
          = withObject "RouterList"
              (\ o ->
                 RouterList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#routerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RouterList where
        toJSON RouterList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rllNextPageToken,
                  Just ("kind" .= _rllKind),
                  ("items" .=) <$> _rllItems,
                  ("selfLink" .=) <$> _rllSelfLink,
                  ("id" .=) <$> _rllId])

-- | A TargetSslProxy resource. This resource defines an SSL proxy.
--
-- /See:/ 'targetSSLProxy' smart constructor.
data TargetSSLProxy = TargetSSLProxy'
    { _tspSSLCertificates   :: !(Maybe [Text])
    , _tspService           :: !(Maybe Text)
    , _tspKind              :: !Text
    , _tspSelfLink          :: !(Maybe Text)
    , _tspName              :: !(Maybe Text)
    , _tspCreationTimestamp :: !(Maybe Text)
    , _tspId                :: !(Maybe (Textual Word64))
    , _tspProxyHeader       :: !(Maybe TargetSSLProxyProxyHeader)
    , _tspDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspSSLCertificates'
--
-- * 'tspService'
--
-- * 'tspKind'
--
-- * 'tspSelfLink'
--
-- * 'tspName'
--
-- * 'tspCreationTimestamp'
--
-- * 'tspId'
--
-- * 'tspProxyHeader'
--
-- * 'tspDescription'
targetSSLProxy
    :: TargetSSLProxy
targetSSLProxy =
    TargetSSLProxy'
    { _tspSSLCertificates = Nothing
    , _tspService = Nothing
    , _tspKind = "compute#targetSslProxy"
    , _tspSelfLink = Nothing
    , _tspName = Nothing
    , _tspCreationTimestamp = Nothing
    , _tspId = Nothing
    , _tspProxyHeader = Nothing
    , _tspDescription = Nothing
    }

-- | URLs to SslCertificate resources that are used to authenticate
-- connections to Backends. Currently exactly one SSL certificate must be
-- specified.
tspSSLCertificates :: Lens' TargetSSLProxy [Text]
tspSSLCertificates
  = lens _tspSSLCertificates
      (\ s a -> s{_tspSSLCertificates = a})
      . _Default
      . _Coerce

-- | URL to the BackendService resource.
tspService :: Lens' TargetSSLProxy (Maybe Text)
tspService
  = lens _tspService (\ s a -> s{_tspService = a})

-- | [Output Only] Type of the resource. Always compute#targetSslProxy for
-- target SSL proxies.
tspKind :: Lens' TargetSSLProxy Text
tspKind = lens _tspKind (\ s a -> s{_tspKind = a})

-- | [Output Only] Server-defined URL for the resource.
tspSelfLink :: Lens' TargetSSLProxy (Maybe Text)
tspSelfLink
  = lens _tspSelfLink (\ s a -> s{_tspSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
tspName :: Lens' TargetSSLProxy (Maybe Text)
tspName = lens _tspName (\ s a -> s{_tspName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
tspCreationTimestamp :: Lens' TargetSSLProxy (Maybe Text)
tspCreationTimestamp
  = lens _tspCreationTimestamp
      (\ s a -> s{_tspCreationTimestamp = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tspId :: Lens' TargetSSLProxy (Maybe Word64)
tspId
  = lens _tspId (\ s a -> s{_tspId = a}) .
      mapping _Coerce

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
tspProxyHeader :: Lens' TargetSSLProxy (Maybe TargetSSLProxyProxyHeader)
tspProxyHeader
  = lens _tspProxyHeader
      (\ s a -> s{_tspProxyHeader = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
tspDescription :: Lens' TargetSSLProxy (Maybe Text)
tspDescription
  = lens _tspDescription
      (\ s a -> s{_tspDescription = a})

instance FromJSON TargetSSLProxy where
        parseJSON
          = withObject "TargetSSLProxy"
              (\ o ->
                 TargetSSLProxy' <$>
                   (o .:? "sslCertificates" .!= mempty) <*>
                     (o .:? "service")
                     <*> (o .:? "kind" .!= "compute#targetSslProxy")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "proxyHeader")
                     <*> (o .:? "description"))

instance ToJSON TargetSSLProxy where
        toJSON TargetSSLProxy'{..}
          = object
              (catMaybes
                 [("sslCertificates" .=) <$> _tspSSLCertificates,
                  ("service" .=) <$> _tspService,
                  Just ("kind" .= _tspKind),
                  ("selfLink" .=) <$> _tspSelfLink,
                  ("name" .=) <$> _tspName,
                  ("creationTimestamp" .=) <$> _tspCreationTimestamp,
                  ("id" .=) <$> _tspId,
                  ("proxyHeader" .=) <$> _tspProxyHeader,
                  ("description" .=) <$> _tspDescription])

-- | Represents a Target VPN gateway resource.
--
-- /See:/ 'targetVPNGateway' smart constructor.
data TargetVPNGateway = TargetVPNGateway'
    { _tvgStatus            :: !(Maybe TargetVPNGatewayStatus)
    , _tvgKind              :: !Text
    , _tvgNetwork           :: !(Maybe Text)
    , _tvgSelfLink          :: !(Maybe Text)
    , _tvgName              :: !(Maybe Text)
    , _tvgCreationTimestamp :: !(Maybe Text)
    , _tvgId                :: !(Maybe (Textual Word64))
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
    TargetVPNGateway'
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

-- | Name of the resource. Provided by the client when the resource is
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tvgId :: Lens' TargetVPNGateway (Maybe Word64)
tvgId
  = lens _tvgId (\ s a -> s{_tvgId = a}) .
      mapping _Coerce

-- | [Output Only] URL of the region where the target VPN gateway resides.
tvgRegion :: Lens' TargetVPNGateway (Maybe Text)
tvgRegion
  = lens _tvgRegion (\ s a -> s{_tvgRegion = a})

-- | [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are
-- created using compute.vpntunnels.insert method and associated to a VPN
-- gateway.
tvgTunnels :: Lens' TargetVPNGateway [Text]
tvgTunnels
  = lens _tvgTunnels (\ s a -> s{_tvgTunnels = a}) .
      _Default
      . _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
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
                 TargetVPNGateway' <$>
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
        toJSON TargetVPNGateway'{..}
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
newtype URLMapsValidateResponse = URLMapsValidateResponse'
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
    URLMapsValidateResponse'
    { _umvrResult = Nothing
    }

umvrResult :: Lens' URLMapsValidateResponse (Maybe URLMapValidationResult)
umvrResult
  = lens _umvrResult (\ s a -> s{_umvrResult = a})

instance FromJSON URLMapsValidateResponse where
        parseJSON
          = withObject "URLMapsValidateResponse"
              (\ o ->
                 URLMapsValidateResponse' <$> (o .:? "result"))

instance ToJSON URLMapsValidateResponse where
        toJSON URLMapsValidateResponse'{..}
          = object (catMaybes [("result" .=) <$> _umvrResult])

-- | An SslCertificate resource. This resource provides a mechanism to upload
-- an SSL key and certificate to the load balancer to serve secure
-- connections from the user.
--
-- /See:/ 'sslCertificate' smart constructor.
data SSLCertificate = SSLCertificate'
    { _scPrivateKey        :: !(Maybe Text)
    , _scKind              :: !Text
    , _scSelfLink          :: !(Maybe Text)
    , _scName              :: !(Maybe Text)
    , _scCreationTimestamp :: !(Maybe Text)
    , _scId                :: !(Maybe (Textual Word64))
    , _scCertificate       :: !(Maybe Text)
    , _scDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scPrivateKey'
--
-- * 'scKind'
--
-- * 'scSelfLink'
--
-- * 'scName'
--
-- * 'scCreationTimestamp'
--
-- * 'scId'
--
-- * 'scCertificate'
--
-- * 'scDescription'
sslCertificate
    :: SSLCertificate
sslCertificate =
    SSLCertificate'
    { _scPrivateKey = Nothing
    , _scKind = "compute#sslCertificate"
    , _scSelfLink = Nothing
    , _scName = Nothing
    , _scCreationTimestamp = Nothing
    , _scId = Nothing
    , _scCertificate = Nothing
    , _scDescription = Nothing
    }

-- | A write-only private key in PEM format. Only insert requests will
-- include this field.
scPrivateKey :: Lens' SSLCertificate (Maybe Text)
scPrivateKey
  = lens _scPrivateKey (\ s a -> s{_scPrivateKey = a})

-- | [Output Only] Type of the resource. Always compute#sslCertificate for
-- SSL certificates.
scKind :: Lens' SSLCertificate Text
scKind = lens _scKind (\ s a -> s{_scKind = a})

-- | [Output only] Server-defined URL for the resource.
scSelfLink :: Lens' SSLCertificate (Maybe Text)
scSelfLink
  = lens _scSelfLink (\ s a -> s{_scSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
scName :: Lens' SSLCertificate (Maybe Text)
scName = lens _scName (\ s a -> s{_scName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
scCreationTimestamp :: Lens' SSLCertificate (Maybe Text)
scCreationTimestamp
  = lens _scCreationTimestamp
      (\ s a -> s{_scCreationTimestamp = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
scId :: Lens' SSLCertificate (Maybe Word64)
scId
  = lens _scId (\ s a -> s{_scId = a}) .
      mapping _Coerce

-- | A local certificate file. The certificate must be in PEM format. The
-- certificate chain must be no greater than 5 certs long. The chain must
-- include at least one intermediate cert.
scCertificate :: Lens' SSLCertificate (Maybe Text)
scCertificate
  = lens _scCertificate
      (\ s a -> s{_scCertificate = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
scDescription :: Lens' SSLCertificate (Maybe Text)
scDescription
  = lens _scDescription
      (\ s a -> s{_scDescription = a})

instance FromJSON SSLCertificate where
        parseJSON
          = withObject "SSLCertificate"
              (\ o ->
                 SSLCertificate' <$>
                   (o .:? "privateKey") <*>
                     (o .:? "kind" .!= "compute#sslCertificate")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "certificate")
                     <*> (o .:? "description"))

instance ToJSON SSLCertificate where
        toJSON SSLCertificate'{..}
          = object
              (catMaybes
                 [("privateKey" .=) <$> _scPrivateKey,
                  Just ("kind" .= _scKind),
                  ("selfLink" .=) <$> _scSelfLink,
                  ("name" .=) <$> _scName,
                  ("creationTimestamp" .=) <$> _scCreationTimestamp,
                  ("id" .=) <$> _scId,
                  ("certificate" .=) <$> _scCertificate,
                  ("description" .=) <$> _scDescription])

--
-- /See:/ 'routerStatusBGPPeerStatus' smart constructor.
data RouterStatusBGPPeerStatus = RouterStatusBGPPeerStatus'
    { _rsbpsStatus           :: !(Maybe RouterStatusBGPPeerStatusStatus)
    , _rsbpsIPAddress        :: !(Maybe Text)
    , _rsbpsState            :: !(Maybe Text)
    , _rsbpsPeerIPAddress    :: !(Maybe Text)
    , _rsbpsUptime           :: !(Maybe Text)
    , _rsbpsNumLearnedRoutes :: !(Maybe (Textual Word32))
    , _rsbpsName             :: !(Maybe Text)
    , _rsbpsUptimeSeconds    :: !(Maybe Text)
    , _rsbpsAdvertisedRoutes :: !(Maybe [Route])
    , _rsbpsLinkedVPNTunnel  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterStatusBGPPeerStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsbpsStatus'
--
-- * 'rsbpsIPAddress'
--
-- * 'rsbpsState'
--
-- * 'rsbpsPeerIPAddress'
--
-- * 'rsbpsUptime'
--
-- * 'rsbpsNumLearnedRoutes'
--
-- * 'rsbpsName'
--
-- * 'rsbpsUptimeSeconds'
--
-- * 'rsbpsAdvertisedRoutes'
--
-- * 'rsbpsLinkedVPNTunnel'
routerStatusBGPPeerStatus
    :: RouterStatusBGPPeerStatus
routerStatusBGPPeerStatus =
    RouterStatusBGPPeerStatus'
    { _rsbpsStatus = Nothing
    , _rsbpsIPAddress = Nothing
    , _rsbpsState = Nothing
    , _rsbpsPeerIPAddress = Nothing
    , _rsbpsUptime = Nothing
    , _rsbpsNumLearnedRoutes = Nothing
    , _rsbpsName = Nothing
    , _rsbpsUptimeSeconds = Nothing
    , _rsbpsAdvertisedRoutes = Nothing
    , _rsbpsLinkedVPNTunnel = Nothing
    }

-- | Status of the BGP peer: {UP, DOWN}
rsbpsStatus :: Lens' RouterStatusBGPPeerStatus (Maybe RouterStatusBGPPeerStatusStatus)
rsbpsStatus
  = lens _rsbpsStatus (\ s a -> s{_rsbpsStatus = a})

-- | IP address of the local BGP interface.
rsbpsIPAddress :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsIPAddress
  = lens _rsbpsIPAddress
      (\ s a -> s{_rsbpsIPAddress = a})

-- | BGP state as specified in RFC1771.
rsbpsState :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsState
  = lens _rsbpsState (\ s a -> s{_rsbpsState = a})

-- | IP address of the remote BGP interface.
rsbpsPeerIPAddress :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsPeerIPAddress
  = lens _rsbpsPeerIPAddress
      (\ s a -> s{_rsbpsPeerIPAddress = a})

-- | Time this session has been up. Format: 14 years, 51 weeks, 6 days, 23
-- hours, 59 minutes, 59 seconds
rsbpsUptime :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsUptime
  = lens _rsbpsUptime (\ s a -> s{_rsbpsUptime = a})

-- | Number of routes learned from the remote BGP Peer.
rsbpsNumLearnedRoutes :: Lens' RouterStatusBGPPeerStatus (Maybe Word32)
rsbpsNumLearnedRoutes
  = lens _rsbpsNumLearnedRoutes
      (\ s a -> s{_rsbpsNumLearnedRoutes = a})
      . mapping _Coerce

-- | Name of this BGP peer. Unique within the Routers resource.
rsbpsName :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsName
  = lens _rsbpsName (\ s a -> s{_rsbpsName = a})

-- | Time this session has been up, in seconds. Format: 145
rsbpsUptimeSeconds :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsUptimeSeconds
  = lens _rsbpsUptimeSeconds
      (\ s a -> s{_rsbpsUptimeSeconds = a})

-- | Routes that were advertised to the remote BGP peer
rsbpsAdvertisedRoutes :: Lens' RouterStatusBGPPeerStatus [Route]
rsbpsAdvertisedRoutes
  = lens _rsbpsAdvertisedRoutes
      (\ s a -> s{_rsbpsAdvertisedRoutes = a})
      . _Default
      . _Coerce

-- | URL of the VPN tunnel that this BGP peer controls.
rsbpsLinkedVPNTunnel :: Lens' RouterStatusBGPPeerStatus (Maybe Text)
rsbpsLinkedVPNTunnel
  = lens _rsbpsLinkedVPNTunnel
      (\ s a -> s{_rsbpsLinkedVPNTunnel = a})

instance FromJSON RouterStatusBGPPeerStatus where
        parseJSON
          = withObject "RouterStatusBGPPeerStatus"
              (\ o ->
                 RouterStatusBGPPeerStatus' <$>
                   (o .:? "status") <*> (o .:? "ipAddress") <*>
                     (o .:? "state")
                     <*> (o .:? "peerIpAddress")
                     <*> (o .:? "uptime")
                     <*> (o .:? "numLearnedRoutes")
                     <*> (o .:? "name")
                     <*> (o .:? "uptimeSeconds")
                     <*> (o .:? "advertisedRoutes" .!= mempty)
                     <*> (o .:? "linkedVpnTunnel"))

instance ToJSON RouterStatusBGPPeerStatus where
        toJSON RouterStatusBGPPeerStatus'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rsbpsStatus,
                  ("ipAddress" .=) <$> _rsbpsIPAddress,
                  ("state" .=) <$> _rsbpsState,
                  ("peerIpAddress" .=) <$> _rsbpsPeerIPAddress,
                  ("uptime" .=) <$> _rsbpsUptime,
                  ("numLearnedRoutes" .=) <$> _rsbpsNumLearnedRoutes,
                  ("name" .=) <$> _rsbpsName,
                  ("uptimeSeconds" .=) <$> _rsbpsUptimeSeconds,
                  ("advertisedRoutes" .=) <$> _rsbpsAdvertisedRoutes,
                  ("linkedVpnTunnel" .=) <$> _rsbpsLinkedVPNTunnel])

--
-- /See:/ 'urlMapReference' smart constructor.
newtype URLMapReference = URLMapReference'
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
    URLMapReference'
    { _umrURLMap = Nothing
    }

umrURLMap :: Lens' URLMapReference (Maybe Text)
umrURLMap
  = lens _umrURLMap (\ s a -> s{_umrURLMap = a})

instance FromJSON URLMapReference where
        parseJSON
          = withObject "URLMapReference"
              (\ o -> URLMapReference' <$> (o .:? "urlMap"))

instance ToJSON URLMapReference where
        toJSON URLMapReference'{..}
          = object (catMaybes [("urlMap" .=) <$> _umrURLMap])

--
-- /See:/ 'targetPoolsAddHealthCheckRequest' smart constructor.
newtype TargetPoolsAddHealthCheckRequest = TargetPoolsAddHealthCheckRequest'
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
    TargetPoolsAddHealthCheckRequest'
    { _tpahcrHealthChecks = Nothing
    }

-- | A list of HttpHealthCheck resources to add to the target pool.
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
                 TargetPoolsAddHealthCheckRequest' <$>
                   (o .:? "healthChecks" .!= mempty))

instance ToJSON TargetPoolsAddHealthCheckRequest
         where
        toJSON TargetPoolsAddHealthCheckRequest'{..}
          = object
              (catMaybes
                 [("healthChecks" .=) <$> _tpahcrHealthChecks])

-- | [Output Only] A map of scoped disk lists.
--
-- /See:/ 'diskAggregatedListItems' smart constructor.
newtype DiskAggregatedListItems = DiskAggregatedListItems'
    { _daliAddtional :: HashMap Text DisksScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daliAddtional'
diskAggregatedListItems
    :: HashMap Text DisksScopedList -- ^ 'daliAddtional'
    -> DiskAggregatedListItems
diskAggregatedListItems pDaliAddtional_ =
    DiskAggregatedListItems'
    { _daliAddtional = _Coerce # pDaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of disks.
daliAddtional :: Lens' DiskAggregatedListItems (HashMap Text DisksScopedList)
daliAddtional
  = lens _daliAddtional
      (\ s a -> s{_daliAddtional = a})
      . _Coerce

instance FromJSON DiskAggregatedListItems where
        parseJSON
          = withObject "DiskAggregatedListItems"
              (\ o ->
                 DiskAggregatedListItems' <$> (parseJSONObject o))

instance ToJSON DiskAggregatedListItems where
        toJSON = toJSON . _daliAddtional

-- | The location in Cloud Storage and naming method of the daily usage
-- report. Contains bucket_name and report_name prefix.
--
-- /See:/ 'usageExportLocation' smart constructor.
data UsageExportLocation = UsageExportLocation'
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
    UsageExportLocation'
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
-- this bucket. This can either be the bucket name by itself, such as
-- example-bucket, or the bucket name with gs:\/\/ or
-- https:\/\/storage.googleapis.com\/ in front of it, such as
-- gs:\/\/example-bucket.
uelBucketName :: Lens' UsageExportLocation (Maybe Text)
uelBucketName
  = lens _uelBucketName
      (\ s a -> s{_uelBucketName = a})

instance FromJSON UsageExportLocation where
        parseJSON
          = withObject "UsageExportLocation"
              (\ o ->
                 UsageExportLocation' <$>
                   (o .:? "reportNamePrefix") <*> (o .:? "bucketName"))

instance ToJSON UsageExportLocation where
        toJSON UsageExportLocation'{..}
          = object
              (catMaybes
                 [("reportNamePrefix" .=) <$> _uelReportNamePrefix,
                  ("bucketName" .=) <$> _uelBucketName])

-- | Contains a list of zone resources.
--
-- /See:/ 'zoneList' smart constructor.
data ZoneList = ZoneList'
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
    ZoneList'
    { _zlNextPageToken = Nothing
    , _zlKind = "compute#zoneList"
    , _zlItems = Nothing
    , _zlSelfLink = Nothing
    , _zlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 ZoneList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#zoneList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ZoneList where
        toJSON ZoneList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _zlNextPageToken,
                  Just ("kind" .= _zlKind), ("items" .=) <$> _zlItems,
                  ("selfLink" .=) <$> _zlSelfLink,
                  ("id" .=) <$> _zlId])

--
-- /See:/ 'routerBGPPeer' smart constructor.
data RouterBGPPeer = RouterBGPPeer'
    { _rbpIPAddress               :: !(Maybe Text)
    , _rbpInterfaceName           :: !(Maybe Text)
    , _rbpPeerIPAddress           :: !(Maybe Text)
    , _rbpAdvertisedRoutePriority :: !(Maybe (Textual Word32))
    , _rbpPeerASN                 :: !(Maybe (Textual Word32))
    , _rbpName                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterBGPPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbpIPAddress'
--
-- * 'rbpInterfaceName'
--
-- * 'rbpPeerIPAddress'
--
-- * 'rbpAdvertisedRoutePriority'
--
-- * 'rbpPeerASN'
--
-- * 'rbpName'
routerBGPPeer
    :: RouterBGPPeer
routerBGPPeer =
    RouterBGPPeer'
    { _rbpIPAddress = Nothing
    , _rbpInterfaceName = Nothing
    , _rbpPeerIPAddress = Nothing
    , _rbpAdvertisedRoutePriority = Nothing
    , _rbpPeerASN = Nothing
    , _rbpName = Nothing
    }

-- | IP address of the interface inside Google Cloud Platform. Only IPv4 is
-- supported.
rbpIPAddress :: Lens' RouterBGPPeer (Maybe Text)
rbpIPAddress
  = lens _rbpIPAddress (\ s a -> s{_rbpIPAddress = a})

-- | Name of the interface the BGP peer is associated with.
rbpInterfaceName :: Lens' RouterBGPPeer (Maybe Text)
rbpInterfaceName
  = lens _rbpInterfaceName
      (\ s a -> s{_rbpInterfaceName = a})

-- | IP address of the BGP interface outside Google cloud. Only IPv4 is
-- supported.
rbpPeerIPAddress :: Lens' RouterBGPPeer (Maybe Text)
rbpPeerIPAddress
  = lens _rbpPeerIPAddress
      (\ s a -> s{_rbpPeerIPAddress = a})

-- | The priority of routes advertised to this BGP peer. In the case where
-- there is more than one matching route of maximum length, the routes with
-- lowest priority value win.
rbpAdvertisedRoutePriority :: Lens' RouterBGPPeer (Maybe Word32)
rbpAdvertisedRoutePriority
  = lens _rbpAdvertisedRoutePriority
      (\ s a -> s{_rbpAdvertisedRoutePriority = a})
      . mapping _Coerce

-- | Peer BGP Autonomous System Number (ASN). For VPN use case, this value
-- can be different for every tunnel.
rbpPeerASN :: Lens' RouterBGPPeer (Maybe Word32)
rbpPeerASN
  = lens _rbpPeerASN (\ s a -> s{_rbpPeerASN = a}) .
      mapping _Coerce

-- | Name of this BGP peer. The name must be 1-63 characters long and comply
-- with RFC1035.
rbpName :: Lens' RouterBGPPeer (Maybe Text)
rbpName = lens _rbpName (\ s a -> s{_rbpName = a})

instance FromJSON RouterBGPPeer where
        parseJSON
          = withObject "RouterBGPPeer"
              (\ o ->
                 RouterBGPPeer' <$>
                   (o .:? "ipAddress") <*> (o .:? "interfaceName") <*>
                     (o .:? "peerIpAddress")
                     <*> (o .:? "advertisedRoutePriority")
                     <*> (o .:? "peerAsn")
                     <*> (o .:? "name"))

instance ToJSON RouterBGPPeer where
        toJSON RouterBGPPeer'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _rbpIPAddress,
                  ("interfaceName" .=) <$> _rbpInterfaceName,
                  ("peerIpAddress" .=) <$> _rbpPeerIPAddress,
                  ("advertisedRoutePriority" .=) <$>
                    _rbpAdvertisedRoutePriority,
                  ("peerAsn" .=) <$> _rbpPeerASN,
                  ("name" .=) <$> _rbpName])

--
-- /See:/ 'subnetworksExpandIPCIdRRangeRequest' smart constructor.
newtype SubnetworksExpandIPCIdRRangeRequest = SubnetworksExpandIPCIdRRangeRequest'
    { _seicirrrIPCIdRRange :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksExpandIPCIdRRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seicirrrIPCIdRRange'
subnetworksExpandIPCIdRRangeRequest
    :: SubnetworksExpandIPCIdRRangeRequest
subnetworksExpandIPCIdRRangeRequest =
    SubnetworksExpandIPCIdRRangeRequest'
    { _seicirrrIPCIdRRange = Nothing
    }

-- | The IP (in CIDR format or netmask) of internal addresses that are legal
-- on this Subnetwork. This range should be disjoint from other subnetworks
-- within this network. This range can only be larger than (i.e. a superset
-- of) the range previously defined before the update.
seicirrrIPCIdRRange :: Lens' SubnetworksExpandIPCIdRRangeRequest (Maybe Text)
seicirrrIPCIdRRange
  = lens _seicirrrIPCIdRRange
      (\ s a -> s{_seicirrrIPCIdRRange = a})

instance FromJSON SubnetworksExpandIPCIdRRangeRequest
         where
        parseJSON
          = withObject "SubnetworksExpandIPCIdRRangeRequest"
              (\ o ->
                 SubnetworksExpandIPCIdRRangeRequest' <$>
                   (o .:? "ipCidrRange"))

instance ToJSON SubnetworksExpandIPCIdRRangeRequest
         where
        toJSON SubnetworksExpandIPCIdRRangeRequest'{..}
          = object
              (catMaybes
                 [("ipCidrRange" .=) <$> _seicirrrIPCIdRRange])

--
-- /See:/ 'managedInstance' smart constructor.
data ManagedInstance = ManagedInstance'
    { _miLastAttempt    :: !(Maybe ManagedInstanceLastAttempt)
    , _miCurrentAction  :: !(Maybe ManagedInstanceCurrentAction)
    , _miId             :: !(Maybe (Textual Word64))
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
    ManagedInstance'
    { _miLastAttempt = Nothing
    , _miCurrentAction = Nothing
    , _miId = Nothing
    , _miInstanceStatus = Nothing
    , _miInstance = Nothing
    }

-- | [Output Only] Information about the last attempt to create or delete the
-- instance.
miLastAttempt :: Lens' ManagedInstance (Maybe ManagedInstanceLastAttempt)
miLastAttempt
  = lens _miLastAttempt
      (\ s a -> s{_miLastAttempt = a})

-- | [Output Only] The current action that the managed instance group has
-- scheduled for the instance. Possible values: - NONE The instance is
-- running, and the managed instance group does not have any scheduled
-- actions for this instance. - CREATING The managed instance group is
-- creating this instance. If the group fails to create this instance, it
-- will try again until it is successful. - CREATING_WITHOUT_RETRIES The
-- managed instance group is attempting to create this instance only once.
-- If the group fails to create this instance, it does not try again and
-- the group\'s targetSize value is decreased instead. - RECREATING The
-- managed instance group is recreating this instance. - DELETING The
-- managed instance group is permanently deleting this instance. -
-- ABANDONING The managed instance group is abandoning this instance. The
-- instance will be removed from the instance group and from any target
-- pools that are associated with this group. - RESTARTING The managed
-- instance group is restarting the instance. - REFRESHING The managed
-- instance group is applying configuration changes to the instance without
-- stopping it. For example, the group can update the target pool list for
-- an instance without stopping that instance.
miCurrentAction :: Lens' ManagedInstance (Maybe ManagedInstanceCurrentAction)
miCurrentAction
  = lens _miCurrentAction
      (\ s a -> s{_miCurrentAction = a})

-- | [Output only] The unique identifier for this resource. This field is
-- empty when instance does not exist.
miId :: Lens' ManagedInstance (Maybe Word64)
miId
  = lens _miId (\ s a -> s{_miId = a}) .
      mapping _Coerce

-- | [Output Only] The status of the instance. This field is empty when the
-- instance does not exist.
miInstanceStatus :: Lens' ManagedInstance (Maybe ManagedInstanceInstanceStatus)
miInstanceStatus
  = lens _miInstanceStatus
      (\ s a -> s{_miInstanceStatus = a})

-- | [Output Only] The URL of the instance. The URL can exist even if the
-- instance has not yet been created.
miInstance :: Lens' ManagedInstance (Maybe Text)
miInstance
  = lens _miInstance (\ s a -> s{_miInstance = a})

instance FromJSON ManagedInstance where
        parseJSON
          = withObject "ManagedInstance"
              (\ o ->
                 ManagedInstance' <$>
                   (o .:? "lastAttempt") <*> (o .:? "currentAction") <*>
                     (o .:? "id")
                     <*> (o .:? "instanceStatus")
                     <*> (o .:? "instance"))

instance ToJSON ManagedInstance where
        toJSON ManagedInstance'{..}
          = object
              (catMaybes
                 [("lastAttempt" .=) <$> _miLastAttempt,
                  ("currentAction" .=) <$> _miCurrentAction,
                  ("id" .=) <$> _miId,
                  ("instanceStatus" .=) <$> _miInstanceStatus,
                  ("instance" .=) <$> _miInstance])

-- | [Output Only] A map of filtered managed instance group lists.
--
-- /See:/ 'instanceGroupManagerAggregatedListItems' smart constructor.
newtype InstanceGroupManagerAggregatedListItems = InstanceGroupManagerAggregatedListItems'
    { _igmaliAddtional :: HashMap Text InstanceGroupManagersScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagerAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaliAddtional'
instanceGroupManagerAggregatedListItems
    :: HashMap Text InstanceGroupManagersScopedList -- ^ 'igmaliAddtional'
    -> InstanceGroupManagerAggregatedListItems
instanceGroupManagerAggregatedListItems pIgmaliAddtional_ =
    InstanceGroupManagerAggregatedListItems'
    { _igmaliAddtional = _Coerce # pIgmaliAddtional_
    }

-- | [Output Only] The name of the scope that contains this set of managed
-- instance groups.
igmaliAddtional :: Lens' InstanceGroupManagerAggregatedListItems (HashMap Text InstanceGroupManagersScopedList)
igmaliAddtional
  = lens _igmaliAddtional
      (\ s a -> s{_igmaliAddtional = a})
      . _Coerce

instance FromJSON
         InstanceGroupManagerAggregatedListItems where
        parseJSON
          = withObject
              "InstanceGroupManagerAggregatedListItems"
              (\ o ->
                 InstanceGroupManagerAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON
         InstanceGroupManagerAggregatedListItems where
        toJSON = toJSON . _igmaliAddtional

--
-- /See:/ 'instanceGroupManagersDeleteInstancesRequest' smart constructor.
newtype InstanceGroupManagersDeleteInstancesRequest = InstanceGroupManagersDeleteInstancesRequest'
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
    InstanceGroupManagersDeleteInstancesRequest'
    { _igmdirInstances = Nothing
    }

-- | The list of instances to delete from this managed instance group.
-- Specify one or more instance URLs.
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
                 InstanceGroupManagersDeleteInstancesRequest' <$>
                   (o .:? "instances" .!= mempty))

instance ToJSON
         InstanceGroupManagersDeleteInstancesRequest where
        toJSON
          InstanceGroupManagersDeleteInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _igmdirInstances])

-- | Message containing information of one individual backend.
--
-- /See:/ 'backend' smart constructor.
data Backend = Backend'
    { _bGroup                     :: !(Maybe Text)
    , _bBalancingMode             :: !(Maybe BackendBalancingMode)
    , _bMaxUtilization            :: !(Maybe (Textual Double))
    , _bMaxRate                   :: !(Maybe (Textual Int32))
    , _bMaxConnections            :: !(Maybe (Textual Int32))
    , _bMaxConnectionsPerInstance :: !(Maybe (Textual Int32))
    , _bMaxRatePerInstance        :: !(Maybe (Textual Double))
    , _bDescription               :: !(Maybe Text)
    , _bCapacityScaler            :: !(Maybe (Textual Double))
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
-- * 'bMaxConnections'
--
-- * 'bMaxConnectionsPerInstance'
--
-- * 'bMaxRatePerInstance'
--
-- * 'bDescription'
--
-- * 'bCapacityScaler'
backend
    :: Backend
backend =
    Backend'
    { _bGroup = Nothing
    , _bBalancingMode = Nothing
    , _bMaxUtilization = Nothing
    , _bMaxRate = Nothing
    , _bMaxConnections = Nothing
    , _bMaxConnectionsPerInstance = Nothing
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
-- than a partial URL. When the BackendService has load balancing scheme
-- INTERNAL, the instance group must be in a zone within the same region as
-- the BackendService.
bGroup :: Lens' Backend (Maybe Text)
bGroup = lens _bGroup (\ s a -> s{_bGroup = a})

-- | Specifies the balancing mode for this backend. For global HTTP(S) or
-- TCP\/SSL load balancing, the default is UTILIZATION. Valid values are
-- UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP\/SSL). This
-- cannot be used for internal load balancing.
bBalancingMode :: Lens' Backend (Maybe BackendBalancingMode)
bBalancingMode
  = lens _bBalancingMode
      (\ s a -> s{_bBalancingMode = a})

-- | Used when balancingMode is UTILIZATION. This ratio defines the CPU
-- utilization target for the group. The default is 0.8. Valid range is
-- [0.0, 1.0]. This cannot be used for internal load balancing.
bMaxUtilization :: Lens' Backend (Maybe Double)
bMaxUtilization
  = lens _bMaxUtilization
      (\ s a -> s{_bMaxUtilization = a})
      . mapping _Coerce

-- | The max requests per second (RPS) of the group. Can be used with either
-- RATE or UTILIZATION balancing modes, but required if RATE mode. For RATE
-- mode, either maxRate or maxRatePerInstance must be set. This cannot be
-- used for internal load balancing.
bMaxRate :: Lens' Backend (Maybe Int32)
bMaxRate
  = lens _bMaxRate (\ s a -> s{_bMaxRate = a}) .
      mapping _Coerce

-- | The max number of simultaneous connections for the group. Can be used
-- with either CONNECTION or UTILIZATION balancing modes. For CONNECTION
-- mode, either maxConnections or maxConnectionsPerInstance must be set.
-- This cannot be used for internal load balancing.
bMaxConnections :: Lens' Backend (Maybe Int32)
bMaxConnections
  = lens _bMaxConnections
      (\ s a -> s{_bMaxConnections = a})
      . mapping _Coerce

-- | The max number of simultaneous connections that a single backend
-- instance can handle. This is used to calculate the capacity of the
-- group. Can be used in either CONNECTION or UTILIZATION balancing modes.
-- For CONNECTION mode, either maxConnections or maxConnectionsPerInstance
-- must be set. This cannot be used for internal load balancing.
bMaxConnectionsPerInstance :: Lens' Backend (Maybe Int32)
bMaxConnectionsPerInstance
  = lens _bMaxConnectionsPerInstance
      (\ s a -> s{_bMaxConnectionsPerInstance = a})
      . mapping _Coerce

-- | The max requests per second (RPS) that a single backend instance can
-- handle.This is used to calculate the capacity of the group. Can be used
-- in either balancing mode. For RATE mode, either maxRate or
-- maxRatePerInstance must be set. This cannot be used for internal load
-- balancing.
bMaxRatePerInstance :: Lens' Backend (Maybe Double)
bMaxRatePerInstance
  = lens _bMaxRatePerInstance
      (\ s a -> s{_bMaxRatePerInstance = a})
      . mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
bDescription :: Lens' Backend (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

-- | A multiplier applied to the group\'s maximum servicing capacity (based
-- on UTILIZATION, RATE or CONNECTION). Default value is 1, which means the
-- group will serve up to 100% of its configured capacity (depending on
-- balancingMode). A setting of 0 means the group is completely drained,
-- offering 0% of its available Capacity. Valid range is [0.0,1.0]. This
-- cannot be used for internal load balancing.
bCapacityScaler :: Lens' Backend (Maybe Double)
bCapacityScaler
  = lens _bCapacityScaler
      (\ s a -> s{_bCapacityScaler = a})
      . mapping _Coerce

instance FromJSON Backend where
        parseJSON
          = withObject "Backend"
              (\ o ->
                 Backend' <$>
                   (o .:? "group") <*> (o .:? "balancingMode") <*>
                     (o .:? "maxUtilization")
                     <*> (o .:? "maxRate")
                     <*> (o .:? "maxConnections")
                     <*> (o .:? "maxConnectionsPerInstance")
                     <*> (o .:? "maxRatePerInstance")
                     <*> (o .:? "description")
                     <*> (o .:? "capacityScaler"))

instance ToJSON Backend where
        toJSON Backend'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _bGroup,
                  ("balancingMode" .=) <$> _bBalancingMode,
                  ("maxUtilization" .=) <$> _bMaxUtilization,
                  ("maxRate" .=) <$> _bMaxRate,
                  ("maxConnections" .=) <$> _bMaxConnections,
                  ("maxConnectionsPerInstance" .=) <$>
                    _bMaxConnectionsPerInstance,
                  ("maxRatePerInstance" .=) <$> _bMaxRatePerInstance,
                  ("description" .=) <$> _bDescription,
                  ("capacityScaler" .=) <$> _bCapacityScaler])

-- | [Output Only] Informational warning which replaces the list of addresses
-- when the list is empty.
--
-- /See:/ 'targetVPNGatewaysScopedListWarning' smart constructor.
data TargetVPNGatewaysScopedListWarning = TargetVPNGatewaysScopedListWarning'
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
    TargetVPNGatewaysScopedListWarning'
    { _tvgslwData = Nothing
    , _tvgslwCode = Nothing
    , _tvgslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
tvgslwData :: Lens' TargetVPNGatewaysScopedListWarning [TargetVPNGatewaysScopedListWarningDataItem]
tvgslwData
  = lens _tvgslwData (\ s a -> s{_tvgslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
tvgslwCode :: Lens' TargetVPNGatewaysScopedListWarning (Maybe TargetVPNGatewaysScopedListWarningCode)
tvgslwCode
  = lens _tvgslwCode (\ s a -> s{_tvgslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
tvgslwMessage :: Lens' TargetVPNGatewaysScopedListWarning (Maybe Text)
tvgslwMessage
  = lens _tvgslwMessage
      (\ s a -> s{_tvgslwMessage = a})

instance FromJSON TargetVPNGatewaysScopedListWarning
         where
        parseJSON
          = withObject "TargetVPNGatewaysScopedListWarning"
              (\ o ->
                 TargetVPNGatewaysScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetVPNGatewaysScopedListWarning
         where
        toJSON TargetVPNGatewaysScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tvgslwData,
                  ("code" .=) <$> _tvgslwCode,
                  ("message" .=) <$> _tvgslwMessage])

-- | Contains a list of addresses.
--
-- /See:/ 'addressList' smart constructor.
data AddressList = AddressList'
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
    AddressList'
    { _alNextPageToken = Nothing
    , _alKind = "compute#addressList"
    , _alItems = Nothing
    , _alSelfLink = Nothing
    , _alId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
alNextPageToken :: Lens' AddressList (Maybe Text)
alNextPageToken
  = lens _alNextPageToken
      (\ s a -> s{_alNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#addressList for lists of
-- addresses.
alKind :: Lens' AddressList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | [Output Only] A list of addresses.
alItems :: Lens' AddressList [Address]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
alSelfLink :: Lens' AddressList (Maybe Text)
alSelfLink
  = lens _alSelfLink (\ s a -> s{_alSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
alId :: Lens' AddressList (Maybe Text)
alId = lens _alId (\ s a -> s{_alId = a})

instance FromJSON AddressList where
        parseJSON
          = withObject "AddressList"
              (\ o ->
                 AddressList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#addressList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AddressList where
        toJSON AddressList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alNextPageToken,
                  Just ("kind" .= _alKind), ("items" .=) <$> _alItems,
                  ("selfLink" .=) <$> _alSelfLink,
                  ("id" .=) <$> _alId])

-- | A map of scoped forwarding rule lists.
--
-- /See:/ 'forwardingRuleAggregatedListItems' smart constructor.
newtype ForwardingRuleAggregatedListItems = ForwardingRuleAggregatedListItems'
    { _fraliAddtional :: HashMap Text ForwardingRulesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRuleAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fraliAddtional'
forwardingRuleAggregatedListItems
    :: HashMap Text ForwardingRulesScopedList -- ^ 'fraliAddtional'
    -> ForwardingRuleAggregatedListItems
forwardingRuleAggregatedListItems pFraliAddtional_ =
    ForwardingRuleAggregatedListItems'
    { _fraliAddtional = _Coerce # pFraliAddtional_
    }

-- | Name of the scope containing this set of addresses.
fraliAddtional :: Lens' ForwardingRuleAggregatedListItems (HashMap Text ForwardingRulesScopedList)
fraliAddtional
  = lens _fraliAddtional
      (\ s a -> s{_fraliAddtional = a})
      . _Coerce

instance FromJSON ForwardingRuleAggregatedListItems
         where
        parseJSON
          = withObject "ForwardingRuleAggregatedListItems"
              (\ o ->
                 ForwardingRuleAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON ForwardingRuleAggregatedListItems
         where
        toJSON = toJSON . _fraliAddtional

-- | [Output Only] A map of scoped operation lists.
--
-- /See:/ 'operationAggregatedListItems' smart constructor.
newtype OperationAggregatedListItems = OperationAggregatedListItems'
    { _oaliAddtional :: HashMap Text OperationsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaliAddtional'
operationAggregatedListItems
    :: HashMap Text OperationsScopedList -- ^ 'oaliAddtional'
    -> OperationAggregatedListItems
operationAggregatedListItems pOaliAddtional_ =
    OperationAggregatedListItems'
    { _oaliAddtional = _Coerce # pOaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of operations.
oaliAddtional :: Lens' OperationAggregatedListItems (HashMap Text OperationsScopedList)
oaliAddtional
  = lens _oaliAddtional
      (\ s a -> s{_oaliAddtional = a})
      . _Coerce

instance FromJSON OperationAggregatedListItems where
        parseJSON
          = withObject "OperationAggregatedListItems"
              (\ o ->
                 OperationAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON OperationAggregatedListItems where
        toJSON = toJSON . _oaliAddtional

--
-- /See:/ 'instanceGroupManagerActionsSummary' smart constructor.
data InstanceGroupManagerActionsSummary = InstanceGroupManagerActionsSummary'
    { _igmasDeleting               :: !(Maybe (Textual Int32))
    , _igmasRestarting             :: !(Maybe (Textual Int32))
    , _igmasNone                   :: !(Maybe (Textual Int32))
    , _igmasCreating               :: !(Maybe (Textual Int32))
    , _igmasRefreshing             :: !(Maybe (Textual Int32))
    , _igmasCreatingWithoutRetries :: !(Maybe (Textual Int32))
    , _igmasRecreating             :: !(Maybe (Textual Int32))
    , _igmasAbandoning             :: !(Maybe (Textual Int32))
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
-- * 'igmasCreatingWithoutRetries'
--
-- * 'igmasRecreating'
--
-- * 'igmasAbandoning'
instanceGroupManagerActionsSummary
    :: InstanceGroupManagerActionsSummary
instanceGroupManagerActionsSummary =
    InstanceGroupManagerActionsSummary'
    { _igmasDeleting = Nothing
    , _igmasRestarting = Nothing
    , _igmasNone = Nothing
    , _igmasCreating = Nothing
    , _igmasRefreshing = Nothing
    , _igmasCreatingWithoutRetries = Nothing
    , _igmasRecreating = Nothing
    , _igmasAbandoning = Nothing
    }

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be deleted or are currently being deleted.
igmasDeleting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasDeleting
  = lens _igmasDeleting
      (\ s a -> s{_igmasDeleting = a})
      . mapping _Coerce

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be restarted or are currently being restarted.
igmasRestarting :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRestarting
  = lens _igmasRestarting
      (\ s a -> s{_igmasRestarting = a})
      . mapping _Coerce

-- | [Output Only] The number of instances in the managed instance group that
-- are running and have no scheduled actions.
igmasNone :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasNone
  = lens _igmasNone (\ s a -> s{_igmasNone = a}) .
      mapping _Coerce

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be created or are currently being created. If the group
-- fails to create any of these instances, it tries again until it creates
-- the instance successfully. If you have disabled creation retries, this
-- field will not be populated; instead, the creatingWithoutRetries field
-- will be populated.
igmasCreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasCreating
  = lens _igmasCreating
      (\ s a -> s{_igmasCreating = a})
      . mapping _Coerce

-- | [Output Only] The number of instances in the managed instance group that
-- are being reconfigured with properties that do not require a restart or
-- a recreate action. For example, setting or removing target pools for the
-- instance.
igmasRefreshing :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRefreshing
  = lens _igmasRefreshing
      (\ s a -> s{_igmasRefreshing = a})
      . mapping _Coerce

-- | [Output Only] The number of instances that the managed instance group
-- will attempt to create. The group attempts to create each instance only
-- once. If the group fails to create any of these instances, it decreases
-- the group\'s targetSize value accordingly.
igmasCreatingWithoutRetries :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasCreatingWithoutRetries
  = lens _igmasCreatingWithoutRetries
      (\ s a -> s{_igmasCreatingWithoutRetries = a})
      . mapping _Coerce

-- | [Output Only] The number of instances in the managed instance group that
-- are scheduled to be recreated or are currently being being recreated.
-- Recreating an instance deletes the existing root persistent disk and
-- creates a new disk from the image that is defined in the instance
-- template.
igmasRecreating :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasRecreating
  = lens _igmasRecreating
      (\ s a -> s{_igmasRecreating = a})
      . mapping _Coerce

-- | [Output Only] The total number of instances in the managed instance
-- group that are scheduled to be abandoned. Abandoning an instance removes
-- it from the managed instance group without deleting it.
igmasAbandoning :: Lens' InstanceGroupManagerActionsSummary (Maybe Int32)
igmasAbandoning
  = lens _igmasAbandoning
      (\ s a -> s{_igmasAbandoning = a})
      . mapping _Coerce

instance FromJSON InstanceGroupManagerActionsSummary
         where
        parseJSON
          = withObject "InstanceGroupManagerActionsSummary"
              (\ o ->
                 InstanceGroupManagerActionsSummary' <$>
                   (o .:? "deleting") <*> (o .:? "restarting") <*>
                     (o .:? "none")
                     <*> (o .:? "creating")
                     <*> (o .:? "refreshing")
                     <*> (o .:? "creatingWithoutRetries")
                     <*> (o .:? "recreating")
                     <*> (o .:? "abandoning"))

instance ToJSON InstanceGroupManagerActionsSummary
         where
        toJSON InstanceGroupManagerActionsSummary'{..}
          = object
              (catMaybes
                 [("deleting" .=) <$> _igmasDeleting,
                  ("restarting" .=) <$> _igmasRestarting,
                  ("none" .=) <$> _igmasNone,
                  ("creating" .=) <$> _igmasCreating,
                  ("refreshing" .=) <$> _igmasRefreshing,
                  ("creatingWithoutRetries" .=) <$>
                    _igmasCreatingWithoutRetries,
                  ("recreating" .=) <$> _igmasRecreating,
                  ("abandoning" .=) <$> _igmasAbandoning])

-- | A service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount'
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
    ServiceAccount'
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
                 ServiceAccount' <$>
                   (o .:? "email") <*> (o .:? "scopes" .!= mempty))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail,
                  ("scopes" .=) <$> _saScopes])

--
-- /See:/ 'regionInstanceGroupManagersAbandonInstancesRequest' smart constructor.
newtype RegionInstanceGroupManagersAbandonInstancesRequest = RegionInstanceGroupManagersAbandonInstancesRequest'
    { _rigmairInstances :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersAbandonInstancesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmairInstances'
regionInstanceGroupManagersAbandonInstancesRequest
    :: RegionInstanceGroupManagersAbandonInstancesRequest
regionInstanceGroupManagersAbandonInstancesRequest =
    RegionInstanceGroupManagersAbandonInstancesRequest'
    { _rigmairInstances = Nothing
    }

-- | The names of one or more instances to abandon.
rigmairInstances :: Lens' RegionInstanceGroupManagersAbandonInstancesRequest [Text]
rigmairInstances
  = lens _rigmairInstances
      (\ s a -> s{_rigmairInstances = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupManagersAbandonInstancesRequest
         where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersAbandonInstancesRequest"
              (\ o ->
                 RegionInstanceGroupManagersAbandonInstancesRequest'
                   <$> (o .:? "instances" .!= mempty))

instance ToJSON
         RegionInstanceGroupManagersAbandonInstancesRequest
         where
        toJSON
          RegionInstanceGroupManagersAbandonInstancesRequest'{..}
          = object
              (catMaybes [("instances" .=) <$> _rigmairInstances])

-- | Contains a list of networks.
--
-- /See:/ 'networkList' smart constructor.
data NetworkList = NetworkList'
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
    NetworkList'
    { _nlNextPageToken = Nothing
    , _nlKind = "compute#networkList"
    , _nlItems = Nothing
    , _nlSelfLink = Nothing
    , _nlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] Server-defined URL for this resource.
nlSelfLink :: Lens' NetworkList (Maybe Text)
nlSelfLink
  = lens _nlSelfLink (\ s a -> s{_nlSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
nlId :: Lens' NetworkList (Maybe Text)
nlId = lens _nlId (\ s a -> s{_nlId = a})

instance FromJSON NetworkList where
        parseJSON
          = withObject "NetworkList"
              (\ o ->
                 NetworkList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#networkList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON NetworkList where
        toJSON NetworkList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _nlNextPageToken,
                  Just ("kind" .= _nlKind), ("items" .=) <$> _nlItems,
                  ("selfLink" .=) <$> _nlSelfLink,
                  ("id" .=) <$> _nlId])

--
-- /See:/ 'instanceGroupsListInstancesRequest' smart constructor.
newtype InstanceGroupsListInstancesRequest = InstanceGroupsListInstancesRequest'
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
    InstanceGroupsListInstancesRequest'
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
                 InstanceGroupsListInstancesRequest' <$>
                   (o .:? "instanceState"))

instance ToJSON InstanceGroupsListInstancesRequest
         where
        toJSON InstanceGroupsListInstancesRequest'{..}
          = object
              (catMaybes
                 [("instanceState" .=) <$> _iglirInstanceState])

-- | Contains a list of InstanceGroup resources.
--
-- /See:/ 'regionInstanceGroupList' smart constructor.
data RegionInstanceGroupList = RegionInstanceGroupList'
    { _riglNextPageToken :: !(Maybe Text)
    , _riglKind          :: !Text
    , _riglItems         :: !(Maybe [InstanceGroup])
    , _riglSelfLink      :: !(Maybe Text)
    , _riglId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riglNextPageToken'
--
-- * 'riglKind'
--
-- * 'riglItems'
--
-- * 'riglSelfLink'
--
-- * 'riglId'
regionInstanceGroupList
    :: RegionInstanceGroupList
regionInstanceGroupList =
    RegionInstanceGroupList'
    { _riglNextPageToken = Nothing
    , _riglKind = "compute#regionInstanceGroupList"
    , _riglItems = Nothing
    , _riglSelfLink = Nothing
    , _riglId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
riglNextPageToken :: Lens' RegionInstanceGroupList (Maybe Text)
riglNextPageToken
  = lens _riglNextPageToken
      (\ s a -> s{_riglNextPageToken = a})

-- | The resource type.
riglKind :: Lens' RegionInstanceGroupList Text
riglKind = lens _riglKind (\ s a -> s{_riglKind = a})

-- | A list of InstanceGroup resources.
riglItems :: Lens' RegionInstanceGroupList [InstanceGroup]
riglItems
  = lens _riglItems (\ s a -> s{_riglItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this resource type. The server generates this
-- URL.
riglSelfLink :: Lens' RegionInstanceGroupList (Maybe Text)
riglSelfLink
  = lens _riglSelfLink (\ s a -> s{_riglSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
riglId :: Lens' RegionInstanceGroupList (Maybe Text)
riglId = lens _riglId (\ s a -> s{_riglId = a})

instance FromJSON RegionInstanceGroupList where
        parseJSON
          = withObject "RegionInstanceGroupList"
              (\ o ->
                 RegionInstanceGroupList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#regionInstanceGroupList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionInstanceGroupList where
        toJSON RegionInstanceGroupList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _riglNextPageToken,
                  Just ("kind" .= _riglKind),
                  ("items" .=) <$> _riglItems,
                  ("selfLink" .=) <$> _riglSelfLink,
                  ("id" .=) <$> _riglId])

-- | [Output Only] A map of scoped target pool lists.
--
-- /See:/ 'targetPoolAggregatedListItems' smart constructor.
newtype TargetPoolAggregatedListItems = TargetPoolAggregatedListItems'
    { _tpaliAddtional :: HashMap Text TargetPoolsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpaliAddtional'
targetPoolAggregatedListItems
    :: HashMap Text TargetPoolsScopedList -- ^ 'tpaliAddtional'
    -> TargetPoolAggregatedListItems
targetPoolAggregatedListItems pTpaliAddtional_ =
    TargetPoolAggregatedListItems'
    { _tpaliAddtional = _Coerce # pTpaliAddtional_
    }

-- | Name of the scope containing this set of target pools.
tpaliAddtional :: Lens' TargetPoolAggregatedListItems (HashMap Text TargetPoolsScopedList)
tpaliAddtional
  = lens _tpaliAddtional
      (\ s a -> s{_tpaliAddtional = a})
      . _Coerce

instance FromJSON TargetPoolAggregatedListItems where
        parseJSON
          = withObject "TargetPoolAggregatedListItems"
              (\ o ->
                 TargetPoolAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON TargetPoolAggregatedListItems where
        toJSON = toJSON . _tpaliAddtional

--
-- /See:/ 'targetInstancesScopedList' smart constructor.
data TargetInstancesScopedList = TargetInstancesScopedList'
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
    TargetInstancesScopedList'
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
                 TargetInstancesScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "targetInstances" .!= mempty))

instance ToJSON TargetInstancesScopedList where
        toJSON TargetInstancesScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _tislWarning,
                  ("targetInstances" .=) <$> _tislTargetInstances])

-- | [Output Only] A map of scoped address lists.
--
-- /See:/ 'addressAggregatedListItems' smart constructor.
newtype AddressAggregatedListItems = AddressAggregatedListItems'
    { _aAddtional :: HashMap Text AddressesScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddressAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAddtional'
addressAggregatedListItems
    :: HashMap Text AddressesScopedList -- ^ 'aAddtional'
    -> AddressAggregatedListItems
addressAggregatedListItems pAAddtional_ =
    AddressAggregatedListItems'
    { _aAddtional = _Coerce # pAAddtional_
    }

-- | [Output Only] Name of the scope containing this set of addresses.
aAddtional :: Lens' AddressAggregatedListItems (HashMap Text AddressesScopedList)
aAddtional
  = lens _aAddtional (\ s a -> s{_aAddtional = a}) .
      _Coerce

instance FromJSON AddressAggregatedListItems where
        parseJSON
          = withObject "AddressAggregatedListItems"
              (\ o ->
                 AddressAggregatedListItems' <$> (parseJSONObject o))

instance ToJSON AddressAggregatedListItems where
        toJSON = toJSON . _aAddtional

-- | Contains a list of Autoscaler resources.
--
-- /See:/ 'autoscalerList' smart constructor.
data AutoscalerList = AutoscalerList'
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
    AutoscalerList'
    { _autNextPageToken = Nothing
    , _autKind = "compute#autoscalerList"
    , _autItems = Nothing
    , _autSelfLink = Nothing
    , _autId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
autNextPageToken :: Lens' AutoscalerList (Maybe Text)
autNextPageToken
  = lens _autNextPageToken
      (\ s a -> s{_autNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#autoscalerList for lists
-- of autoscalers.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
autId :: Lens' AutoscalerList (Maybe Text)
autId = lens _autId (\ s a -> s{_autId = a})

instance FromJSON AutoscalerList where
        parseJSON
          = withObject "AutoscalerList"
              (\ o ->
                 AutoscalerList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#autoscalerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AutoscalerList where
        toJSON AutoscalerList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _autNextPageToken,
                  Just ("kind" .= _autKind),
                  ("items" .=) <$> _autItems,
                  ("selfLink" .=) <$> _autSelfLink,
                  ("id" .=) <$> _autId])

--
-- /See:/ 'targetSSLProxiesSetProxyHeaderRequest' smart constructor.
newtype TargetSSLProxiesSetProxyHeaderRequest = TargetSSLProxiesSetProxyHeaderRequest'
    { _tspsphrProxyHeader :: Maybe TargetSSLProxiesSetProxyHeaderRequestProxyHeader
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesSetProxyHeaderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tspsphrProxyHeader'
targetSSLProxiesSetProxyHeaderRequest
    :: TargetSSLProxiesSetProxyHeaderRequest
targetSSLProxiesSetProxyHeaderRequest =
    TargetSSLProxiesSetProxyHeaderRequest'
    { _tspsphrProxyHeader = Nothing
    }

-- | The new type of proxy header to append before sending data to the
-- backend. NONE or PROXY_V1 are allowed.
tspsphrProxyHeader :: Lens' TargetSSLProxiesSetProxyHeaderRequest (Maybe TargetSSLProxiesSetProxyHeaderRequestProxyHeader)
tspsphrProxyHeader
  = lens _tspsphrProxyHeader
      (\ s a -> s{_tspsphrProxyHeader = a})

instance FromJSON
         TargetSSLProxiesSetProxyHeaderRequest where
        parseJSON
          = withObject "TargetSSLProxiesSetProxyHeaderRequest"
              (\ o ->
                 TargetSSLProxiesSetProxyHeaderRequest' <$>
                   (o .:? "proxyHeader"))

instance ToJSON TargetSSLProxiesSetProxyHeaderRequest
         where
        toJSON TargetSSLProxiesSetProxyHeaderRequest'{..}
          = object
              (catMaybes
                 [("proxyHeader" .=) <$> _tspsphrProxyHeader])

--
-- /See:/ 'vpnTunnelAggregatedList' smart constructor.
data VPNTunnelAggregatedList = VPNTunnelAggregatedList'
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
    VPNTunnelAggregatedList'
    { _vtalNextPageToken = Nothing
    , _vtalKind = "compute#vpnTunnelAggregatedList"
    , _vtalItems = Nothing
    , _vtalSelfLink = Nothing
    , _vtalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
vtalId :: Lens' VPNTunnelAggregatedList (Maybe Text)
vtalId = lens _vtalId (\ s a -> s{_vtalId = a})

instance FromJSON VPNTunnelAggregatedList where
        parseJSON
          = withObject "VPNTunnelAggregatedList"
              (\ o ->
                 VPNTunnelAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#vpnTunnelAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON VPNTunnelAggregatedList where
        toJSON VPNTunnelAggregatedList'{..}
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
data AttachedDisk = AttachedDisk'
    { _adDiskEncryptionKey :: !(Maybe CustomerEncryptionKey)
    , _adKind              :: !Text
    , _adMode              :: !(Maybe AttachedDiskMode)
    , _adBoot              :: !(Maybe Bool)
    , _adAutoDelete        :: !(Maybe Bool)
    , _adInitializeParams  :: !(Maybe AttachedDiskInitializeParams)
    , _adDeviceName        :: !(Maybe Text)
    , _adInterface         :: !(Maybe AttachedDiskInterface)
    , _adSource            :: !(Maybe Text)
    , _adLicenses          :: !(Maybe [Text])
    , _adType              :: !(Maybe AttachedDiskType)
    , _adIndex             :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adDiskEncryptionKey'
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
    AttachedDisk'
    { _adDiskEncryptionKey = Nothing
    , _adKind = "compute#attachedDisk"
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

-- | Encrypts or decrypts a disk using a customer-supplied encryption key. If
-- you are creating a new disk, this field encrypts the new disk using an
-- encryption key that you provide. If you are attaching an existing disk
-- that is already encrypted, this field decrypts the disk using the
-- customer-supplied encryption key. If you encrypt a disk using a
-- customer-supplied key, you must provide the same key again when you
-- attempt to use this resource at a later time. For example, you must
-- provide the key when you create a snapshot or an image from the disk or
-- when you attach the disk to a virtual machine instance. If you do not
-- provide an encryption key, then the disk will be encrypted using an
-- automatically generated key and you do not need to provide a key to use
-- the disk later. Instance templates do not store customer-supplied
-- encryption keys, so you cannot use your own keys to encrypt disks in a
-- managed instance group.
adDiskEncryptionKey :: Lens' AttachedDisk (Maybe CustomerEncryptionKey)
adDiskEncryptionKey
  = lens _adDiskEncryptionKey
      (\ s a -> s{_adDiskEncryptionKey = a})

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

-- | Specifies the disk interface to use for attaching this disk, which is
-- either SCSI or NVME. The default is SCSI. Persistent disks must always
-- use SCSI and the request will fail if you attempt to attach a persistent
-- disk in any other format than SCSI. Local SSDs can use either NVME or
-- SCSI. For performance characteristics of SCSI over NVMe, see Local SSD
-- performance.
adInterface :: Lens' AttachedDisk (Maybe AttachedDiskInterface)
adInterface
  = lens _adInterface (\ s a -> s{_adInterface = a})

-- | Specifies a valid partial or full URL to an existing Persistent Disk
-- resource. When creating a new instance, one of
-- initializeParams.sourceImage or disks.source is required. If desired,
-- you can also attach existing non-root persistent disks using this
-- property. This field is only applicable for persistent disks. Note that
-- for InstanceTemplate, specify the disk name, not the URL for the disk.
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
adIndex
  = lens _adIndex (\ s a -> s{_adIndex = a}) .
      mapping _Coerce

instance FromJSON AttachedDisk where
        parseJSON
          = withObject "AttachedDisk"
              (\ o ->
                 AttachedDisk' <$>
                   (o .:? "diskEncryptionKey") <*>
                     (o .:? "kind" .!= "compute#attachedDisk")
                     <*> (o .:? "mode")
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
        toJSON AttachedDisk'{..}
          = object
              (catMaybes
                 [("diskEncryptionKey" .=) <$> _adDiskEncryptionKey,
                  Just ("kind" .= _adKind), ("mode" .=) <$> _adMode,
                  ("boot" .=) <$> _adBoot,
                  ("autoDelete" .=) <$> _adAutoDelete,
                  ("initializeParams" .=) <$> _adInitializeParams,
                  ("deviceName" .=) <$> _adDeviceName,
                  ("interface" .=) <$> _adInterface,
                  ("source" .=) <$> _adSource,
                  ("licenses" .=) <$> _adLicenses,
                  ("type" .=) <$> _adType, ("index" .=) <$> _adIndex])

-- | Contains a list of disk types.
--
-- /See:/ 'diskTypeList' smart constructor.
data DiskTypeList = DiskTypeList'
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
    DiskTypeList'
    { _dtlNextPageToken = Nothing
    , _dtlKind = "compute#diskTypeList"
    , _dtlItems = Nothing
    , _dtlSelfLink = Nothing
    , _dtlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dtlId :: Lens' DiskTypeList (Maybe Text)
dtlId = lens _dtlId (\ s a -> s{_dtlId = a})

instance FromJSON DiskTypeList where
        parseJSON
          = withObject "DiskTypeList"
              (\ o ->
                 DiskTypeList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskTypeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskTypeList where
        toJSON DiskTypeList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dtlNextPageToken,
                  Just ("kind" .= _dtlKind),
                  ("items" .=) <$> _dtlItems,
                  ("selfLink" .=) <$> _dtlSelfLink,
                  ("id" .=) <$> _dtlId])

--
-- /See:/ 'regionInstanceGroupsSetNamedPortsRequest' smart constructor.
data RegionInstanceGroupsSetNamedPortsRequest = RegionInstanceGroupsSetNamedPortsRequest'
    { _rigsnprFingerprint :: !(Maybe Bytes)
    , _rigsnprNamedPorts  :: !(Maybe [NamedPort])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsSetNamedPortsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigsnprFingerprint'
--
-- * 'rigsnprNamedPorts'
regionInstanceGroupsSetNamedPortsRequest
    :: RegionInstanceGroupsSetNamedPortsRequest
regionInstanceGroupsSetNamedPortsRequest =
    RegionInstanceGroupsSetNamedPortsRequest'
    { _rigsnprFingerprint = Nothing
    , _rigsnprNamedPorts = Nothing
    }

-- | The fingerprint of the named ports information for this instance group.
-- Use this optional property to prevent conflicts when multiple users
-- change the named ports settings concurrently. Obtain the fingerprint
-- with the instanceGroups.get method. Then, include the fingerprint in
-- your request to ensure that you do not overwrite changes that were
-- applied from another concurrent request.
rigsnprFingerprint :: Lens' RegionInstanceGroupsSetNamedPortsRequest (Maybe ByteString)
rigsnprFingerprint
  = lens _rigsnprFingerprint
      (\ s a -> s{_rigsnprFingerprint = a})
      . mapping _Bytes

-- | The list of named ports to set for this instance group.
rigsnprNamedPorts :: Lens' RegionInstanceGroupsSetNamedPortsRequest [NamedPort]
rigsnprNamedPorts
  = lens _rigsnprNamedPorts
      (\ s a -> s{_rigsnprNamedPorts = a})
      . _Default
      . _Coerce

instance FromJSON
         RegionInstanceGroupsSetNamedPortsRequest where
        parseJSON
          = withObject
              "RegionInstanceGroupsSetNamedPortsRequest"
              (\ o ->
                 RegionInstanceGroupsSetNamedPortsRequest' <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "namedPorts" .!= mempty))

instance ToJSON
         RegionInstanceGroupsSetNamedPortsRequest where
        toJSON RegionInstanceGroupsSetNamedPortsRequest'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _rigsnprFingerprint,
                  ("namedPorts" .=) <$> _rigsnprNamedPorts])

-- | Contains a list of machine types.
--
-- /See:/ 'machineTypeList' smart constructor.
data MachineTypeList = MachineTypeList'
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
    MachineTypeList'
    { _mtlNextPageToken = Nothing
    , _mtlKind = "compute#machineTypeList"
    , _mtlItems = Nothing
    , _mtlSelfLink = Nothing
    , _mtlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
mtlId :: Lens' MachineTypeList (Maybe Text)
mtlId = lens _mtlId (\ s a -> s{_mtlId = a})

instance FromJSON MachineTypeList where
        parseJSON
          = withObject "MachineTypeList"
              (\ o ->
                 MachineTypeList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#machineTypeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON MachineTypeList where
        toJSON MachineTypeList'{..}
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
data TargetHTTPProxyList = TargetHTTPProxyList'
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
    TargetHTTPProxyList'
    { _thttpplNextPageToken = Nothing
    , _thttpplKind = "compute#targetHttpProxyList"
    , _thttpplItems = Nothing
    , _thttpplSelfLink = Nothing
    , _thttpplId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
thttpplNextPageToken :: Lens' TargetHTTPProxyList (Maybe Text)
thttpplNextPageToken
  = lens _thttpplNextPageToken
      (\ s a -> s{_thttpplNextPageToken = a})

-- | Type of resource. Always compute#targetHttpProxyList for lists of target
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
thttpplId :: Lens' TargetHTTPProxyList (Maybe Text)
thttpplId
  = lens _thttpplId (\ s a -> s{_thttpplId = a})

instance FromJSON TargetHTTPProxyList where
        parseJSON
          = withObject "TargetHTTPProxyList"
              (\ o ->
                 TargetHTTPProxyList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#targetHttpProxyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetHTTPProxyList where
        toJSON TargetHTTPProxyList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _thttpplNextPageToken,
                  Just ("kind" .= _thttpplKind),
                  ("items" .=) <$> _thttpplItems,
                  ("selfLink" .=) <$> _thttpplSelfLink,
                  ("id" .=) <$> _thttpplId])

-- | Contains a list of managed instance groups.
--
-- /See:/ 'regionInstanceGroupManagerList' smart constructor.
data RegionInstanceGroupManagerList = RegionInstanceGroupManagerList'
    { _rigmlNextPageToken :: !(Maybe Text)
    , _rigmlKind          :: !Text
    , _rigmlItems         :: !(Maybe [InstanceGroupManager])
    , _rigmlSelfLink      :: !(Maybe Text)
    , _rigmlId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlNextPageToken'
--
-- * 'rigmlKind'
--
-- * 'rigmlItems'
--
-- * 'rigmlSelfLink'
--
-- * 'rigmlId'
regionInstanceGroupManagerList
    :: RegionInstanceGroupManagerList
regionInstanceGroupManagerList =
    RegionInstanceGroupManagerList'
    { _rigmlNextPageToken = Nothing
    , _rigmlKind = "compute#regionInstanceGroupManagerList"
    , _rigmlItems = Nothing
    , _rigmlSelfLink = Nothing
    , _rigmlId = Nothing
    }

-- | [Output only] A token used to continue a truncated list request.
rigmlNextPageToken :: Lens' RegionInstanceGroupManagerList (Maybe Text)
rigmlNextPageToken
  = lens _rigmlNextPageToken
      (\ s a -> s{_rigmlNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupManagerList for a list of managed instance groups
-- that exist in th regional scope.
rigmlKind :: Lens' RegionInstanceGroupManagerList Text
rigmlKind
  = lens _rigmlKind (\ s a -> s{_rigmlKind = a})

-- | A list of managed instance groups.
rigmlItems :: Lens' RegionInstanceGroupManagerList [InstanceGroupManager]
rigmlItems
  = lens _rigmlItems (\ s a -> s{_rigmlItems = a}) .
      _Default
      . _Coerce

-- | [Output only] The URL for this resource type. The server generates this
-- URL.
rigmlSelfLink :: Lens' RegionInstanceGroupManagerList (Maybe Text)
rigmlSelfLink
  = lens _rigmlSelfLink
      (\ s a -> s{_rigmlSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
rigmlId :: Lens' RegionInstanceGroupManagerList (Maybe Text)
rigmlId = lens _rigmlId (\ s a -> s{_rigmlId = a})

instance FromJSON RegionInstanceGroupManagerList
         where
        parseJSON
          = withObject "RegionInstanceGroupManagerList"
              (\ o ->
                 RegionInstanceGroupManagerList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#regionInstanceGroupManagerList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionInstanceGroupManagerList where
        toJSON RegionInstanceGroupManagerList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rigmlNextPageToken,
                  Just ("kind" .= _rigmlKind),
                  ("items" .=) <$> _rigmlItems,
                  ("selfLink" .=) <$> _rigmlSelfLink,
                  ("id" .=) <$> _rigmlId])

--
-- /See:/ 'diskTypesScopedList' smart constructor.
data DiskTypesScopedList = DiskTypesScopedList'
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
    DiskTypesScopedList'
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
                 DiskTypesScopedList' <$>
                   (o .:? "diskTypes" .!= mempty) <*> (o .:? "warning"))

instance ToJSON DiskTypesScopedList where
        toJSON DiskTypesScopedList'{..}
          = object
              (catMaybes
                 [("diskTypes" .=) <$> _dtslDiskTypes,
                  ("warning" .=) <$> _dtslWarning])

--
-- /See:/ 'diskTypeAggregatedList' smart constructor.
data DiskTypeAggregatedList = DiskTypeAggregatedList'
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
    DiskTypeAggregatedList'
    { _dtalNextPageToken = Nothing
    , _dtalKind = "compute#diskTypeAggregatedList"
    , _dtalItems = Nothing
    , _dtalSelfLink = Nothing
    , _dtalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dtalId :: Lens' DiskTypeAggregatedList (Maybe Text)
dtalId = lens _dtalId (\ s a -> s{_dtalId = a})

instance FromJSON DiskTypeAggregatedList where
        parseJSON
          = withObject "DiskTypeAggregatedList"
              (\ o ->
                 DiskTypeAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#diskTypeAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON DiskTypeAggregatedList where
        toJSON DiskTypeAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dtalNextPageToken,
                  Just ("kind" .= _dtalKind),
                  ("items" .=) <$> _dtalItems,
                  ("selfLink" .=) <$> _dtalSelfLink,
                  ("id" .=) <$> _dtalId])

--
-- /See:/ 'hTTPHealthCheck' smart constructor.
data HTTPHealthCheck = HTTPHealthCheck'
    { _httphcRequestPath :: !(Maybe Text)
    , _httphcHost        :: !(Maybe Text)
    , _httphcProxyHeader :: !(Maybe HTTPHealthCheckProxyHeader)
    , _httphcPortName    :: !(Maybe Text)
    , _httphcPort        :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcRequestPath'
--
-- * 'httphcHost'
--
-- * 'httphcProxyHeader'
--
-- * 'httphcPortName'
--
-- * 'httphcPort'
hTTPHealthCheck
    :: HTTPHealthCheck
hTTPHealthCheck =
    HTTPHealthCheck'
    { _httphcRequestPath = Nothing
    , _httphcHost = Nothing
    , _httphcProxyHeader = Nothing
    , _httphcPortName = Nothing
    , _httphcPort = Nothing
    }

-- | The request path of the HTTP health check request. The default value is
-- \/.
httphcRequestPath :: Lens' HTTPHealthCheck (Maybe Text)
httphcRequestPath
  = lens _httphcRequestPath
      (\ s a -> s{_httphcRequestPath = a})

-- | The value of the host header in the HTTP health check request. If left
-- empty (default value), the IP on behalf of which this health check is
-- performed will be used.
httphcHost :: Lens' HTTPHealthCheck (Maybe Text)
httphcHost
  = lens _httphcHost (\ s a -> s{_httphcHost = a})

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
httphcProxyHeader :: Lens' HTTPHealthCheck (Maybe HTTPHealthCheckProxyHeader)
httphcProxyHeader
  = lens _httphcProxyHeader
      (\ s a -> s{_httphcProxyHeader = a})

-- | Port name as defined in InstanceGroup#NamedPort#name. If both port and
-- port_name are defined, port takes precedence.
httphcPortName :: Lens' HTTPHealthCheck (Maybe Text)
httphcPortName
  = lens _httphcPortName
      (\ s a -> s{_httphcPortName = a})

-- | The TCP port number for the health check request. The default value is
-- 80.
httphcPort :: Lens' HTTPHealthCheck (Maybe Int32)
httphcPort
  = lens _httphcPort (\ s a -> s{_httphcPort = a}) .
      mapping _Coerce

instance FromJSON HTTPHealthCheck where
        parseJSON
          = withObject "HTTPHealthCheck"
              (\ o ->
                 HTTPHealthCheck' <$>
                   (o .:? "requestPath") <*> (o .:? "host") <*>
                     (o .:? "proxyHeader")
                     <*> (o .:? "portName")
                     <*> (o .:? "port"))

instance ToJSON HTTPHealthCheck where
        toJSON HTTPHealthCheck'{..}
          = object
              (catMaybes
                 [("requestPath" .=) <$> _httphcRequestPath,
                  ("host" .=) <$> _httphcHost,
                  ("proxyHeader" .=) <$> _httphcProxyHeader,
                  ("portName" .=) <$> _httphcPortName,
                  ("port" .=) <$> _httphcPort])

--
-- /See:/ 'backendServiceGroupHealth' smart constructor.
data BackendServiceGroupHealth = BackendServiceGroupHealth'
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
    BackendServiceGroupHealth'
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
                 BackendServiceGroupHealth' <$>
                   (o .:? "kind" .!=
                      "compute#backendServiceGroupHealth")
                     <*> (o .:? "healthStatus" .!= mempty))

instance ToJSON BackendServiceGroupHealth where
        toJSON BackendServiceGroupHealth'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bsghKind),
                  ("healthStatus" .=) <$> _bsghHealthStatus])

--
-- /See:/ 'autoscalersScopedList' smart constructor.
data AutoscalersScopedList = AutoscalersScopedList'
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
    AutoscalersScopedList'
    { _aAutoscalers = Nothing
    , _aWarning = Nothing
    }

-- | [Output Only] List of autoscalers contained in this scope.
aAutoscalers :: Lens' AutoscalersScopedList [Autoscaler]
aAutoscalers
  = lens _aAutoscalers (\ s a -> s{_aAutoscalers = a})
      . _Default
      . _Coerce

-- | [Output Only] Informational warning which replaces the list of
-- autoscalers when the list is empty.
aWarning :: Lens' AutoscalersScopedList (Maybe AutoscalersScopedListWarning)
aWarning = lens _aWarning (\ s a -> s{_aWarning = a})

instance FromJSON AutoscalersScopedList where
        parseJSON
          = withObject "AutoscalersScopedList"
              (\ o ->
                 AutoscalersScopedList' <$>
                   (o .:? "autoscalers" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON AutoscalersScopedList where
        toJSON AutoscalersScopedList'{..}
          = object
              (catMaybes
                 [("autoscalers" .=) <$> _aAutoscalers,
                  ("warning" .=) <$> _aWarning])

--
-- /See:/ 'autoscalerAggregatedList' smart constructor.
data AutoscalerAggregatedList = AutoscalerAggregatedList'
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
    AutoscalerAggregatedList'
    { _aalNextPageToken = Nothing
    , _aalKind = "compute#autoscalerAggregatedList"
    , _aalItems = Nothing
    , _aalSelfLink = Nothing
    , _aalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
aalNextPageToken :: Lens' AutoscalerAggregatedList (Maybe Text)
aalNextPageToken
  = lens _aalNextPageToken
      (\ s a -> s{_aalNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#autoscalerAggregatedList
-- for aggregated lists of autoscalers.
aalKind :: Lens' AutoscalerAggregatedList Text
aalKind = lens _aalKind (\ s a -> s{_aalKind = a})

-- | A map of scoped autoscaler lists.
aalItems :: Lens' AutoscalerAggregatedList (Maybe AutoscalerAggregatedListItems)
aalItems = lens _aalItems (\ s a -> s{_aalItems = a})

-- | [Output Only] Server-defined URL for this resource.
aalSelfLink :: Lens' AutoscalerAggregatedList (Maybe Text)
aalSelfLink
  = lens _aalSelfLink (\ s a -> s{_aalSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
aalId :: Lens' AutoscalerAggregatedList (Maybe Text)
aalId = lens _aalId (\ s a -> s{_aalId = a})

instance FromJSON AutoscalerAggregatedList where
        parseJSON
          = withObject "AutoscalerAggregatedList"
              (\ o ->
                 AutoscalerAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#autoscalerAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AutoscalerAggregatedList where
        toJSON AutoscalerAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _aalNextPageToken,
                  Just ("kind" .= _aalKind),
                  ("items" .=) <$> _aalItems,
                  ("selfLink" .=) <$> _aalSelfLink,
                  ("id" .=) <$> _aalId])

-- | A map of scoped router lists.
--
-- /See:/ 'routerAggregatedListItems' smart constructor.
newtype RouterAggregatedListItems = RouterAggregatedListItems'
    { _raliAddtional :: HashMap Text RoutersScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raliAddtional'
routerAggregatedListItems
    :: HashMap Text RoutersScopedList -- ^ 'raliAddtional'
    -> RouterAggregatedListItems
routerAggregatedListItems pRaliAddtional_ =
    RouterAggregatedListItems'
    { _raliAddtional = _Coerce # pRaliAddtional_
    }

-- | Name of the scope containing this set of routers.
raliAddtional :: Lens' RouterAggregatedListItems (HashMap Text RoutersScopedList)
raliAddtional
  = lens _raliAddtional
      (\ s a -> s{_raliAddtional = a})
      . _Coerce

instance FromJSON RouterAggregatedListItems where
        parseJSON
          = withObject "RouterAggregatedListItems"
              (\ o ->
                 RouterAggregatedListItems' <$> (parseJSONObject o))

instance ToJSON RouterAggregatedListItems where
        toJSON = toJSON . _raliAddtional

-- | Cloud Autoscaler policy.
--
-- /See:/ 'autoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy'
    { _apCustomMetricUtilizations :: !(Maybe [AutoscalingPolicyCustomMetricUtilization])
    , _apMaxNumReplicas           :: !(Maybe (Textual Int32))
    , _apCPUUtilization           :: !(Maybe AutoscalingPolicyCPUUtilization)
    , _apLoadBalancingUtilization :: !(Maybe AutoscalingPolicyLoadBalancingUtilization)
    , _apMinNumReplicas           :: !(Maybe (Textual Int32))
    , _apCoolDownPeriodSec        :: !(Maybe (Textual Int32))
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
    AutoscalingPolicy'
    { _apCustomMetricUtilizations = Nothing
    , _apMaxNumReplicas = Nothing
    , _apCPUUtilization = Nothing
    , _apLoadBalancingUtilization = Nothing
    , _apMinNumReplicas = Nothing
    , _apCoolDownPeriodSec = Nothing
    }

-- | Configuration parameters of autoscaling based on a custom metric.
apCustomMetricUtilizations :: Lens' AutoscalingPolicy [AutoscalingPolicyCustomMetricUtilization]
apCustomMetricUtilizations
  = lens _apCustomMetricUtilizations
      (\ s a -> s{_apCustomMetricUtilizations = a})
      . _Default
      . _Coerce

-- | The maximum number of instances that the autoscaler can scale up to.
-- This is required when creating or updating an autoscaler. The maximum
-- number of replicas should not be lower than minimal number of replicas.
apMaxNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMaxNumReplicas
  = lens _apMaxNumReplicas
      (\ s a -> s{_apMaxNumReplicas = a})
      . mapping _Coerce

-- | Defines the CPU utilization policy that allows the autoscaler to scale
-- based on the average CPU utilization of a managed instance group.
apCPUUtilization :: Lens' AutoscalingPolicy (Maybe AutoscalingPolicyCPUUtilization)
apCPUUtilization
  = lens _apCPUUtilization
      (\ s a -> s{_apCPUUtilization = a})

-- | Configuration parameters of autoscaling based on load balancer.
apLoadBalancingUtilization :: Lens' AutoscalingPolicy (Maybe AutoscalingPolicyLoadBalancingUtilization)
apLoadBalancingUtilization
  = lens _apLoadBalancingUtilization
      (\ s a -> s{_apLoadBalancingUtilization = a})

-- | The minimum number of replicas that the autoscaler can scale down to.
-- This cannot be less than 0. If not provided, autoscaler will choose a
-- default value depending on maximum number of instances allowed.
apMinNumReplicas :: Lens' AutoscalingPolicy (Maybe Int32)
apMinNumReplicas
  = lens _apMinNumReplicas
      (\ s a -> s{_apMinNumReplicas = a})
      . mapping _Coerce

-- | The number of seconds that the autoscaler should wait before it starts
-- collecting information from a new instance. This prevents the autoscaler
-- from collecting information when the instance is initializing, during
-- which the collected usage would not be reliable. The default time
-- autoscaler waits is 60 seconds. Virtual machine initialization times
-- might vary because of numerous factors. We recommend that you test how
-- long an instance may take to initialize. To do this, create an instance
-- and time the startup process.
apCoolDownPeriodSec :: Lens' AutoscalingPolicy (Maybe Int32)
apCoolDownPeriodSec
  = lens _apCoolDownPeriodSec
      (\ s a -> s{_apCoolDownPeriodSec = a})
      . mapping _Coerce

instance FromJSON AutoscalingPolicy where
        parseJSON
          = withObject "AutoscalingPolicy"
              (\ o ->
                 AutoscalingPolicy' <$>
                   (o .:? "customMetricUtilizations" .!= mempty) <*>
                     (o .:? "maxNumReplicas")
                     <*> (o .:? "cpuUtilization")
                     <*> (o .:? "loadBalancingUtilization")
                     <*> (o .:? "minNumReplicas")
                     <*> (o .:? "coolDownPeriodSec"))

instance ToJSON AutoscalingPolicy where
        toJSON AutoscalingPolicy'{..}
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
data RegionList = RegionList'
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
    RegionList'
    { _regNextPageToken = Nothing
    , _regKind = "compute#regionList"
    , _regItems = Nothing
    , _regSelfLink = Nothing
    , _regId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
regId :: Lens' RegionList (Maybe Text)
regId = lens _regId (\ s a -> s{_regId = a})

instance FromJSON RegionList where
        parseJSON
          = withObject "RegionList"
              (\ o ->
                 RegionList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#regionList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON RegionList where
        toJSON RegionList'{..}
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
data VPNTunnelList = VPNTunnelList'
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
    VPNTunnelList'
    { _vtlNextPageToken = Nothing
    , _vtlKind = "compute#vpnTunnelList"
    , _vtlItems = Nothing
    , _vtlSelfLink = Nothing
    , _vtlId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] Server-defined URL for this resource.
vtlSelfLink :: Lens' VPNTunnelList (Maybe Text)
vtlSelfLink
  = lens _vtlSelfLink (\ s a -> s{_vtlSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
vtlId :: Lens' VPNTunnelList (Maybe Text)
vtlId = lens _vtlId (\ s a -> s{_vtlId = a})

instance FromJSON VPNTunnelList where
        parseJSON
          = withObject "VPNTunnelList"
              (\ o ->
                 VPNTunnelList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#vpnTunnelList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON VPNTunnelList where
        toJSON VPNTunnelList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _vtlNextPageToken,
                  Just ("kind" .= _vtlKind),
                  ("items" .=) <$> _vtlItems,
                  ("selfLink" .=) <$> _vtlSelfLink,
                  ("id" .=) <$> _vtlId])

--
-- /See:/ 'machineTypeScratchDisksItem' smart constructor.
newtype MachineTypeScratchDisksItem = MachineTypeScratchDisksItem'
    { _mtsdiDiskGb :: Maybe (Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypeScratchDisksItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtsdiDiskGb'
machineTypeScratchDisksItem
    :: MachineTypeScratchDisksItem
machineTypeScratchDisksItem =
    MachineTypeScratchDisksItem'
    { _mtsdiDiskGb = Nothing
    }

-- | Size of the scratch disk, defined in GB.
mtsdiDiskGb :: Lens' MachineTypeScratchDisksItem (Maybe Int32)
mtsdiDiskGb
  = lens _mtsdiDiskGb (\ s a -> s{_mtsdiDiskGb = a}) .
      mapping _Coerce

instance FromJSON MachineTypeScratchDisksItem where
        parseJSON
          = withObject "MachineTypeScratchDisksItem"
              (\ o ->
                 MachineTypeScratchDisksItem' <$> (o .:? "diskGb"))

instance ToJSON MachineTypeScratchDisksItem where
        toJSON MachineTypeScratchDisksItem'{..}
          = object (catMaybes [("diskGb" .=) <$> _mtsdiDiskGb])

--
-- /See:/ 'subnetworksScopedListWarningDataItem' smart constructor.
data SubnetworksScopedListWarningDataItem = SubnetworksScopedListWarningDataItem'
    { _sslwdiValue :: !(Maybe Text)
    , _sslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslwdiValue'
--
-- * 'sslwdiKey'
subnetworksScopedListWarningDataItem
    :: SubnetworksScopedListWarningDataItem
subnetworksScopedListWarningDataItem =
    SubnetworksScopedListWarningDataItem'
    { _sslwdiValue = Nothing
    , _sslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
sslwdiValue :: Lens' SubnetworksScopedListWarningDataItem (Maybe Text)
sslwdiValue
  = lens _sslwdiValue (\ s a -> s{_sslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
sslwdiKey :: Lens' SubnetworksScopedListWarningDataItem (Maybe Text)
sslwdiKey
  = lens _sslwdiKey (\ s a -> s{_sslwdiKey = a})

instance FromJSON
         SubnetworksScopedListWarningDataItem where
        parseJSON
          = withObject "SubnetworksScopedListWarningDataItem"
              (\ o ->
                 SubnetworksScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON SubnetworksScopedListWarningDataItem
         where
        toJSON SubnetworksScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sslwdiValue,
                  ("key" .=) <$> _sslwdiKey])

--
-- /See:/ 'machineTypesScopedList' smart constructor.
data MachineTypesScopedList = MachineTypesScopedList'
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
    MachineTypesScopedList'
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
                 MachineTypesScopedList' <$>
                   (o .:? "machineTypes" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON MachineTypesScopedList where
        toJSON MachineTypesScopedList'{..}
          = object
              (catMaybes
                 [("machineTypes" .=) <$> _mtslMachineTypes,
                  ("warning" .=) <$> _mtslWarning])

-- | A Subnetwork resource.
--
-- /See:/ 'subnetwork' smart constructor.
data Subnetwork = Subnetwork'
    { _subKind              :: !Text
    , _subNetwork           :: !(Maybe Text)
    , _subGatewayAddress    :: !(Maybe Text)
    , _subSelfLink          :: !(Maybe Text)
    , _subName              :: !(Maybe Text)
    , _subCreationTimestamp :: !(Maybe Text)
    , _subIPCIdRRange       :: !(Maybe Text)
    , _subId                :: !(Maybe (Textual Word64))
    , _subRegion            :: !(Maybe Text)
    , _subDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subnetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subKind'
--
-- * 'subNetwork'
--
-- * 'subGatewayAddress'
--
-- * 'subSelfLink'
--
-- * 'subName'
--
-- * 'subCreationTimestamp'
--
-- * 'subIPCIdRRange'
--
-- * 'subId'
--
-- * 'subRegion'
--
-- * 'subDescription'
subnetwork
    :: Subnetwork
subnetwork =
    Subnetwork'
    { _subKind = "compute#subnetwork"
    , _subNetwork = Nothing
    , _subGatewayAddress = Nothing
    , _subSelfLink = Nothing
    , _subName = Nothing
    , _subCreationTimestamp = Nothing
    , _subIPCIdRRange = Nothing
    , _subId = Nothing
    , _subRegion = Nothing
    , _subDescription = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#subnetwork for
-- Subnetwork resources.
subKind :: Lens' Subnetwork Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | The URL of the network to which this subnetwork belongs, provided by the
-- client when initially creating the subnetwork. Only networks that are in
-- the distributed mode can have subnetworks.
subNetwork :: Lens' Subnetwork (Maybe Text)
subNetwork
  = lens _subNetwork (\ s a -> s{_subNetwork = a})

-- | [Output Only] The gateway address for default routes to reach
-- destination addresses outside this subnetwork.
subGatewayAddress :: Lens' Subnetwork (Maybe Text)
subGatewayAddress
  = lens _subGatewayAddress
      (\ s a -> s{_subGatewayAddress = a})

-- | [Output Only] Server-defined URL for the resource.
subSelfLink :: Lens' Subnetwork (Maybe Text)
subSelfLink
  = lens _subSelfLink (\ s a -> s{_subSelfLink = a})

-- | The name of the resource, provided by the client when initially creating
-- the resource. The name must be 1-63 characters long, and comply with
-- RFC1035. Specifically, the name must be 1-63 characters long and match
-- the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
subName :: Lens' Subnetwork (Maybe Text)
subName = lens _subName (\ s a -> s{_subName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
subCreationTimestamp :: Lens' Subnetwork (Maybe Text)
subCreationTimestamp
  = lens _subCreationTimestamp
      (\ s a -> s{_subCreationTimestamp = a})

-- | The range of internal addresses that are owned by this subnetwork.
-- Provide this property when you create the subnetwork. For example,
-- 10.0.0.0\/8 or 192.168.0.0\/16. Ranges must be unique and
-- non-overlapping within a network. Only IPv4 is supported.
subIPCIdRRange :: Lens' Subnetwork (Maybe Text)
subIPCIdRRange
  = lens _subIPCIdRRange
      (\ s a -> s{_subIPCIdRRange = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
subId :: Lens' Subnetwork (Maybe Word64)
subId
  = lens _subId (\ s a -> s{_subId = a}) .
      mapping _Coerce

-- | URL of the region where the Subnetwork resides.
subRegion :: Lens' Subnetwork (Maybe Text)
subRegion
  = lens _subRegion (\ s a -> s{_subRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
subDescription :: Lens' Subnetwork (Maybe Text)
subDescription
  = lens _subDescription
      (\ s a -> s{_subDescription = a})

instance FromJSON Subnetwork where
        parseJSON
          = withObject "Subnetwork"
              (\ o ->
                 Subnetwork' <$>
                   (o .:? "kind" .!= "compute#subnetwork") <*>
                     (o .:? "network")
                     <*> (o .:? "gatewayAddress")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "ipCidrRange")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description"))

instance ToJSON Subnetwork where
        toJSON Subnetwork'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _subKind),
                  ("network" .=) <$> _subNetwork,
                  ("gatewayAddress" .=) <$> _subGatewayAddress,
                  ("selfLink" .=) <$> _subSelfLink,
                  ("name" .=) <$> _subName,
                  ("creationTimestamp" .=) <$> _subCreationTimestamp,
                  ("ipCidrRange" .=) <$> _subIPCIdRRange,
                  ("id" .=) <$> _subId, ("region" .=) <$> _subRegion,
                  ("description" .=) <$> _subDescription])

--
-- /See:/ 'machineTypeAggregatedList' smart constructor.
data MachineTypeAggregatedList = MachineTypeAggregatedList'
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
    MachineTypeAggregatedList'
    { _mtalNextPageToken = Nothing
    , _mtalKind = "compute#machineTypeAggregatedList"
    , _mtalItems = Nothing
    , _mtalSelfLink = Nothing
    , _mtalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
mtalId :: Lens' MachineTypeAggregatedList (Maybe Text)
mtalId = lens _mtalId (\ s a -> s{_mtalId = a})

instance FromJSON MachineTypeAggregatedList where
        parseJSON
          = withObject "MachineTypeAggregatedList"
              (\ o ->
                 MachineTypeAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#machineTypeAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON MachineTypeAggregatedList where
        toJSON MachineTypeAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mtalNextPageToken,
                  Just ("kind" .= _mtalKind),
                  ("items" .=) <$> _mtalItems,
                  ("selfLink" .=) <$> _mtalSelfLink,
                  ("id" .=) <$> _mtalId])

-- | A DiskType resource.
--
-- /See:/ 'diskType' smart constructor.
data DiskType = DiskType'
    { _dtKind              :: !Text
    , _dtZone              :: !(Maybe Text)
    , _dtSelfLink          :: !(Maybe Text)
    , _dtName              :: !(Maybe Text)
    , _dtCreationTimestamp :: !(Maybe Text)
    , _dtId                :: !(Maybe (Textual Word64))
    , _dtValidDiskSize     :: !(Maybe Text)
    , _dtDescription       :: !(Maybe Text)
    , _dtDefaultDiskSizeGb :: !(Maybe (Textual Int64))
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
    DiskType'
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
dtId :: Lens' DiskType (Maybe Word64)
dtId
  = lens _dtId (\ s a -> s{_dtId = a}) .
      mapping _Coerce

-- | [Output Only] An optional textual description of the valid disk size,
-- such as \"10GB-10TB\".
dtValidDiskSize :: Lens' DiskType (Maybe Text)
dtValidDiskSize
  = lens _dtValidDiskSize
      (\ s a -> s{_dtValidDiskSize = a})

-- | [Output Only] An optional description of this resource.
dtDescription :: Lens' DiskType (Maybe Text)
dtDescription
  = lens _dtDescription
      (\ s a -> s{_dtDescription = a})

-- | [Output Only] Server-defined default disk size in GB.
dtDefaultDiskSizeGb :: Lens' DiskType (Maybe Int64)
dtDefaultDiskSizeGb
  = lens _dtDefaultDiskSizeGb
      (\ s a -> s{_dtDefaultDiskSizeGb = a})
      . mapping _Coerce

-- | [Output Only] The deprecation status associated with this disk type.
dtDeprecated :: Lens' DiskType (Maybe DeprecationStatus)
dtDeprecated
  = lens _dtDeprecated (\ s a -> s{_dtDeprecated = a})

instance FromJSON DiskType where
        parseJSON
          = withObject "DiskType"
              (\ o ->
                 DiskType' <$>
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
        toJSON DiskType'{..}
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
data URLMapValidationResult = URLMapValidationResult'
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
    URLMapValidationResult'
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
                 URLMapValidationResult' <$>
                   (o .:? "loadErrors" .!= mempty) <*>
                     (o .:? "loadSucceeded")
                     <*> (o .:? "testPassed")
                     <*> (o .:? "testFailures" .!= mempty))

instance ToJSON URLMapValidationResult where
        toJSON URLMapValidationResult'{..}
          = object
              (catMaybes
                 [("loadErrors" .=) <$> _umvrLoadErrors,
                  ("loadSucceeded" .=) <$> _umvrLoadSucceeded,
                  ("testPassed" .=) <$> _umvrTestPassed,
                  ("testFailures" .=) <$> _umvrTestFailures])

-- | A metadata key\/value entry.
--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata'
    { _mKind        :: !Text
    , _mFingerprint :: !(Maybe Bytes)
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
    Metadata'
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
mFingerprint :: Lens' Metadata (Maybe ByteString)
mFingerprint
  = lens _mFingerprint (\ s a -> s{_mFingerprint = a})
      . mapping _Bytes

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
                 Metadata' <$>
                   (o .:? "kind" .!= "compute#metadata") <*>
                     (o .:? "fingerprint")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind),
                  ("fingerprint" .=) <$> _mFingerprint,
                  ("items" .=) <$> _mItems])

--
-- /See:/ 'routeWarningsItem' smart constructor.
data RouteWarningsItem = RouteWarningsItem'
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
    RouteWarningsItem'
    { _rwiData = Nothing
    , _rwiCode = Nothing
    , _rwiMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
rwiData :: Lens' RouteWarningsItem [RouteWarningsItemDataItem]
rwiData
  = lens _rwiData (\ s a -> s{_rwiData = a}) . _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
rwiCode :: Lens' RouteWarningsItem (Maybe RouteWarningsItemCode)
rwiCode = lens _rwiCode (\ s a -> s{_rwiCode = a})

-- | [Output Only] A human-readable description of the warning code.
rwiMessage :: Lens' RouteWarningsItem (Maybe Text)
rwiMessage
  = lens _rwiMessage (\ s a -> s{_rwiMessage = a})

instance FromJSON RouteWarningsItem where
        parseJSON
          = withObject "RouteWarningsItem"
              (\ o ->
                 RouteWarningsItem' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON RouteWarningsItem where
        toJSON RouteWarningsItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _rwiData, ("code" .=) <$> _rwiCode,
                  ("message" .=) <$> _rwiMessage])

--
-- /See:/ 'machineTypesScopedListWarningDataItem' smart constructor.
data MachineTypesScopedListWarningDataItem = MachineTypesScopedListWarningDataItem'
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
    MachineTypesScopedListWarningDataItem'
    { _mtslwdiValue = Nothing
    , _mtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
mtslwdiValue :: Lens' MachineTypesScopedListWarningDataItem (Maybe Text)
mtslwdiValue
  = lens _mtslwdiValue (\ s a -> s{_mtslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
mtslwdiKey :: Lens' MachineTypesScopedListWarningDataItem (Maybe Text)
mtslwdiKey
  = lens _mtslwdiKey (\ s a -> s{_mtslwdiKey = a})

instance FromJSON
         MachineTypesScopedListWarningDataItem where
        parseJSON
          = withObject "MachineTypesScopedListWarningDataItem"
              (\ o ->
                 MachineTypesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON MachineTypesScopedListWarningDataItem
         where
        toJSON MachineTypesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mtslwdiValue,
                  ("key" .=) <$> _mtslwdiKey])

--
-- /See:/ 'instancesSetServiceAccountRequest' smart constructor.
data InstancesSetServiceAccountRequest = InstancesSetServiceAccountRequest'
    { _issarEmail  :: !(Maybe Text)
    , _issarScopes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetServiceAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issarEmail'
--
-- * 'issarScopes'
instancesSetServiceAccountRequest
    :: InstancesSetServiceAccountRequest
instancesSetServiceAccountRequest =
    InstancesSetServiceAccountRequest'
    { _issarEmail = Nothing
    , _issarScopes = Nothing
    }

-- | Email address of the service account.
issarEmail :: Lens' InstancesSetServiceAccountRequest (Maybe Text)
issarEmail
  = lens _issarEmail (\ s a -> s{_issarEmail = a})

-- | The list of scopes to be made available for this service account.
issarScopes :: Lens' InstancesSetServiceAccountRequest [Text]
issarScopes
  = lens _issarScopes (\ s a -> s{_issarScopes = a}) .
      _Default
      . _Coerce

instance FromJSON InstancesSetServiceAccountRequest
         where
        parseJSON
          = withObject "InstancesSetServiceAccountRequest"
              (\ o ->
                 InstancesSetServiceAccountRequest' <$>
                   (o .:? "email") <*> (o .:? "scopes" .!= mempty))

instance ToJSON InstancesSetServiceAccountRequest
         where
        toJSON InstancesSetServiceAccountRequest'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _issarEmail,
                  ("scopes" .=) <$> _issarScopes])

--
-- /See:/ 'diskTypesScopedListWarningDataItem' smart constructor.
data DiskTypesScopedListWarningDataItem = DiskTypesScopedListWarningDataItem'
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
    DiskTypesScopedListWarningDataItem'
    { _dtslwdiValue = Nothing
    , _dtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
dtslwdiValue :: Lens' DiskTypesScopedListWarningDataItem (Maybe Text)
dtslwdiValue
  = lens _dtslwdiValue (\ s a -> s{_dtslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
dtslwdiKey :: Lens' DiskTypesScopedListWarningDataItem (Maybe Text)
dtslwdiKey
  = lens _dtslwdiKey (\ s a -> s{_dtslwdiKey = a})

instance FromJSON DiskTypesScopedListWarningDataItem
         where
        parseJSON
          = withObject "DiskTypesScopedListWarningDataItem"
              (\ o ->
                 DiskTypesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON DiskTypesScopedListWarningDataItem
         where
        toJSON DiskTypesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dtslwdiValue,
                  ("key" .=) <$> _dtslwdiKey])

-- | A TargetHttpProxy resource. This resource defines an HTTP proxy.
--
-- /See:/ 'targetHTTPProxy' smart constructor.
data TargetHTTPProxy = TargetHTTPProxy'
    { _thttppURLMap            :: !(Maybe Text)
    , _thttppKind              :: !Text
    , _thttppSelfLink          :: !(Maybe Text)
    , _thttppName              :: !(Maybe Text)
    , _thttppCreationTimestamp :: !(Maybe Text)
    , _thttppId                :: !(Maybe (Textual Word64))
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
    TargetHTTPProxy'
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

-- | [Output Only] Type of resource. Always compute#targetHttpProxy for
-- target HTTP proxies.
thttppKind :: Lens' TargetHTTPProxy Text
thttppKind
  = lens _thttppKind (\ s a -> s{_thttppKind = a})

-- | [Output Only] Server-defined URL for the resource.
thttppSelfLink :: Lens' TargetHTTPProxy (Maybe Text)
thttppSelfLink
  = lens _thttppSelfLink
      (\ s a -> s{_thttppSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
thttppId :: Lens' TargetHTTPProxy (Maybe Word64)
thttppId
  = lens _thttppId (\ s a -> s{_thttppId = a}) .
      mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
thttppDescription :: Lens' TargetHTTPProxy (Maybe Text)
thttppDescription
  = lens _thttppDescription
      (\ s a -> s{_thttppDescription = a})

instance FromJSON TargetHTTPProxy where
        parseJSON
          = withObject "TargetHTTPProxy"
              (\ o ->
                 TargetHTTPProxy' <$>
                   (o .:? "urlMap") <*>
                     (o .:? "kind" .!= "compute#targetHttpProxy")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON TargetHTTPProxy where
        toJSON TargetHTTPProxy'{..}
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
data MachineType = MachineType'
    { _mtIsSharedCPU                  :: !(Maybe Bool)
    , _mtKind                         :: !Text
    , _mtImageSpaceGb                 :: !(Maybe (Textual Int32))
    , _mtZone                         :: !(Maybe Text)
    , _mtSelfLink                     :: !(Maybe Text)
    , _mtName                         :: !(Maybe Text)
    , _mtCreationTimestamp            :: !(Maybe Text)
    , _mtScratchDisks                 :: !(Maybe [MachineTypeScratchDisksItem])
    , _mtId                           :: !(Maybe (Textual Word64))
    , _mtGuestCPUs                    :: !(Maybe (Textual Int32))
    , _mtMaximumPersistentDisksSizeGb :: !(Maybe (Textual Int64))
    , _mtMaximumPersistentDisks       :: !(Maybe (Textual Int32))
    , _mtMemoryMb                     :: !(Maybe (Textual Int32))
    , _mtDescription                  :: !(Maybe Text)
    , _mtDeprecated                   :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtIsSharedCPU'
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
    MachineType'
    { _mtIsSharedCPU = Nothing
    , _mtKind = "compute#machineType"
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

-- | [Output Only] Whether this machine type has a shared CPU. See
-- Shared-core machine types for more information.
mtIsSharedCPU :: Lens' MachineType (Maybe Bool)
mtIsSharedCPU
  = lens _mtIsSharedCPU
      (\ s a -> s{_mtIsSharedCPU = a})

-- | [Output Only] The type of the resource. Always compute#machineType for
-- machine types.
mtKind :: Lens' MachineType Text
mtKind = lens _mtKind (\ s a -> s{_mtKind = a})

-- | [Deprecated] This property is deprecated and will never be populated
-- with any relevant values.
mtImageSpaceGb :: Lens' MachineType (Maybe Int32)
mtImageSpaceGb
  = lens _mtImageSpaceGb
      (\ s a -> s{_mtImageSpaceGb = a})
      . mapping _Coerce

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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
mtId :: Lens' MachineType (Maybe Word64)
mtId
  = lens _mtId (\ s a -> s{_mtId = a}) .
      mapping _Coerce

-- | [Output Only] The number of virtual CPUs that are available to the
-- instance.
mtGuestCPUs :: Lens' MachineType (Maybe Int32)
mtGuestCPUs
  = lens _mtGuestCPUs (\ s a -> s{_mtGuestCPUs = a}) .
      mapping _Coerce

-- | [Output Only] Maximum total persistent disks size (GB) allowed.
mtMaximumPersistentDisksSizeGb :: Lens' MachineType (Maybe Int64)
mtMaximumPersistentDisksSizeGb
  = lens _mtMaximumPersistentDisksSizeGb
      (\ s a -> s{_mtMaximumPersistentDisksSizeGb = a})
      . mapping _Coerce

-- | [Output Only] Maximum persistent disks allowed.
mtMaximumPersistentDisks :: Lens' MachineType (Maybe Int32)
mtMaximumPersistentDisks
  = lens _mtMaximumPersistentDisks
      (\ s a -> s{_mtMaximumPersistentDisks = a})
      . mapping _Coerce

-- | [Output Only] The amount of physical memory available to the instance,
-- defined in MB.
mtMemoryMb :: Lens' MachineType (Maybe Int32)
mtMemoryMb
  = lens _mtMemoryMb (\ s a -> s{_mtMemoryMb = a}) .
      mapping _Coerce

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
                 MachineType' <$>
                   (o .:? "isSharedCpu") <*>
                     (o .:? "kind" .!= "compute#machineType")
                     <*> (o .:? "imageSpaceGb")
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
        toJSON MachineType'{..}
          = object
              (catMaybes
                 [("isSharedCpu" .=) <$> _mtIsSharedCPU,
                  Just ("kind" .= _mtKind),
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

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetInstancesScopedListWarning' smart constructor.
data TargetInstancesScopedListWarning = TargetInstancesScopedListWarning'
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
    TargetInstancesScopedListWarning'
    { _tislwData = Nothing
    , _tislwCode = Nothing
    , _tislwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
tislwData :: Lens' TargetInstancesScopedListWarning [TargetInstancesScopedListWarningDataItem]
tislwData
  = lens _tislwData (\ s a -> s{_tislwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
tislwCode :: Lens' TargetInstancesScopedListWarning (Maybe TargetInstancesScopedListWarningCode)
tislwCode
  = lens _tislwCode (\ s a -> s{_tislwCode = a})

-- | [Output Only] A human-readable description of the warning code.
tislwMessage :: Lens' TargetInstancesScopedListWarning (Maybe Text)
tislwMessage
  = lens _tislwMessage (\ s a -> s{_tislwMessage = a})

instance FromJSON TargetInstancesScopedListWarning
         where
        parseJSON
          = withObject "TargetInstancesScopedListWarning"
              (\ o ->
                 TargetInstancesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetInstancesScopedListWarning
         where
        toJSON TargetInstancesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tislwData,
                  ("code" .=) <$> _tislwCode,
                  ("message" .=) <$> _tislwMessage])

--
-- /See:/ 'subnetworkAggregatedList' smart constructor.
data SubnetworkAggregatedList = SubnetworkAggregatedList'
    { _salNextPageToken :: !(Maybe Text)
    , _salKind          :: !Text
    , _salItems         :: !(Maybe SubnetworkAggregatedListItems)
    , _salSelfLink      :: !(Maybe Text)
    , _salId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworkAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salNextPageToken'
--
-- * 'salKind'
--
-- * 'salItems'
--
-- * 'salSelfLink'
--
-- * 'salId'
subnetworkAggregatedList
    :: SubnetworkAggregatedList
subnetworkAggregatedList =
    SubnetworkAggregatedList'
    { _salNextPageToken = Nothing
    , _salKind = "compute#subnetworkAggregatedList"
    , _salItems = Nothing
    , _salSelfLink = Nothing
    , _salId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
salNextPageToken :: Lens' SubnetworkAggregatedList (Maybe Text)
salNextPageToken
  = lens _salNextPageToken
      (\ s a -> s{_salNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#subnetworkAggregatedList
-- for aggregated lists of subnetworks.
salKind :: Lens' SubnetworkAggregatedList Text
salKind = lens _salKind (\ s a -> s{_salKind = a})

-- | [Output] A map of scoped Subnetwork lists.
salItems :: Lens' SubnetworkAggregatedList (Maybe SubnetworkAggregatedListItems)
salItems = lens _salItems (\ s a -> s{_salItems = a})

-- | [Output Only] Server-defined URL for this resource.
salSelfLink :: Lens' SubnetworkAggregatedList (Maybe Text)
salSelfLink
  = lens _salSelfLink (\ s a -> s{_salSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
salId :: Lens' SubnetworkAggregatedList (Maybe Text)
salId = lens _salId (\ s a -> s{_salId = a})

instance FromJSON SubnetworkAggregatedList where
        parseJSON
          = withObject "SubnetworkAggregatedList"
              (\ o ->
                 SubnetworkAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#subnetworkAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON SubnetworkAggregatedList where
        toJSON SubnetworkAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _salNextPageToken,
                  Just ("kind" .= _salKind),
                  ("items" .=) <$> _salItems,
                  ("selfLink" .=) <$> _salSelfLink,
                  ("id" .=) <$> _salId])

--
-- /See:/ 'disksResizeRequest' smart constructor.
newtype DisksResizeRequest = DisksResizeRequest'
    { _drrSizeGb :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksResizeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrSizeGb'
disksResizeRequest
    :: DisksResizeRequest
disksResizeRequest =
    DisksResizeRequest'
    { _drrSizeGb = Nothing
    }

-- | The new size of the persistent disk, which is specified in GB.
drrSizeGb :: Lens' DisksResizeRequest (Maybe Int64)
drrSizeGb
  = lens _drrSizeGb (\ s a -> s{_drrSizeGb = a}) .
      mapping _Coerce

instance FromJSON DisksResizeRequest where
        parseJSON
          = withObject "DisksResizeRequest"
              (\ o -> DisksResizeRequest' <$> (o .:? "sizeGb"))

instance ToJSON DisksResizeRequest where
        toJSON DisksResizeRequest'{..}
          = object (catMaybes [("sizeGb" .=) <$> _drrSizeGb])

--
-- /See:/ 'autoscalersScopedListWarningDataItem' smart constructor.
data AutoscalersScopedListWarningDataItem = AutoscalersScopedListWarningDataItem'
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
    AutoscalersScopedListWarningDataItem'
    { _aValue = Nothing
    , _aKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
aValue :: Lens' AutoscalersScopedListWarningDataItem (Maybe Text)
aValue = lens _aValue (\ s a -> s{_aValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
aKey :: Lens' AutoscalersScopedListWarningDataItem (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

instance FromJSON
         AutoscalersScopedListWarningDataItem where
        parseJSON
          = withObject "AutoscalersScopedListWarningDataItem"
              (\ o ->
                 AutoscalersScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON AutoscalersScopedListWarningDataItem
         where
        toJSON AutoscalersScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aValue, ("key" .=) <$> _aKey])

--
-- /See:/ 'regionInstanceGroupManagersSetTemplateRequest' smart constructor.
newtype RegionInstanceGroupManagersSetTemplateRequest = RegionInstanceGroupManagersSetTemplateRequest'
    { _rigmstrInstanceTemplate :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersSetTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmstrInstanceTemplate'
regionInstanceGroupManagersSetTemplateRequest
    :: RegionInstanceGroupManagersSetTemplateRequest
regionInstanceGroupManagersSetTemplateRequest =
    RegionInstanceGroupManagersSetTemplateRequest'
    { _rigmstrInstanceTemplate = Nothing
    }

-- | URL of the InstanceTemplate resource from which all new instances will
-- be created.
rigmstrInstanceTemplate :: Lens' RegionInstanceGroupManagersSetTemplateRequest (Maybe Text)
rigmstrInstanceTemplate
  = lens _rigmstrInstanceTemplate
      (\ s a -> s{_rigmstrInstanceTemplate = a})

instance FromJSON
         RegionInstanceGroupManagersSetTemplateRequest where
        parseJSON
          = withObject
              "RegionInstanceGroupManagersSetTemplateRequest"
              (\ o ->
                 RegionInstanceGroupManagersSetTemplateRequest' <$>
                   (o .:? "instanceTemplate"))

instance ToJSON
         RegionInstanceGroupManagersSetTemplateRequest where
        toJSON
          RegionInstanceGroupManagersSetTemplateRequest'{..}
          = object
              (catMaybes
                 [("instanceTemplate" .=) <$>
                    _rigmstrInstanceTemplate])

--
-- /See:/ 'instanceGroupsListInstances' smart constructor.
data InstanceGroupsListInstances = InstanceGroupsListInstances'
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
    InstanceGroupsListInstances'
    { _igliNextPageToken = Nothing
    , _igliKind = "compute#instanceGroupsListInstances"
    , _igliItems = Nothing
    , _igliSelfLink = Nothing
    , _igliId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
igliNextPageToken :: Lens' InstanceGroupsListInstances (Maybe Text)
igliNextPageToken
  = lens _igliNextPageToken
      (\ s a -> s{_igliNextPageToken = a})

-- | [Output Only] The resource type, which is always
-- compute#instanceGroupsListInstances for the list of instances in the
-- specified instance group.
igliKind :: Lens' InstanceGroupsListInstances Text
igliKind = lens _igliKind (\ s a -> s{_igliKind = a})

-- | [Output Only] A list of instances and any named ports that are assigned
-- to those instances.
igliItems :: Lens' InstanceGroupsListInstances [InstanceWithNamedPorts]
igliItems
  = lens _igliItems (\ s a -> s{_igliItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] The URL for this list of instances in the specified
-- instance groups. The server generates this URL.
igliSelfLink :: Lens' InstanceGroupsListInstances (Maybe Text)
igliSelfLink
  = lens _igliSelfLink (\ s a -> s{_igliSelfLink = a})

-- | [Output Only] A unique identifier for this list of instances in the
-- specified instance group. The server generates this identifier.
igliId :: Lens' InstanceGroupsListInstances (Maybe Text)
igliId = lens _igliId (\ s a -> s{_igliId = a})

instance FromJSON InstanceGroupsListInstances where
        parseJSON
          = withObject "InstanceGroupsListInstances"
              (\ o ->
                 InstanceGroupsListInstances' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#instanceGroupsListInstances")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceGroupsListInstances where
        toJSON InstanceGroupsListInstances'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _igliNextPageToken,
                  Just ("kind" .= _igliKind),
                  ("items" .=) <$> _igliItems,
                  ("selfLink" .=) <$> _igliSelfLink,
                  ("id" .=) <$> _igliId])

-- | Represents an Autoscaler resource. Autoscalers allow you to
-- automatically scale virtual machine instances in managed instance groups
-- according to an autoscaling policy that you define. For more
-- information, read Autoscaling Groups of Instances.
--
-- /See:/ 'autoscaler' smart constructor.
data Autoscaler = Autoscaler'
    { _aaKind              :: !Text
    , _aaZone              :: !(Maybe Text)
    , _aaSelfLink          :: !(Maybe Text)
    , _aaName              :: !(Maybe Text)
    , _aaCreationTimestamp :: !(Maybe Text)
    , _aaAutoscalingPolicy :: !(Maybe AutoscalingPolicy)
    , _aaId                :: !(Maybe (Textual Word64))
    , _aaRegion            :: !(Maybe Text)
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
-- * 'aaRegion'
--
-- * 'aaDescription'
--
-- * 'aaTarget'
autoscaler
    :: Autoscaler
autoscaler =
    Autoscaler'
    { _aaKind = "compute#autoscaler"
    , _aaZone = Nothing
    , _aaSelfLink = Nothing
    , _aaName = Nothing
    , _aaCreationTimestamp = Nothing
    , _aaAutoscalingPolicy = Nothing
    , _aaId = Nothing
    , _aaRegion = Nothing
    , _aaDescription = Nothing
    , _aaTarget = Nothing
    }

-- | [Output Only] Type of the resource. Always compute#autoscaler for
-- autoscalers.
aaKind :: Lens' Autoscaler Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | [Output Only] URL of the zone where the instance group resides (for
-- autoscalers living in zonal scope).
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

-- | The configuration parameters for the autoscaling algorithm. You can
-- define one or more of the policies for an autoscaler: cpuUtilization,
-- customMetricUtilizations, and loadBalancingUtilization. If none of these
-- are specified, the default will be to autoscale based on cpuUtilization
-- to 0.6 or 60%.
aaAutoscalingPolicy :: Lens' Autoscaler (Maybe AutoscalingPolicy)
aaAutoscalingPolicy
  = lens _aaAutoscalingPolicy
      (\ s a -> s{_aaAutoscalingPolicy = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
aaId :: Lens' Autoscaler (Maybe Word64)
aaId
  = lens _aaId (\ s a -> s{_aaId = a}) .
      mapping _Coerce

-- | [Output Only] URL of the region where the instance group resides (for
-- autoscalers living in regional scope).
aaRegion :: Lens' Autoscaler (Maybe Text)
aaRegion = lens _aaRegion (\ s a -> s{_aaRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
aaDescription :: Lens' Autoscaler (Maybe Text)
aaDescription
  = lens _aaDescription
      (\ s a -> s{_aaDescription = a})

-- | URL of the managed instance group that this autoscaler will scale.
aaTarget :: Lens' Autoscaler (Maybe Text)
aaTarget = lens _aaTarget (\ s a -> s{_aaTarget = a})

instance FromJSON Autoscaler where
        parseJSON
          = withObject "Autoscaler"
              (\ o ->
                 Autoscaler' <$>
                   (o .:? "kind" .!= "compute#autoscaler") <*>
                     (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "autoscalingPolicy")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "target"))

instance ToJSON Autoscaler where
        toJSON Autoscaler'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind), ("zone" .=) <$> _aaZone,
                  ("selfLink" .=) <$> _aaSelfLink,
                  ("name" .=) <$> _aaName,
                  ("creationTimestamp" .=) <$> _aaCreationTimestamp,
                  ("autoscalingPolicy" .=) <$> _aaAutoscalingPolicy,
                  ("id" .=) <$> _aaId, ("region" .=) <$> _aaRegion,
                  ("description" .=) <$> _aaDescription,
                  ("target" .=) <$> _aaTarget])

-- | [Output Only] Informational warning which replaces the list of disks
-- when the list is empty.
--
-- /See:/ 'disksScopedListWarning' smart constructor.
data DisksScopedListWarning = DisksScopedListWarning'
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
    DisksScopedListWarning'
    { _dslwData = Nothing
    , _dslwCode = Nothing
    , _dslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
dslwData :: Lens' DisksScopedListWarning [DisksScopedListWarningDataItem]
dslwData
  = lens _dslwData (\ s a -> s{_dslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
dslwCode :: Lens' DisksScopedListWarning (Maybe DisksScopedListWarningCode)
dslwCode = lens _dslwCode (\ s a -> s{_dslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
dslwMessage :: Lens' DisksScopedListWarning (Maybe Text)
dslwMessage
  = lens _dslwMessage (\ s a -> s{_dslwMessage = a})

instance FromJSON DisksScopedListWarning where
        parseJSON
          = withObject "DisksScopedListWarning"
              (\ o ->
                 DisksScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON DisksScopedListWarning where
        toJSON DisksScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _dslwData,
                  ("code" .=) <$> _dslwCode,
                  ("message" .=) <$> _dslwMessage])

-- | A map of scoped target vpn gateway lists.
--
-- /See:/ 'targetVPNGatewayAggregatedListItems' smart constructor.
newtype TargetVPNGatewayAggregatedListItems = TargetVPNGatewayAggregatedListItems'
    { _tvgaliAddtional :: HashMap Text TargetVPNGatewaysScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewayAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgaliAddtional'
targetVPNGatewayAggregatedListItems
    :: HashMap Text TargetVPNGatewaysScopedList -- ^ 'tvgaliAddtional'
    -> TargetVPNGatewayAggregatedListItems
targetVPNGatewayAggregatedListItems pTvgaliAddtional_ =
    TargetVPNGatewayAggregatedListItems'
    { _tvgaliAddtional = _Coerce # pTvgaliAddtional_
    }

-- | [Output Only] Name of the scope containing this set of target VPN
-- gateways.
tvgaliAddtional :: Lens' TargetVPNGatewayAggregatedListItems (HashMap Text TargetVPNGatewaysScopedList)
tvgaliAddtional
  = lens _tvgaliAddtional
      (\ s a -> s{_tvgaliAddtional = a})
      . _Coerce

instance FromJSON TargetVPNGatewayAggregatedListItems
         where
        parseJSON
          = withObject "TargetVPNGatewayAggregatedListItems"
              (\ o ->
                 TargetVPNGatewayAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON TargetVPNGatewayAggregatedListItems
         where
        toJSON = toJSON . _tvgaliAddtional

-- | Informational warning which replaces the list of addresses when the list
-- is empty.
--
-- /See:/ 'targetPoolsScopedListWarning' smart constructor.
data TargetPoolsScopedListWarning = TargetPoolsScopedListWarning'
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
    TargetPoolsScopedListWarning'
    { _tpslwData = Nothing
    , _tpslwCode = Nothing
    , _tpslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
tpslwData :: Lens' TargetPoolsScopedListWarning [TargetPoolsScopedListWarningDataItem]
tpslwData
  = lens _tpslwData (\ s a -> s{_tpslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
tpslwCode :: Lens' TargetPoolsScopedListWarning (Maybe TargetPoolsScopedListWarningCode)
tpslwCode
  = lens _tpslwCode (\ s a -> s{_tpslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
tpslwMessage :: Lens' TargetPoolsScopedListWarning (Maybe Text)
tpslwMessage
  = lens _tpslwMessage (\ s a -> s{_tpslwMessage = a})

instance FromJSON TargetPoolsScopedListWarning where
        parseJSON
          = withObject "TargetPoolsScopedListWarning"
              (\ o ->
                 TargetPoolsScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON TargetPoolsScopedListWarning where
        toJSON TargetPoolsScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tpslwData,
                  ("code" .=) <$> _tpslwCode,
                  ("message" .=) <$> _tpslwMessage])

--
-- /See:/ 'healthStatus' smart constructor.
data HealthStatus = HealthStatus'
    { _hsIPAddress   :: !(Maybe Text)
    , _hsHealthState :: !(Maybe HealthStatusHealthState)
    , _hsPort        :: !(Maybe (Textual Int32))
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
    HealthStatus'
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
hsPort
  = lens _hsPort (\ s a -> s{_hsPort = a}) .
      mapping _Coerce

-- | URL of the instance resource.
hsInstance :: Lens' HealthStatus (Maybe Text)
hsInstance
  = lens _hsInstance (\ s a -> s{_hsInstance = a})

instance FromJSON HealthStatus where
        parseJSON
          = withObject "HealthStatus"
              (\ o ->
                 HealthStatus' <$>
                   (o .:? "ipAddress") <*> (o .:? "healthState") <*>
                     (o .:? "port")
                     <*> (o .:? "instance"))

instance ToJSON HealthStatus where
        toJSON HealthStatus'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _hsIPAddress,
                  ("healthState" .=) <$> _hsHealthState,
                  ("port" .=) <$> _hsPort,
                  ("instance" .=) <$> _hsInstance])

-- | Region resource.
--
-- /See:/ 'region' smart constructor.
data Region = Region'
    { _regeStatus            :: !(Maybe RegionStatus)
    , _regeZones             :: !(Maybe [Text])
    , _regeKind              :: !Text
    , _regeSelfLink          :: !(Maybe Text)
    , _regeName              :: !(Maybe Text)
    , _regeCreationTimestamp :: !(Maybe Text)
    , _regeQuotas            :: !(Maybe [Quota])
    , _regeId                :: !(Maybe (Textual Word64))
    , _regeDescription       :: !(Maybe Text)
    , _regeDeprecated        :: !(Maybe DeprecationStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Region' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regeStatus'
--
-- * 'regeZones'
--
-- * 'regeKind'
--
-- * 'regeSelfLink'
--
-- * 'regeName'
--
-- * 'regeCreationTimestamp'
--
-- * 'regeQuotas'
--
-- * 'regeId'
--
-- * 'regeDescription'
--
-- * 'regeDeprecated'
region
    :: Region
region =
    Region'
    { _regeStatus = Nothing
    , _regeZones = Nothing
    , _regeKind = "compute#region"
    , _regeSelfLink = Nothing
    , _regeName = Nothing
    , _regeCreationTimestamp = Nothing
    , _regeQuotas = Nothing
    , _regeId = Nothing
    , _regeDescription = Nothing
    , _regeDeprecated = Nothing
    }

-- | [Output Only] Status of the region, either UP or DOWN.
regeStatus :: Lens' Region (Maybe RegionStatus)
regeStatus
  = lens _regeStatus (\ s a -> s{_regeStatus = a})

-- | [Output Only] A list of zones available in this region, in the form of
-- resource URLs.
regeZones :: Lens' Region [Text]
regeZones
  = lens _regeZones (\ s a -> s{_regeZones = a}) .
      _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#region for regions.
regeKind :: Lens' Region Text
regeKind = lens _regeKind (\ s a -> s{_regeKind = a})

-- | [Output Only] Server-defined URL for the resource.
regeSelfLink :: Lens' Region (Maybe Text)
regeSelfLink
  = lens _regeSelfLink (\ s a -> s{_regeSelfLink = a})

-- | [Output Only] Name of the resource.
regeName :: Lens' Region (Maybe Text)
regeName = lens _regeName (\ s a -> s{_regeName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
regeCreationTimestamp :: Lens' Region (Maybe Text)
regeCreationTimestamp
  = lens _regeCreationTimestamp
      (\ s a -> s{_regeCreationTimestamp = a})

-- | [Output Only] Quotas assigned to this region.
regeQuotas :: Lens' Region [Quota]
regeQuotas
  = lens _regeQuotas (\ s a -> s{_regeQuotas = a}) .
      _Default
      . _Coerce

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
regeId :: Lens' Region (Maybe Word64)
regeId
  = lens _regeId (\ s a -> s{_regeId = a}) .
      mapping _Coerce

-- | [Output Only] Textual description of the resource.
regeDescription :: Lens' Region (Maybe Text)
regeDescription
  = lens _regeDescription
      (\ s a -> s{_regeDescription = a})

-- | [Output Only] The deprecation status associated with this region.
regeDeprecated :: Lens' Region (Maybe DeprecationStatus)
regeDeprecated
  = lens _regeDeprecated
      (\ s a -> s{_regeDeprecated = a})

instance FromJSON Region where
        parseJSON
          = withObject "Region"
              (\ o ->
                 Region' <$>
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
        toJSON Region'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _regeStatus,
                  ("zones" .=) <$> _regeZones,
                  Just ("kind" .= _regeKind),
                  ("selfLink" .=) <$> _regeSelfLink,
                  ("name" .=) <$> _regeName,
                  ("creationTimestamp" .=) <$> _regeCreationTimestamp,
                  ("quotas" .=) <$> _regeQuotas, ("id" .=) <$> _regeId,
                  ("description" .=) <$> _regeDescription,
                  ("deprecated" .=) <$> _regeDeprecated])

-- | Guest OS features.
--
-- /See:/ 'guestOSFeature' smart constructor.
newtype GuestOSFeature = GuestOSFeature'
    { _gofType :: Maybe GuestOSFeatureType
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuestOSFeature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gofType'
guestOSFeature
    :: GuestOSFeature
guestOSFeature =
    GuestOSFeature'
    { _gofType = Nothing
    }

-- | The type of supported feature. Currenty only VIRTIO_SCSI_MULTIQUEUE is
-- supported. For newer Windows images, the server might also populate this
-- property with the value WINDOWS to indicate that this is a Windows
-- image. This value is purely informational and does not enable or disable
-- any features.
gofType :: Lens' GuestOSFeature (Maybe GuestOSFeatureType)
gofType = lens _gofType (\ s a -> s{_gofType = a})

instance FromJSON GuestOSFeature where
        parseJSON
          = withObject "GuestOSFeature"
              (\ o -> GuestOSFeature' <$> (o .:? "type"))

instance ToJSON GuestOSFeature where
        toJSON GuestOSFeature'{..}
          = object (catMaybes [("type" .=) <$> _gofType])

--
-- /See:/ 'vpnTunnel' smart constructor.
data VPNTunnel = VPNTunnel'
    { _vtDetailedStatus        :: !(Maybe Text)
    , _vtStatus                :: !(Maybe VPNTunnelStatus)
    , _vtLocalTrafficSelector  :: !(Maybe [Text])
    , _vtKind                  :: !Text
    , _vtPeerIP                :: !(Maybe Text)
    , _vtRouter                :: !(Maybe Text)
    , _vtTargetVPNGateway      :: !(Maybe Text)
    , _vtRemoteTrafficSelector :: !(Maybe [Text])
    , _vtSelfLink              :: !(Maybe Text)
    , _vtSharedSecret          :: !(Maybe Text)
    , _vtName                  :: !(Maybe Text)
    , _vtCreationTimestamp     :: !(Maybe Text)
    , _vtSharedSecretHash      :: !(Maybe Text)
    , _vtId                    :: !(Maybe (Textual Word64))
    , _vtIkeVersion            :: !(Maybe (Textual Int32))
    , _vtRegion                :: !(Maybe Text)
    , _vtDescription           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtDetailedStatus'
--
-- * 'vtStatus'
--
-- * 'vtLocalTrafficSelector'
--
-- * 'vtKind'
--
-- * 'vtPeerIP'
--
-- * 'vtRouter'
--
-- * 'vtTargetVPNGateway'
--
-- * 'vtRemoteTrafficSelector'
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
    VPNTunnel'
    { _vtDetailedStatus = Nothing
    , _vtStatus = Nothing
    , _vtLocalTrafficSelector = Nothing
    , _vtKind = "compute#vpnTunnel"
    , _vtPeerIP = Nothing
    , _vtRouter = Nothing
    , _vtTargetVPNGateway = Nothing
    , _vtRemoteTrafficSelector = Nothing
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

-- | Local traffic selector to use when establishing the VPN tunnel with peer
-- VPN gateway. The value should be a CIDR formatted string, for example:
-- 192.168.0.0\/16. The ranges should be disjoint. Only IPv4 is supported.
vtLocalTrafficSelector :: Lens' VPNTunnel [Text]
vtLocalTrafficSelector
  = lens _vtLocalTrafficSelector
      (\ s a -> s{_vtLocalTrafficSelector = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of resource. Always compute#vpnTunnel for VPN
-- tunnels.
vtKind :: Lens' VPNTunnel Text
vtKind = lens _vtKind (\ s a -> s{_vtKind = a})

-- | IP address of the peer VPN gateway. Only IPv4 is supported.
vtPeerIP :: Lens' VPNTunnel (Maybe Text)
vtPeerIP = lens _vtPeerIP (\ s a -> s{_vtPeerIP = a})

-- | URL of router resource to be used for dynamic routing.
vtRouter :: Lens' VPNTunnel (Maybe Text)
vtRouter = lens _vtRouter (\ s a -> s{_vtRouter = a})

-- | URL of the VPN gateway with which this VPN tunnel is associated.
-- Provided by the client when the VPN tunnel is created.
vtTargetVPNGateway :: Lens' VPNTunnel (Maybe Text)
vtTargetVPNGateway
  = lens _vtTargetVPNGateway
      (\ s a -> s{_vtTargetVPNGateway = a})

-- | Remote traffic selectors to use when establishing the VPN tunnel with
-- peer VPN gateway. The value should be a CIDR formatted string, for
-- example: 192.168.0.0\/16. The ranges should be disjoint. Only IPv4 is
-- supported.
vtRemoteTrafficSelector :: Lens' VPNTunnel [Text]
vtRemoteTrafficSelector
  = lens _vtRemoteTrafficSelector
      (\ s a -> s{_vtRemoteTrafficSelector = a})
      . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for the resource.
vtSelfLink :: Lens' VPNTunnel (Maybe Text)
vtSelfLink
  = lens _vtSelfLink (\ s a -> s{_vtSelfLink = a})

-- | Shared secret used to set the secure session between the Cloud VPN
-- gateway and the peer VPN gateway.
vtSharedSecret :: Lens' VPNTunnel (Maybe Text)
vtSharedSecret
  = lens _vtSharedSecret
      (\ s a -> s{_vtSharedSecret = a})

-- | Name of the resource. Provided by the client when the resource is
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
vtId :: Lens' VPNTunnel (Maybe Word64)
vtId
  = lens _vtId (\ s a -> s{_vtId = a}) .
      mapping _Coerce

-- | IKE protocol version to use when establishing the VPN tunnel with peer
-- VPN gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
vtIkeVersion :: Lens' VPNTunnel (Maybe Int32)
vtIkeVersion
  = lens _vtIkeVersion (\ s a -> s{_vtIkeVersion = a})
      . mapping _Coerce

-- | [Output Only] URL of the region where the VPN tunnel resides.
vtRegion :: Lens' VPNTunnel (Maybe Text)
vtRegion = lens _vtRegion (\ s a -> s{_vtRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
vtDescription :: Lens' VPNTunnel (Maybe Text)
vtDescription
  = lens _vtDescription
      (\ s a -> s{_vtDescription = a})

instance FromJSON VPNTunnel where
        parseJSON
          = withObject "VPNTunnel"
              (\ o ->
                 VPNTunnel' <$>
                   (o .:? "detailedStatus") <*> (o .:? "status") <*>
                     (o .:? "localTrafficSelector" .!= mempty)
                     <*> (o .:? "kind" .!= "compute#vpnTunnel")
                     <*> (o .:? "peerIp")
                     <*> (o .:? "router")
                     <*> (o .:? "targetVpnGateway")
                     <*> (o .:? "remoteTrafficSelector" .!= mempty)
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
        toJSON VPNTunnel'{..}
          = object
              (catMaybes
                 [("detailedStatus" .=) <$> _vtDetailedStatus,
                  ("status" .=) <$> _vtStatus,
                  ("localTrafficSelector" .=) <$>
                    _vtLocalTrafficSelector,
                  Just ("kind" .= _vtKind),
                  ("peerIp" .=) <$> _vtPeerIP,
                  ("router" .=) <$> _vtRouter,
                  ("targetVpnGateway" .=) <$> _vtTargetVPNGateway,
                  ("remoteTrafficSelector" .=) <$>
                    _vtRemoteTrafficSelector,
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
data OperationsScopedListWarning = OperationsScopedListWarning'
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
    OperationsScopedListWarning'
    { _oslwData = Nothing
    , _oslwCode = Nothing
    , _oslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
oslwData :: Lens' OperationsScopedListWarning [OperationsScopedListWarningDataItem]
oslwData
  = lens _oslwData (\ s a -> s{_oslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
oslwCode :: Lens' OperationsScopedListWarning (Maybe OperationsScopedListWarningCode)
oslwCode = lens _oslwCode (\ s a -> s{_oslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
oslwMessage :: Lens' OperationsScopedListWarning (Maybe Text)
oslwMessage
  = lens _oslwMessage (\ s a -> s{_oslwMessage = a})

instance FromJSON OperationsScopedListWarning where
        parseJSON
          = withObject "OperationsScopedListWarning"
              (\ o ->
                 OperationsScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON OperationsScopedListWarning where
        toJSON OperationsScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _oslwData,
                  ("code" .=) <$> _oslwCode,
                  ("message" .=) <$> _oslwMessage])

-- | Sets the scheduling options for an Instance.
--
-- /See:/ 'scheduling' smart constructor.
data Scheduling = Scheduling'
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
    Scheduling'
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
-- information, see Setting Instance Scheduling Options.
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
                 Scheduling' <$>
                   (o .:? "automaticRestart") <*>
                     (o .:? "onHostMaintenance")
                     <*> (o .:? "preemptible"))

instance ToJSON Scheduling where
        toJSON Scheduling'{..}
          = object
              (catMaybes
                 [("automaticRestart" .=) <$> _sAutomaticRestart,
                  ("onHostMaintenance" .=) <$> _sOnHostMaintenance,
                  ("preemptible" .=) <$> _sPreemptible])

--
-- /See:/ 'vpnTunnelsScopedListWarningDataItem' smart constructor.
data VPNTunnelsScopedListWarningDataItem = VPNTunnelsScopedListWarningDataItem'
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
    VPNTunnelsScopedListWarningDataItem'
    { _vtslwdiValue = Nothing
    , _vtslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
vtslwdiValue :: Lens' VPNTunnelsScopedListWarningDataItem (Maybe Text)
vtslwdiValue
  = lens _vtslwdiValue (\ s a -> s{_vtslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
vtslwdiKey :: Lens' VPNTunnelsScopedListWarningDataItem (Maybe Text)
vtslwdiKey
  = lens _vtslwdiKey (\ s a -> s{_vtslwdiKey = a})

instance FromJSON VPNTunnelsScopedListWarningDataItem
         where
        parseJSON
          = withObject "VPNTunnelsScopedListWarningDataItem"
              (\ o ->
                 VPNTunnelsScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON VPNTunnelsScopedListWarningDataItem
         where
        toJSON VPNTunnelsScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vtslwdiValue,
                  ("key" .=) <$> _vtslwdiKey])

-- | Contains a list of Subnetwork resources.
--
-- /See:/ 'subnetworkList' smart constructor.
data SubnetworkList = SubnetworkList'
    { _slNextPageToken :: !(Maybe Text)
    , _slKind          :: !Text
    , _slItems         :: !(Maybe [Subnetwork])
    , _slSelfLink      :: !(Maybe Text)
    , _slId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworkList' with the minimum fields required to make a request.
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
subnetworkList
    :: SubnetworkList
subnetworkList =
    SubnetworkList'
    { _slNextPageToken = Nothing
    , _slKind = "compute#subnetworkList"
    , _slItems = Nothing
    , _slSelfLink = Nothing
    , _slId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
slNextPageToken :: Lens' SubnetworkList (Maybe Text)
slNextPageToken
  = lens _slNextPageToken
      (\ s a -> s{_slNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#subnetworkList for lists
-- of subnetworks.
slKind :: Lens' SubnetworkList Text
slKind = lens _slKind (\ s a -> s{_slKind = a})

-- | The Subnetwork resources.
slItems :: Lens' SubnetworkList [Subnetwork]
slItems
  = lens _slItems (\ s a -> s{_slItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
slSelfLink :: Lens' SubnetworkList (Maybe Text)
slSelfLink
  = lens _slSelfLink (\ s a -> s{_slSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
slId :: Lens' SubnetworkList (Maybe Text)
slId = lens _slId (\ s a -> s{_slId = a})

instance FromJSON SubnetworkList where
        parseJSON
          = withObject "SubnetworkList"
              (\ o ->
                 SubnetworkList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#subnetworkList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON SubnetworkList where
        toJSON SubnetworkList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slNextPageToken,
                  Just ("kind" .= _slKind), ("items" .=) <$> _slItems,
                  ("selfLink" .=) <$> _slSelfLink,
                  ("id" .=) <$> _slId])

-- | Informational warning which replaces the list of forwarding rules when
-- the list is empty.
--
-- /See:/ 'forwardingRulesScopedListWarning' smart constructor.
data ForwardingRulesScopedListWarning = ForwardingRulesScopedListWarning'
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
    ForwardingRulesScopedListWarning'
    { _frslwData = Nothing
    , _frslwCode = Nothing
    , _frslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
frslwData :: Lens' ForwardingRulesScopedListWarning [ForwardingRulesScopedListWarningDataItem]
frslwData
  = lens _frslwData (\ s a -> s{_frslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
frslwCode :: Lens' ForwardingRulesScopedListWarning (Maybe ForwardingRulesScopedListWarningCode)
frslwCode
  = lens _frslwCode (\ s a -> s{_frslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
frslwMessage :: Lens' ForwardingRulesScopedListWarning (Maybe Text)
frslwMessage
  = lens _frslwMessage (\ s a -> s{_frslwMessage = a})

instance FromJSON ForwardingRulesScopedListWarning
         where
        parseJSON
          = withObject "ForwardingRulesScopedListWarning"
              (\ o ->
                 ForwardingRulesScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON ForwardingRulesScopedListWarning
         where
        toJSON ForwardingRulesScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _frslwData,
                  ("code" .=) <$> _frslwCode,
                  ("message" .=) <$> _frslwMessage])

-- | Contains a list of HttpHealthCheck resources.
--
-- /See:/ 'hTTPHealthCheckList' smart constructor.
data HTTPHealthCheckList = HTTPHealthCheckList'
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
    HTTPHealthCheckList'
    { _httphclNextPageToken = Nothing
    , _httphclKind = "compute#httpHealthCheckList"
    , _httphclItems = Nothing
    , _httphclSelfLink = Nothing
    , _httphclId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 HTTPHealthCheckList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#httpHealthCheckList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON HTTPHealthCheckList where
        toJSON HTTPHealthCheckList'{..}
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
data InstanceGroupManagersScopedListWarning = InstanceGroupManagersScopedListWarning'
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
    InstanceGroupManagersScopedListWarning'
    { _igmslwData = Nothing
    , _igmslwCode = Nothing
    , _igmslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
igmslwData :: Lens' InstanceGroupManagersScopedListWarning [InstanceGroupManagersScopedListWarningDataItem]
igmslwData
  = lens _igmslwData (\ s a -> s{_igmslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
igmslwCode :: Lens' InstanceGroupManagersScopedListWarning (Maybe InstanceGroupManagersScopedListWarningCode)
igmslwCode
  = lens _igmslwCode (\ s a -> s{_igmslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
igmslwMessage :: Lens' InstanceGroupManagersScopedListWarning (Maybe Text)
igmslwMessage
  = lens _igmslwMessage
      (\ s a -> s{_igmslwMessage = a})

instance FromJSON
         InstanceGroupManagersScopedListWarning where
        parseJSON
          = withObject "InstanceGroupManagersScopedListWarning"
              (\ o ->
                 InstanceGroupManagersScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON
         InstanceGroupManagersScopedListWarning where
        toJSON InstanceGroupManagersScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _igmslwData,
                  ("code" .=) <$> _igmslwCode,
                  ("message" .=) <$> _igmslwMessage])

--
-- /See:/ 'urlMapsValidateRequest' smart constructor.
newtype URLMapsValidateRequest = URLMapsValidateRequest'
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
    URLMapsValidateRequest'
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
                 URLMapsValidateRequest' <$> (o .:? "resource"))

instance ToJSON URLMapsValidateRequest where
        toJSON URLMapsValidateRequest'{..}
          = object
              (catMaybes [("resource" .=) <$> _umvrResource])

--
-- /See:/ 'instanceGroupManagersSetTargetPoolsRequest' smart constructor.
data InstanceGroupManagersSetTargetPoolsRequest = InstanceGroupManagersSetTargetPoolsRequest'
    { _igmstprFingerprint :: !(Maybe Bytes)
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
    InstanceGroupManagersSetTargetPoolsRequest'
    { _igmstprFingerprint = Nothing
    , _igmstprTargetPools = Nothing
    }

-- | The fingerprint of the target pools information. Use this optional
-- property to prevent conflicts when multiple users change the target
-- pools settings concurrently. Obtain the fingerprint with the
-- instanceGroupManagers.get method. Then, include the fingerprint in your
-- request to ensure that you do not overwrite changes that were applied
-- from another concurrent request.
igmstprFingerprint :: Lens' InstanceGroupManagersSetTargetPoolsRequest (Maybe ByteString)
igmstprFingerprint
  = lens _igmstprFingerprint
      (\ s a -> s{_igmstprFingerprint = a})
      . mapping _Bytes

-- | The list of target pool URLs that instances in this managed instance
-- group belong to. The managed instance group applies these target pools
-- to all of the instances in the group. Existing instances and new
-- instances in the group all receive these target pool settings.
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
                 InstanceGroupManagersSetTargetPoolsRequest' <$>
                   (o .:? "fingerprint") <*>
                     (o .:? "targetPools" .!= mempty))

instance ToJSON
         InstanceGroupManagersSetTargetPoolsRequest where
        toJSON
          InstanceGroupManagersSetTargetPoolsRequest'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _igmstprFingerprint,
                  ("targetPools" .=) <$> _igmstprTargetPools])

-- | Contains a list of HttpsHealthCheck resources.
--
-- /See:/ 'httpsHealthCheckList' smart constructor.
data HTTPSHealthCheckList = HTTPSHealthCheckList'
    { _hhclNextPageToken :: !(Maybe Text)
    , _hhclKind          :: !Text
    , _hhclItems         :: !(Maybe [HTTPSHealthCheck])
    , _hhclSelfLink      :: !(Maybe Text)
    , _hhclId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthCheckList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhclNextPageToken'
--
-- * 'hhclKind'
--
-- * 'hhclItems'
--
-- * 'hhclSelfLink'
--
-- * 'hhclId'
httpsHealthCheckList
    :: HTTPSHealthCheckList
httpsHealthCheckList =
    HTTPSHealthCheckList'
    { _hhclNextPageToken = Nothing
    , _hhclKind = "compute#httpsHealthCheckList"
    , _hhclItems = Nothing
    , _hhclSelfLink = Nothing
    , _hhclId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
hhclNextPageToken :: Lens' HTTPSHealthCheckList (Maybe Text)
hhclNextPageToken
  = lens _hhclNextPageToken
      (\ s a -> s{_hhclNextPageToken = a})

-- | Type of resource.
hhclKind :: Lens' HTTPSHealthCheckList Text
hhclKind = lens _hhclKind (\ s a -> s{_hhclKind = a})

-- | A list of HttpsHealthCheck resources.
hhclItems :: Lens' HTTPSHealthCheckList [HTTPSHealthCheck]
hhclItems
  = lens _hhclItems (\ s a -> s{_hhclItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
hhclSelfLink :: Lens' HTTPSHealthCheckList (Maybe Text)
hhclSelfLink
  = lens _hhclSelfLink (\ s a -> s{_hhclSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
hhclId :: Lens' HTTPSHealthCheckList (Maybe Text)
hhclId = lens _hhclId (\ s a -> s{_hhclId = a})

instance FromJSON HTTPSHealthCheckList where
        parseJSON
          = withObject "HTTPSHealthCheckList"
              (\ o ->
                 HTTPSHealthCheckList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#httpsHealthCheckList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON HTTPSHealthCheckList where
        toJSON HTTPSHealthCheckList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _hhclNextPageToken,
                  Just ("kind" .= _hhclKind),
                  ("items" .=) <$> _hhclItems,
                  ("selfLink" .=) <$> _hhclSelfLink,
                  ("id" .=) <$> _hhclId])

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

-- | A license resource.
--
-- /See:/ 'license' smart constructor.
data License = License'
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
    License'
    { _lChargesUseFee = Nothing
    , _lKind = "compute#license"
    , _lSelfLink = Nothing
    , _lName = Nothing
    }

-- | [Output Only] If true, the customer will be charged license fee for
-- running software that contains this license on an instance.
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
                 License' <$>
                   (o .:? "chargesUseFee") <*>
                     (o .:? "kind" .!= "compute#license")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name"))

instance ToJSON License where
        toJSON License'{..}
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
data PathRule = PathRule'
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
    PathRule'
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
                 PathRule' <$>
                   (o .:? "service") <*> (o .:? "paths" .!= mempty))

instance ToJSON PathRule where
        toJSON PathRule'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _prService,
                  ("paths" .=) <$> _prPaths])

-- | Contains a list of instances.
--
-- /See:/ 'instanceList' smart constructor.
data InstanceList = InstanceList'
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
    InstanceList'
    { _insNextPageToken = Nothing
    , _insKind = "compute#instanceList"
    , _insItems = Nothing
    , _insSelfLink = Nothing
    , _insId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
insNextPageToken :: Lens' InstanceList (Maybe Text)
insNextPageToken
  = lens _insNextPageToken
      (\ s a -> s{_insNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#instanceList for lists of
-- Instance resources.
insKind :: Lens' InstanceList Text
insKind = lens _insKind (\ s a -> s{_insKind = a})

-- | [Output Only] A list of instances.
insItems :: Lens' InstanceList [Instance]
insItems
  = lens _insItems (\ s a -> s{_insItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
insSelfLink :: Lens' InstanceList (Maybe Text)
insSelfLink
  = lens _insSelfLink (\ s a -> s{_insSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
insId :: Lens' InstanceList (Maybe Text)
insId = lens _insId (\ s a -> s{_insId = a})

instance FromJSON InstanceList where
        parseJSON
          = withObject "InstanceList"
              (\ o ->
                 InstanceList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#instanceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON InstanceList where
        toJSON InstanceList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _insNextPageToken,
                  Just ("kind" .= _insKind),
                  ("items" .=) <$> _insItems,
                  ("selfLink" .=) <$> _insSelfLink,
                  ("id" .=) <$> _insId])

-- | [Output] A map of scoped Subnetwork lists.
--
-- /See:/ 'subnetworkAggregatedListItems' smart constructor.
newtype SubnetworkAggregatedListItems = SubnetworkAggregatedListItems'
    { _saliAddtional :: HashMap Text SubnetworksScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworkAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saliAddtional'
subnetworkAggregatedListItems
    :: HashMap Text SubnetworksScopedList -- ^ 'saliAddtional'
    -> SubnetworkAggregatedListItems
subnetworkAggregatedListItems pSaliAddtional_ =
    SubnetworkAggregatedListItems'
    { _saliAddtional = _Coerce # pSaliAddtional_
    }

-- | Name of the scope containing this set of Subnetworks.
saliAddtional :: Lens' SubnetworkAggregatedListItems (HashMap Text SubnetworksScopedList)
saliAddtional
  = lens _saliAddtional
      (\ s a -> s{_saliAddtional = a})
      . _Coerce

instance FromJSON SubnetworkAggregatedListItems where
        parseJSON
          = withObject "SubnetworkAggregatedListItems"
              (\ o ->
                 SubnetworkAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON SubnetworkAggregatedListItems where
        toJSON = toJSON . _saliAddtional

--
-- /See:/ 'managedInstanceLastAttempt' smart constructor.
newtype ManagedInstanceLastAttempt = ManagedInstanceLastAttempt'
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
    ManagedInstanceLastAttempt'
    { _milaErrors = Nothing
    }

-- | [Output Only] Encountered errors during the last attempt to create or
-- delete the instance.
milaErrors :: Lens' ManagedInstanceLastAttempt (Maybe ManagedInstanceLastAttemptErrors)
milaErrors
  = lens _milaErrors (\ s a -> s{_milaErrors = a})

instance FromJSON ManagedInstanceLastAttempt where
        parseJSON
          = withObject "ManagedInstanceLastAttempt"
              (\ o ->
                 ManagedInstanceLastAttempt' <$> (o .:? "errors"))

instance ToJSON ManagedInstanceLastAttempt where
        toJSON ManagedInstanceLastAttempt'{..}
          = object (catMaybes [("errors" .=) <$> _milaErrors])

-- | Contains a list of BackendService resources.
--
-- /See:/ 'backendServiceList' smart constructor.
data BackendServiceList = BackendServiceList'
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
    BackendServiceList'
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
                 BackendServiceList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#backendServiceList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON BackendServiceList where
        toJSON BackendServiceList'{..}
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
data InstanceGroupsScopedListWarning = InstanceGroupsScopedListWarning'
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
    InstanceGroupsScopedListWarning'
    { _igslwData = Nothing
    , _igslwCode = Nothing
    , _igslwMessage = Nothing
    }

-- | [Output Only] Metadata about this warning in key: value format. For
-- example: \"data\": [ { \"key\": \"scope\", \"value\":
-- \"zones\/us-east1-d\" }
igslwData :: Lens' InstanceGroupsScopedListWarning [InstanceGroupsScopedListWarningDataItem]
igslwData
  = lens _igslwData (\ s a -> s{_igslwData = a}) .
      _Default
      . _Coerce

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
igslwCode :: Lens' InstanceGroupsScopedListWarning (Maybe InstanceGroupsScopedListWarningCode)
igslwCode
  = lens _igslwCode (\ s a -> s{_igslwCode = a})

-- | [Output Only] A human-readable description of the warning code.
igslwMessage :: Lens' InstanceGroupsScopedListWarning (Maybe Text)
igslwMessage
  = lens _igslwMessage (\ s a -> s{_igslwMessage = a})

instance FromJSON InstanceGroupsScopedListWarning
         where
        parseJSON
          = withObject "InstanceGroupsScopedListWarning"
              (\ o ->
                 InstanceGroupsScopedListWarning' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON InstanceGroupsScopedListWarning where
        toJSON InstanceGroupsScopedListWarning'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _igslwData,
                  ("code" .=) <$> _igslwCode,
                  ("message" .=) <$> _igslwMessage])

-- | CPU utilization policy.
--
-- /See:/ 'autoscalingPolicyCPUUtilization' smart constructor.
newtype AutoscalingPolicyCPUUtilization = AutoscalingPolicyCPUUtilization'
    { _apcuUtilizationTarget :: Maybe (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalingPolicyCPUUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcuUtilizationTarget'
autoscalingPolicyCPUUtilization
    :: AutoscalingPolicyCPUUtilization
autoscalingPolicyCPUUtilization =
    AutoscalingPolicyCPUUtilization'
    { _apcuUtilizationTarget = Nothing
    }

-- | The target CPU utilization that the autoscaler should maintain. Must be
-- a float value in the range (0, 1]. If not specified, the default is 0.6.
-- If the CPU level is below the target utilization, the autoscaler scales
-- down the number of instances until it reaches the minimum number of
-- instances you specified or until the average CPU of your instances
-- reaches the target utilization. If the average CPU is above the target
-- utilization, the autoscaler scales up until it reaches the maximum
-- number of instances you specified or until the average utilization
-- reaches the target utilization.
apcuUtilizationTarget :: Lens' AutoscalingPolicyCPUUtilization (Maybe Double)
apcuUtilizationTarget
  = lens _apcuUtilizationTarget
      (\ s a -> s{_apcuUtilizationTarget = a})
      . mapping _Coerce

instance FromJSON AutoscalingPolicyCPUUtilization
         where
        parseJSON
          = withObject "AutoscalingPolicyCPUUtilization"
              (\ o ->
                 AutoscalingPolicyCPUUtilization' <$>
                   (o .:? "utilizationTarget"))

instance ToJSON AutoscalingPolicyCPUUtilization where
        toJSON AutoscalingPolicyCPUUtilization'{..}
          = object
              (catMaybes
                 [("utilizationTarget" .=) <$>
                    _apcuUtilizationTarget])

--
-- /See:/ 'instanceGroupsScopedListWarningDataItem' smart constructor.
data InstanceGroupsScopedListWarningDataItem = InstanceGroupsScopedListWarningDataItem'
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
    InstanceGroupsScopedListWarningDataItem'
    { _igslwdiValue = Nothing
    , _igslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
igslwdiValue :: Lens' InstanceGroupsScopedListWarningDataItem (Maybe Text)
igslwdiValue
  = lens _igslwdiValue (\ s a -> s{_igslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
igslwdiKey :: Lens' InstanceGroupsScopedListWarningDataItem (Maybe Text)
igslwdiKey
  = lens _igslwdiKey (\ s a -> s{_igslwdiKey = a})

instance FromJSON
         InstanceGroupsScopedListWarningDataItem where
        parseJSON
          = withObject
              "InstanceGroupsScopedListWarningDataItem"
              (\ o ->
                 InstanceGroupsScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         InstanceGroupsScopedListWarningDataItem where
        toJSON InstanceGroupsScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _igslwdiValue,
                  ("key" .=) <$> _igslwdiKey])

--
-- /See:/ 'resourceGroupReference' smart constructor.
newtype ResourceGroupReference = ResourceGroupReference'
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
    ResourceGroupReference'
    { _rgrGroup = Nothing
    }

-- | A URI referencing one of the instance groups listed in the backend
-- service.
rgrGroup :: Lens' ResourceGroupReference (Maybe Text)
rgrGroup = lens _rgrGroup (\ s a -> s{_rgrGroup = a})

instance FromJSON ResourceGroupReference where
        parseJSON
          = withObject "ResourceGroupReference"
              (\ o -> ResourceGroupReference' <$> (o .:? "group"))

instance ToJSON ResourceGroupReference where
        toJSON ResourceGroupReference'{..}
          = object (catMaybes [("group" .=) <$> _rgrGroup])

-- | Represents a Firewall resource.
--
-- /See:/ 'firewall' smart constructor.
data Firewall = Firewall'
    { _fSourceTags        :: !(Maybe [Text])
    , _fKind              :: !Text
    , _fTargetTags        :: !(Maybe [Text])
    , _fNetwork           :: !(Maybe Text)
    , _fSourceRanges      :: !(Maybe [Text])
    , _fSelfLink          :: !(Maybe Text)
    , _fName              :: !(Maybe Text)
    , _fCreationTimestamp :: !(Maybe Text)
    , _fId                :: !(Maybe (Textual Word64))
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
    Firewall'
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

-- | If source tags are specified, the firewall will apply only to traffic
-- with source IP that belongs to a tag listed in source tags. Source tags
-- cannot be used to control traffic to an instance\'s external IP address.
-- Because tags are associated with an instance, not an IP address. One or
-- both of sourceRanges and sourceTags may be set. If both properties are
-- set, the firewall will apply to traffic that has source IP address
-- within sourceRanges OR the source IP that belongs to a tag listed in the
-- sourceTags property. The connection does not need to match both
-- properties for the firewall to apply.
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

-- | URL of the network resource for this firewall rule. If not specified
-- when creating a firewall rule, the default network is used:
-- global\/networks\/default If you choose to specify this property, you
-- can specify the network as a full or partial URL. For example, the
-- following are all valid URLs: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/myproject\/global\/networks\/my-network
-- - projects\/myproject\/global\/networks\/my-network -
-- global\/networks\/default
fNetwork :: Lens' Firewall (Maybe Text)
fNetwork = lens _fNetwork (\ s a -> s{_fNetwork = a})

-- | If source ranges are specified, the firewall will apply only to traffic
-- that has source IP address in these ranges. These ranges must be
-- expressed in CIDR format. One or both of sourceRanges and sourceTags may
-- be set. If both properties are set, the firewall will apply to traffic
-- that has source IP address within sourceRanges OR the source IP that
-- belongs to a tag listed in the sourceTags property. The connection does
-- not need to match both properties for the firewall to apply. Only IPv4
-- is supported.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
fId :: Lens' Firewall (Maybe Word64)
fId
  = lens _fId (\ s a -> s{_fId = a}) . mapping _Coerce

-- | The list of ALLOW rules specified by this firewall. Each rule specifies
-- a protocol and port-range tuple that describes a permitted connection.
fAllowed :: Lens' Firewall [FirewallAllowedItem]
fAllowed
  = lens _fAllowed (\ s a -> s{_fAllowed = a}) .
      _Default
      . _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
fDescription :: Lens' Firewall (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

instance FromJSON Firewall where
        parseJSON
          = withObject "Firewall"
              (\ o ->
                 Firewall' <$>
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
        toJSON Firewall'{..}
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
data HostRule = HostRule'
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
    HostRule'
    { _hrHosts = Nothing
    , _hrDescription = Nothing
    , _hrPathMatcher = Nothing
    }

-- | The list of host patterns to match. They must be valid hostnames, except
-- * will match any string of ([a-z0-9-.]*). In that case, * must be the
-- first character and must be followed in the pattern by either - or ..
hrHosts :: Lens' HostRule [Text]
hrHosts
  = lens _hrHosts (\ s a -> s{_hrHosts = a}) . _Default
      . _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
hrDescription :: Lens' HostRule (Maybe Text)
hrDescription
  = lens _hrDescription
      (\ s a -> s{_hrDescription = a})

-- | The name of the PathMatcher to use to match the path portion of the URL
-- if the hostRule matches the URL\'s host portion.
hrPathMatcher :: Lens' HostRule (Maybe Text)
hrPathMatcher
  = lens _hrPathMatcher
      (\ s a -> s{_hrPathMatcher = a})

instance FromJSON HostRule where
        parseJSON
          = withObject "HostRule"
              (\ o ->
                 HostRule' <$>
                   (o .:? "hosts" .!= mempty) <*> (o .:? "description")
                     <*> (o .:? "pathMatcher"))

instance ToJSON HostRule where
        toJSON HostRule'{..}
          = object
              (catMaybes
                 [("hosts" .=) <$> _hrHosts,
                  ("description" .=) <$> _hrDescription,
                  ("pathMatcher" .=) <$> _hrPathMatcher])

-- | A quotas entry.
--
-- /See:/ 'quota' smart constructor.
data Quota = Quota'
    { _qMetric :: !(Maybe QuotaMetric)
    , _qLimit  :: !(Maybe (Textual Double))
    , _qUsage  :: !(Maybe (Textual Double))
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
    Quota'
    { _qMetric = Nothing
    , _qLimit = Nothing
    , _qUsage = Nothing
    }

-- | [Output Only] Name of the quota metric.
qMetric :: Lens' Quota (Maybe QuotaMetric)
qMetric = lens _qMetric (\ s a -> s{_qMetric = a})

-- | [Output Only] Quota limit for this metric.
qLimit :: Lens' Quota (Maybe Double)
qLimit
  = lens _qLimit (\ s a -> s{_qLimit = a}) .
      mapping _Coerce

-- | [Output Only] Current usage of this metric.
qUsage :: Lens' Quota (Maybe Double)
qUsage
  = lens _qUsage (\ s a -> s{_qUsage = a}) .
      mapping _Coerce

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota' <$>
                   (o .:? "metric") <*> (o .:? "limit") <*>
                     (o .:? "usage"))

instance ToJSON Quota where
        toJSON Quota'{..}
          = object
              (catMaybes
                 [("metric" .=) <$> _qMetric,
                  ("limit" .=) <$> _qLimit, ("usage" .=) <$> _qUsage])

--
-- /See:/ 'instanceGroup' smart constructor.
data InstanceGroup = InstanceGroup'
    { _iiSize              :: !(Maybe (Textual Int32))
    , _iiKind              :: !Text
    , _iiFingerprint       :: !(Maybe Bytes)
    , _iiNetwork           :: !(Maybe Text)
    , _iiZone              :: !(Maybe Text)
    , _iiSelfLink          :: !(Maybe Text)
    , _iiName              :: !(Maybe Text)
    , _iiCreationTimestamp :: !(Maybe Text)
    , _iiSubnetwork        :: !(Maybe Text)
    , _iiId                :: !(Maybe (Textual Word64))
    , _iiRegion            :: !(Maybe Text)
    , _iiDescription       :: !(Maybe Text)
    , _iiNamedPorts        :: !(Maybe [NamedPort])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiSize'
--
-- * 'iiKind'
--
-- * 'iiFingerprint'
--
-- * 'iiNetwork'
--
-- * 'iiZone'
--
-- * 'iiSelfLink'
--
-- * 'iiName'
--
-- * 'iiCreationTimestamp'
--
-- * 'iiSubnetwork'
--
-- * 'iiId'
--
-- * 'iiRegion'
--
-- * 'iiDescription'
--
-- * 'iiNamedPorts'
instanceGroup
    :: InstanceGroup
instanceGroup =
    InstanceGroup'
    { _iiSize = Nothing
    , _iiKind = "compute#instanceGroup"
    , _iiFingerprint = Nothing
    , _iiNetwork = Nothing
    , _iiZone = Nothing
    , _iiSelfLink = Nothing
    , _iiName = Nothing
    , _iiCreationTimestamp = Nothing
    , _iiSubnetwork = Nothing
    , _iiId = Nothing
    , _iiRegion = Nothing
    , _iiDescription = Nothing
    , _iiNamedPorts = Nothing
    }

-- | [Output Only] The total number of instances in the instance group.
iiSize :: Lens' InstanceGroup (Maybe Int32)
iiSize
  = lens _iiSize (\ s a -> s{_iiSize = a}) .
      mapping _Coerce

-- | [Output Only] The resource type, which is always compute#instanceGroup
-- for instance groups.
iiKind :: Lens' InstanceGroup Text
iiKind = lens _iiKind (\ s a -> s{_iiKind = a})

-- | [Output Only] The fingerprint of the named ports. The system uses this
-- fingerprint to detect conflicts when multiple users change the named
-- ports concurrently.
iiFingerprint :: Lens' InstanceGroup (Maybe ByteString)
iiFingerprint
  = lens _iiFingerprint
      (\ s a -> s{_iiFingerprint = a})
      . mapping _Bytes

-- | The URL of the network to which all instances in the instance group
-- belong.
iiNetwork :: Lens' InstanceGroup (Maybe Text)
iiNetwork
  = lens _iiNetwork (\ s a -> s{_iiNetwork = a})

-- | [Output Only] The URL of the zone where the instance group is located
-- (for zonal resources).
iiZone :: Lens' InstanceGroup (Maybe Text)
iiZone = lens _iiZone (\ s a -> s{_iiZone = a})

-- | [Output Only] The URL for this instance group. The server generates this
-- URL.
iiSelfLink :: Lens' InstanceGroup (Maybe Text)
iiSelfLink
  = lens _iiSelfLink (\ s a -> s{_iiSelfLink = a})

-- | The name of the instance group. The name must be 1-63 characters long,
-- and comply with RFC1035.
iiName :: Lens' InstanceGroup (Maybe Text)
iiName = lens _iiName (\ s a -> s{_iiName = a})

-- | [Output Only] The creation timestamp for this instance group in RFC3339
-- text format.
iiCreationTimestamp :: Lens' InstanceGroup (Maybe Text)
iiCreationTimestamp
  = lens _iiCreationTimestamp
      (\ s a -> s{_iiCreationTimestamp = a})

-- | The URL of the subnetwork to which all instances in the instance group
-- belong.
iiSubnetwork :: Lens' InstanceGroup (Maybe Text)
iiSubnetwork
  = lens _iiSubnetwork (\ s a -> s{_iiSubnetwork = a})

-- | [Output Only] A unique identifier for this instance group, generated by
-- the server.
iiId :: Lens' InstanceGroup (Maybe Word64)
iiId
  = lens _iiId (\ s a -> s{_iiId = a}) .
      mapping _Coerce

-- | The URL of the region where the instance group is located (for regional
-- resources).
iiRegion :: Lens' InstanceGroup (Maybe Text)
iiRegion = lens _iiRegion (\ s a -> s{_iiRegion = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
iiDescription :: Lens' InstanceGroup (Maybe Text)
iiDescription
  = lens _iiDescription
      (\ s a -> s{_iiDescription = a})

-- | Assigns a name to a port number. For example: {name: \"http\", port: 80}
-- This allows the system to reference ports by the assigned name instead
-- of a port number. Named ports can also contain multiple ports. For
-- example: [{name: \"http\", port: 80},{name: \"http\", port: 8080}] Named
-- ports apply to all instances in this instance group.
iiNamedPorts :: Lens' InstanceGroup [NamedPort]
iiNamedPorts
  = lens _iiNamedPorts (\ s a -> s{_iiNamedPorts = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroup where
        parseJSON
          = withObject "InstanceGroup"
              (\ o ->
                 InstanceGroup' <$>
                   (o .:? "size") <*>
                     (o .:? "kind" .!= "compute#instanceGroup")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "network")
                     <*> (o .:? "zone")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "description")
                     <*> (o .:? "namedPorts" .!= mempty))

instance ToJSON InstanceGroup where
        toJSON InstanceGroup'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _iiSize, Just ("kind" .= _iiKind),
                  ("fingerprint" .=) <$> _iiFingerprint,
                  ("network" .=) <$> _iiNetwork,
                  ("zone" .=) <$> _iiZone,
                  ("selfLink" .=) <$> _iiSelfLink,
                  ("name" .=) <$> _iiName,
                  ("creationTimestamp" .=) <$> _iiCreationTimestamp,
                  ("subnetwork" .=) <$> _iiSubnetwork,
                  ("id" .=) <$> _iiId, ("region" .=) <$> _iiRegion,
                  ("description" .=) <$> _iiDescription,
                  ("namedPorts" .=) <$> _iiNamedPorts])

--
-- /See:/ 'routerInterface' smart constructor.
data RouterInterface = RouterInterface'
    { _riName            :: !(Maybe Text)
    , _riIPRange         :: !(Maybe Text)
    , _riLinkedVPNTunnel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RouterInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riName'
--
-- * 'riIPRange'
--
-- * 'riLinkedVPNTunnel'
routerInterface
    :: RouterInterface
routerInterface =
    RouterInterface'
    { _riName = Nothing
    , _riIPRange = Nothing
    , _riLinkedVPNTunnel = Nothing
    }

-- | Name of this interface entry. The name must be 1-63 characters long and
-- comply with RFC1035.
riName :: Lens' RouterInterface (Maybe Text)
riName = lens _riName (\ s a -> s{_riName = a})

-- | IP address and range of the interface. The IP range must be in the
-- RFC3927 link-local IP space. The value must be a CIDR-formatted string,
-- for example: 169.254.0.1\/30. NOTE: Do not truncate the address as it
-- represents the IP address of the interface.
riIPRange :: Lens' RouterInterface (Maybe Text)
riIPRange
  = lens _riIPRange (\ s a -> s{_riIPRange = a})

-- | URI of linked VPN tunnel. It must be in the same region as the router.
-- Each interface can have at most one linked resource.
riLinkedVPNTunnel :: Lens' RouterInterface (Maybe Text)
riLinkedVPNTunnel
  = lens _riLinkedVPNTunnel
      (\ s a -> s{_riLinkedVPNTunnel = a})

instance FromJSON RouterInterface where
        parseJSON
          = withObject "RouterInterface"
              (\ o ->
                 RouterInterface' <$>
                   (o .:? "name") <*> (o .:? "ipRange") <*>
                     (o .:? "linkedVpnTunnel"))

instance ToJSON RouterInterface where
        toJSON RouterInterface'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _riName,
                  ("ipRange" .=) <$> _riIPRange,
                  ("linkedVpnTunnel" .=) <$> _riLinkedVPNTunnel])

-- | Contains a list of Snapshot resources.
--
-- /See:/ 'snapshotList' smart constructor.
data SnapshotList = SnapshotList'
    { _snaNextPageToken :: !(Maybe Text)
    , _snaKind          :: !Text
    , _snaItems         :: !(Maybe [Snapshot])
    , _snaSelfLink      :: !(Maybe Text)
    , _snaId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaNextPageToken'
--
-- * 'snaKind'
--
-- * 'snaItems'
--
-- * 'snaSelfLink'
--
-- * 'snaId'
snapshotList
    :: SnapshotList
snapshotList =
    SnapshotList'
    { _snaNextPageToken = Nothing
    , _snaKind = "compute#snapshotList"
    , _snaItems = Nothing
    , _snaSelfLink = Nothing
    , _snaId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
snaNextPageToken :: Lens' SnapshotList (Maybe Text)
snaNextPageToken
  = lens _snaNextPageToken
      (\ s a -> s{_snaNextPageToken = a})

-- | Type of resource.
snaKind :: Lens' SnapshotList Text
snaKind = lens _snaKind (\ s a -> s{_snaKind = a})

-- | [Output Only] A list of Snapshot resources.
snaItems :: Lens' SnapshotList [Snapshot]
snaItems
  = lens _snaItems (\ s a -> s{_snaItems = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
snaSelfLink :: Lens' SnapshotList (Maybe Text)
snaSelfLink
  = lens _snaSelfLink (\ s a -> s{_snaSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
snaId :: Lens' SnapshotList (Maybe Text)
snaId = lens _snaId (\ s a -> s{_snaId = a})

instance FromJSON SnapshotList where
        parseJSON
          = withObject "SnapshotList"
              (\ o ->
                 SnapshotList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#snapshotList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON SnapshotList where
        toJSON SnapshotList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _snaNextPageToken,
                  Just ("kind" .= _snaKind),
                  ("items" .=) <$> _snaItems,
                  ("selfLink" .=) <$> _snaSelfLink,
                  ("id" .=) <$> _snaId])

--
-- /See:/ 'testFailure' smart constructor.
data TestFailure = TestFailure'
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
    TestFailure'
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
                 TestFailure' <$>
                   (o .:? "path") <*> (o .:? "expectedService") <*>
                     (o .:? "host")
                     <*> (o .:? "actualService"))

instance ToJSON TestFailure where
        toJSON TestFailure'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _tfPath,
                  ("expectedService" .=) <$> _tfExpectedService,
                  ("host" .=) <$> _tfHost,
                  ("actualService" .=) <$> _tfActualService])

-- | An instance\'s serial console output.
--
-- /See:/ 'serialPortOutput' smart constructor.
data SerialPortOutput = SerialPortOutput'
    { _spoNext     :: !(Maybe (Textual Int64))
    , _spoContents :: !(Maybe Text)
    , _spoKind     :: !Text
    , _spoStart    :: !(Maybe (Textual Int64))
    , _spoSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SerialPortOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spoNext'
--
-- * 'spoContents'
--
-- * 'spoKind'
--
-- * 'spoStart'
--
-- * 'spoSelfLink'
serialPortOutput
    :: SerialPortOutput
serialPortOutput =
    SerialPortOutput'
    { _spoNext = Nothing
    , _spoContents = Nothing
    , _spoKind = "compute#serialPortOutput"
    , _spoStart = Nothing
    , _spoSelfLink = Nothing
    }

-- | [Output Only] The position of the next byte of content from the serial
-- console output. Use this value in the next request as the start
-- parameter.
spoNext :: Lens' SerialPortOutput (Maybe Int64)
spoNext
  = lens _spoNext (\ s a -> s{_spoNext = a}) .
      mapping _Coerce

-- | [Output Only] The contents of the console output.
spoContents :: Lens' SerialPortOutput (Maybe Text)
spoContents
  = lens _spoContents (\ s a -> s{_spoContents = a})

-- | [Output Only] Type of the resource. Always compute#serialPortOutput for
-- serial port output.
spoKind :: Lens' SerialPortOutput Text
spoKind = lens _spoKind (\ s a -> s{_spoKind = a})

-- | [Output Only] The starting byte position of the output that was
-- returned. This should match the start parameter sent with the request.
-- If the serial console output exceeds the size of the buffer, older
-- output will be overwritten by newer content and the start values will be
-- mismatched.
spoStart :: Lens' SerialPortOutput (Maybe Int64)
spoStart
  = lens _spoStart (\ s a -> s{_spoStart = a}) .
      mapping _Coerce

-- | [Output Only] Server-defined URL for this resource.
spoSelfLink :: Lens' SerialPortOutput (Maybe Text)
spoSelfLink
  = lens _spoSelfLink (\ s a -> s{_spoSelfLink = a})

instance FromJSON SerialPortOutput where
        parseJSON
          = withObject "SerialPortOutput"
              (\ o ->
                 SerialPortOutput' <$>
                   (o .:? "next") <*> (o .:? "contents") <*>
                     (o .:? "kind" .!= "compute#serialPortOutput")
                     <*> (o .:? "start")
                     <*> (o .:? "selfLink"))

instance ToJSON SerialPortOutput where
        toJSON SerialPortOutput'{..}
          = object
              (catMaybes
                 [("next" .=) <$> _spoNext,
                  ("contents" .=) <$> _spoContents,
                  Just ("kind" .= _spoKind),
                  ("start" .=) <$> _spoStart,
                  ("selfLink" .=) <$> _spoSelfLink])

--
-- /See:/ 'targetVPNGatewayAggregatedList' smart constructor.
data TargetVPNGatewayAggregatedList = TargetVPNGatewayAggregatedList'
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
    TargetVPNGatewayAggregatedList'
    { _tvgalNextPageToken = Nothing
    , _tvgalKind = "compute#targetVpnGatewayAggregatedList"
    , _tvgalItems = Nothing
    , _tvgalSelfLink = Nothing
    , _tvgalId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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

-- | [Output Only] Server-defined URL for this resource.
tvgalSelfLink :: Lens' TargetVPNGatewayAggregatedList (Maybe Text)
tvgalSelfLink
  = lens _tvgalSelfLink
      (\ s a -> s{_tvgalSelfLink = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
tvgalId :: Lens' TargetVPNGatewayAggregatedList (Maybe Text)
tvgalId = lens _tvgalId (\ s a -> s{_tvgalId = a})

instance FromJSON TargetVPNGatewayAggregatedList
         where
        parseJSON
          = withObject "TargetVPNGatewayAggregatedList"
              (\ o ->
                 TargetVPNGatewayAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "compute#targetVpnGatewayAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON TargetVPNGatewayAggregatedList where
        toJSON TargetVPNGatewayAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tvgalNextPageToken,
                  Just ("kind" .= _tvgalKind),
                  ("items" .=) <$> _tvgalItems,
                  ("selfLink" .=) <$> _tvgalSelfLink,
                  ("id" .=) <$> _tvgalId])

--
-- /See:/ 'metadataItemsItem' smart constructor.
data MetadataItemsItem = MetadataItemsItem'
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
    MetadataItemsItem'
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
                 MetadataItemsItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON MetadataItemsItem where
        toJSON MetadataItemsItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _miiValue, ("key" .=) <$> _miiKey])

-- | A TargetHttpsProxy resource. This resource defines an HTTPS proxy.
--
-- /See:/ 'targetHTTPSProxy' smart constructor.
data TargetHTTPSProxy = TargetHTTPSProxy'
    { _thpURLMap            :: !(Maybe Text)
    , _thpSSLCertificates   :: !(Maybe [Text])
    , _thpKind              :: !Text
    , _thpSelfLink          :: !(Maybe Text)
    , _thpName              :: !(Maybe Text)
    , _thpCreationTimestamp :: !(Maybe Text)
    , _thpId                :: !(Maybe (Textual Word64))
    , _thpDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetHTTPSProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thpURLMap'
--
-- * 'thpSSLCertificates'
--
-- * 'thpKind'
--
-- * 'thpSelfLink'
--
-- * 'thpName'
--
-- * 'thpCreationTimestamp'
--
-- * 'thpId'
--
-- * 'thpDescription'
targetHTTPSProxy
    :: TargetHTTPSProxy
targetHTTPSProxy =
    TargetHTTPSProxy'
    { _thpURLMap = Nothing
    , _thpSSLCertificates = Nothing
    , _thpKind = "compute#targetHttpsProxy"
    , _thpSelfLink = Nothing
    , _thpName = Nothing
    , _thpCreationTimestamp = Nothing
    , _thpId = Nothing
    , _thpDescription = Nothing
    }

-- | A fully-qualified or valid partial URL to the UrlMap resource that
-- defines the mapping from URL to the BackendService. For example, the
-- following are all valid URLs for specifying a URL map: -
-- https:\/\/www.googleapis.compute\/v1\/projects\/project\/global\/urlMaps\/url-map
-- - projects\/project\/global\/urlMaps\/url-map - global\/urlMaps\/url-map
thpURLMap :: Lens' TargetHTTPSProxy (Maybe Text)
thpURLMap
  = lens _thpURLMap (\ s a -> s{_thpURLMap = a})

-- | URLs to SslCertificate resources that are used to authenticate
-- connections between users and the load balancer. Currently, exactly one
-- SSL certificate must be specified.
thpSSLCertificates :: Lens' TargetHTTPSProxy [Text]
thpSSLCertificates
  = lens _thpSSLCertificates
      (\ s a -> s{_thpSSLCertificates = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of resource. Always compute#targetHttpsProxy for
-- target HTTPS proxies.
thpKind :: Lens' TargetHTTPSProxy Text
thpKind = lens _thpKind (\ s a -> s{_thpKind = a})

-- | [Output Only] Server-defined URL for the resource.
thpSelfLink :: Lens' TargetHTTPSProxy (Maybe Text)
thpSelfLink
  = lens _thpSelfLink (\ s a -> s{_thpSelfLink = a})

-- | Name of the resource. Provided by the client when the resource is
-- created. The name must be 1-63 characters long, and comply with RFC1035.
-- Specifically, the name must be 1-63 characters long and match the
-- regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first
-- character must be a lowercase letter, and all following characters must
-- be a dash, lowercase letter, or digit, except the last character, which
-- cannot be a dash.
thpName :: Lens' TargetHTTPSProxy (Maybe Text)
thpName = lens _thpName (\ s a -> s{_thpName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
thpCreationTimestamp :: Lens' TargetHTTPSProxy (Maybe Text)
thpCreationTimestamp
  = lens _thpCreationTimestamp
      (\ s a -> s{_thpCreationTimestamp = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
thpId :: Lens' TargetHTTPSProxy (Maybe Word64)
thpId
  = lens _thpId (\ s a -> s{_thpId = a}) .
      mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
thpDescription :: Lens' TargetHTTPSProxy (Maybe Text)
thpDescription
  = lens _thpDescription
      (\ s a -> s{_thpDescription = a})

instance FromJSON TargetHTTPSProxy where
        parseJSON
          = withObject "TargetHTTPSProxy"
              (\ o ->
                 TargetHTTPSProxy' <$>
                   (o .:? "urlMap") <*>
                     (o .:? "sslCertificates" .!= mempty)
                     <*> (o .:? "kind" .!= "compute#targetHttpsProxy")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON TargetHTTPSProxy where
        toJSON TargetHTTPSProxy'{..}
          = object
              (catMaybes
                 [("urlMap" .=) <$> _thpURLMap,
                  ("sslCertificates" .=) <$> _thpSSLCertificates,
                  Just ("kind" .= _thpKind),
                  ("selfLink" .=) <$> _thpSelfLink,
                  ("name" .=) <$> _thpName,
                  ("creationTimestamp" .=) <$> _thpCreationTimestamp,
                  ("id" .=) <$> _thpId,
                  ("description" .=) <$> _thpDescription])

-- | Message containing connection draining configuration.
--
-- /See:/ 'connectionDraining' smart constructor.
newtype ConnectionDraining = ConnectionDraining'
    { _cdDrainingTimeoutSec :: Maybe (Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionDraining' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDrainingTimeoutSec'
connectionDraining
    :: ConnectionDraining
connectionDraining =
    ConnectionDraining'
    { _cdDrainingTimeoutSec = Nothing
    }

-- | Time for which instance will be drained (not accept new connections, but
-- still work to finish started).
cdDrainingTimeoutSec :: Lens' ConnectionDraining (Maybe Int32)
cdDrainingTimeoutSec
  = lens _cdDrainingTimeoutSec
      (\ s a -> s{_cdDrainingTimeoutSec = a})
      . mapping _Coerce

instance FromJSON ConnectionDraining where
        parseJSON
          = withObject "ConnectionDraining"
              (\ o ->
                 ConnectionDraining' <$> (o .:? "drainingTimeoutSec"))

instance ToJSON ConnectionDraining where
        toJSON ConnectionDraining'{..}
          = object
              (catMaybes
                 [("drainingTimeoutSec" .=) <$>
                    _cdDrainingTimeoutSec])

--
-- /See:/ 'cacheInvalidationRule' smart constructor.
data CacheInvalidationRule = CacheInvalidationRule'
    { _cirPath :: !(Maybe Text)
    , _cirHost :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CacheInvalidationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirPath'
--
-- * 'cirHost'
cacheInvalidationRule
    :: CacheInvalidationRule
cacheInvalidationRule =
    CacheInvalidationRule'
    { _cirPath = Nothing
    , _cirHost = Nothing
    }

cirPath :: Lens' CacheInvalidationRule (Maybe Text)
cirPath = lens _cirPath (\ s a -> s{_cirPath = a})

-- | If set, this invalidation rule will only apply to requests with a Host
-- header matching host.
cirHost :: Lens' CacheInvalidationRule (Maybe Text)
cirHost = lens _cirHost (\ s a -> s{_cirHost = a})

instance FromJSON CacheInvalidationRule where
        parseJSON
          = withObject "CacheInvalidationRule"
              (\ o ->
                 CacheInvalidationRule' <$>
                   (o .:? "path") <*> (o .:? "host"))

instance ToJSON CacheInvalidationRule where
        toJSON CacheInvalidationRule'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _cirPath, ("host" .=) <$> _cirHost])

--
-- /See:/ 'targetVPNGatewaysScopedList' smart constructor.
data TargetVPNGatewaysScopedList = TargetVPNGatewaysScopedList'
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
    TargetVPNGatewaysScopedList'
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
                 TargetVPNGatewaysScopedList' <$>
                   (o .:? "targetVpnGateways" .!= mempty) <*>
                     (o .:? "warning"))

instance ToJSON TargetVPNGatewaysScopedList where
        toJSON TargetVPNGatewaysScopedList'{..}
          = object
              (catMaybes
                 [("targetVpnGateways" .=) <$>
                    _tvgslTargetVPNGateways,
                  ("warning" .=) <$> _tvgslWarning])

-- | An access configuration attached to an instance\'s network interface.
-- Only one access config per instance is supported.
--
-- /See:/ 'accessConfig' smart constructor.
data AccessConfig = AccessConfig'
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
    AccessConfig'
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
                 AccessConfig' <$>
                   (o .:? "kind" .!= "compute#accessConfig") <*>
                     (o .:? "name")
                     <*> (o .:? "natIP")
                     <*> (o .:? "type" .!= OneToOneNAT))

instance ToJSON AccessConfig where
        toJSON AccessConfig'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _acKind), ("name" .=) <$> _acName,
                  ("natIP" .=) <$> _acNATIP, Just ("type" .= _acType)])

--
-- /See:/ 'managedInstanceLastAttemptErrorsErrorsItem' smart constructor.
data ManagedInstanceLastAttemptErrorsErrorsItem = ManagedInstanceLastAttemptErrorsErrorsItem'
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
    ManagedInstanceLastAttemptErrorsErrorsItem'
    { _milaeeiLocation = Nothing
    , _milaeeiCode = Nothing
    , _milaeeiMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request that caused the error.
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
                 ManagedInstanceLastAttemptErrorsErrorsItem' <$>
                   (o .:? "location") <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON
         ManagedInstanceLastAttemptErrorsErrorsItem where
        toJSON
          ManagedInstanceLastAttemptErrorsErrorsItem'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _milaeeiLocation,
                  ("code" .=) <$> _milaeeiCode,
                  ("message" .=) <$> _milaeeiMessage])

--
-- /See:/ 'instancesScopedListWarningDataItem' smart constructor.
data InstancesScopedListWarningDataItem = InstancesScopedListWarningDataItem'
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
    InstancesScopedListWarningDataItem'
    { _islwdiValue = Nothing
    , _islwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
islwdiValue :: Lens' InstancesScopedListWarningDataItem (Maybe Text)
islwdiValue
  = lens _islwdiValue (\ s a -> s{_islwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
islwdiKey :: Lens' InstancesScopedListWarningDataItem (Maybe Text)
islwdiKey
  = lens _islwdiKey (\ s a -> s{_islwdiKey = a})

instance FromJSON InstancesScopedListWarningDataItem
         where
        parseJSON
          = withObject "InstancesScopedListWarningDataItem"
              (\ o ->
                 InstancesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON InstancesScopedListWarningDataItem
         where
        toJSON InstancesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _islwdiValue,
                  ("key" .=) <$> _islwdiKey])

--
-- /See:/ 'backendServicesScopedListWarningDataItem' smart constructor.
data BackendServicesScopedListWarningDataItem = BackendServicesScopedListWarningDataItem'
    { _bsslwdiValue :: !(Maybe Text)
    , _bsslwdiKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesScopedListWarningDataItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsslwdiValue'
--
-- * 'bsslwdiKey'
backendServicesScopedListWarningDataItem
    :: BackendServicesScopedListWarningDataItem
backendServicesScopedListWarningDataItem =
    BackendServicesScopedListWarningDataItem'
    { _bsslwdiValue = Nothing
    , _bsslwdiKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
bsslwdiValue :: Lens' BackendServicesScopedListWarningDataItem (Maybe Text)
bsslwdiValue
  = lens _bsslwdiValue (\ s a -> s{_bsslwdiValue = a})

-- | [Output Only] A key that provides more detail on the warning being
-- returned. For example, for warnings where there are no results in a list
-- request for a particular zone, this key might be scope and the key value
-- might be the zone name. Other examples might be a key indicating a
-- deprecated resource and a suggested replacement, or a warning about
-- invalid network settings (for example, if an instance attempts to
-- perform IP forwarding but is not enabled for IP forwarding).
bsslwdiKey :: Lens' BackendServicesScopedListWarningDataItem (Maybe Text)
bsslwdiKey
  = lens _bsslwdiKey (\ s a -> s{_bsslwdiKey = a})

instance FromJSON
         BackendServicesScopedListWarningDataItem where
        parseJSON
          = withObject
              "BackendServicesScopedListWarningDataItem"
              (\ o ->
                 BackendServicesScopedListWarningDataItem' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
         BackendServicesScopedListWarningDataItem where
        toJSON BackendServicesScopedListWarningDataItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bsslwdiValue,
                  ("key" .=) <$> _bsslwdiKey])

-- | A BackendService resource. This resource defines a group of backend
-- virtual machines and their serving capacity.
--
-- /See:/ 'backendService' smart constructor.
data BackendService = BackendService'
    { _bsSessionAffinity      :: !(Maybe BackendServiceSessionAffinity)
    , _bsBackends             :: !(Maybe [Backend])
    , _bsAffinityCookieTtlSec :: !(Maybe (Textual Int32))
    , _bsLoadBalancingScheme  :: !(Maybe BackendServiceLoadBalancingScheme)
    , _bsKind                 :: !Text
    , _bsEnableCDN            :: !(Maybe Bool)
    , _bsFingerprint          :: !(Maybe Bytes)
    , _bsProtocol             :: !(Maybe BackendServiceProtocol)
    , _bsSelfLink             :: !(Maybe Text)
    , _bsName                 :: !(Maybe Text)
    , _bsCreationTimestamp    :: !(Maybe Text)
    , _bsId                   :: !(Maybe (Textual Word64))
    , _bsRegion               :: !(Maybe Text)
    , _bsConnectionDraining   :: !(Maybe ConnectionDraining)
    , _bsTimeoutSec           :: !(Maybe (Textual Int32))
    , _bsDescription          :: !(Maybe Text)
    , _bsPortName             :: !(Maybe Text)
    , _bsHealthChecks         :: !(Maybe [Text])
    , _bsPort                 :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsSessionAffinity'
--
-- * 'bsBackends'
--
-- * 'bsAffinityCookieTtlSec'
--
-- * 'bsLoadBalancingScheme'
--
-- * 'bsKind'
--
-- * 'bsEnableCDN'
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
-- * 'bsRegion'
--
-- * 'bsConnectionDraining'
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
    BackendService'
    { _bsSessionAffinity = Nothing
    , _bsBackends = Nothing
    , _bsAffinityCookieTtlSec = Nothing
    , _bsLoadBalancingScheme = Nothing
    , _bsKind = "compute#backendService"
    , _bsEnableCDN = Nothing
    , _bsFingerprint = Nothing
    , _bsProtocol = Nothing
    , _bsSelfLink = Nothing
    , _bsName = Nothing
    , _bsCreationTimestamp = Nothing
    , _bsId = Nothing
    , _bsRegion = Nothing
    , _bsConnectionDraining = Nothing
    , _bsTimeoutSec = Nothing
    , _bsDescription = Nothing
    , _bsPortName = Nothing
    , _bsHealthChecks = Nothing
    , _bsPort = Nothing
    }

-- | Type of session affinity to use. The default is NONE. When the load
-- balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or
-- GENERATED_COOKIE. When the load balancing scheme is INTERNAL, can be
-- NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO. When the
-- protocol is UDP, this field is not used.
bsSessionAffinity :: Lens' BackendService (Maybe BackendServiceSessionAffinity)
bsSessionAffinity
  = lens _bsSessionAffinity
      (\ s a -> s{_bsSessionAffinity = a})

-- | The list of backends that serve this BackendService.
bsBackends :: Lens' BackendService [Backend]
bsBackends
  = lens _bsBackends (\ s a -> s{_bsBackends = a}) .
      _Default
      . _Coerce

-- | Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE.
-- If set to 0, the cookie is non-persistent and lasts only until the end
-- of the browser session (or equivalent). The maximum allowed value for
-- TTL is one day. When the load balancing scheme is INTERNAL, this field
-- is not used.
bsAffinityCookieTtlSec :: Lens' BackendService (Maybe Int32)
bsAffinityCookieTtlSec
  = lens _bsAffinityCookieTtlSec
      (\ s a -> s{_bsAffinityCookieTtlSec = a})
      . mapping _Coerce

bsLoadBalancingScheme :: Lens' BackendService (Maybe BackendServiceLoadBalancingScheme)
bsLoadBalancingScheme
  = lens _bsLoadBalancingScheme
      (\ s a -> s{_bsLoadBalancingScheme = a})

-- | [Output Only] Type of resource. Always compute#backendService for
-- backend services.
bsKind :: Lens' BackendService Text
bsKind = lens _bsKind (\ s a -> s{_bsKind = a})

-- | If true, enable Cloud CDN for this BackendService. When the load
-- balancing scheme is INTERNAL, this field is not used.
bsEnableCDN :: Lens' BackendService (Maybe Bool)
bsEnableCDN
  = lens _bsEnableCDN (\ s a -> s{_bsEnableCDN = a})

-- | Fingerprint of this resource. A hash of the contents stored in this
-- object. This field is used in optimistic locking. This field will be
-- ignored when inserting a BackendService. An up-to-date fingerprint must
-- be provided in order to update the BackendService.
bsFingerprint :: Lens' BackendService (Maybe ByteString)
bsFingerprint
  = lens _bsFingerprint
      (\ s a -> s{_bsFingerprint = a})
      . mapping _Bytes

-- | The protocol this BackendService uses to communicate with backends.
-- Possible values are HTTP, HTTPS, HTTP2, TCP and SSL. The default is
-- HTTP. For internal load balancing, the possible values are TCP and UDP,
-- and the default is TCP.
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

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
bsId :: Lens' BackendService (Maybe Word64)
bsId
  = lens _bsId (\ s a -> s{_bsId = a}) .
      mapping _Coerce

-- | [Output Only] URL of the region where the regional backend service
-- resides. This field is not applicable to global backend services.
bsRegion :: Lens' BackendService (Maybe Text)
bsRegion = lens _bsRegion (\ s a -> s{_bsRegion = a})

bsConnectionDraining :: Lens' BackendService (Maybe ConnectionDraining)
bsConnectionDraining
  = lens _bsConnectionDraining
      (\ s a -> s{_bsConnectionDraining = a})

-- | How many seconds to wait for the backend before considering it a failed
-- request. Default is 30 seconds.
bsTimeoutSec :: Lens' BackendService (Maybe Int32)
bsTimeoutSec
  = lens _bsTimeoutSec (\ s a -> s{_bsTimeoutSec = a})
      . mapping _Coerce

-- | An optional description of this resource. Provide this property when you
-- create the resource.
bsDescription :: Lens' BackendService (Maybe Text)
bsDescription
  = lens _bsDescription
      (\ s a -> s{_bsDescription = a})

-- | Name of backend port. The same name should appear in the instance groups
-- referenced by this service. Required when the load balancing scheme is
-- EXTERNAL. When the load balancing scheme is INTERNAL, this field is not
-- used.
bsPortName :: Lens' BackendService (Maybe Text)
bsPortName
  = lens _bsPortName (\ s a -> s{_bsPortName = a})

-- | The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for
-- health checking this BackendService. Currently at most one health check
-- can be specified, and a health check is required. For internal load
-- balancing, a URL to a HealthCheck resource must be specified instead.
bsHealthChecks :: Lens' BackendService [Text]
bsHealthChecks
  = lens _bsHealthChecks
      (\ s a -> s{_bsHealthChecks = a})
      . _Default
      . _Coerce

-- | Deprecated in favor of portName. The TCP port to connect on the backend.
-- The default value is 80. This cannot be used for internal load
-- balancing.
bsPort :: Lens' BackendService (Maybe Int32)
bsPort
  = lens _bsPort (\ s a -> s{_bsPort = a}) .
      mapping _Coerce

instance FromJSON BackendService where
        parseJSON
          = withObject "BackendService"
              (\ o ->
                 BackendService' <$>
                   (o .:? "sessionAffinity") <*>
                     (o .:? "backends" .!= mempty)
                     <*> (o .:? "affinityCookieTtlSec")
                     <*> (o .:? "loadBalancingScheme")
                     <*> (o .:? "kind" .!= "compute#backendService")
                     <*> (o .:? "enableCDN")
                     <*> (o .:? "fingerprint")
                     <*> (o .:? "protocol")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "creationTimestamp")
                     <*> (o .:? "id")
                     <*> (o .:? "region")
                     <*> (o .:? "connectionDraining")
                     <*> (o .:? "timeoutSec")
                     <*> (o .:? "description")
                     <*> (o .:? "portName")
                     <*> (o .:? "healthChecks" .!= mempty)
                     <*> (o .:? "port"))

instance ToJSON BackendService where
        toJSON BackendService'{..}
          = object
              (catMaybes
                 [("sessionAffinity" .=) <$> _bsSessionAffinity,
                  ("backends" .=) <$> _bsBackends,
                  ("affinityCookieTtlSec" .=) <$>
                    _bsAffinityCookieTtlSec,
                  ("loadBalancingScheme" .=) <$>
                    _bsLoadBalancingScheme,
                  Just ("kind" .= _bsKind),
                  ("enableCDN" .=) <$> _bsEnableCDN,
                  ("fingerprint" .=) <$> _bsFingerprint,
                  ("protocol" .=) <$> _bsProtocol,
                  ("selfLink" .=) <$> _bsSelfLink,
                  ("name" .=) <$> _bsName,
                  ("creationTimestamp" .=) <$> _bsCreationTimestamp,
                  ("id" .=) <$> _bsId, ("region" .=) <$> _bsRegion,
                  ("connectionDraining" .=) <$> _bsConnectionDraining,
                  ("timeoutSec" .=) <$> _bsTimeoutSec,
                  ("description" .=) <$> _bsDescription,
                  ("portName" .=) <$> _bsPortName,
                  ("healthChecks" .=) <$> _bsHealthChecks,
                  ("port" .=) <$> _bsPort])

--
-- /See:/ 'instanceMoveRequest' smart constructor.
data InstanceMoveRequest = InstanceMoveRequest'
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
    InstanceMoveRequest'
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

-- | The URL of the destination zone to move the instance. This can be a full
-- or partial URL. For example, the following are all valid URLs to a zone:
-- -
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
                 InstanceMoveRequest' <$>
                   (o .:? "targetInstance") <*>
                     (o .:? "destinationZone"))

instance ToJSON InstanceMoveRequest where
        toJSON InstanceMoveRequest'{..}
          = object
              (catMaybes
                 [("targetInstance" .=) <$> _imrTargetInstance,
                  ("destinationZone" .=) <$> _imrDestinationZone])

--
-- /See:/ 'instanceGroupsScopedList' smart constructor.
data InstanceGroupsScopedList = InstanceGroupsScopedList'
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
    InstanceGroupsScopedList'
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
                 InstanceGroupsScopedList' <$>
                   (o .:? "warning") <*>
                     (o .:? "instanceGroups" .!= mempty))

instance ToJSON InstanceGroupsScopedList where
        toJSON InstanceGroupsScopedList'{..}
          = object
              (catMaybes
                 [("warning" .=) <$> _igslWarning,
                  ("instanceGroups" .=) <$> _igslInstanceGroups])

--
-- /See:/ 'instancesStartWithEncryptionKeyRequest' smart constructor.
newtype InstancesStartWithEncryptionKeyRequest = InstancesStartWithEncryptionKeyRequest'
    { _iswekrDisks :: Maybe [CustomerEncryptionKeyProtectedDisk]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStartWithEncryptionKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iswekrDisks'
instancesStartWithEncryptionKeyRequest
    :: InstancesStartWithEncryptionKeyRequest
instancesStartWithEncryptionKeyRequest =
    InstancesStartWithEncryptionKeyRequest'
    { _iswekrDisks = Nothing
    }

-- | Array of disks associated with this instance that are protected with a
-- customer-supplied encryption key. In order to start the instance, the
-- disk url and its corresponding key must be provided. If the disk is not
-- protected with a customer-supplied encryption key it should not be
-- specified.
iswekrDisks :: Lens' InstancesStartWithEncryptionKeyRequest [CustomerEncryptionKeyProtectedDisk]
iswekrDisks
  = lens _iswekrDisks (\ s a -> s{_iswekrDisks = a}) .
      _Default
      . _Coerce

instance FromJSON
         InstancesStartWithEncryptionKeyRequest where
        parseJSON
          = withObject "InstancesStartWithEncryptionKeyRequest"
              (\ o ->
                 InstancesStartWithEncryptionKeyRequest' <$>
                   (o .:? "disks" .!= mempty))

instance ToJSON
         InstancesStartWithEncryptionKeyRequest where
        toJSON InstancesStartWithEncryptionKeyRequest'{..}
          = object (catMaybes [("disks" .=) <$> _iswekrDisks])

--
-- /See:/ 'httpsHealthCheck' smart constructor.
data HTTPSHealthCheck = HTTPSHealthCheck'
    { _hhcRequestPath :: !(Maybe Text)
    , _hhcHost        :: !(Maybe Text)
    , _hhcProxyHeader :: !(Maybe HTTPSHealthCheckProxyHeader)
    , _hhcPortName    :: !(Maybe Text)
    , _hhcPort        :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPSHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcRequestPath'
--
-- * 'hhcHost'
--
-- * 'hhcProxyHeader'
--
-- * 'hhcPortName'
--
-- * 'hhcPort'
httpsHealthCheck
    :: HTTPSHealthCheck
httpsHealthCheck =
    HTTPSHealthCheck'
    { _hhcRequestPath = Nothing
    , _hhcHost = Nothing
    , _hhcProxyHeader = Nothing
    , _hhcPortName = Nothing
    , _hhcPort = Nothing
    }

-- | The request path of the HTTPS health check request. The default value is
-- \/.
hhcRequestPath :: Lens' HTTPSHealthCheck (Maybe Text)
hhcRequestPath
  = lens _hhcRequestPath
      (\ s a -> s{_hhcRequestPath = a})

-- | The value of the host header in the HTTPS health check request. If left
-- empty (default value), the IP on behalf of which this health check is
-- performed will be used.
hhcHost :: Lens' HTTPSHealthCheck (Maybe Text)
hhcHost = lens _hhcHost (\ s a -> s{_hhcHost = a})

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
hhcProxyHeader :: Lens' HTTPSHealthCheck (Maybe HTTPSHealthCheckProxyHeader)
hhcProxyHeader
  = lens _hhcProxyHeader
      (\ s a -> s{_hhcProxyHeader = a})

-- | Port name as defined in InstanceGroup#NamedPort#name. If both port and
-- port_name are defined, port takes precedence.
hhcPortName :: Lens' HTTPSHealthCheck (Maybe Text)
hhcPortName
  = lens _hhcPortName (\ s a -> s{_hhcPortName = a})

-- | The TCP port number for the health check request. The default value is
-- 443.
hhcPort :: Lens' HTTPSHealthCheck (Maybe Int32)
hhcPort
  = lens _hhcPort (\ s a -> s{_hhcPort = a}) .
      mapping _Coerce

instance FromJSON HTTPSHealthCheck where
        parseJSON
          = withObject "HTTPSHealthCheck"
              (\ o ->
                 HTTPSHealthCheck' <$>
                   (o .:? "requestPath") <*> (o .:? "host") <*>
                     (o .:? "proxyHeader")
                     <*> (o .:? "portName")
                     <*> (o .:? "port"))

instance ToJSON HTTPSHealthCheck where
        toJSON HTTPSHealthCheck'{..}
          = object
              (catMaybes
                 [("requestPath" .=) <$> _hhcRequestPath,
                  ("host" .=) <$> _hhcHost,
                  ("proxyHeader" .=) <$> _hhcProxyHeader,
                  ("portName" .=) <$> _hhcPortName,
                  ("port" .=) <$> _hhcPort])

-- | [Output Only] A map of scoped vpn tunnel lists.
--
-- /See:/ 'vpnTunnelAggregatedListItems' smart constructor.
newtype VPNTunnelAggregatedListItems = VPNTunnelAggregatedListItems'
    { _vtaliAddtional :: HashMap Text VPNTunnelsScopedList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelAggregatedListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtaliAddtional'
vpnTunnelAggregatedListItems
    :: HashMap Text VPNTunnelsScopedList -- ^ 'vtaliAddtional'
    -> VPNTunnelAggregatedListItems
vpnTunnelAggregatedListItems pVtaliAddtional_ =
    VPNTunnelAggregatedListItems'
    { _vtaliAddtional = _Coerce # pVtaliAddtional_
    }

-- | Name of the scope containing this set of vpn tunnels.
vtaliAddtional :: Lens' VPNTunnelAggregatedListItems (HashMap Text VPNTunnelsScopedList)
vtaliAddtional
  = lens _vtaliAddtional
      (\ s a -> s{_vtaliAddtional = a})
      . _Coerce

instance FromJSON VPNTunnelAggregatedListItems where
        parseJSON
          = withObject "VPNTunnelAggregatedListItems"
              (\ o ->
                 VPNTunnelAggregatedListItems' <$>
                   (parseJSONObject o))

instance ToJSON VPNTunnelAggregatedListItems where
        toJSON = toJSON . _vtaliAddtional

-- | A set of instance tags.
--
-- /See:/ 'tags' smart constructor.
data Tags = Tags'
    { _tFingerprint :: !(Maybe Bytes)
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
    Tags'
    { _tFingerprint = Nothing
    , _tItems = Nothing
    }

-- | Specifies a fingerprint for this request, which is essentially a hash of
-- the metadata\'s contents and used for optimistic locking. The
-- fingerprint is initially generated by Compute Engine and changes after
-- every request to modify or update metadata. You must always provide an
-- up-to-date fingerprint hash in order to update or change metadata. To
-- see the latest fingerprint, make get() request to the instance.
tFingerprint :: Lens' Tags (Maybe ByteString)
tFingerprint
  = lens _tFingerprint (\ s a -> s{_tFingerprint = a})
      . mapping _Bytes

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
                 Tags' <$>
                   (o .:? "fingerprint") <*> (o .:? "items" .!= mempty))

instance ToJSON Tags where
        toJSON Tags'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _tFingerprint,
                  ("items" .=) <$> _tItems])

--
-- /See:/ 'addressAggregatedList' smart constructor.
data AddressAggregatedList = AddressAggregatedList'
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
    AddressAggregatedList'
    { _addNextPageToken = Nothing
    , _addKind = "compute#addressAggregatedList"
    , _addItems = Nothing
    , _addSelfLink = Nothing
    , _addId = Nothing
    }

-- | [Output Only] This token allows you to get the next page of results for
-- list requests. If the number of results is larger than maxResults, use
-- the nextPageToken as a value for the query parameter pageToken in the
-- next list request. Subsequent list requests will have their own
-- nextPageToken to continue paging through the results.
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
                 AddressAggregatedList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "compute#addressAggregatedList")
                     <*> (o .:? "items")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON AddressAggregatedList where
        toJSON AddressAggregatedList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _addNextPageToken,
                  Just ("kind" .= _addKind),
                  ("items" .=) <$> _addItems,
                  ("selfLink" .=) <$> _addSelfLink,
                  ("id" .=) <$> _addId])

--
-- /See:/ 'operationWarningsItem' smart constructor.
data OperationWarningsItem = OperationWarningsItem'
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
owiCode :: Lens' OperationWarningsItem (Maybe OperationWarningsItemCode)
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

-- | Message for the expected URL mappings.
--
-- /See:/ 'urlMapTest' smart constructor.
data URLMapTest = URLMapTest'
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
    URLMapTest'
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
                 URLMapTest' <$>
                   (o .:? "path") <*> (o .:? "service") <*>
                     (o .:? "host")
                     <*> (o .:? "description"))

instance ToJSON URLMapTest where
        toJSON URLMapTest'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _umtPath,
                  ("service" .=) <$> _umtService,
                  ("host" .=) <$> _umtHost,
                  ("description" .=) <$> _umtDescription])

--
-- /See:/ 'routersPreviewResponse' smart constructor.
newtype RoutersPreviewResponse = RoutersPreviewResponse'
    { _rprResource :: Maybe Router
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprResource'
routersPreviewResponse
    :: RoutersPreviewResponse
routersPreviewResponse =
    RoutersPreviewResponse'
    { _rprResource = Nothing
    }

-- | Preview of given router.
rprResource :: Lens' RoutersPreviewResponse (Maybe Router)
rprResource
  = lens _rprResource (\ s a -> s{_rprResource = a})

instance FromJSON RoutersPreviewResponse where
        parseJSON
          = withObject "RoutersPreviewResponse"
              (\ o ->
                 RoutersPreviewResponse' <$> (o .:? "resource"))

instance ToJSON RoutersPreviewResponse where
        toJSON RoutersPreviewResponse'{..}
          = object
              (catMaybes [("resource" .=) <$> _rprResource])

-- | An Instance resource.
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
    { _insnStatus            :: !(Maybe InstanceStatus)
    , _insnServiceAccounts   :: !(Maybe [ServiceAccount])
    , _insnNetworkInterfaces :: !(Maybe [NetworkInterface])
    , _insnKind              :: !Text
    , _insnZone              :: !(Maybe Text)
    , _insnCPUPlatform       :: !(Maybe Text)
    , _insnSelfLink          :: !(Maybe Text)
    , _insnName              :: !(Maybe Text)
    , _insnStatusMessage     :: !(Maybe Text)
    , _insnCreationTimestamp :: !(Maybe Text)
    , _insnMachineType       :: !(Maybe Text)
    , _insnMetadata          :: !(Maybe Metadata)
    , _insnId                :: !(Maybe (Textual Word64))
    , _insnScheduling        :: !(Maybe Scheduling)
    , _insnDisks             :: !(Maybe [AttachedDisk])
    , _insnCanIPForward      :: !(Maybe Bool)
    , _insnDescription       :: !(Maybe Text)
    , _insnTags              :: !(Maybe Tags)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insnStatus'
--
-- * 'insnServiceAccounts'
--
-- * 'insnNetworkInterfaces'
--
-- * 'insnKind'
--
-- * 'insnZone'
--
-- * 'insnCPUPlatform'
--
-- * 'insnSelfLink'
--
-- * 'insnName'
--
-- * 'insnStatusMessage'
--
-- * 'insnCreationTimestamp'
--
-- * 'insnMachineType'
--
-- * 'insnMetadata'
--
-- * 'insnId'
--
-- * 'insnScheduling'
--
-- * 'insnDisks'
--
-- * 'insnCanIPForward'
--
-- * 'insnDescription'
--
-- * 'insnTags'
instance'
    :: Instance
instance' =
    Instance'
    { _insnStatus = Nothing
    , _insnServiceAccounts = Nothing
    , _insnNetworkInterfaces = Nothing
    , _insnKind = "compute#instance"
    , _insnZone = Nothing
    , _insnCPUPlatform = Nothing
    , _insnSelfLink = Nothing
    , _insnName = Nothing
    , _insnStatusMessage = Nothing
    , _insnCreationTimestamp = Nothing
    , _insnMachineType = Nothing
    , _insnMetadata = Nothing
    , _insnId = Nothing
    , _insnScheduling = Nothing
    , _insnDisks = Nothing
    , _insnCanIPForward = Nothing
    , _insnDescription = Nothing
    , _insnTags = Nothing
    }

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, and
-- TERMINATED.
insnStatus :: Lens' Instance (Maybe InstanceStatus)
insnStatus
  = lens _insnStatus (\ s a -> s{_insnStatus = a})

-- | A list of service accounts, with their specified scopes, authorized for
-- this instance. Service accounts generate access tokens that can be
-- accessed through the metadata server and used to authenticate
-- applications on the instance. See Service Accounts for more information.
insnServiceAccounts :: Lens' Instance [ServiceAccount]
insnServiceAccounts
  = lens _insnServiceAccounts
      (\ s a -> s{_insnServiceAccounts = a})
      . _Default
      . _Coerce

-- | An array of configurations for this interface. This specifies how this
-- interface is configured to interact with other network services, such as
-- connecting to the internet. Only one interface is supported per
-- instance.
insnNetworkInterfaces :: Lens' Instance [NetworkInterface]
insnNetworkInterfaces
  = lens _insnNetworkInterfaces
      (\ s a -> s{_insnNetworkInterfaces = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always compute#instance for
-- instances.
insnKind :: Lens' Instance Text
insnKind = lens _insnKind (\ s a -> s{_insnKind = a})

-- | [Output Only] URL of the zone where the instance resides.
insnZone :: Lens' Instance (Maybe Text)
insnZone = lens _insnZone (\ s a -> s{_insnZone = a})

-- | [Output Only] The CPU platform used by this instance.
insnCPUPlatform :: Lens' Instance (Maybe Text)
insnCPUPlatform
  = lens _insnCPUPlatform
      (\ s a -> s{_insnCPUPlatform = a})

-- | [Output Only] Server-defined URL for this resource.
insnSelfLink :: Lens' Instance (Maybe Text)
insnSelfLink
  = lens _insnSelfLink (\ s a -> s{_insnSelfLink = a})

-- | The name of the resource, provided by the client when initially creating
-- the resource. The resource name must be 1-63 characters long, and comply
-- with RFC1035. Specifically, the name must be 1-63 characters long and
-- match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the
-- first character must be a lowercase letter, and all following characters
-- must be a dash, lowercase letter, or digit, except the last character,
-- which cannot be a dash.
insnName :: Lens' Instance (Maybe Text)
insnName = lens _insnName (\ s a -> s{_insnName = a})

-- | [Output Only] An optional, human-readable explanation of the status.
insnStatusMessage :: Lens' Instance (Maybe Text)
insnStatusMessage
  = lens _insnStatusMessage
      (\ s a -> s{_insnStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
insnCreationTimestamp :: Lens' Instance (Maybe Text)
insnCreationTimestamp
  = lens _insnCreationTimestamp
      (\ s a -> s{_insnCreationTimestamp = a})

-- | Full or partial URL of the machine type resource to use for this
-- instance, in the format: zones\/zone\/machineTypes\/machine-type. This
-- is provided by the client when the instance is created. For example, the
-- following is a valid partial url to a predefined machine type:
-- zones\/us-central1-f\/machineTypes\/n1-standard-1 To create a custom
-- machine type, provide a URL to a machine type in the following format,
-- where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and
-- MEMORY is the total memory for this instance. Memory must be a multiple
-- of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB):
-- zones\/zone\/machineTypes\/custom-CPUS-MEMORY For example:
-- zones\/us-central1-f\/machineTypes\/custom-4-5120 For a full list of
-- restrictions, read the Specifications for custom machine types.
insnMachineType :: Lens' Instance (Maybe Text)
insnMachineType
  = lens _insnMachineType
      (\ s a -> s{_insnMachineType = a})

-- | The metadata key\/value pairs assigned to this instance. This includes
-- custom metadata and predefined keys.
insnMetadata :: Lens' Instance (Maybe Metadata)
insnMetadata
  = lens _insnMetadata (\ s a -> s{_insnMetadata = a})

-- | [Output Only] The unique identifier for the resource. This identifier is
-- defined by the server.
insnId :: Lens' Instance (Maybe Word64)
insnId
  = lens _insnId (\ s a -> s{_insnId = a}) .
      mapping _Coerce

-- | Scheduling options for this instance.
insnScheduling :: Lens' Instance (Maybe Scheduling)
insnScheduling
  = lens _insnScheduling
      (\ s a -> s{_insnScheduling = a})

-- | Array of disks associated with this instance. Persistent disks must be
-- created before you can assign them.
insnDisks :: Lens' Instance [AttachedDisk]
insnDisks
  = lens _insnDisks (\ s a -> s{_insnDisks = a}) .
      _Default
      . _Coerce

-- | Allows this instance to send and receive packets with non-matching
-- destination or source IPs. This is required if you plan to use this
-- instance to forward routes. For more information, see Enabling IP
-- Forwarding.
insnCanIPForward :: Lens' Instance (Maybe Bool)
insnCanIPForward
  = lens _insnCanIPForward
      (\ s a -> s{_insnCanIPForward = a})

-- | An optional description of this resource. Provide this property when you
-- create the resource.
insnDescription :: Lens' Instance (Maybe Text)
insnDescription
  = lens _insnDescription
      (\ s a -> s{_insnDescription = a})

-- | A list of tags to apply to this instance. Tags are used to identify
-- valid sources or targets for network firewalls and are specified by the
-- client during instance creation. The tags can be later modified by the
-- setTags method. Each tag within the list must comply with RFC1035.
insnTags :: Lens' Instance (Maybe Tags)
insnTags = lens _insnTags (\ s a -> s{_insnTags = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
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
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _insnStatus,
                  ("serviceAccounts" .=) <$> _insnServiceAccounts,
                  ("networkInterfaces" .=) <$> _insnNetworkInterfaces,
                  Just ("kind" .= _insnKind),
                  ("zone" .=) <$> _insnZone,
                  ("cpuPlatform" .=) <$> _insnCPUPlatform,
                  ("selfLink" .=) <$> _insnSelfLink,
                  ("name" .=) <$> _insnName,
                  ("statusMessage" .=) <$> _insnStatusMessage,
                  ("creationTimestamp" .=) <$> _insnCreationTimestamp,
                  ("machineType" .=) <$> _insnMachineType,
                  ("metadata" .=) <$> _insnMetadata,
                  ("id" .=) <$> _insnId,
                  ("scheduling" .=) <$> _insnScheduling,
                  ("disks" .=) <$> _insnDisks,
                  ("canIpForward" .=) <$> _insnCanIPForward,
                  ("description" .=) <$> _insnDescription,
                  ("tags" .=) <$> _insnTags])

-- | A matcher for the path portion of the URL. The BackendService from the
-- longest-matched rule will serve the URL. If no rule was matched, the
-- default service will be used.
--
-- /See:/ 'pathMatcher' smart constructor.
data PathMatcher = PathMatcher'
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
    PathMatcher'
    { _pmDefaultService = Nothing
    , _pmName = Nothing
    , _pmPathRules = Nothing
    , _pmDescription = Nothing
    }

-- | The full or partial URL to the BackendService resource. This will be
-- used if none of the pathRules defined by this PathMatcher is matched by
-- the URL\'s path portion. For example, the following are all valid URLs
-- to a BackendService resource: -
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/backendServices\/backendService
-- -
-- compute\/v1\/projects\/project\/global\/backendServices\/backendService
-- - global\/backendServices\/backendService
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

-- | An optional description of this resource. Provide this property when you
-- create the resource.
pmDescription :: Lens' PathMatcher (Maybe Text)
pmDescription
  = lens _pmDescription
      (\ s a -> s{_pmDescription = a})

instance FromJSON PathMatcher where
        parseJSON
          = withObject "PathMatcher"
              (\ o ->
                 PathMatcher' <$>
                   (o .:? "defaultService") <*> (o .:? "name") <*>
                     (o .:? "pathRules" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON PathMatcher where
        toJSON PathMatcher'{..}
          = object
              (catMaybes
                 [("defaultService" .=) <$> _pmDefaultService,
                  ("name" .=) <$> _pmName,
                  ("pathRules" .=) <$> _pmPathRules,
                  ("description" .=) <$> _pmDescription])
