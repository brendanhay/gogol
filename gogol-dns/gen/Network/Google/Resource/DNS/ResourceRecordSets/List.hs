{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DNS.ResourceRecordSets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.resourceRecordSets.list@.
module Network.Google.Resource.DNS.ResourceRecordSets.List
    (
    -- * REST Resource
      ResourceRecordSetsListResource

    -- * Creating a Request
    , resourceRecordSetsList
    , ResourceRecordSetsList

    -- * Request Lenses
    , rrslProject
    , rrslName
    , rrslPageToken
    , rrslType
    , rrslManagedZone
    , rrslMaxResults
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.resourceRecordSets.list@ method which the
-- 'ResourceRecordSetsList' request conforms to.
type ResourceRecordSetsListResource =
     "dns" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "rrsets" :>
                   QueryParam "name" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "type" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ResourceRecordSetsListResponse

-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ 'resourceRecordSetsList' smart constructor.
data ResourceRecordSetsList = ResourceRecordSetsList
    { _rrslProject     :: !Text
    , _rrslName        :: !(Maybe Text)
    , _rrslPageToken   :: !(Maybe Text)
    , _rrslType        :: !(Maybe Text)
    , _rrslManagedZone :: !Text
    , _rrslMaxResults  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceRecordSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrslProject'
--
-- * 'rrslName'
--
-- * 'rrslPageToken'
--
-- * 'rrslType'
--
-- * 'rrslManagedZone'
--
-- * 'rrslMaxResults'
resourceRecordSetsList
    :: Text -- ^ 'rrslProject'
    -> Text -- ^ 'rrslManagedZone'
    -> ResourceRecordSetsList
resourceRecordSetsList pRrslProject_ pRrslManagedZone_ =
    ResourceRecordSetsList
    { _rrslProject = pRrslProject_
    , _rrslName = Nothing
    , _rrslPageToken = Nothing
    , _rrslType = Nothing
    , _rrslManagedZone = pRrslManagedZone_
    , _rrslMaxResults = Nothing
    }

-- | Identifies the project addressed by this request.
rrslProject :: Lens' ResourceRecordSetsList Text
rrslProject
  = lens _rrslProject (\ s a -> s{_rrslProject = a})

-- | Restricts the list to return only records with this fully qualified
-- domain name.
rrslName :: Lens' ResourceRecordSetsList (Maybe Text)
rrslName = lens _rrslName (\ s a -> s{_rrslName = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
rrslPageToken :: Lens' ResourceRecordSetsList (Maybe Text)
rrslPageToken
  = lens _rrslPageToken
      (\ s a -> s{_rrslPageToken = a})

-- | Restricts the list to return only records of this type. If present, the
-- \"name\" parameter must also be present.
rrslType :: Lens' ResourceRecordSetsList (Maybe Text)
rrslType = lens _rrslType (\ s a -> s{_rrslType = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
rrslManagedZone :: Lens' ResourceRecordSetsList Text
rrslManagedZone
  = lens _rrslManagedZone
      (\ s a -> s{_rrslManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
rrslMaxResults :: Lens' ResourceRecordSetsList (Maybe Int32)
rrslMaxResults
  = lens _rrslMaxResults
      (\ s a -> s{_rrslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ResourceRecordSetsList where
        type Rs ResourceRecordSetsList =
             ResourceRecordSetsListResponse
        requestClient ResourceRecordSetsList{..}
          = go _rrslProject _rrslManagedZone _rrslName
              _rrslPageToken
              _rrslType
              _rrslMaxResults
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourceRecordSetsListResource)
                      mempty
