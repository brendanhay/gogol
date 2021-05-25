{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types.Product where

import Network.Google.DNS.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'policyAlternativeNameServerConfigTargetNameServer' smart constructor.
data PolicyAlternativeNameServerConfigTargetNameServer =
  PolicyAlternativeNameServerConfigTargetNameServer'
    { _pansctnsKind :: !Text
    , _pansctnsForwardingPath :: !(Maybe PolicyAlternativeNameServerConfigTargetNameServerForwardingPath)
    , _pansctnsIPv4Address :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyAlternativeNameServerConfigTargetNameServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pansctnsKind'
--
-- * 'pansctnsForwardingPath'
--
-- * 'pansctnsIPv4Address'
policyAlternativeNameServerConfigTargetNameServer
    :: PolicyAlternativeNameServerConfigTargetNameServer
policyAlternativeNameServerConfigTargetNameServer =
  PolicyAlternativeNameServerConfigTargetNameServer'
    { _pansctnsKind = "dns#policyAlternativeNameServerConfigTargetNameServer"
    , _pansctnsForwardingPath = Nothing
    , _pansctnsIPv4Address = Nothing
    }


pansctnsKind :: Lens' PolicyAlternativeNameServerConfigTargetNameServer Text
pansctnsKind
  = lens _pansctnsKind (\ s a -> s{_pansctnsKind = a})

-- | Forwarding path for this TargetNameServer. If unset or set to DEFAULT,
-- Cloud DNS will make forwarding decision based on address ranges, i.e.
-- RFC1918 addresses go to the VPC, non-RFC1918 addresses go to the
-- Internet. When set to PRIVATE, Cloud DNS will always send queries
-- through VPC for this target.
pansctnsForwardingPath :: Lens' PolicyAlternativeNameServerConfigTargetNameServer (Maybe PolicyAlternativeNameServerConfigTargetNameServerForwardingPath)
pansctnsForwardingPath
  = lens _pansctnsForwardingPath
      (\ s a -> s{_pansctnsForwardingPath = a})

-- | IPv4 address to forward to.
pansctnsIPv4Address :: Lens' PolicyAlternativeNameServerConfigTargetNameServer (Maybe Text)
pansctnsIPv4Address
  = lens _pansctnsIPv4Address
      (\ s a -> s{_pansctnsIPv4Address = a})

instance FromJSON
           PolicyAlternativeNameServerConfigTargetNameServer
         where
        parseJSON
          = withObject
              "PolicyAlternativeNameServerConfigTargetNameServer"
              (\ o ->
                 PolicyAlternativeNameServerConfigTargetNameServer'
                   <$>
                   (o .:? "kind" .!=
                      "dns#policyAlternativeNameServerConfigTargetNameServer")
                     <*> (o .:? "forwardingPath")
                     <*> (o .:? "ipv4Address"))

instance ToJSON
           PolicyAlternativeNameServerConfigTargetNameServer
         where
        toJSON
          PolicyAlternativeNameServerConfigTargetNameServer'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pansctnsKind),
                  ("forwardingPath" .=) <$> _pansctnsForwardingPath,
                  ("ipv4Address" .=) <$> _pansctnsIPv4Address])

--
-- /See:/ 'operationDNSKeyContext' smart constructor.
data OperationDNSKeyContext =
  OperationDNSKeyContext'
    { _odkcOldValue :: !(Maybe DNSKey)
    , _odkcNewValue :: !(Maybe DNSKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationDNSKeyContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odkcOldValue'
--
-- * 'odkcNewValue'
operationDNSKeyContext
    :: OperationDNSKeyContext
operationDNSKeyContext =
  OperationDNSKeyContext' {_odkcOldValue = Nothing, _odkcNewValue = Nothing}


-- | The pre-operation DnsKey resource.
odkcOldValue :: Lens' OperationDNSKeyContext (Maybe DNSKey)
odkcOldValue
  = lens _odkcOldValue (\ s a -> s{_odkcOldValue = a})

-- | The post-operation DnsKey resource.
odkcNewValue :: Lens' OperationDNSKeyContext (Maybe DNSKey)
odkcNewValue
  = lens _odkcNewValue (\ s a -> s{_odkcNewValue = a})

instance FromJSON OperationDNSKeyContext where
        parseJSON
          = withObject "OperationDNSKeyContext"
              (\ o ->
                 OperationDNSKeyContext' <$>
                   (o .:? "oldValue") <*> (o .:? "newValue"))

instance ToJSON OperationDNSKeyContext where
        toJSON OperationDNSKeyContext'{..}
          = object
              (catMaybes
                 [("oldValue" .=) <$> _odkcOldValue,
                  ("newValue" .=) <$> _odkcNewValue])

--
-- /See:/ 'managedZonePrivateVisibilityConfigNetwork' smart constructor.
data ManagedZonePrivateVisibilityConfigNetwork =
  ManagedZonePrivateVisibilityConfigNetwork'
    { _mzpvcnKind :: !Text
    , _mzpvcnNetworkURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonePrivateVisibilityConfigNetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpvcnKind'
--
-- * 'mzpvcnNetworkURL'
managedZonePrivateVisibilityConfigNetwork
    :: ManagedZonePrivateVisibilityConfigNetwork
managedZonePrivateVisibilityConfigNetwork =
  ManagedZonePrivateVisibilityConfigNetwork'
    { _mzpvcnKind = "dns#managedZonePrivateVisibilityConfigNetwork"
    , _mzpvcnNetworkURL = Nothing
    }


mzpvcnKind :: Lens' ManagedZonePrivateVisibilityConfigNetwork Text
mzpvcnKind
  = lens _mzpvcnKind (\ s a -> s{_mzpvcnKind = a})

-- | The fully qualified URL of the VPC network to bind to. This should be
-- formatted like
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
mzpvcnNetworkURL :: Lens' ManagedZonePrivateVisibilityConfigNetwork (Maybe Text)
mzpvcnNetworkURL
  = lens _mzpvcnNetworkURL
      (\ s a -> s{_mzpvcnNetworkURL = a})

instance FromJSON
           ManagedZonePrivateVisibilityConfigNetwork
         where
        parseJSON
          = withObject
              "ManagedZonePrivateVisibilityConfigNetwork"
              (\ o ->
                 ManagedZonePrivateVisibilityConfigNetwork' <$>
                   (o .:? "kind" .!=
                      "dns#managedZonePrivateVisibilityConfigNetwork")
                     <*> (o .:? "networkUrl"))

instance ToJSON
           ManagedZonePrivateVisibilityConfigNetwork
         where
        toJSON ManagedZonePrivateVisibilityConfigNetwork'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mzpvcnKind),
                  ("networkUrl" .=) <$> _mzpvcnNetworkURL])

--
-- /See:/ 'managedZonePeeringConfigTargetNetwork' smart constructor.
data ManagedZonePeeringConfigTargetNetwork =
  ManagedZonePeeringConfigTargetNetwork'
    { _mzpctnDeactivateTime :: !(Maybe Text)
    , _mzpctnKind :: !Text
    , _mzpctnNetworkURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonePeeringConfigTargetNetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpctnDeactivateTime'
--
-- * 'mzpctnKind'
--
-- * 'mzpctnNetworkURL'
managedZonePeeringConfigTargetNetwork
    :: ManagedZonePeeringConfigTargetNetwork
managedZonePeeringConfigTargetNetwork =
  ManagedZonePeeringConfigTargetNetwork'
    { _mzpctnDeactivateTime = Nothing
    , _mzpctnKind = "dns#managedZonePeeringConfigTargetNetwork"
    , _mzpctnNetworkURL = Nothing
    }


-- | The time at which the zone was deactivated, in RFC 3339 date-time
-- format. An empty string indicates that the peering connection is active.
-- The producer network can deactivate a zone. The zone is automatically
-- deactivated if the producer network that the zone targeted is deleted.
-- Output only.
mzpctnDeactivateTime :: Lens' ManagedZonePeeringConfigTargetNetwork (Maybe Text)
mzpctnDeactivateTime
  = lens _mzpctnDeactivateTime
      (\ s a -> s{_mzpctnDeactivateTime = a})

mzpctnKind :: Lens' ManagedZonePeeringConfigTargetNetwork Text
mzpctnKind
  = lens _mzpctnKind (\ s a -> s{_mzpctnKind = a})

-- | The fully qualified URL of the VPC network to forward queries to. This
-- should be formatted like
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
mzpctnNetworkURL :: Lens' ManagedZonePeeringConfigTargetNetwork (Maybe Text)
mzpctnNetworkURL
  = lens _mzpctnNetworkURL
      (\ s a -> s{_mzpctnNetworkURL = a})

instance FromJSON
           ManagedZonePeeringConfigTargetNetwork
         where
        parseJSON
          = withObject "ManagedZonePeeringConfigTargetNetwork"
              (\ o ->
                 ManagedZonePeeringConfigTargetNetwork' <$>
                   (o .:? "deactivateTime") <*>
                     (o .:? "kind" .!=
                        "dns#managedZonePeeringConfigTargetNetwork")
                     <*> (o .:? "networkUrl"))

instance ToJSON ManagedZonePeeringConfigTargetNetwork
         where
        toJSON ManagedZonePeeringConfigTargetNetwork'{..}
          = object
              (catMaybes
                 [("deactivateTime" .=) <$> _mzpctnDeactivateTime,
                  Just ("kind" .= _mzpctnKind),
                  ("networkUrl" .=) <$> _mzpctnNetworkURL])

-- | The response to a request to enumerate DnsKeys in a ManagedZone.
--
-- /See:/ 'dnsKeysListResponse' smart constructor.
data DNSKeysListResponse =
  DNSKeysListResponse'
    { _dklrNextPageToken :: !(Maybe Text)
    , _dklrDNSKeys :: !(Maybe [DNSKey])
    , _dklrKind :: !Text
    , _dklrHeader :: !(Maybe ResponseHeader)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeysListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dklrNextPageToken'
--
-- * 'dklrDNSKeys'
--
-- * 'dklrKind'
--
-- * 'dklrHeader'
dnsKeysListResponse
    :: DNSKeysListResponse
dnsKeysListResponse =
  DNSKeysListResponse'
    { _dklrNextPageToken = Nothing
    , _dklrDNSKeys = Nothing
    , _dklrKind = "dns#dnsKeysListResponse"
    , _dklrHeader = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your pagination token. In
-- this way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a \"snapshot\" of collections
-- larger than the maximum page size.
dklrNextPageToken :: Lens' DNSKeysListResponse (Maybe Text)
dklrNextPageToken
  = lens _dklrNextPageToken
      (\ s a -> s{_dklrNextPageToken = a})

-- | The requested resources.
dklrDNSKeys :: Lens' DNSKeysListResponse [DNSKey]
dklrDNSKeys
  = lens _dklrDNSKeys (\ s a -> s{_dklrDNSKeys = a}) .
      _Default
      . _Coerce

-- | Type of resource.
dklrKind :: Lens' DNSKeysListResponse Text
dklrKind = lens _dklrKind (\ s a -> s{_dklrKind = a})

dklrHeader :: Lens' DNSKeysListResponse (Maybe ResponseHeader)
dklrHeader
  = lens _dklrHeader (\ s a -> s{_dklrHeader = a})

instance FromJSON DNSKeysListResponse where
        parseJSON
          = withObject "DNSKeysListResponse"
              (\ o ->
                 DNSKeysListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "dnsKeys" .!= mempty)
                     <*> (o .:? "kind" .!= "dns#dnsKeysListResponse")
                     <*> (o .:? "header"))

instance ToJSON DNSKeysListResponse where
        toJSON DNSKeysListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dklrNextPageToken,
                  ("dnsKeys" .=) <$> _dklrDNSKeys,
                  Just ("kind" .= _dklrKind),
                  ("header" .=) <$> _dklrHeader])

-- | The response to a request to enumerate Changes to a ResourceRecordSets
-- collection.
--
-- /See:/ 'changesListResponse' smart constructor.
data ChangesListResponse =
  ChangesListResponse'
    { _clrNextPageToken :: !(Maybe Text)
    , _clrChanges :: !(Maybe [Change])
    , _clrKind :: !Text
    , _clrHeader :: !(Maybe ResponseHeader)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrNextPageToken'
--
-- * 'clrChanges'
--
-- * 'clrKind'
--
-- * 'clrHeader'
changesListResponse
    :: ChangesListResponse
changesListResponse =
  ChangesListResponse'
    { _clrNextPageToken = Nothing
    , _clrChanges = Nothing
    , _clrKind = "dns#changesListResponse"
    , _clrHeader = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your pagination token. In
-- this way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a \"snapshot\" of collections
-- larger than the maximum page size.
clrNextPageToken :: Lens' ChangesListResponse (Maybe Text)
clrNextPageToken
  = lens _clrNextPageToken
      (\ s a -> s{_clrNextPageToken = a})

-- | The requested changes.
clrChanges :: Lens' ChangesListResponse [Change]
clrChanges
  = lens _clrChanges (\ s a -> s{_clrChanges = a}) .
      _Default
      . _Coerce

-- | Type of resource.
clrKind :: Lens' ChangesListResponse Text
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

clrHeader :: Lens' ChangesListResponse (Maybe ResponseHeader)
clrHeader
  = lens _clrHeader (\ s a -> s{_clrHeader = a})

instance FromJSON ChangesListResponse where
        parseJSON
          = withObject "ChangesListResponse"
              (\ o ->
                 ChangesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "changes" .!= mempty)
                     <*> (o .:? "kind" .!= "dns#changesListResponse")
                     <*> (o .:? "header"))

instance ToJSON ChangesListResponse where
        toJSON ChangesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clrNextPageToken,
                  ("changes" .=) <$> _clrChanges,
                  Just ("kind" .= _clrKind),
                  ("header" .=) <$> _clrHeader])

