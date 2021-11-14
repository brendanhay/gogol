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
-- Module      : Network.Google.Resource.DNS.Changes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.changes.list@.
module Network.Google.Resource.DNS.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList
    , ChangesList

    -- * Request Lenses
    , clXgafv
    , clUploadProtocol
    , clProject
    , clAccessToken
    , clUploadType
    , clSortOrder
    , clPageToken
    , clManagedZone
    , clMaxResults
    , clCallback
    , clSortBy
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.changes.list@ method which the
-- 'ChangesList' request conforms to.
type ChangesListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "changes" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "sortOrder" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "sortBy" ChangesListSortBy :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ChangesListResponse

-- | Enumerate Changes to a ResourceRecordSet collection.
--
-- /See:/ 'changesList' smart constructor.
data ChangesList =
  ChangesList'
    { _clXgafv :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clProject :: !Text
    , _clAccessToken :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clSortOrder :: !(Maybe Text)
    , _clPageToken :: !(Maybe Text)
    , _clManagedZone :: !Text
    , _clMaxResults :: !(Maybe (Textual Int32))
    , _clCallback :: !(Maybe Text)
    , _clSortBy :: !ChangesListSortBy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clProject'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clSortOrder'
--
-- * 'clPageToken'
--
-- * 'clManagedZone'
--
-- * 'clMaxResults'
--
-- * 'clCallback'
--
-- * 'clSortBy'
changesList
    :: Text -- ^ 'clProject'
    -> Text -- ^ 'clManagedZone'
    -> ChangesList
changesList pClProject_ pClManagedZone_ =
  ChangesList'
    { _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clProject = pClProject_
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clSortOrder = Nothing
    , _clPageToken = Nothing
    , _clManagedZone = pClManagedZone_
    , _clMaxResults = Nothing
    , _clCallback = Nothing
    , _clSortBy = ChangeSequence
    }


-- | V1 error format.
clXgafv :: Lens' ChangesList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' ChangesList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | Identifies the project addressed by this request.
clProject :: Lens' ChangesList Text
clProject
  = lens _clProject (\ s a -> s{_clProject = a})

-- | OAuth access token.
clAccessToken :: Lens' ChangesList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' ChangesList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | Sorting order direction: \'ascending\' or \'descending\'.
clSortOrder :: Lens' ChangesList (Maybe Text)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
clPageToken :: Lens' ChangesList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
clManagedZone :: Lens' ChangesList Text
clManagedZone
  = lens _clManagedZone
      (\ s a -> s{_clManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
clMaxResults :: Lens' ChangesList (Maybe Int32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . mapping _Coerce

-- | JSONP
clCallback :: Lens' ChangesList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

-- | Sorting criterion. The only supported value is change sequence.
clSortBy :: Lens' ChangesList ChangesListSortBy
clSortBy = lens _clSortBy (\ s a -> s{_clSortBy = a})

instance GoogleRequest ChangesList where
        type Rs ChangesList = ChangesListResponse
        type Scopes ChangesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ChangesList'{..}
          = go _clProject _clManagedZone _clXgafv
              _clUploadProtocol
              _clAccessToken
              _clUploadType
              _clSortOrder
              _clPageToken
              _clMaxResults
              _clCallback
              (Just _clSortBy)
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
