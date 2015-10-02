{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types.Product where

import           Network.Google.DNS.Types.Sum
import           Network.Google.Prelude

-- | The response to a request to enumerate Changes to a ResourceRecordSets
-- collection.
--
-- /See:/ 'changesListResponse' smart constructor.
data ChangesListResponse = ChangesListResponse
    { _clrNextPageToken :: !(Maybe Text)
    , _clrChanges       :: !(Maybe [Change])
    , _clrKind          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrNextPageToken'
--
-- * 'clrChanges'
--
-- * 'clrKind'
changesListResponse
    :: ChangesListResponse
changesListResponse =
    ChangesListResponse
    { _clrNextPageToken = Nothing
    , _clrChanges = Nothing
    , _clrKind = "dns#changesListResponse"
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

instance FromJSON ChangesListResponse where
        parseJSON
          = withObject "ChangesListResponse"
              (\ o ->
                 ChangesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "changes" .!= mempty)
                     <*> (o .:? "kind" .!= "dns#changesListResponse"))

instance ToJSON ChangesListResponse where
        toJSON ChangesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clrNextPageToken,
                  ("changes" .=) <$> _clrChanges,
                  Just ("kind" .= _clrKind)])

-- | A project resource. The project is a top level container for resources
-- including Cloud DNS ManagedZones. Projects can be created only in the
-- APIs console.
--
-- /See:/ 'project' smart constructor.
data Project = Project
    { _pKind   :: !Text
    , _pId     :: !(Maybe Text)
    , _pNumber :: !(Maybe Word64)
    , _pQuota  :: !(Maybe Quota)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Project
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
pNumber = lens _pNumber (\ s a -> s{_pNumber = a})

-- | Quotas assigned to this project (output only).
pQuota :: Lens' Project (Maybe Quota)
pQuota = lens _pQuota (\ s a -> s{_pQuota = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project <$>
                   (o .:? "kind" .!= "dns#project") <*> (o .:? "id") <*>
                     (o .:? "number")
                     <*> (o .:? "quota"))

instance ToJSON Project where
        toJSON Project{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind), ("id" .=) <$> _pId,
                  ("number" .=) <$> _pNumber,
                  ("quota" .=) <$> _pQuota])