--
-- /See:/ 'policiesListResponse' smart constructor.
data PoliciesListResponse =
  PoliciesListResponse'
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind :: !Text
    , _plrHeader :: !(Maybe ResponseHeader)
    , _plrPolicies :: !(Maybe [Policy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrKind'
--
-- * 'plrHeader'
--
-- * 'plrPolicies'
policiesListResponse
    :: PoliciesListResponse
policiesListResponse =
  PoliciesListResponse'
    { _plrNextPageToken = Nothing
    , _plrKind = "dns#policiesListResponse"
    , _plrHeader = Nothing
    , _plrPolicies = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your page token. In this
-- way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a consistent snapshot of a
-- collection larger than the maximum page size.
plrNextPageToken :: Lens' PoliciesListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Type of resource.
plrKind :: Lens' PoliciesListResponse Text
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

plrHeader :: Lens' PoliciesListResponse (Maybe ResponseHeader)
plrHeader
  = lens _plrHeader (\ s a -> s{_plrHeader = a})

-- | The policy resources.
plrPolicies :: Lens' PoliciesListResponse [Policy]
plrPolicies
  = lens _plrPolicies (\ s a -> s{_plrPolicies = a}) .
      _Default
      . _Coerce

instance FromJSON PoliciesListResponse where
        parseJSON
          = withObject "PoliciesListResponse"
              (\ o ->
                 PoliciesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dns#policiesListResponse")
                     <*> (o .:? "header")
                     <*> (o .:? "policies" .!= mempty))

instance ToJSON PoliciesListResponse where
        toJSON PoliciesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  Just ("kind" .= _plrKind),
                  ("header" .=) <$> _plrHeader,
                  ("policies" .=) <$> _plrPolicies])

--
-- /See:/ 'managedZoneForwardingConfig' smart constructor.
data ManagedZoneForwardingConfig =
  ManagedZoneForwardingConfig'
    { _mzfcKind :: !Text
    , _mzfcTargetNameServers :: !(Maybe [ManagedZoneForwardingConfigNameServerTarget])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneForwardingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzfcKind'
--
-- * 'mzfcTargetNameServers'
managedZoneForwardingConfig
    :: ManagedZoneForwardingConfig
managedZoneForwardingConfig =
  ManagedZoneForwardingConfig'
    { _mzfcKind = "dns#managedZoneForwardingConfig"
    , _mzfcTargetNameServers = Nothing
    }


mzfcKind :: Lens' ManagedZoneForwardingConfig Text
mzfcKind = lens _mzfcKind (\ s a -> s{_mzfcKind = a})

-- | List of target name servers to forward to. Cloud DNS will select the
-- best available name server if more than one target is given.
mzfcTargetNameServers :: Lens' ManagedZoneForwardingConfig [ManagedZoneForwardingConfigNameServerTarget]
mzfcTargetNameServers
  = lens _mzfcTargetNameServers
      (\ s a -> s{_mzfcTargetNameServers = a})
      . _Default
      . _Coerce

instance FromJSON ManagedZoneForwardingConfig where
        parseJSON
          = withObject "ManagedZoneForwardingConfig"
              (\ o ->
                 ManagedZoneForwardingConfig' <$>
                   (o .:? "kind" .!= "dns#managedZoneForwardingConfig")
                     <*> (o .:? "targetNameServers" .!= mempty))

instance ToJSON ManagedZoneForwardingConfig where
        toJSON ManagedZoneForwardingConfig'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mzfcKind),
                  ("targetNameServers" .=) <$> _mzfcTargetNameServers])

-- | A project resource. The project is a top level container for resources
-- including Cloud DNS ManagedZones. Projects can be created only in the
-- APIs console.
--
-- /See:/ 'project' smart constructor.
data Project =
  Project'
    { _pKind :: !Text
    , _pId :: !(Maybe Text)
    , _pNumber :: !(Maybe (Textual Word64))
    , _pQuota :: !(Maybe Quota)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pId'
--
-- * 'pNumber'
--
-- * 'pQuota'
project
    :: Project
project =
  Project'
    { _pKind = "dns#project"
    , _pId = Nothing
    , _pNumber = Nothing
    , _pQuota = Nothing
    }


pKind :: Lens' Project Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | User assigned unique identifier for the resource (output only).
pId :: Lens' Project (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | Unique numeric identifier for the resource; defined by the server
-- (output only).
pNumber :: Lens' Project (Maybe Word64)
pNumber
  = lens _pNumber (\ s a -> s{_pNumber = a}) .
      mapping _Coerce

-- | Quotas assigned to this project (output only).
pQuota :: Lens' Project (Maybe Quota)
pQuota = lens _pQuota (\ s a -> s{_pQuota = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project' <$>
                   (o .:? "kind" .!= "dns#project") <*> (o .:? "id") <*>
                     (o .:? "number")
                     <*> (o .:? "quota"))

instance ToJSON Project where
        toJSON Project'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind), ("id" .=) <$> _pId,
                  ("number" .=) <$> _pNumber,
                  ("quota" .=) <$> _pQuota])

-- | An operation represents a successful mutation performed on a Cloud DNS
-- resource. Operations provide: - An audit log of server resource
-- mutations. - A way to recover\/retry API calls in the case where the
-- response is never received by the caller. Use the caller specified
-- client_operation_id.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oStatus :: !(Maybe OperationStatus)
    , _oStartTime :: !(Maybe Text)
    , _oKind :: !Text
    , _oUser :: !(Maybe Text)
    , _oId :: !(Maybe Text)
    , _oType :: !(Maybe Text)
    , _oZoneContext :: !(Maybe OperationManagedZoneContext)
    , _oDNSKeyContext :: !(Maybe OperationDNSKeyContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oStatus'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oUser'
--
-- * 'oId'
--
-- * 'oType'
--
-- * 'oZoneContext'
--
-- * 'oDNSKeyContext'
operation
    :: Operation
operation =
  Operation'
    { _oStatus = Nothing
    , _oStartTime = Nothing
    , _oKind = "dns#operation"
    , _oUser = Nothing
    , _oId = Nothing
    , _oType = Nothing
    , _oZoneContext = Nothing
    , _oDNSKeyContext = Nothing
    }


-- | Status of the operation. Can be one of the following: \"PENDING\" or
-- \"DONE\" (output only). A status of \"DONE\" means that the request to
-- update the authoritative servers has been sent, but the servers might
-- not be updated yet.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The time that this operation was started by the server. This is in
-- RFC3339 text format (output only).
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | User who requested the operation, for example: user\'example.com.
-- cloud-dns-system for operations automatically done by the system.
-- (output only)
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | Unique identifier for the resource. This is the client_operation_id if
-- the client specified it when the mutation was initiated, otherwise, it
-- is generated by the server. The name must be 1-63 characters long and
-- match the regular expression [-a-z0-9]? (output only)
oId :: Lens' Operation (Maybe Text)
oId = lens _oId (\ s a -> s{_oId = a})

-- | Type of the operation. Operations include insert, update, and delete
-- (output only).
oType :: Lens' Operation (Maybe Text)
oType = lens _oType (\ s a -> s{_oType = a})

-- | Only populated if the operation targeted a ManagedZone (output only).
oZoneContext :: Lens' Operation (Maybe OperationManagedZoneContext)
oZoneContext
  = lens _oZoneContext (\ s a -> s{_oZoneContext = a})

-- | Only populated if the operation targeted a DnsKey (output only).
oDNSKeyContext :: Lens' Operation (Maybe OperationDNSKeyContext)
oDNSKeyContext
  = lens _oDNSKeyContext
      (\ s a -> s{_oDNSKeyContext = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "status") <*> (o .:? "startTime") <*>
                     (o .:? "kind" .!= "dns#operation")
                     <*> (o .:? "user")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "zoneContext")
                     <*> (o .:? "dnsKeyContext"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _oStatus,
                  ("startTime" .=) <$> _oStartTime,
                  Just ("kind" .= _oKind), ("user" .=) <$> _oUser,
                  ("id" .=) <$> _oId, ("type" .=) <$> _oType,
                  ("zoneContext" .=) <$> _oZoneContext,
                  ("dnsKeyContext" .=) <$> _oDNSKeyContext])

