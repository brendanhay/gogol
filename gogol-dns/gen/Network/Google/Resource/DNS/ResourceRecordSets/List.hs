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
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.resourceRecordSets.list@.
module Network.Google.Resource.DNS.ResourceRecordSets.List
    (
    -- * REST Resource
      ResourceRecordSetsListResource

    -- * Creating a Request
    , resourceRecordSetsList
    , ResourceRecordSetsList

    -- * Request Lenses
    , rrslXgafv
    , rrslUploadProtocol
    , rrslProject
    , rrslAccessToken
    , rrslUploadType
    , rrslName
    , rrslPageToken
    , rrslType
    , rrslManagedZone
    , rrslMaxResults
    , rrslCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.resourceRecordSets.list@ method which the
-- 'ResourceRecordSetsList' request conforms to.
type ResourceRecordSetsListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "rrsets" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "name" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "type" Text :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         ResourceRecordSetsListResponse

-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
--
-- /See:/ 'resourceRecordSetsList' smart constructor.
data ResourceRecordSetsList =
  ResourceRecordSetsList'
    { _rrslXgafv :: !(Maybe Xgafv)
    , _rrslUploadProtocol :: !(Maybe Text)
    , _rrslProject :: !Text
    , _rrslAccessToken :: !(Maybe Text)
    , _rrslUploadType :: !(Maybe Text)
    , _rrslName :: !(Maybe Text)
    , _rrslPageToken :: !(Maybe Text)
    , _rrslType :: !(Maybe Text)
    , _rrslManagedZone :: !Text
    , _rrslMaxResults :: !(Maybe (Textual Int32))
    , _rrslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRecordSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrslXgafv'
--
-- * 'rrslUploadProtocol'
--
-- * 'rrslProject'
--
-- * 'rrslAccessToken'
--
-- * 'rrslUploadType'
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
--
-- * 'rrslCallback'
resourceRecordSetsList
    :: Text -- ^ 'rrslProject'
    -> Text -- ^ 'rrslManagedZone'
    -> ResourceRecordSetsList
resourceRecordSetsList pRrslProject_ pRrslManagedZone_ =
  ResourceRecordSetsList'
    { _rrslXgafv = Nothing
    , _rrslUploadProtocol = Nothing
    , _rrslProject = pRrslProject_
    , _rrslAccessToken = Nothing
    , _rrslUploadType = Nothing
    , _rrslName = Nothing
    , _rrslPageToken = Nothing
    , _rrslType = Nothing
    , _rrslManagedZone = pRrslManagedZone_
    , _rrslMaxResults = Nothing
    , _rrslCallback = Nothing
    }


-- | V1 error format.
rrslXgafv :: Lens' ResourceRecordSetsList (Maybe Xgafv)
rrslXgafv
  = lens _rrslXgafv (\ s a -> s{_rrslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrslUploadProtocol :: Lens' ResourceRecordSetsList (Maybe Text)
rrslUploadProtocol
  = lens _rrslUploadProtocol
      (\ s a -> s{_rrslUploadProtocol = a})

-- | Identifies the project addressed by this request.
rrslProject :: Lens' ResourceRecordSetsList Text
rrslProject
  = lens _rrslProject (\ s a -> s{_rrslProject = a})

-- | OAuth access token.
rrslAccessToken :: Lens' ResourceRecordSetsList (Maybe Text)
rrslAccessToken
  = lens _rrslAccessToken
      (\ s a -> s{_rrslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrslUploadType :: Lens' ResourceRecordSetsList (Maybe Text)
rrslUploadType
  = lens _rrslUploadType
      (\ s a -> s{_rrslUploadType = a})

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

-- | JSONP
rrslCallback :: Lens' ResourceRecordSetsList (Maybe Text)
rrslCallback
  = lens _rrslCallback (\ s a -> s{_rrslCallback = a})

instance GoogleRequest ResourceRecordSetsList where
        type Rs ResourceRecordSetsList =
             ResourceRecordSetsListResponse
        type Scopes ResourceRecordSetsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ResourceRecordSetsList'{..}
          = go _rrslProject _rrslManagedZone _rrslXgafv
              _rrslUploadProtocol
              _rrslAccessToken
              _rrslUploadType
              _rrslName
              _rrslPageToken
              _rrslType
              _rrslMaxResults
              _rrslCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourceRecordSetsListResource)
                      mempty