-- | An atomic update to a collection of ResourceRecordSets.
--
-- /See:/ 'change' smart constructor.
data Change = Change
    { _cStatus    :: !(Maybe Text)
    , _cAdditions :: !(Maybe [ResourceRecordSet])
    , _cStartTime :: !(Maybe Text)
    , _cKind      :: !Text
    , _cDeletions :: !(Maybe [ResourceRecordSet])
    , _cId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
change
    :: Change
change =
    Change
    { _cStatus = Nothing
    , _cAdditions = Nothing
    , _cStartTime = Nothing
    , _cKind = "dns#change"
    , _cDeletions = Nothing
    , _cId = Nothing
    }

-- | Status of the operation (output only).
cStatus :: Lens' Change (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Which ResourceRecordSets to add?
cAdditions :: Lens' Change [ResourceRecordSet]
cAdditions
  = lens _cAdditions (\ s a -> s{_cAdditions = a}) .
      _Default
      . _Coerce

-- | The time that this operation was started by the server. This is in
-- RFC3339 text format.
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

instance FromJSON Change where
        parseJSON
          = withObject "Change"
              (\ o ->
                 Change <$>
                   (o .:? "status") <*> (o .:? "additions" .!= mempty)
                     <*> (o .:? "startTime")
                     <*> (o .:? "kind" .!= "dns#change")
                     <*> (o .:? "deletions" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON Change where
        toJSON Change{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("additions" .=) <$> _cAdditions,
                  ("startTime" .=) <$> _cStartTime,
                  Just ("kind" .= _cKind),
                  ("deletions" .=) <$> _cDeletions,
                  ("id" .=) <$> _cId])

--
-- /See:/ 'resourceRecordSetsListResponse' smart constructor.
data ResourceRecordSetsListResponse = ResourceRecordSetsListResponse
    { _rrslrNextPageToken :: !(Maybe Text)
    , _rrslrKind          :: !Text
    , _rrslrRrsets        :: !(Maybe [ResourceRecordSet])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceRecordSetsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrslrNextPageToken'
--
-- * 'rrslrKind'
--
-- * 'rrslrRrsets'
resourceRecordSetsListResponse
    :: ResourceRecordSetsListResponse
resourceRecordSetsListResponse =
    ResourceRecordSetsListResponse
    { _rrslrNextPageToken = Nothing
    , _rrslrKind = "dns#resourceRecordSetsListResponse"
    , _rrslrRrsets = Nothing
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

-- | The resource record set resources.
rrslrRrsets :: Lens' ResourceRecordSetsListResponse [ResourceRecordSet]
rrslrRrsets
  = lens _rrslrRrsets (\ s a -> s{_rrslrRrsets = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceRecordSetsListResponse
         where
        parseJSON
          = withObject "ResourceRecordSetsListResponse"
              (\ o ->
                 ResourceRecordSetsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "dns#resourceRecordSetsListResponse")
                     <*> (o .:? "rrsets" .!= mempty))

instance ToJSON ResourceRecordSetsListResponse where
        toJSON ResourceRecordSetsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rrslrNextPageToken,
                  Just ("kind" .= _rrslrKind),
                  ("rrsets" .=) <$> _rrslrRrsets])

-- | A unit of data that will be returned by the DNS servers.
--
-- /See:/ 'resourceRecordSet' smart constructor.
data ResourceRecordSet = ResourceRecordSet
    { _rrsTtl     :: !(Maybe Int32)
    , _rrsKind    :: !Text
    , _rrsName    :: !(Maybe Text)
    , _rrsType    :: !(Maybe Text)
    , _rrsRrdatas :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceRecordSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsTtl'
--
-- * 'rrsKind'
--
-- * 'rrsName'
--
-- * 'rrsType'
--
-- * 'rrsRrdatas'
resourceRecordSet
    :: ResourceRecordSet
resourceRecordSet =
    ResourceRecordSet
    { _rrsTtl = Nothing
    , _rrsKind = "dns#resourceRecordSet"
    , _rrsName = Nothing
    , _rrsType = Nothing
    , _rrsRrdatas = Nothing
    }

-- | Number of seconds that this ResourceRecordSet can be cached by
-- resolvers.
rrsTtl :: Lens' ResourceRecordSet (Maybe Int32)
rrsTtl = lens _rrsTtl (\ s a -> s{_rrsTtl = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#resourceRecordSet\".
rrsKind :: Lens' ResourceRecordSet Text
rrsKind = lens _rrsKind (\ s a -> s{_rrsKind = a})

-- | For example, www.example.com.
rrsName :: Lens' ResourceRecordSet (Maybe Text)
rrsName = lens _rrsName (\ s a -> s{_rrsName = a})

-- | The identifier of a supported record type, for example, A, AAAA, MX,
-- TXT, and so on.
rrsType :: Lens' ResourceRecordSet (Maybe Text)
rrsType = lens _rrsType (\ s a -> s{_rrsType = a})

-- | As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
rrsRrdatas :: Lens' ResourceRecordSet [Text]
rrsRrdatas
  = lens _rrsRrdatas (\ s a -> s{_rrsRrdatas = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceRecordSet where
        parseJSON
          = withObject "ResourceRecordSet"
              (\ o ->
                 ResourceRecordSet <$>
                   (o .:? "ttl") <*>
                     (o .:? "kind" .!= "dns#resourceRecordSet")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "rrdatas" .!= mempty))

instance ToJSON ResourceRecordSet where
        toJSON ResourceRecordSet{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _rrsTtl, Just ("kind" .= _rrsKind),
                  ("name" .=) <$> _rrsName, ("type" .=) <$> _rrsType,
                  ("rrdatas" .=) <$> _rrsRrdatas])

-- | A zone is a subtree of the DNS namespace under one administrative
-- responsibility. A ManagedZone is a resource that represents a DNS zone
-- hosted by the Cloud DNS service.
--
-- /See:/ 'managedZone' smart constructor.
data ManagedZone = ManagedZone
    { _mzCreationTime  :: !(Maybe Text)
    , _mzKind          :: !Text
    , _mzNameServerSet :: !(Maybe Text)
    , _mzName          :: !(Maybe Text)
    , _mzId            :: !(Maybe Word64)
    , _mzDNSName       :: !(Maybe Text)
    , _mzDescription   :: !(Maybe Text)
    , _mzNameServers   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mzNameServers'
managedZone
    :: ManagedZone
managedZone =
    ManagedZone
    { _mzCreationTime = Nothing
    , _mzKind = "dns#managedZone"
    , _mzNameServerSet = Nothing
    , _mzName = Nothing
    , _mzId = Nothing
    , _mzDNSName = Nothing
    , _mzDescription = Nothing
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
-- The name must be 1-32 characters long, must begin with a letter, end
-- with a letter or digit, and only contain lowercase letters, digits or
-- dashes.
mzName :: Lens' ManagedZone (Maybe Text)
mzName = lens _mzName (\ s a -> s{_mzName = a})

-- | Unique identifier for the resource; defined by the server (output only)
mzId :: Lens' ManagedZone (Maybe Word64)
mzId = lens _mzId (\ s a -> s{_mzId = a})

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
                 ManagedZone <$>
                   (o .:? "creationTime") <*>
                     (o .:? "kind" .!= "dns#managedZone")
                     <*> (o .:? "nameServerSet")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "dnsName")
                     <*> (o .:? "description")
                     <*> (o .:? "nameServers" .!= mempty))

instance ToJSON ManagedZone where
        toJSON ManagedZone{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mzCreationTime,
                  Just ("kind" .= _mzKind),
                  ("nameServerSet" .=) <$> _mzNameServerSet,
                  ("name" .=) <$> _mzName, ("id" .=) <$> _mzId,
                  ("dnsName" .=) <$> _mzDNSName,
                  ("description" .=) <$> _mzDescription,
                  ("nameServers" .=) <$> _mzNameServers])

-- | Limits associated with a Project.
--
-- /See:/ 'quota' smart constructor.
data Quota = Quota
    { _qRrsetDeletionsPerChange  :: !(Maybe Int32)
    , _qRrsetsPerManagedZone     :: !(Maybe Int32)
    , _qKind                     :: !Text
    , _qResourceRecordsPerRrset  :: !(Maybe Int32)
    , _qRrsetAdditionsPerChange  :: !(Maybe Int32)
    , _qManagedZones             :: !(Maybe Int32)
    , _qTotalRrdataSizePerChange :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qRrsetDeletionsPerChange'
--
-- * 'qRrsetsPerManagedZone'
--
-- * 'qKind'
--
-- * 'qResourceRecordsPerRrset'
--
-- * 'qRrsetAdditionsPerChange'
--
-- * 'qManagedZones'
--
-- * 'qTotalRrdataSizePerChange'
quota
    :: Quota
quota =
    Quota
    { _qRrsetDeletionsPerChange = Nothing
    , _qRrsetsPerManagedZone = Nothing
    , _qKind = "dns#quota"
    , _qResourceRecordsPerRrset = Nothing
    , _qRrsetAdditionsPerChange = Nothing
    , _qManagedZones = Nothing
    , _qTotalRrdataSizePerChange = Nothing
    }

-- | Maximum allowed number of ResourceRecordSets to delete per
-- ChangesCreateRequest.
qRrsetDeletionsPerChange :: Lens' Quota (Maybe Int32)
qRrsetDeletionsPerChange
  = lens _qRrsetDeletionsPerChange
      (\ s a -> s{_qRrsetDeletionsPerChange = a})

-- | Maximum allowed number of ResourceRecordSets per zone in the project.
qRrsetsPerManagedZone :: Lens' Quota (Maybe Int32)
qRrsetsPerManagedZone
  = lens _qRrsetsPerManagedZone
      (\ s a -> s{_qRrsetsPerManagedZone = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"dns#quota\".
qKind :: Lens' Quota Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | Maximum allowed number of ResourceRecords per ResourceRecordSet.
qResourceRecordsPerRrset :: Lens' Quota (Maybe Int32)
qResourceRecordsPerRrset
  = lens _qResourceRecordsPerRrset
      (\ s a -> s{_qResourceRecordsPerRrset = a})

-- | Maximum allowed number of ResourceRecordSets to add per
-- ChangesCreateRequest.
qRrsetAdditionsPerChange :: Lens' Quota (Maybe Int32)
qRrsetAdditionsPerChange
  = lens _qRrsetAdditionsPerChange
      (\ s a -> s{_qRrsetAdditionsPerChange = a})

-- | Maximum allowed number of managed zones in the project.
qManagedZones :: Lens' Quota (Maybe Int32)
qManagedZones
  = lens _qManagedZones
      (\ s a -> s{_qManagedZones = a})

-- | Maximum allowed size for total rrdata in one ChangesCreateRequest in
-- bytes.
qTotalRrdataSizePerChange :: Lens' Quota (Maybe Int32)
qTotalRrdataSizePerChange
  = lens _qTotalRrdataSizePerChange
      (\ s a -> s{_qTotalRrdataSizePerChange = a})

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota <$>
                   (o .:? "rrsetDeletionsPerChange") <*>
                     (o .:? "rrsetsPerManagedZone")
                     <*> (o .:? "kind" .!= "dns#quota")
                     <*> (o .:? "resourceRecordsPerRrset")
                     <*> (o .:? "rrsetAdditionsPerChange")
                     <*> (o .:? "managedZones")
                     <*> (o .:? "totalRrdataSizePerChange"))

instance ToJSON Quota where
        toJSON Quota{..}
          = object
              (catMaybes
                 [("rrsetDeletionsPerChange" .=) <$>
                    _qRrsetDeletionsPerChange,
                  ("rrsetsPerManagedZone" .=) <$>
                    _qRrsetsPerManagedZone,
                  Just ("kind" .= _qKind),
                  ("resourceRecordsPerRrset" .=) <$>
                    _qResourceRecordsPerRrset,
                  ("rrsetAdditionsPerChange" .=) <$>
                    _qRrsetAdditionsPerChange,
                  ("managedZones" .=) <$> _qManagedZones,
                  ("totalRrdataSizePerChange" .=) <$>
                    _qTotalRrdataSizePerChange])

--
-- /See:/ 'managedZonesListResponse' smart constructor.
data ManagedZonesListResponse = ManagedZonesListResponse
    { _mzlrNextPageToken :: !(Maybe Text)
    , _mzlrKind          :: !Text
    , _mzlrManagedZones  :: !(Maybe [ManagedZone])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedZonesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlrNextPageToken'
--
-- * 'mzlrKind'
--
-- * 'mzlrManagedZones'
managedZonesListResponse
    :: ManagedZonesListResponse
managedZonesListResponse =
    ManagedZonesListResponse
    { _mzlrNextPageToken = Nothing
    , _mzlrKind = "dns#managedZonesListResponse"
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
                 ManagedZonesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "dns#managedZonesListResponse")
                     <*> (o .:? "managedZones" .!= mempty))

instance ToJSON ManagedZonesListResponse where
        toJSON ManagedZonesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _mzlrNextPageToken,
                  Just ("kind" .= _mzlrKind),
                  ("managedZones" .=) <$> _mzlrManagedZones])