--
-- /See:/ 'managedZonePeeringConfig' smart constructor.
data ManagedZonePeeringConfig =
  ManagedZonePeeringConfig'
    { _mzpcKind :: !Text
    , _mzpcTargetNetwork :: !(Maybe ManagedZonePeeringConfigTargetNetwork)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonePeeringConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpcKind'
--
-- * 'mzpcTargetNetwork'
managedZonePeeringConfig
    :: ManagedZonePeeringConfig
managedZonePeeringConfig =
  ManagedZonePeeringConfig'
    {_mzpcKind = "dns#managedZonePeeringConfig", _mzpcTargetNetwork = Nothing}


mzpcKind :: Lens' ManagedZonePeeringConfig Text
mzpcKind = lens _mzpcKind (\ s a -> s{_mzpcKind = a})

-- | The network with which to peer.
mzpcTargetNetwork :: Lens' ManagedZonePeeringConfig (Maybe ManagedZonePeeringConfigTargetNetwork)
mzpcTargetNetwork
  = lens _mzpcTargetNetwork
      (\ s a -> s{_mzpcTargetNetwork = a})

instance FromJSON ManagedZonePeeringConfig where
        parseJSON
          = withObject "ManagedZonePeeringConfig"
              (\ o ->
                 ManagedZonePeeringConfig' <$>
                   (o .:? "kind" .!= "dns#managedZonePeeringConfig") <*>
                     (o .:? "targetNetwork"))

instance ToJSON ManagedZonePeeringConfig where
        toJSON ManagedZonePeeringConfig'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mzpcKind),
                  ("targetNetwork" .=) <$> _mzpcTargetNetwork])

-- | Parameters for DnsKey key generation. Used for generating initial keys
-- for a new ManagedZone and as default when adding a new DnsKey.
--
-- /See:/ 'dnsKeySpec' smart constructor.
data DNSKeySpec =
  DNSKeySpec'
    { _dksKeyType :: !(Maybe DNSKeySpecKeyType)
    , _dksKind :: !Text
    , _dksAlgorithm :: !(Maybe DNSKeySpecAlgorithm)
    , _dksKeyLength :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeySpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dksKeyType'
--
-- * 'dksKind'
--
-- * 'dksAlgorithm'
--
-- * 'dksKeyLength'
dnsKeySpec
    :: DNSKeySpec
dnsKeySpec =
  DNSKeySpec'
    { _dksKeyType = Nothing
    , _dksKind = "dns#dnsKeySpec"
    , _dksAlgorithm = Nothing
    , _dksKeyLength = Nothing
    }


-- | Specifies whether this is a key signing key (KSK) or a zone signing key
-- (ZSK). Key signing keys have the Secure Entry Point flag set and, when
-- active, will only be used to sign resource record sets of type DNSKEY.
-- Zone signing keys do not have the Secure Entry Point flag set and will
-- be used to sign all other types of resource record sets.
dksKeyType :: Lens' DNSKeySpec (Maybe DNSKeySpecKeyType)
dksKeyType
  = lens _dksKeyType (\ s a -> s{_dksKeyType = a})

dksKind :: Lens' DNSKeySpec Text
dksKind = lens _dksKind (\ s a -> s{_dksKind = a})

-- | String mnemonic specifying the DNSSEC algorithm of this key.
dksAlgorithm :: Lens' DNSKeySpec (Maybe DNSKeySpecAlgorithm)
dksAlgorithm
  = lens _dksAlgorithm (\ s a -> s{_dksAlgorithm = a})

-- | Length of the keys in bits.
dksKeyLength :: Lens' DNSKeySpec (Maybe Word32)
dksKeyLength
  = lens _dksKeyLength (\ s a -> s{_dksKeyLength = a})
      . mapping _Coerce

instance FromJSON DNSKeySpec where
        parseJSON
          = withObject "DNSKeySpec"
              (\ o ->
                 DNSKeySpec' <$>
                   (o .:? "keyType") <*>
                     (o .:? "kind" .!= "dns#dnsKeySpec")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "keyLength"))

instance ToJSON DNSKeySpec where
        toJSON DNSKeySpec'{..}
          = object
              (catMaybes
                 [("keyType" .=) <$> _dksKeyType,
                  Just ("kind" .= _dksKind),
                  ("algorithm" .=) <$> _dksAlgorithm,
                  ("keyLength" .=) <$> _dksKeyLength])

--
-- /See:/ 'managedZoneReverseLookupConfig' smart constructor.
newtype ManagedZoneReverseLookupConfig =
  ManagedZoneReverseLookupConfig'
    { _mzrlcKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneReverseLookupConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzrlcKind'
managedZoneReverseLookupConfig
    :: ManagedZoneReverseLookupConfig
managedZoneReverseLookupConfig =
  ManagedZoneReverseLookupConfig'
    {_mzrlcKind = "dns#managedZoneReverseLookupConfig"}


mzrlcKind :: Lens' ManagedZoneReverseLookupConfig Text
mzrlcKind
  = lens _mzrlcKind (\ s a -> s{_mzrlcKind = a})

instance FromJSON ManagedZoneReverseLookupConfig
         where
        parseJSON
          = withObject "ManagedZoneReverseLookupConfig"
              (\ o ->
                 ManagedZoneReverseLookupConfig' <$>
                   (o .:? "kind" .!=
                      "dns#managedZoneReverseLookupConfig"))

instance ToJSON ManagedZoneReverseLookupConfig where
        toJSON ManagedZoneReverseLookupConfig'{..}
          = object (catMaybes [Just ("kind" .= _mzrlcKind)])

-- | A Change represents a set of ResourceRecordSet additions and deletions
-- applied atomically to a ManagedZone. ResourceRecordSets within a
-- ManagedZone are modified by creating a new Change element in the Changes
-- collection. In turn the Changes collection also records the past
-- modifications to the ResourceRecordSets in a ManagedZone. The current
-- state of the ManagedZone is the sum effect of applying all Change
-- elements in the Changes collection in sequence.
--
-- /See:/ 'change' smart constructor.
data Change =
  Change'
    { _cStatus :: !(Maybe ChangeStatus)
    , _cAdditions :: !(Maybe [ResourceRecordSet])
    , _cStartTime :: !(Maybe Text)
    , _cKind :: !Text
    , _cDeletions :: !(Maybe [ResourceRecordSet])
    , _cId :: !(Maybe Text)
    , _cIsServing :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Change' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cAdditions'
--
-- * 'cStartTime'
--
-- * 'cKind'
--
-- * 'cDeletions'
--
-- * 'cId'
--
-- * 'cIsServing'
change
    :: Change
change =
  Change'
    { _cStatus = Nothing
    , _cAdditions = Nothing
    , _cStartTime = Nothing
    , _cKind = "dns#change"
    , _cDeletions = Nothing
    , _cId = Nothing
    , _cIsServing = Nothing
    }


-- | Status of the operation (output only). A status of \"done\" means that
-- the request to update the authoritative servers has been sent but the
-- servers might not be updated yet.
cStatus :: Lens' Change (Maybe ChangeStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Which ResourceRecordSets to add?
cAdditions :: Lens' Change [ResourceRecordSet]
cAdditions
  = lens _cAdditions (\ s a -> s{_cAdditions = a}) .
      _Default
      . _Coerce

-- | The time that this operation was started by the server (output only).
-- This is in RFC3339 text format.
cStartTime :: Lens' Change (Maybe Text)
cStartTime
  = lens _cStartTime (\ s a -> s{_cStartTime = a})

cKind :: Lens' Change Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Which ResourceRecordSets to remove? Must match existing data exactly.
cDeletions :: Lens' Change [ResourceRecordSet]
cDeletions
  = lens _cDeletions (\ s a -> s{_cDeletions = a}) .
      _Default
      . _Coerce

-- | Unique identifier for the resource; defined by the server (output only).
cId :: Lens' Change (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | If the DNS queries for the zone will be served.
cIsServing :: Lens' Change (Maybe Bool)
cIsServing
  = lens _cIsServing (\ s a -> s{_cIsServing = a})

instance FromJSON Change where
        parseJSON
          = withObject "Change"
              (\ o ->
                 Change' <$>
                   (o .:? "status") <*> (o .:? "additions" .!= mempty)
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "dns#change")
                     <*> (o .:? "deletions" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "isServing"))

instance ToJSON Change where
        toJSON Change'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("additions" .=) <$> _cAdditions,
                  ("startTime" .=) <$> _cStartTime,
                  Just ("kind" .= _cKind),
                  ("deletions" .=) <$> _cDeletions, ("id" .=) <$> _cId,
                  ("isServing" .=) <$> _cIsServing])

