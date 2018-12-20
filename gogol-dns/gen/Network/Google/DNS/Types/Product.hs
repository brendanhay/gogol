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

import           Network.Google.DNS.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'operationDNSKeyContext' smart constructor.
data OperationDNSKeyContext = OperationDNSKeyContext'
    { _odkcOldValue :: !(Maybe DNSKey)
    , _odkcNewValue :: !(Maybe DNSKey)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OperationDNSKeyContext'
    { _odkcOldValue = Nothing
    , _odkcNewValue = Nothing
    }

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

-- | The response to a request to enumerate DnsKeys in a ManagedZone.
--
-- /See:/ 'dnsKeysListResponse' smart constructor.
data DNSKeysListResponse = DNSKeysListResponse'
    { _dklrNextPageToken :: !(Maybe Text)
    , _dklrDNSKeys       :: !(Maybe [DNSKey])
    , _dklrKind          :: !Text
    , _dklrHeader        :: !(Maybe DNSResponseHeader)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

dklrHeader :: Lens' DNSKeysListResponse (Maybe DNSResponseHeader)
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
data ChangesListResponse = ChangesListResponse'
    { _clrNextPageToken :: !(Maybe Text)
    , _clrChanges       :: !(Maybe [Change])
    , _clrKind          :: !Text
    , _clrHeader        :: !(Maybe DNSResponseHeader)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

clrHeader :: Lens' ChangesListResponse (Maybe DNSResponseHeader)
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
-- /See:/ 'managedZonesDeleteResponse' smart constructor.
newtype ManagedZonesDeleteResponse = ManagedZonesDeleteResponse'
    { _mzdrHeader :: Maybe DNSResponseHeader
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesDeleteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzdrHeader'
managedZonesDeleteResponse
    :: ManagedZonesDeleteResponse
managedZonesDeleteResponse =
    ManagedZonesDeleteResponse'
    { _mzdrHeader = Nothing
    }

mzdrHeader :: Lens' ManagedZonesDeleteResponse (Maybe DNSResponseHeader)
mzdrHeader
  = lens _mzdrHeader (\ s a -> s{_mzdrHeader = a})

instance FromJSON ManagedZonesDeleteResponse where
        parseJSON
          = withObject "ManagedZonesDeleteResponse"
              (\ o ->
                 ManagedZonesDeleteResponse' <$> (o .:? "header"))

instance ToJSON ManagedZonesDeleteResponse where
        toJSON ManagedZonesDeleteResponse'{..}
          = object (catMaybes [("header" .=) <$> _mzdrHeader])

-- | A project resource. The project is a top level container for resources
-- including Cloud DNS ManagedZones. Projects can be created only in the
-- APIs console.
--
-- /See:/ 'project' smart constructor.
data Project = Project'
    { _pKind   :: !Text
    , _pId     :: !(Maybe Text)
    , _pNumber :: !(Maybe (Textual Word64))
    , _pQuota  :: !(Maybe Quota)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#project\".
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
data Operation = Operation'
    { _oStatus        :: !(Maybe OperationStatus)
    , _oStartTime     :: !(Maybe Text)
    , _oKind          :: !Text
    , _oUser          :: !(Maybe Text)
    , _oId            :: !(Maybe Text)
    , _oType          :: !(Maybe Text)
    , _oZoneContext   :: !(Maybe OperationManagedZoneContext)
    , _oDNSKeyContext :: !(Maybe OperationDNSKeyContext)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- \"DONE\" (output only).
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The time that this operation was started by the server. This is in
-- RFC3339 text format (output only).
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#operation\".
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

-- | Elements common to every response.
--
-- /See:/ 'dnsResponseHeader' smart constructor.
newtype DNSResponseHeader = DNSResponseHeader'
    { _drhOperationId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DNSResponseHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drhOperationId'
dnsResponseHeader
    :: DNSResponseHeader
dnsResponseHeader =
    DNSResponseHeader'
    { _drhOperationId = Nothing
    }

-- | For mutating operation requests that completed successfully. This is the
-- client_operation_id if the client specified it, otherwise it is
-- generated by the server (output only).
drhOperationId :: Lens' DNSResponseHeader (Maybe Text)
drhOperationId
  = lens _drhOperationId
      (\ s a -> s{_drhOperationId = a})

instance FromJSON DNSResponseHeader where
        parseJSON
          = withObject "DNSResponseHeader"
              (\ o -> DNSResponseHeader' <$> (o .:? "operationId"))

instance ToJSON DNSResponseHeader where
        toJSON DNSResponseHeader'{..}
          = object
              (catMaybes [("operationId" .=) <$> _drhOperationId])

-- | Parameters for DnsKey key generation. Used for generating initial keys
-- for a new ManagedZone and as default when adding a new DnsKey.
--
-- /See:/ 'dnsKeySpec' smart constructor.
data DNSKeySpec = DNSKeySpec'
    { _dksKeyType   :: !(Maybe DNSKeySpecKeyType)
    , _dksKind      :: !Text
    , _dksAlgorithm :: !(Maybe DNSKeySpecAlgorithm)
    , _dksKeyLength :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | One of \"KEY_SIGNING\" or \"ZONE_SIGNING\". Keys of type KEY_SIGNING
-- have the Secure Entry Point flag set and, when active, will be used to
-- sign only resource record sets of type DNSKEY. Otherwise, the Secure
-- Entry Point flag will be cleared and this key will be used to sign only
-- resource record sets of other types.
dksKeyType :: Lens' DNSKeySpec (Maybe DNSKeySpecKeyType)
dksKeyType
  = lens _dksKeyType (\ s a -> s{_dksKeyType = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#dnsKeySpec\".
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

-- | An atomic update to a collection of ResourceRecordSets.
--
-- /See:/ 'change' smart constructor.
data Change = Change'
    { _cStatus    :: !(Maybe ChangeStatus)
    , _cAdditions :: !(Maybe [ResourceRecordSet])
    , _cStartTime :: !(Maybe Text)
    , _cKind      :: !Text
    , _cDeletions :: !(Maybe [ResourceRecordSet])
    , _cId        :: !(Maybe Text)
    , _cIsServing :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Status of the operation (output only).
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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#change\".
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
data DNSKey = DNSKey'
    { _dkCreationTime :: !(Maybe Text)
    , _dkKeyTag       :: !(Maybe (Textual Int32))
    , _dkKind         :: !Text
    , _dkDigests      :: !(Maybe [DNSKeyDigest])
    , _dkPublicKey    :: !(Maybe Text)
    , _dkAlgorithm    :: !(Maybe DNSKeyAlgorithm)
    , _dkId           :: !(Maybe Text)
    , _dkType         :: !(Maybe DNSKeyType)
    , _dkKeyLength    :: !(Maybe (Textual Word32))
    , _dkIsActive     :: !(Maybe Bool)
    , _dkDescription  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#dnsKey\".
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
data OperationManagedZoneContext = OperationManagedZoneContext'
    { _omzcOldValue :: !(Maybe ManagedZone)
    , _omzcNewValue :: !(Maybe ManagedZone)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _omzcOldValue = Nothing
    , _omzcNewValue = Nothing
    }

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

--
-- /See:/ 'managedZoneOperationsListResponse' smart constructor.
data ManagedZoneOperationsListResponse = ManagedZoneOperationsListResponse'
    { _mzolrNextPageToken :: !(Maybe Text)
    , _mzolrKind          :: !Text
    , _mzolrHeader        :: !(Maybe DNSResponseHeader)
    , _mzolrOperations    :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Type of resource.
mzolrKind :: Lens' ManagedZoneOperationsListResponse Text
mzolrKind
  = lens _mzolrKind (\ s a -> s{_mzolrKind = a})

mzolrHeader :: Lens' ManagedZoneOperationsListResponse (Maybe DNSResponseHeader)
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
data ResourceRecordSetsListResponse = ResourceRecordSetsListResponse'
    { _rrslrNextPageToken :: !(Maybe Text)
    , _rrslrKind          :: !Text
    , _rrslrHeader        :: !(Maybe DNSResponseHeader)
    , _rrslrRrSets        :: !(Maybe [ResourceRecordSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

rrslrHeader :: Lens' ResourceRecordSetsListResponse (Maybe DNSResponseHeader)
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
-- /See:/ 'managedZoneDNSSecConfig' smart constructor.
data ManagedZoneDNSSecConfig = ManagedZoneDNSSecConfig'
    { _mzdscState           :: !(Maybe ManagedZoneDNSSecConfigState)
    , _mzdscKind            :: !Text
    , _mzdscDefaultKeySpecs :: !(Maybe [DNSKeySpec])
    , _mzdscNonExistence    :: !(Maybe ManagedZoneDNSSecConfigNonExistence)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#managedZoneDnsSecConfig\".
mzdscKind :: Lens' ManagedZoneDNSSecConfig Text
mzdscKind
  = lens _mzdscKind (\ s a -> s{_mzdscKind = a})

-- | Specifies parameters that will be used for generating initial DnsKeys
-- for this ManagedZone. Output only while state is not OFF.
mzdscDefaultKeySpecs :: Lens' ManagedZoneDNSSecConfig [DNSKeySpec]
mzdscDefaultKeySpecs
  = lens _mzdscDefaultKeySpecs
      (\ s a -> s{_mzdscDefaultKeySpecs = a})
      . _Default
      . _Coerce

-- | Specifies the mechanism used to provide authenticated
-- denial-of-existence responses. Output only while state is not OFF.
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
data ResourceRecordSet = ResourceRecordSet'
    { _rrsTtl              :: !(Maybe (Textual Int32))
    , _rrsKind             :: !Text
    , _rrsSignatureRrDatas :: !(Maybe [Text])
    , _rrsName             :: !(Maybe Text)
    , _rrsType             :: !(Maybe Text)
    , _rrsRrDatas          :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#resourceRecordSet\".
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

-- | The identifier of a supported record type, for example, A, AAAA, MX,
-- TXT, and so on.
rrsType :: Lens' ResourceRecordSet (Maybe Text)
rrsType = lens _rrsType (\ s a -> s{_rrsType = a})

-- | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
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

-- | A zone is a subtree of the DNS namespace under one administrative
-- responsibility. A ManagedZone is a resource that represents a DNS zone
-- hosted by the Cloud DNS service.
--
-- /See:/ 'managedZone' smart constructor.
data ManagedZone = ManagedZone'
    { _mzCreationTime  :: !(Maybe Text)
    , _mzKind          :: !Text
    , _mzNameServerSet :: !(Maybe Text)
    , _mzName          :: !(Maybe Text)
    , _mzId            :: !(Maybe (Textual Word64))
    , _mzDNSName       :: !(Maybe Text)
    , _mzDescription   :: !(Maybe Text)
    , _mzDNSsecConfig  :: !(Maybe ManagedZoneDNSSecConfig)
    , _mzNameServers   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzCreationTime'
--
-- * 'mzKind'
--
-- * 'mzNameServerSet'
--
-- * 'mzName'
--
-- * 'mzId'
--
-- * 'mzDNSName'
--
-- * 'mzDescription'
--
-- * 'mzDNSsecConfig'
--
-- * 'mzNameServers'
managedZone
    :: ManagedZone
managedZone =
    ManagedZone'
    { _mzCreationTime = Nothing
    , _mzKind = "dns#managedZone"
    , _mzNameServerSet = Nothing
    , _mzName = Nothing
    , _mzId = Nothing
    , _mzDNSName = Nothing
    , _mzDescription = Nothing
    , _mzDNSsecConfig = Nothing
    , _mzNameServers = Nothing
    }

-- | The time that this resource was created on the server. This is in
-- RFC3339 text format. Output only.
mzCreationTime :: Lens' ManagedZone (Maybe Text)
mzCreationTime
  = lens _mzCreationTime
      (\ s a -> s{_mzCreationTime = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#managedZone\".
mzKind :: Lens' ManagedZone Text
mzKind = lens _mzKind (\ s a -> s{_mzKind = a})

-- | Optionally specifies the NameServerSet for this ManagedZone. A
-- NameServerSet is a set of DNS name servers that all host the same
-- ManagedZones. Most users will leave this field unset.
mzNameServerSet :: Lens' ManagedZone (Maybe Text)
mzNameServerSet
  = lens _mzNameServerSet
      (\ s a -> s{_mzNameServerSet = a})

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

instance FromJSON ManagedZone where
        parseJSON
          = withObject "ManagedZone"
              (\ o ->
                 ManagedZone' <$>
                   (o .:? "creationTime") <*>
                     (o .:? "kind" .!= "dns#managedZone")
                     <*> (o .:? "nameServerSet")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "dnsName")
                     <*> (o .:? "description")
                     <*> (o .:? "dnssecConfig")
                     <*> (o .:? "nameServers" .!= mempty))

instance ToJSON ManagedZone where
        toJSON ManagedZone'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mzCreationTime,
                  Just ("kind" .= _mzKind),
                  ("nameServerSet" .=) <$> _mzNameServerSet,
                  ("name" .=) <$> _mzName, ("id" .=) <$> _mzId,
                  ("dnsName" .=) <$> _mzDNSName,
                  ("description" .=) <$> _mzDescription,
                  ("dnssecConfig" .=) <$> _mzDNSsecConfig,
                  ("nameServers" .=) <$> _mzNameServers])

-- | Limits associated with a Project.
--
-- /See:/ 'quota' smart constructor.
data Quota = Quota'
    { _qRrSetDeletionsPerChange  :: !(Maybe (Textual Int32))
    , _qWhiteListedKeySpecs      :: !(Maybe [DNSKeySpec])
    , _qRrSetsPerManagedZone     :: !(Maybe (Textual Int32))
    , _qKind                     :: !Text
    , _qResourceRecordsPerRrSet  :: !(Maybe (Textual Int32))
    , _qRrSetAdditionsPerChange  :: !(Maybe (Textual Int32))
    , _qManagedZones             :: !(Maybe (Textual Int32))
    , _qTotalRrDataSizePerChange :: !(Maybe (Textual Int32))
    , _qDNSKeysPerManagedZone    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qRrSetDeletionsPerChange'
--
-- * 'qWhiteListedKeySpecs'
--
-- * 'qRrSetsPerManagedZone'
--
-- * 'qKind'
--
-- * 'qResourceRecordsPerRrSet'
--
-- * 'qRrSetAdditionsPerChange'
--
-- * 'qManagedZones'
--
-- * 'qTotalRrDataSizePerChange'
--
-- * 'qDNSKeysPerManagedZone'
quota
    :: Quota
quota =
    Quota'
    { _qRrSetDeletionsPerChange = Nothing
    , _qWhiteListedKeySpecs = Nothing
    , _qRrSetsPerManagedZone = Nothing
    , _qKind = "dns#quota"
    , _qResourceRecordsPerRrSet = Nothing
    , _qRrSetAdditionsPerChange = Nothing
    , _qManagedZones = Nothing
    , _qTotalRrDataSizePerChange = Nothing
    , _qDNSKeysPerManagedZone = Nothing
    }

-- | Maximum allowed number of ResourceRecordSets to delete per
-- ChangesCreateRequest.
qRrSetDeletionsPerChange :: Lens' Quota (Maybe Int32)
qRrSetDeletionsPerChange
  = lens _qRrSetDeletionsPerChange
      (\ s a -> s{_qRrSetDeletionsPerChange = a})
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

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#quota\".
qKind :: Lens' Quota Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | Maximum allowed number of ResourceRecords per ResourceRecordSet.
qResourceRecordsPerRrSet :: Lens' Quota (Maybe Int32)
qResourceRecordsPerRrSet
  = lens _qResourceRecordsPerRrSet
      (\ s a -> s{_qResourceRecordsPerRrSet = a})
      . mapping _Coerce

-- | Maximum allowed number of ResourceRecordSets to add per
-- ChangesCreateRequest.
qRrSetAdditionsPerChange :: Lens' Quota (Maybe Int32)
qRrSetAdditionsPerChange
  = lens _qRrSetAdditionsPerChange
      (\ s a -> s{_qRrSetAdditionsPerChange = a})
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

-- | Maximum allowed number of DnsKeys per ManagedZone.
qDNSKeysPerManagedZone :: Lens' Quota (Maybe Int32)
qDNSKeysPerManagedZone
  = lens _qDNSKeysPerManagedZone
      (\ s a -> s{_qDNSKeysPerManagedZone = a})
      . mapping _Coerce

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota' <$>
                   (o .:? "rrsetDeletionsPerChange") <*>
                     (o .:? "whitelistedKeySpecs" .!= mempty)
                     <*> (o .:? "rrsetsPerManagedZone")
                     <*> (o .:? "kind" .!= "dns#quota")
                     <*> (o .:? "resourceRecordsPerRrset")
                     <*> (o .:? "rrsetAdditionsPerChange")
                     <*> (o .:? "managedZones")
                     <*> (o .:? "totalRrdataSizePerChange")
                     <*> (o .:? "dnsKeysPerManagedZone"))

instance ToJSON Quota where
        toJSON Quota'{..}
          = object
              (catMaybes
                 [("rrsetDeletionsPerChange" .=) <$>
                    _qRrSetDeletionsPerChange,
                  ("whitelistedKeySpecs" .=) <$> _qWhiteListedKeySpecs,
                  ("rrsetsPerManagedZone" .=) <$>
                    _qRrSetsPerManagedZone,
                  Just ("kind" .= _qKind),
                  ("resourceRecordsPerRrset" .=) <$>
                    _qResourceRecordsPerRrSet,
                  ("rrsetAdditionsPerChange" .=) <$>
                    _qRrSetAdditionsPerChange,
                  ("managedZones" .=) <$> _qManagedZones,
                  ("totalRrdataSizePerChange" .=) <$>
                    _qTotalRrDataSizePerChange,
                  ("dnsKeysPerManagedZone" .=) <$>
                    _qDNSKeysPerManagedZone])

--
-- /See:/ 'dnsKeyDigest' smart constructor.
data DNSKeyDigest = DNSKeyDigest'
    { _dkdDigest :: !(Maybe Text)
    , _dkdType   :: !(Maybe DNSKeyDigestType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DNSKeyDigest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkdDigest'
--
-- * 'dkdType'
dnsKeyDigest
    :: DNSKeyDigest
dnsKeyDigest =
    DNSKeyDigest'
    { _dkdDigest = Nothing
    , _dkdType = Nothing
    }

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
-- /See:/ 'managedZonesListResponse' smart constructor.
data ManagedZonesListResponse = ManagedZonesListResponse'
    { _mzlrNextPageToken :: !(Maybe Text)
    , _mzlrKind          :: !Text
    , _mzlrHeader        :: !(Maybe DNSResponseHeader)
    , _mzlrManagedZones  :: !(Maybe [ManagedZone])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

mzlrHeader :: Lens' ManagedZonesListResponse (Maybe DNSResponseHeader)
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