-- | A DNSSEC key pair.
--
-- /See:/ 'dnsKey' smart constructor.
data DNSKey =
  DNSKey'
    { _dkCreationTime :: !(Maybe Text)
    , _dkKeyTag :: !(Maybe (Textual Int32))
    , _dkKind :: !Text
    , _dkDigests :: !(Maybe [DNSKeyDigest])
    , _dkPublicKey :: !(Maybe Text)
    , _dkAlgorithm :: !(Maybe DNSKeyAlgorithm)
    , _dkId :: !(Maybe Text)
    , _dkType :: !(Maybe DNSKeyType)
    , _dkKeyLength :: !(Maybe (Textual Word32))
    , _dkIsActive :: !(Maybe Bool)
    , _dkDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkCreationTime'
--
-- * 'dkKeyTag'
--
-- * 'dkKind'
--
-- * 'dkDigests'
--
-- * 'dkPublicKey'
--
-- * 'dkAlgorithm'
--
-- * 'dkId'
--
-- * 'dkType'
--
-- * 'dkKeyLength'
--
-- * 'dkIsActive'
--
-- * 'dkDescription'
dnsKey
    :: DNSKey
dnsKey =
  DNSKey'
    { _dkCreationTime = Nothing
    , _dkKeyTag = Nothing
    , _dkKind = "dns#dnsKey"
    , _dkDigests = Nothing
    , _dkPublicKey = Nothing
    , _dkAlgorithm = Nothing
    , _dkId = Nothing
    , _dkType = Nothing
    , _dkKeyLength = Nothing
    , _dkIsActive = Nothing
    , _dkDescription = Nothing
    }


-- | The time that this resource was created in the control plane. This is in
-- RFC3339 text format. Output only.
dkCreationTime :: Lens' DNSKey (Maybe Text)
dkCreationTime
  = lens _dkCreationTime
      (\ s a -> s{_dkCreationTime = a})

-- | The key tag is a non-cryptographic hash of the a DNSKEY resource record
-- associated with this DnsKey. The key tag can be used to identify a
-- DNSKEY more quickly (but it is not a unique identifier). In particular,
-- the key tag is used in a parent zone\'s DS record to point at the DNSKEY
-- in this child ManagedZone. The key tag is a number in the range [0,
-- 65535] and the algorithm to calculate it is specified in RFC4034
-- Appendix B. Output only.
dkKeyTag :: Lens' DNSKey (Maybe Int32)
dkKeyTag
  = lens _dkKeyTag (\ s a -> s{_dkKeyTag = a}) .
      mapping _Coerce

dkKind :: Lens' DNSKey Text
dkKind = lens _dkKind (\ s a -> s{_dkKind = a})

-- | Cryptographic hashes of the DNSKEY resource record associated with this
-- DnsKey. These digests are needed to construct a DS record that points at
-- this DNS key. Output only.
dkDigests :: Lens' DNSKey [DNSKeyDigest]
dkDigests
  = lens _dkDigests (\ s a -> s{_dkDigests = a}) .
      _Default
      . _Coerce

-- | Base64 encoded public half of this key. Output only.
dkPublicKey :: Lens' DNSKey (Maybe Text)
dkPublicKey
  = lens _dkPublicKey (\ s a -> s{_dkPublicKey = a})

-- | String mnemonic specifying the DNSSEC algorithm of this key. Immutable
-- after creation time.
dkAlgorithm :: Lens' DNSKey (Maybe DNSKeyAlgorithm)
dkAlgorithm
  = lens _dkAlgorithm (\ s a -> s{_dkAlgorithm = a})

-- | Unique identifier for the resource; defined by the server (output only).
dkId :: Lens' DNSKey (Maybe Text)
dkId = lens _dkId (\ s a -> s{_dkId = a})

-- | One of \"KEY_SIGNING\" or \"ZONE_SIGNING\". Keys of type KEY_SIGNING
-- have the Secure Entry Point flag set and, when active, will be used to
-- sign only resource record sets of type DNSKEY. Otherwise, the Secure
-- Entry Point flag will be cleared and this key will be used to sign only
-- resource record sets of other types. Immutable after creation time.
dkType :: Lens' DNSKey (Maybe DNSKeyType)
dkType = lens _dkType (\ s a -> s{_dkType = a})

-- | Length of the key in bits. Specified at creation time then immutable.
dkKeyLength :: Lens' DNSKey (Maybe Word32)
dkKeyLength
  = lens _dkKeyLength (\ s a -> s{_dkKeyLength = a}) .
      mapping _Coerce

-- | Active keys will be used to sign subsequent changes to the ManagedZone.
-- Inactive keys will still be present as DNSKEY Resource Records for the
-- use of resolvers validating existing signatures.
dkIsActive :: Lens' DNSKey (Maybe Bool)
dkIsActive
  = lens _dkIsActive (\ s a -> s{_dkIsActive = a})

-- | A mutable string of at most 1024 characters associated with this
-- resource for the user\'s convenience. Has no effect on the resource\'s
-- function.
dkDescription :: Lens' DNSKey (Maybe Text)
dkDescription
  = lens _dkDescription
      (\ s a -> s{_dkDescription = a})

instance FromJSON DNSKey where
        parseJSON
          = withObject "DNSKey"
              (\ o ->
                 DNSKey' <$>
                   (o .:? "creationTime") <*> (o .:? "keyTag") <*>
                     (o .:? "kind" .!= "dns#dnsKey")
                     <*> (o .:? "digests" .!= mempty)
                     <*> (o .:? "publicKey")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "keyLength")
                     <*> (o .:? "isActive")
                     <*> (o .:? "description"))

instance ToJSON DNSKey where
        toJSON DNSKey'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _dkCreationTime,
                  ("keyTag" .=) <$> _dkKeyTag,
                  Just ("kind" .= _dkKind),
                  ("digests" .=) <$> _dkDigests,
                  ("publicKey" .=) <$> _dkPublicKey,
                  ("algorithm" .=) <$> _dkAlgorithm,
                  ("id" .=) <$> _dkId, ("type" .=) <$> _dkType,
                  ("keyLength" .=) <$> _dkKeyLength,
                  ("isActive" .=) <$> _dkIsActive,
                  ("description" .=) <$> _dkDescription])

--
-- /See:/ 'operationManagedZoneContext' smart constructor.
data OperationManagedZoneContext =
  OperationManagedZoneContext'
    { _omzcOldValue :: !(Maybe ManagedZone)
    , _omzcNewValue :: !(Maybe ManagedZone)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationManagedZoneContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omzcOldValue'
--
-- * 'omzcNewValue'
operationManagedZoneContext
    :: OperationManagedZoneContext
operationManagedZoneContext =
  OperationManagedZoneContext'
    {_omzcOldValue = Nothing, _omzcNewValue = Nothing}


-- | The pre-operation ManagedZone resource.
omzcOldValue :: Lens' OperationManagedZoneContext (Maybe ManagedZone)
omzcOldValue
  = lens _omzcOldValue (\ s a -> s{_omzcOldValue = a})

-- | The post-operation ManagedZone resource.
omzcNewValue :: Lens' OperationManagedZoneContext (Maybe ManagedZone)
omzcNewValue
  = lens _omzcNewValue (\ s a -> s{_omzcNewValue = a})

instance FromJSON OperationManagedZoneContext where
        parseJSON
          = withObject "OperationManagedZoneContext"
              (\ o ->
                 OperationManagedZoneContext' <$>
                   (o .:? "oldValue") <*> (o .:? "newValue"))

instance ToJSON OperationManagedZoneContext where
        toJSON OperationManagedZoneContext'{..}
          = object
              (catMaybes
                 [("oldValue" .=) <$> _omzcOldValue,
                  ("newValue" .=) <$> _omzcNewValue])

-- | Elements common to every response.
--
-- /See:/ 'responseHeader' smart constructor.
newtype ResponseHeader =
  ResponseHeader'
    { _rhOperationId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResponseHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhOperationId'
responseHeader
    :: ResponseHeader
responseHeader = ResponseHeader' {_rhOperationId = Nothing}


-- | For mutating operation requests that completed successfully. This is the
-- client_operation_id if the client specified it, otherwise it is
-- generated by the server (output only).
rhOperationId :: Lens' ResponseHeader (Maybe Text)
rhOperationId
  = lens _rhOperationId
      (\ s a -> s{_rhOperationId = a})

instance FromJSON ResponseHeader where
        parseJSON
          = withObject "ResponseHeader"
              (\ o -> ResponseHeader' <$> (o .:? "operationId"))

instance ToJSON ResponseHeader where
        toJSON ResponseHeader'{..}
          = object
              (catMaybes [("operationId" .=) <$> _rhOperationId])

--
-- /See:/ 'policiesUpdateResponse' smart constructor.
data PoliciesUpdateResponse =
  PoliciesUpdateResponse'
    { _purHeader :: !(Maybe ResponseHeader)
    , _purPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'purHeader'
--
-- * 'purPolicy'
policiesUpdateResponse
    :: PoliciesUpdateResponse
policiesUpdateResponse =
  PoliciesUpdateResponse' {_purHeader = Nothing, _purPolicy = Nothing}


purHeader :: Lens' PoliciesUpdateResponse (Maybe ResponseHeader)
purHeader
  = lens _purHeader (\ s a -> s{_purHeader = a})

purPolicy :: Lens' PoliciesUpdateResponse (Maybe Policy)
purPolicy
  = lens _purPolicy (\ s a -> s{_purPolicy = a})

instance FromJSON PoliciesUpdateResponse where
        parseJSON
          = withObject "PoliciesUpdateResponse"
              (\ o ->
                 PoliciesUpdateResponse' <$>
                   (o .:? "header") <*> (o .:? "policy"))

instance ToJSON PoliciesUpdateResponse where
        toJSON PoliciesUpdateResponse'{..}
          = object
              (catMaybes
                 [("header" .=) <$> _purHeader,
                  ("policy" .=) <$> _purPolicy])

--
-- /See:/ 'managedZoneOperationsListResponse' smart constructor.
data ManagedZoneOperationsListResponse =
  ManagedZoneOperationsListResponse'
    { _mzolrNextPageToken :: !(Maybe Text)
    , _mzolrKind :: !Text
    , _mzolrHeader :: !(Maybe ResponseHeader)
    , _mzolrOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneOperationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzolrNextPageToken'
--
-- * 'mzolrKind'
--
-- * 'mzolrHeader'
--
-- * 'mzolrOperations'
managedZoneOperationsListResponse
    :: ManagedZoneOperationsListResponse
managedZoneOperationsListResponse =
  ManagedZoneOperationsListResponse'
    { _mzolrNextPageToken = Nothing
    , _mzolrKind = "dns#managedZoneOperationsListResponse"
    , _mzolrHeader = Nothing
    , _mzolrOperations = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your page token. In this
-- way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a consistent snapshot of a
-- collection larger than the maximum page size.
mzolrNextPageToken :: Lens' ManagedZoneOperationsListResponse (Maybe Text)
mzolrNextPageToken
  = lens _mzolrNextPageToken
      (\ s a -> s{_mzolrNextPageToken = a})

mzolrKind :: Lens' ManagedZoneOperationsListResponse Text
mzolrKind
  = lens _mzolrKind (\ s a -> s{_mzolrKind = a})

mzolrHeader :: Lens' ManagedZoneOperationsListResponse (Maybe ResponseHeader)
mzolrHeader
  = lens _mzolrHeader (\ s a -> s{_mzolrHeader = a})

-- | The operation resources.
mzolrOperations :: Lens' ManagedZoneOperationsListResponse [Operation]
mzolrOperations
  = lens _mzolrOperations
      (\ s a -> s{_mzolrOperations = a})
      . _Default
      . _Coerce

instance FromJSON ManagedZoneOperationsListResponse
         where
        parseJSON
          = withObject "ManagedZoneOperationsListResponse"
              (\ o ->
                 ManagedZoneOperationsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dns#managedZoneOperationsListResponse")
                     <*> (o .:? "header")
                     <*> (o .:? "operations" .!= mempty))

instance ToJSON ManagedZoneOperationsListResponse
         where
        toJSON ManagedZoneOperationsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mzolrNextPageToken,
                  Just ("kind" .= _mzolrKind),
                  ("header" .=) <$> _mzolrHeader,
                  ("operations" .=) <$> _mzolrOperations])

--
-- /See:/ 'resourceRecordSetsListResponse' smart constructor.
data ResourceRecordSetsListResponse =
  ResourceRecordSetsListResponse'
    { _rrslrNextPageToken :: !(Maybe Text)
    , _rrslrKind :: !Text
    , _rrslrHeader :: !(Maybe ResponseHeader)
    , _rrslrRrSets :: !(Maybe [ResourceRecordSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRecordSetsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrslrNextPageToken'
--
-- * 'rrslrKind'
--
-- * 'rrslrHeader'
--
-- * 'rrslrRrSets'
resourceRecordSetsListResponse
    :: ResourceRecordSetsListResponse
resourceRecordSetsListResponse =
  ResourceRecordSetsListResponse'
    { _rrslrNextPageToken = Nothing
    , _rrslrKind = "dns#resourceRecordSetsListResponse"
    , _rrslrHeader = Nothing
    , _rrslrRrSets = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your pagination token. In
-- this way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a consistent snapshot of a
-- collection larger than the maximum page size.
rrslrNextPageToken :: Lens' ResourceRecordSetsListResponse (Maybe Text)
rrslrNextPageToken
  = lens _rrslrNextPageToken
      (\ s a -> s{_rrslrNextPageToken = a})

-- | Type of resource.
rrslrKind :: Lens' ResourceRecordSetsListResponse Text
rrslrKind
  = lens _rrslrKind (\ s a -> s{_rrslrKind = a})

rrslrHeader :: Lens' ResourceRecordSetsListResponse (Maybe ResponseHeader)
rrslrHeader
  = lens _rrslrHeader (\ s a -> s{_rrslrHeader = a})

-- | The resource record set resources.
rrslrRrSets :: Lens' ResourceRecordSetsListResponse [ResourceRecordSet]
rrslrRrSets
  = lens _rrslrRrSets (\ s a -> s{_rrslrRrSets = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceRecordSetsListResponse
         where
        parseJSON
          = withObject "ResourceRecordSetsListResponse"
              (\ o ->
                 ResourceRecordSetsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dns#resourceRecordSetsListResponse")
                     <*> (o .:? "header")
                     <*> (o .:? "rrsets" .!= mempty))

instance ToJSON ResourceRecordSetsListResponse where
        toJSON ResourceRecordSetsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rrslrNextPageToken,
                  Just ("kind" .= _rrslrKind),
                  ("header" .=) <$> _rrslrHeader,
                  ("rrsets" .=) <$> _rrslrRrSets])

--
-- /See:/ 'policyAlternativeNameServerConfig' smart constructor.
data PolicyAlternativeNameServerConfig =
  PolicyAlternativeNameServerConfig'
    { _panscKind :: !Text
    , _panscTargetNameServers :: !(Maybe [PolicyAlternativeNameServerConfigTargetNameServer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyAlternativeNameServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'panscKind'
--
-- * 'panscTargetNameServers'
policyAlternativeNameServerConfig
    :: PolicyAlternativeNameServerConfig
policyAlternativeNameServerConfig =
  PolicyAlternativeNameServerConfig'
    { _panscKind = "dns#policyAlternativeNameServerConfig"
    , _panscTargetNameServers = Nothing
    }


panscKind :: Lens' PolicyAlternativeNameServerConfig Text
panscKind
  = lens _panscKind (\ s a -> s{_panscKind = a})

-- | Sets an alternative name server for the associated networks. When
-- specified, all DNS queries are forwarded to a name server that you
-- choose. Names such as .internal are not available when an alternative
-- name server is specified.
panscTargetNameServers :: Lens' PolicyAlternativeNameServerConfig [PolicyAlternativeNameServerConfigTargetNameServer]
panscTargetNameServers
  = lens _panscTargetNameServers
      (\ s a -> s{_panscTargetNameServers = a})
      . _Default
      . _Coerce

instance FromJSON PolicyAlternativeNameServerConfig
         where
        parseJSON
          = withObject "PolicyAlternativeNameServerConfig"
              (\ o ->
                 PolicyAlternativeNameServerConfig' <$>
                   (o .:? "kind" .!=
                      "dns#policyAlternativeNameServerConfig")
                     <*> (o .:? "targetNameServers" .!= mempty))

instance ToJSON PolicyAlternativeNameServerConfig
         where
        toJSON PolicyAlternativeNameServerConfig'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _panscKind),
                  ("targetNameServers" .=) <$>
                    _panscTargetNameServers])

--
-- /See:/ 'managedZonePrivateVisibilityConfig' smart constructor.
data ManagedZonePrivateVisibilityConfig =
  ManagedZonePrivateVisibilityConfig'
    { _mzpvcNetworks :: !(Maybe [ManagedZonePrivateVisibilityConfigNetwork])
    , _mzpvcKind :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonePrivateVisibilityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzpvcNetworks'
--
-- * 'mzpvcKind'
managedZonePrivateVisibilityConfig
    :: ManagedZonePrivateVisibilityConfig
managedZonePrivateVisibilityConfig =
  ManagedZonePrivateVisibilityConfig'
    { _mzpvcNetworks = Nothing
    , _mzpvcKind = "dns#managedZonePrivateVisibilityConfig"
    }


-- | The list of VPC networks that can see this zone.
mzpvcNetworks :: Lens' ManagedZonePrivateVisibilityConfig [ManagedZonePrivateVisibilityConfigNetwork]
mzpvcNetworks
  = lens _mzpvcNetworks
      (\ s a -> s{_mzpvcNetworks = a})
      . _Default
      . _Coerce

mzpvcKind :: Lens' ManagedZonePrivateVisibilityConfig Text
mzpvcKind
  = lens _mzpvcKind (\ s a -> s{_mzpvcKind = a})

instance FromJSON ManagedZonePrivateVisibilityConfig
         where
        parseJSON
          = withObject "ManagedZonePrivateVisibilityConfig"
              (\ o ->
                 ManagedZonePrivateVisibilityConfig' <$>
                   (o .:? "networks" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "dns#managedZonePrivateVisibilityConfig"))

instance ToJSON ManagedZonePrivateVisibilityConfig
         where
        toJSON ManagedZonePrivateVisibilityConfig'{..}
          = object
              (catMaybes
                 [("networks" .=) <$> _mzpvcNetworks,
                  Just ("kind" .= _mzpvcKind)])

--
-- /See:/ 'managedZoneDNSSecConfig' smart constructor.
data ManagedZoneDNSSecConfig =
  ManagedZoneDNSSecConfig'
    { _mzdscState :: !(Maybe ManagedZoneDNSSecConfigState)
    , _mzdscKind :: !Text
    , _mzdscDefaultKeySpecs :: !(Maybe [DNSKeySpec])
    , _mzdscNonExistence :: !(Maybe ManagedZoneDNSSecConfigNonExistence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneDNSSecConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzdscState'
--
-- * 'mzdscKind'
--
-- * 'mzdscDefaultKeySpecs'
--
-- * 'mzdscNonExistence'
managedZoneDNSSecConfig
    :: ManagedZoneDNSSecConfig
managedZoneDNSSecConfig =
  ManagedZoneDNSSecConfig'
    { _mzdscState = Nothing
    , _mzdscKind = "dns#managedZoneDnsSecConfig"
    , _mzdscDefaultKeySpecs = Nothing
    , _mzdscNonExistence = Nothing
    }


-- | Specifies whether DNSSEC is enabled, and what mode it is in.
mzdscState :: Lens' ManagedZoneDNSSecConfig (Maybe ManagedZoneDNSSecConfigState)
mzdscState
  = lens _mzdscState (\ s a -> s{_mzdscState = a})

mzdscKind :: Lens' ManagedZoneDNSSecConfig Text
mzdscKind
  = lens _mzdscKind (\ s a -> s{_mzdscKind = a})

-- | Specifies parameters for generating initial DnsKeys for this
-- ManagedZone. Can only be changed while the state is OFF.
mzdscDefaultKeySpecs :: Lens' ManagedZoneDNSSecConfig [DNSKeySpec]
mzdscDefaultKeySpecs
  = lens _mzdscDefaultKeySpecs
      (\ s a -> s{_mzdscDefaultKeySpecs = a})
      . _Default
      . _Coerce

-- | Specifies the mechanism for authenticated denial-of-existence responses.
-- Can only be changed while the state is OFF.
mzdscNonExistence :: Lens' ManagedZoneDNSSecConfig (Maybe ManagedZoneDNSSecConfigNonExistence)
mzdscNonExistence
  = lens _mzdscNonExistence
      (\ s a -> s{_mzdscNonExistence = a})

instance FromJSON ManagedZoneDNSSecConfig where
        parseJSON
          = withObject "ManagedZoneDNSSecConfig"
              (\ o ->
                 ManagedZoneDNSSecConfig' <$>
                   (o .:? "state") <*>
                     (o .:? "kind" .!= "dns#managedZoneDnsSecConfig")
                     <*> (o .:? "defaultKeySpecs" .!= mempty)
                     <*> (o .:? "nonExistence"))

instance ToJSON ManagedZoneDNSSecConfig where
        toJSON ManagedZoneDNSSecConfig'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _mzdscState,
                  Just ("kind" .= _mzdscKind),
                  ("defaultKeySpecs" .=) <$> _mzdscDefaultKeySpecs,
                  ("nonExistence" .=) <$> _mzdscNonExistence])

-- | A unit of data that will be returned by the DNS servers.
--
-- /See:/ 'resourceRecordSet' smart constructor.
data ResourceRecordSet =
  ResourceRecordSet'
    { _rrsTtl :: !(Maybe (Textual Int32))
    , _rrsKind :: !Text
    , _rrsSignatureRrDatas :: !(Maybe [Text])
    , _rrsName :: !(Maybe Text)
    , _rrsType :: !(Maybe Text)
    , _rrsRrDatas :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRecordSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsTtl'
--
-- * 'rrsKind'
--
-- * 'rrsSignatureRrDatas'
--
-- * 'rrsName'
--
-- * 'rrsType'
--
-- * 'rrsRrDatas'
resourceRecordSet
    :: ResourceRecordSet
resourceRecordSet =
  ResourceRecordSet'
    { _rrsTtl = Nothing
    , _rrsKind = "dns#resourceRecordSet"
    , _rrsSignatureRrDatas = Nothing
    , _rrsName = Nothing
    , _rrsType = Nothing
    , _rrsRrDatas = Nothing
    }


-- | Number of seconds that this ResourceRecordSet can be cached by
-- resolvers.
rrsTtl :: Lens' ResourceRecordSet (Maybe Int32)
rrsTtl
  = lens _rrsTtl (\ s a -> s{_rrsTtl = a}) .
      mapping _Coerce

rrsKind :: Lens' ResourceRecordSet Text
rrsKind = lens _rrsKind (\ s a -> s{_rrsKind = a})

-- | As defined in RFC 4034 (section 3.2).
rrsSignatureRrDatas :: Lens' ResourceRecordSet [Text]
rrsSignatureRrDatas
  = lens _rrsSignatureRrDatas
      (\ s a -> s{_rrsSignatureRrDatas = a})
      . _Default
      . _Coerce

-- | For example, www.example.com.
rrsName :: Lens' ResourceRecordSet (Maybe Text)
rrsName = lens _rrsName (\ s a -> s{_rrsName = a})

-- | The identifier of a supported record type. See the list of Supported DNS
-- record types.
rrsType :: Lens' ResourceRecordSet (Maybe Text)
rrsType = lens _rrsType (\ s a -> s{_rrsType = a})

-- | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see
-- examples.
rrsRrDatas :: Lens' ResourceRecordSet [Text]
rrsRrDatas
  = lens _rrsRrDatas (\ s a -> s{_rrsRrDatas = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceRecordSet where
        parseJSON
          = withObject "ResourceRecordSet"
              (\ o ->
                 ResourceRecordSet' <$>
                   (o .:? "ttl") <*>
                     (o .:? "kind" .!= "dns#resourceRecordSet")
                     <*> (o .:? "signatureRrdatas" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "rrdatas" .!= mempty))

instance ToJSON ResourceRecordSet where
        toJSON ResourceRecordSet'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _rrsTtl, Just ("kind" .= _rrsKind),
                  ("signatureRrdatas" .=) <$> _rrsSignatureRrDatas,
                  ("name" .=) <$> _rrsName, ("type" .=) <$> _rrsType,
                  ("rrdatas" .=) <$> _rrsRrDatas])

-- | A policy is a collection of DNS rules applied to one or more Virtual
-- Private Cloud resources.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _polAlternativeNameServerConfig :: !(Maybe PolicyAlternativeNameServerConfig)
    , _polEnableInboundForwarding :: !(Maybe Bool)
    , _polEnableLogging :: !(Maybe Bool)
    , _polNetworks :: !(Maybe [PolicyNetwork])
    , _polKind :: !Text
    , _polName :: !(Maybe Text)
    , _polId :: !(Maybe (Textual Word64))
    , _polDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polAlternativeNameServerConfig'
--
-- * 'polEnableInboundForwarding'
--
-- * 'polEnableLogging'
--
-- * 'polNetworks'
--
-- * 'polKind'
--
-- * 'polName'
--
-- * 'polId'
--
-- * 'polDescription'
policy
    :: Policy
policy =
  Policy'
    { _polAlternativeNameServerConfig = Nothing
    , _polEnableInboundForwarding = Nothing
    , _polEnableLogging = Nothing
    , _polNetworks = Nothing
    , _polKind = "dns#policy"
    , _polName = Nothing
    , _polId = Nothing
    , _polDescription = Nothing
    }


-- | Sets an alternative name server for the associated networks. When
-- specified, all DNS queries are forwarded to a name server that you
-- choose. Names such as .internal are not available when an alternative
-- name server is specified.
polAlternativeNameServerConfig :: Lens' Policy (Maybe PolicyAlternativeNameServerConfig)
polAlternativeNameServerConfig
  = lens _polAlternativeNameServerConfig
      (\ s a -> s{_polAlternativeNameServerConfig = a})

-- | Allows networks bound to this policy to receive DNS queries sent by VMs
-- or applications over VPN connections. When enabled, a virtual IP address
-- will be allocated from each of the sub-networks that are bound to this
-- policy.
polEnableInboundForwarding :: Lens' Policy (Maybe Bool)
polEnableInboundForwarding
  = lens _polEnableInboundForwarding
      (\ s a -> s{_polEnableInboundForwarding = a})

-- | Controls whether logging is enabled for the networks bound to this
-- policy. Defaults to no logging if not set.
polEnableLogging :: Lens' Policy (Maybe Bool)
polEnableLogging
  = lens _polEnableLogging
      (\ s a -> s{_polEnableLogging = a})

-- | List of network names specifying networks to which this policy is
-- applied.
polNetworks :: Lens' Policy [PolicyNetwork]
polNetworks
  = lens _polNetworks (\ s a -> s{_polNetworks = a}) .
      _Default
      . _Coerce

polKind :: Lens' Policy Text
polKind = lens _polKind (\ s a -> s{_polKind = a})

-- | User assigned name for this policy.
polName :: Lens' Policy (Maybe Text)
polName = lens _polName (\ s a -> s{_polName = a})

-- | Unique identifier for the resource; defined by the server (output only).
polId :: Lens' Policy (Maybe Word64)
polId
  = lens _polId (\ s a -> s{_polId = a}) .
      mapping _Coerce

-- | A mutable string of at most 1024 characters associated with this
-- resource for the user\'s convenience. Has no effect on the policy\'s
-- function.
polDescription :: Lens' Policy (Maybe Text)
polDescription
  = lens _polDescription
      (\ s a -> s{_polDescription = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "alternativeNameServerConfig") <*>
                     (o .:? "enableInboundForwarding")
                     <*> (o .:? "enableLogging")
                     <*> (o .:? "networks" .!= mempty)
                     <*> (o .:? "kind" .!= "dns#policy")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("alternativeNameServerConfig" .=) <$>
                    _polAlternativeNameServerConfig,
                  ("enableInboundForwarding" .=) <$>
                    _polEnableInboundForwarding,
                  ("enableLogging" .=) <$> _polEnableLogging,
                  ("networks" .=) <$> _polNetworks,
                  Just ("kind" .= _polKind), ("name" .=) <$> _polName,
                  ("id" .=) <$> _polId,
                  ("description" .=) <$> _polDescription])

-- | A zone is a subtree of the DNS namespace under one administrative
-- responsibility. A ManagedZone is a resource that represents a DNS zone
-- hosted by the Cloud DNS service.
--
-- /See:/ 'managedZone' smart constructor.
data ManagedZone =
  ManagedZone'
    { _mzCreationTime :: !(Maybe Text)
    , _mzKind :: !Text
    , _mzPeeringConfig :: !(Maybe ManagedZonePeeringConfig)
    , _mzReverseLookupConfig :: !(Maybe ManagedZoneReverseLookupConfig)
    , _mzNameServerSet :: !(Maybe Text)
    , _mzVisibility :: !(Maybe ManagedZoneVisibility)
    , _mzName :: !(Maybe Text)
    , _mzId :: !(Maybe (Textual Word64))
    , _mzLabels :: !(Maybe ManagedZoneLabels)
    , _mzDNSName :: !(Maybe Text)
    , _mzDescription :: !(Maybe Text)
    , _mzDNSsecConfig :: !(Maybe ManagedZoneDNSSecConfig)
    , _mzNameServers :: !(Maybe [Text])
    , _mzPrivateVisibilityConfig :: !(Maybe ManagedZonePrivateVisibilityConfig)
    , _mzForwardingConfig :: !(Maybe ManagedZoneForwardingConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzCreationTime'
--
-- * 'mzKind'
--
-- * 'mzPeeringConfig'
--
-- * 'mzReverseLookupConfig'
--
-- * 'mzNameServerSet'
--
-- * 'mzVisibility'
--
-- * 'mzName'
--
-- * 'mzId'
--
-- * 'mzLabels'
--
-- * 'mzDNSName'
--
-- * 'mzDescription'
--
-- * 'mzDNSsecConfig'
--
-- * 'mzNameServers'
--
-- * 'mzPrivateVisibilityConfig'
--
-- * 'mzForwardingConfig'
managedZone
    :: ManagedZone
managedZone =
  ManagedZone'
    { _mzCreationTime = Nothing
    , _mzKind = "dns#managedZone"
    , _mzPeeringConfig = Nothing
    , _mzReverseLookupConfig = Nothing
    , _mzNameServerSet = Nothing
    , _mzVisibility = Nothing
    , _mzName = Nothing
    , _mzId = Nothing
    , _mzLabels = Nothing
    , _mzDNSName = Nothing
    , _mzDescription = Nothing
    , _mzDNSsecConfig = Nothing
    , _mzNameServers = Nothing
    , _mzPrivateVisibilityConfig = Nothing
    , _mzForwardingConfig = Nothing
    }


-- | The time that this resource was created on the server. This is in
-- RFC3339 text format. Output only.
mzCreationTime :: Lens' ManagedZone (Maybe Text)
mzCreationTime
  = lens _mzCreationTime
      (\ s a -> s{_mzCreationTime = a})

mzKind :: Lens' ManagedZone Text
mzKind = lens _mzKind (\ s a -> s{_mzKind = a})

-- | The presence of this field indicates that DNS Peering is enabled for
-- this zone. The value of this field contains the network to peer with.
mzPeeringConfig :: Lens' ManagedZone (Maybe ManagedZonePeeringConfig)
mzPeeringConfig
  = lens _mzPeeringConfig
      (\ s a -> s{_mzPeeringConfig = a})

-- | The presence of this field indicates that this is a managed reverse
-- lookup zone and Cloud DNS will resolve reverse lookup queries using
-- automatically configured records for VPC resources. This only applies to
-- networks listed under private_visibility_config.
mzReverseLookupConfig :: Lens' ManagedZone (Maybe ManagedZoneReverseLookupConfig)
mzReverseLookupConfig
  = lens _mzReverseLookupConfig
      (\ s a -> s{_mzReverseLookupConfig = a})

-- | Optionally specifies the NameServerSet for this ManagedZone. A
-- NameServerSet is a set of DNS name servers that all host the same
-- ManagedZones. Most users will leave this field unset.
mzNameServerSet :: Lens' ManagedZone (Maybe Text)
mzNameServerSet
  = lens _mzNameServerSet
      (\ s a -> s{_mzNameServerSet = a})

-- | The zone\'s visibility: public zones are exposed to the Internet, while
-- private zones are visible only to Virtual Private Cloud resources.
mzVisibility :: Lens' ManagedZone (Maybe ManagedZoneVisibility)
mzVisibility
  = lens _mzVisibility (\ s a -> s{_mzVisibility = a})

-- | User assigned name for this resource. Must be unique within the project.
-- The name must be 1-63 characters long, must begin with a letter, end
-- with a letter or digit, and only contain lowercase letters, digits or
-- dashes.
mzName :: Lens' ManagedZone (Maybe Text)
mzName = lens _mzName (\ s a -> s{_mzName = a})

-- | Unique identifier for the resource; defined by the server (output only)
mzId :: Lens' ManagedZone (Maybe Word64)
mzId
  = lens _mzId (\ s a -> s{_mzId = a}) .
      mapping _Coerce

-- | User labels.
mzLabels :: Lens' ManagedZone (Maybe ManagedZoneLabels)
mzLabels = lens _mzLabels (\ s a -> s{_mzLabels = a})

-- | The DNS name of this managed zone, for instance \"example.com.\".
mzDNSName :: Lens' ManagedZone (Maybe Text)
mzDNSName
  = lens _mzDNSName (\ s a -> s{_mzDNSName = a})

-- | A mutable string of at most 1024 characters associated with this
-- resource for the user\'s convenience. Has no effect on the managed
-- zone\'s function.
mzDescription :: Lens' ManagedZone (Maybe Text)
mzDescription
  = lens _mzDescription
      (\ s a -> s{_mzDescription = a})

-- | DNSSEC configuration.
mzDNSsecConfig :: Lens' ManagedZone (Maybe ManagedZoneDNSSecConfig)
mzDNSsecConfig
  = lens _mzDNSsecConfig
      (\ s a -> s{_mzDNSsecConfig = a})

-- | Delegate your managed_zone to these virtual name servers; defined by the
-- server (output only)
mzNameServers :: Lens' ManagedZone [Text]
mzNameServers
  = lens _mzNameServers
      (\ s a -> s{_mzNameServers = a})
      . _Default
      . _Coerce

-- | For privately visible zones, the set of Virtual Private Cloud resources
-- that the zone is visible from.
mzPrivateVisibilityConfig :: Lens' ManagedZone (Maybe ManagedZonePrivateVisibilityConfig)
mzPrivateVisibilityConfig
  = lens _mzPrivateVisibilityConfig
      (\ s a -> s{_mzPrivateVisibilityConfig = a})

-- | The presence for this field indicates that outbound forwarding is
-- enabled for this zone. The value of this field contains the set of
-- destinations to forward to.
mzForwardingConfig :: Lens' ManagedZone (Maybe ManagedZoneForwardingConfig)
mzForwardingConfig
  = lens _mzForwardingConfig
      (\ s a -> s{_mzForwardingConfig = a})

instance FromJSON ManagedZone where
        parseJSON
          = withObject "ManagedZone"
              (\ o ->
                 ManagedZone' <$>
                   (o .:? "creationTime") <*>
                     (o .:? "kind" .!= "dns#managedZone")
                     <*> (o .:? "peeringConfig")
                     <*> (o .:? "reverseLookupConfig")
                     <*> (o .:? "nameServerSet")
                     <*> (o .:? "visibility")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "dnsName")
                     <*> (o .:? "description")
                     <*> (o .:? "dnssecConfig")
                     <*> (o .:? "nameServers" .!= mempty)
                     <*> (o .:? "privateVisibilityConfig")
                     <*> (o .:? "forwardingConfig"))

instance ToJSON ManagedZone where
        toJSON ManagedZone'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mzCreationTime,
                  Just ("kind" .= _mzKind),
                  ("peeringConfig" .=) <$> _mzPeeringConfig,
                  ("reverseLookupConfig" .=) <$>
                    _mzReverseLookupConfig,
                  ("nameServerSet" .=) <$> _mzNameServerSet,
                  ("visibility" .=) <$> _mzVisibility,
                  ("name" .=) <$> _mzName, ("id" .=) <$> _mzId,
                  ("labels" .=) <$> _mzLabels,
                  ("dnsName" .=) <$> _mzDNSName,
                  ("description" .=) <$> _mzDescription,
                  ("dnssecConfig" .=) <$> _mzDNSsecConfig,
                  ("nameServers" .=) <$> _mzNameServers,
                  ("privateVisibilityConfig" .=) <$>
                    _mzPrivateVisibilityConfig,
                  ("forwardingConfig" .=) <$> _mzForwardingConfig])

--
-- /See:/ 'policiesPatchResponse' smart constructor.
data PoliciesPatchResponse =
  PoliciesPatchResponse'
    { _pprHeader :: !(Maybe ResponseHeader)
    , _pprPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoliciesPatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pprHeader'
--
-- * 'pprPolicy'
policiesPatchResponse
    :: PoliciesPatchResponse
policiesPatchResponse =
  PoliciesPatchResponse' {_pprHeader = Nothing, _pprPolicy = Nothing}


pprHeader :: Lens' PoliciesPatchResponse (Maybe ResponseHeader)
pprHeader
  = lens _pprHeader (\ s a -> s{_pprHeader = a})

pprPolicy :: Lens' PoliciesPatchResponse (Maybe Policy)
pprPolicy
  = lens _pprPolicy (\ s a -> s{_pprPolicy = a})

instance FromJSON PoliciesPatchResponse where
        parseJSON
          = withObject "PoliciesPatchResponse"
              (\ o ->
                 PoliciesPatchResponse' <$>
                   (o .:? "header") <*> (o .:? "policy"))

instance ToJSON PoliciesPatchResponse where
        toJSON PoliciesPatchResponse'{..}
          = object
              (catMaybes
                 [("header" .=) <$> _pprHeader,
                  ("policy" .=) <$> _pprPolicy])

-- | User labels.
--
-- /See:/ 'managedZoneLabels' smart constructor.
newtype ManagedZoneLabels =
  ManagedZoneLabels'
    { _mzlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlAddtional'
managedZoneLabels
    :: HashMap Text Text -- ^ 'mzlAddtional'
    -> ManagedZoneLabels
managedZoneLabels pMzlAddtional_ =
  ManagedZoneLabels' {_mzlAddtional = _Coerce # pMzlAddtional_}


mzlAddtional :: Lens' ManagedZoneLabels (HashMap Text Text)
mzlAddtional
  = lens _mzlAddtional (\ s a -> s{_mzlAddtional = a})
      . _Coerce

instance FromJSON ManagedZoneLabels where
        parseJSON
          = withObject "ManagedZoneLabels"
              (\ o -> ManagedZoneLabels' <$> (parseJSONObject o))

instance ToJSON ManagedZoneLabels where
        toJSON = toJSON . _mzlAddtional

-- | Limits associated with a Project.
--
-- /See:/ 'quota' smart constructor.
data Quota =
  Quota'
    { _qRrSetDeletionsPerChange :: !(Maybe (Textual Int32))
    , _qTargetNameServersPerManagedZone :: !(Maybe (Textual Int32))
    , _qWhiteListedKeySpecs :: !(Maybe [DNSKeySpec])
    , _qRrSetsPerManagedZone :: !(Maybe (Textual Int32))
    , _qKind :: !Text
    , _qResourceRecordsPerRrSet :: !(Maybe (Textual Int32))
    , _qManagedZonesPerNetwork :: !(Maybe (Textual Int32))
    , _qRrSetAdditionsPerChange :: !(Maybe (Textual Int32))
    , _qTargetNameServersPerPolicy :: !(Maybe (Textual Int32))
    , _qNetworksPerPolicy :: !(Maybe (Textual Int32))
    , _qManagedZones :: !(Maybe (Textual Int32))
    , _qTotalRrDataSizePerChange :: !(Maybe (Textual Int32))
    , _qPolicies :: !(Maybe (Textual Int32))
    , _qDNSKeysPerManagedZone :: !(Maybe (Textual Int32))
    , _qNetworksPerManagedZone :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qRrSetDeletionsPerChange'
--
-- * 'qTargetNameServersPerManagedZone'
--
-- * 'qWhiteListedKeySpecs'
--
-- * 'qRrSetsPerManagedZone'
--
-- * 'qKind'
--
-- * 'qResourceRecordsPerRrSet'
--
-- * 'qManagedZonesPerNetwork'
--
-- * 'qRrSetAdditionsPerChange'
--
-- * 'qTargetNameServersPerPolicy'
--
-- * 'qNetworksPerPolicy'
--
-- * 'qManagedZones'
--
-- * 'qTotalRrDataSizePerChange'
--
-- * 'qPolicies'
--
-- * 'qDNSKeysPerManagedZone'
--
-- * 'qNetworksPerManagedZone'
quota
    :: Quota
quota =
  Quota'
    { _qRrSetDeletionsPerChange = Nothing
    , _qTargetNameServersPerManagedZone = Nothing
    , _qWhiteListedKeySpecs = Nothing
    , _qRrSetsPerManagedZone = Nothing
    , _qKind = "dns#quota"
    , _qResourceRecordsPerRrSet = Nothing
    , _qManagedZonesPerNetwork = Nothing
    , _qRrSetAdditionsPerChange = Nothing
    , _qTargetNameServersPerPolicy = Nothing
    , _qNetworksPerPolicy = Nothing
    , _qManagedZones = Nothing
    , _qTotalRrDataSizePerChange = Nothing
    , _qPolicies = Nothing
    , _qDNSKeysPerManagedZone = Nothing
    , _qNetworksPerManagedZone = Nothing
    }


-- | Maximum allowed number of ResourceRecordSets to delete per
-- ChangesCreateRequest.
qRrSetDeletionsPerChange :: Lens' Quota (Maybe Int32)
qRrSetDeletionsPerChange
  = lens _qRrSetDeletionsPerChange
      (\ s a -> s{_qRrSetDeletionsPerChange = a})
      . mapping _Coerce

-- | Maximum allowed number of target name servers per managed forwarding
-- zone.
qTargetNameServersPerManagedZone :: Lens' Quota (Maybe Int32)
qTargetNameServersPerManagedZone
  = lens _qTargetNameServersPerManagedZone
      (\ s a -> s{_qTargetNameServersPerManagedZone = a})
      . mapping _Coerce

-- | DNSSEC algorithm and key length types that can be used for DnsKeys.
qWhiteListedKeySpecs :: Lens' Quota [DNSKeySpec]
qWhiteListedKeySpecs
  = lens _qWhiteListedKeySpecs
      (\ s a -> s{_qWhiteListedKeySpecs = a})
      . _Default
      . _Coerce

-- | Maximum allowed number of ResourceRecordSets per zone in the project.
qRrSetsPerManagedZone :: Lens' Quota (Maybe Int32)
qRrSetsPerManagedZone
  = lens _qRrSetsPerManagedZone
      (\ s a -> s{_qRrSetsPerManagedZone = a})
      . mapping _Coerce

qKind :: Lens' Quota Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | Maximum allowed number of ResourceRecords per ResourceRecordSet.
qResourceRecordsPerRrSet :: Lens' Quota (Maybe Int32)
qResourceRecordsPerRrSet
  = lens _qResourceRecordsPerRrSet
      (\ s a -> s{_qResourceRecordsPerRrSet = a})
      . mapping _Coerce

-- | Maximum allowed number of managed zones which can be attached to a
-- network.
qManagedZonesPerNetwork :: Lens' Quota (Maybe Int32)
qManagedZonesPerNetwork
  = lens _qManagedZonesPerNetwork
      (\ s a -> s{_qManagedZonesPerNetwork = a})
      . mapping _Coerce

-- | Maximum allowed number of ResourceRecordSets to add per
-- ChangesCreateRequest.
qRrSetAdditionsPerChange :: Lens' Quota (Maybe Int32)
qRrSetAdditionsPerChange
  = lens _qRrSetAdditionsPerChange
      (\ s a -> s{_qRrSetAdditionsPerChange = a})
      . mapping _Coerce

-- | Maximum allowed number of alternative target name servers per policy.
qTargetNameServersPerPolicy :: Lens' Quota (Maybe Int32)
qTargetNameServersPerPolicy
  = lens _qTargetNameServersPerPolicy
      (\ s a -> s{_qTargetNameServersPerPolicy = a})
      . mapping _Coerce

-- | Maximum allowed number of networks per policy.
qNetworksPerPolicy :: Lens' Quota (Maybe Int32)
qNetworksPerPolicy
  = lens _qNetworksPerPolicy
      (\ s a -> s{_qNetworksPerPolicy = a})
      . mapping _Coerce

-- | Maximum allowed number of managed zones in the project.
qManagedZones :: Lens' Quota (Maybe Int32)
qManagedZones
  = lens _qManagedZones
      (\ s a -> s{_qManagedZones = a})
      . mapping _Coerce

-- | Maximum allowed size for total rrdata in one ChangesCreateRequest in
-- bytes.
qTotalRrDataSizePerChange :: Lens' Quota (Maybe Int32)
qTotalRrDataSizePerChange
  = lens _qTotalRrDataSizePerChange
      (\ s a -> s{_qTotalRrDataSizePerChange = a})
      . mapping _Coerce

-- | Maximum allowed number of policies per project.
qPolicies :: Lens' Quota (Maybe Int32)
qPolicies
  = lens _qPolicies (\ s a -> s{_qPolicies = a}) .
      mapping _Coerce

-- | Maximum allowed number of DnsKeys per ManagedZone.
qDNSKeysPerManagedZone :: Lens' Quota (Maybe Int32)
qDNSKeysPerManagedZone
  = lens _qDNSKeysPerManagedZone
      (\ s a -> s{_qDNSKeysPerManagedZone = a})
      . mapping _Coerce

-- | Maximum allowed number of networks to which a privately scoped zone can
-- be attached.
qNetworksPerManagedZone :: Lens' Quota (Maybe Int32)
qNetworksPerManagedZone
  = lens _qNetworksPerManagedZone
      (\ s a -> s{_qNetworksPerManagedZone = a})
      . mapping _Coerce

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota' <$>
                   (o .:? "rrsetDeletionsPerChange") <*>
                     (o .:? "targetNameServersPerManagedZone")
                     <*> (o .:? "whitelistedKeySpecs" .!= mempty)
                     <*> (o .:? "rrsetsPerManagedZone")
                     <*> (o .:? "kind" .!= "dns#quota")
                     <*> (o .:? "resourceRecordsPerRrset")
                     <*> (o .:? "managedZonesPerNetwork")
                     <*> (o .:? "rrsetAdditionsPerChange")
                     <*> (o .:? "targetNameServersPerPolicy")
                     <*> (o .:? "networksPerPolicy")
                     <*> (o .:? "managedZones")
                     <*> (o .:? "totalRrdataSizePerChange")
                     <*> (o .:? "policies")
                     <*> (o .:? "dnsKeysPerManagedZone")
                     <*> (o .:? "networksPerManagedZone"))

instance ToJSON Quota where
        toJSON Quota'{..}
          = object
              (catMaybes
                 [("rrsetDeletionsPerChange" .=) <$>
                    _qRrSetDeletionsPerChange,
                  ("targetNameServersPerManagedZone" .=) <$>
                    _qTargetNameServersPerManagedZone,
                  ("whitelistedKeySpecs" .=) <$> _qWhiteListedKeySpecs,
                  ("rrsetsPerManagedZone" .=) <$>
                    _qRrSetsPerManagedZone,
                  Just ("kind" .= _qKind),
                  ("resourceRecordsPerRrset" .=) <$>
                    _qResourceRecordsPerRrSet,
                  ("managedZonesPerNetwork" .=) <$>
                    _qManagedZonesPerNetwork,
                  ("rrsetAdditionsPerChange" .=) <$>
                    _qRrSetAdditionsPerChange,
                  ("targetNameServersPerPolicy" .=) <$>
                    _qTargetNameServersPerPolicy,
                  ("networksPerPolicy" .=) <$> _qNetworksPerPolicy,
                  ("managedZones" .=) <$> _qManagedZones,
                  ("totalRrdataSizePerChange" .=) <$>
                    _qTotalRrDataSizePerChange,
                  ("policies" .=) <$> _qPolicies,
                  ("dnsKeysPerManagedZone" .=) <$>
                    _qDNSKeysPerManagedZone,
                  ("networksPerManagedZone" .=) <$>
                    _qNetworksPerManagedZone])

--
-- /See:/ 'dnsKeyDigest' smart constructor.
data DNSKeyDigest =
  DNSKeyDigest'
    { _dkdDigest :: !(Maybe Text)
    , _dkdType :: !(Maybe DNSKeyDigestType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSKeyDigest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkdDigest'
--
-- * 'dkdType'
dnsKeyDigest
    :: DNSKeyDigest
dnsKeyDigest = DNSKeyDigest' {_dkdDigest = Nothing, _dkdType = Nothing}


-- | The base-16 encoded bytes of this digest. Suitable for use in a DS
-- resource record.
dkdDigest :: Lens' DNSKeyDigest (Maybe Text)
dkdDigest
  = lens _dkdDigest (\ s a -> s{_dkdDigest = a})

-- | Specifies the algorithm used to calculate this digest.
dkdType :: Lens' DNSKeyDigest (Maybe DNSKeyDigestType)
dkdType = lens _dkdType (\ s a -> s{_dkdType = a})

instance FromJSON DNSKeyDigest where
        parseJSON
          = withObject "DNSKeyDigest"
              (\ o ->
                 DNSKeyDigest' <$>
                   (o .:? "digest") <*> (o .:? "type"))

instance ToJSON DNSKeyDigest where
        toJSON DNSKeyDigest'{..}
          = object
              (catMaybes
                 [("digest" .=) <$> _dkdDigest,
                  ("type" .=) <$> _dkdType])

--
-- /See:/ 'policyNetwork' smart constructor.
data PolicyNetwork =
  PolicyNetwork'
    { _pnKind :: !Text
    , _pnNetworkURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyNetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnKind'
--
-- * 'pnNetworkURL'
policyNetwork
    :: PolicyNetwork
policyNetwork =
  PolicyNetwork' {_pnKind = "dns#policyNetwork", _pnNetworkURL = Nothing}


pnKind :: Lens' PolicyNetwork Text
pnKind = lens _pnKind (\ s a -> s{_pnKind = a})

-- | The fully qualified URL of the VPC network to bind to. This should be
-- formatted like
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/{project}\/global\/networks\/{network}
pnNetworkURL :: Lens' PolicyNetwork (Maybe Text)
pnNetworkURL
  = lens _pnNetworkURL (\ s a -> s{_pnNetworkURL = a})

instance FromJSON PolicyNetwork where
        parseJSON
          = withObject "PolicyNetwork"
              (\ o ->
                 PolicyNetwork' <$>
                   (o .:? "kind" .!= "dns#policyNetwork") <*>
                     (o .:? "networkUrl"))

instance ToJSON PolicyNetwork where
        toJSON PolicyNetwork'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pnKind),
                  ("networkUrl" .=) <$> _pnNetworkURL])

--
-- /See:/ 'managedZoneForwardingConfigNameServerTarget' smart constructor.
data ManagedZoneForwardingConfigNameServerTarget =
  ManagedZoneForwardingConfigNameServerTarget'
    { _mzfcnstKind :: !Text
    , _mzfcnstForwardingPath :: !(Maybe ManagedZoneForwardingConfigNameServerTargetForwardingPath)
    , _mzfcnstIPv4Address :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneForwardingConfigNameServerTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzfcnstKind'
--
-- * 'mzfcnstForwardingPath'
--
-- * 'mzfcnstIPv4Address'
managedZoneForwardingConfigNameServerTarget
    :: ManagedZoneForwardingConfigNameServerTarget
managedZoneForwardingConfigNameServerTarget =
  ManagedZoneForwardingConfigNameServerTarget'
    { _mzfcnstKind = "dns#managedZoneForwardingConfigNameServerTarget"
    , _mzfcnstForwardingPath = Nothing
    , _mzfcnstIPv4Address = Nothing
    }


mzfcnstKind :: Lens' ManagedZoneForwardingConfigNameServerTarget Text
mzfcnstKind
  = lens _mzfcnstKind (\ s a -> s{_mzfcnstKind = a})

-- | Forwarding path for this NameServerTarget. If unset or set to DEFAULT,
-- Cloud DNS will make forwarding decision based on address ranges, i.e.
-- RFC1918 addresses go to the VPC, non-RFC1918 addresses go to the
-- Internet. When set to PRIVATE, Cloud DNS will always send queries
-- through VPC for this target.
mzfcnstForwardingPath :: Lens' ManagedZoneForwardingConfigNameServerTarget (Maybe ManagedZoneForwardingConfigNameServerTargetForwardingPath)
mzfcnstForwardingPath
  = lens _mzfcnstForwardingPath
      (\ s a -> s{_mzfcnstForwardingPath = a})

-- | IPv4 address of a target name server.
mzfcnstIPv4Address :: Lens' ManagedZoneForwardingConfigNameServerTarget (Maybe Text)
mzfcnstIPv4Address
  = lens _mzfcnstIPv4Address
      (\ s a -> s{_mzfcnstIPv4Address = a})

instance FromJSON
           ManagedZoneForwardingConfigNameServerTarget
         where
        parseJSON
          = withObject
              "ManagedZoneForwardingConfigNameServerTarget"
              (\ o ->
                 ManagedZoneForwardingConfigNameServerTarget' <$>
                   (o .:? "kind" .!=
                      "dns#managedZoneForwardingConfigNameServerTarget")
                     <*> (o .:? "forwardingPath")
                     <*> (o .:? "ipv4Address"))

instance ToJSON
           ManagedZoneForwardingConfigNameServerTarget
         where
        toJSON
          ManagedZoneForwardingConfigNameServerTarget'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mzfcnstKind),
                  ("forwardingPath" .=) <$> _mzfcnstForwardingPath,
                  ("ipv4Address" .=) <$> _mzfcnstIPv4Address])

--
-- /See:/ 'managedZonesListResponse' smart constructor.
data ManagedZonesListResponse =
  ManagedZonesListResponse'
    { _mzlrNextPageToken :: !(Maybe Text)
    , _mzlrKind :: !Text
    , _mzlrHeader :: !(Maybe ResponseHeader)
    , _mzlrManagedZones :: !(Maybe [ManagedZone])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlrNextPageToken'
--
-- * 'mzlrKind'
--
-- * 'mzlrHeader'
--
-- * 'mzlrManagedZones'
managedZonesListResponse
    :: ManagedZonesListResponse
managedZonesListResponse =
  ManagedZonesListResponse'
    { _mzlrNextPageToken = Nothing
    , _mzlrKind = "dns#managedZonesListResponse"
    , _mzlrHeader = Nothing
    , _mzlrManagedZones = Nothing
    }


-- | The presence of this field indicates that there exist more results
-- following your last page of results in pagination order. To fetch them,
-- make another list request using this value as your page token. In this
-- way you can retrieve the complete contents of even very large
-- collections one page at a time. However, if the contents of the
-- collection change between the first and last paginated list request, the
-- set of all elements returned will be an inconsistent view of the
-- collection. There is no way to retrieve a consistent snapshot of a
-- collection larger than the maximum page size.
mzlrNextPageToken :: Lens' ManagedZonesListResponse (Maybe Text)
mzlrNextPageToken
  = lens _mzlrNextPageToken
      (\ s a -> s{_mzlrNextPageToken = a})

-- | Type of resource.
mzlrKind :: Lens' ManagedZonesListResponse Text
mzlrKind = lens _mzlrKind (\ s a -> s{_mzlrKind = a})

mzlrHeader :: Lens' ManagedZonesListResponse (Maybe ResponseHeader)
mzlrHeader
  = lens _mzlrHeader (\ s a -> s{_mzlrHeader = a})

-- | The managed zone resources.
mzlrManagedZones :: Lens' ManagedZonesListResponse [ManagedZone]
mzlrManagedZones
  = lens _mzlrManagedZones
      (\ s a -> s{_mzlrManagedZones = a})
      . _Default
      . _Coerce

instance FromJSON ManagedZonesListResponse where
        parseJSON
          = withObject "ManagedZonesListResponse"
              (\ o ->
                 ManagedZonesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dns#managedZonesListResponse")
                     <*> (o .:? "header")
                     <*> (o .:? "managedZones" .!= mempty))

instance ToJSON ManagedZonesListResponse where
        toJSON ManagedZonesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mzlrNextPageToken,
                  Just ("kind" .= _mzlrKind),
                  ("header" .=) <$> _mzlrHeader,
                  ("managedZones" .=) <$> _mzlrManagedZones])
