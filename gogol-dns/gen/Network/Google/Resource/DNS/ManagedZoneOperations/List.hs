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
-- Module      : Network.Google.Resource.DNS.ManagedZoneOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate Operations for the given ManagedZone.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZoneOperations.list@.
module Network.Google.Resource.DNS.ManagedZoneOperations.List
    (
    -- * REST Resource
      ManagedZoneOperationsListResource

    -- * Creating a Request
    , managedZoneOperationsList
    , ManagedZoneOperationsList

    -- * Request Lenses
    , mzolXgafv
    , mzolUploadProtocol
    , mzolProject
    , mzolAccessToken
    , mzolUploadType
    , mzolPageToken
    , mzolManagedZone
    , mzolMaxResults
    , mzolCallback
    , mzolSortBy
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZoneOperations.list@ method which the
-- 'ManagedZoneOperationsList' request conforms to.
type ManagedZoneOperationsListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               Capture "managedZone" Text :>
                 "operations" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "sortBy"
                                   ManagedZoneOperationsListSortBy
                                   :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON]
                                       ManagedZoneOperationsListResponse

-- | Enumerate Operations for the given ManagedZone.
--
-- /See:/ 'managedZoneOperationsList' smart constructor.
data ManagedZoneOperationsList =
  ManagedZoneOperationsList'
    { _mzolXgafv :: !(Maybe Xgafv)
    , _mzolUploadProtocol :: !(Maybe Text)
    , _mzolProject :: !Text
    , _mzolAccessToken :: !(Maybe Text)
    , _mzolUploadType :: !(Maybe Text)
    , _mzolPageToken :: !(Maybe Text)
    , _mzolManagedZone :: !Text
    , _mzolMaxResults :: !(Maybe (Textual Int32))
    , _mzolCallback :: !(Maybe Text)
    , _mzolSortBy :: !ManagedZoneOperationsListSortBy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZoneOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzolXgafv'
--
-- * 'mzolUploadProtocol'
--
-- * 'mzolProject'
--
-- * 'mzolAccessToken'
--
-- * 'mzolUploadType'
--
-- * 'mzolPageToken'
--
-- * 'mzolManagedZone'
--
-- * 'mzolMaxResults'
--
-- * 'mzolCallback'
--
-- * 'mzolSortBy'
managedZoneOperationsList
    :: Text -- ^ 'mzolProject'
    -> Text -- ^ 'mzolManagedZone'
    -> ManagedZoneOperationsList
managedZoneOperationsList pMzolProject_ pMzolManagedZone_ =
  ManagedZoneOperationsList'
    { _mzolXgafv = Nothing
    , _mzolUploadProtocol = Nothing
    , _mzolProject = pMzolProject_
    , _mzolAccessToken = Nothing
    , _mzolUploadType = Nothing
    , _mzolPageToken = Nothing
    , _mzolManagedZone = pMzolManagedZone_
    , _mzolMaxResults = Nothing
    , _mzolCallback = Nothing
    , _mzolSortBy = StartTime
    }


-- | V1 error format.
mzolXgafv :: Lens' ManagedZoneOperationsList (Maybe Xgafv)
mzolXgafv
  = lens _mzolXgafv (\ s a -> s{_mzolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzolUploadProtocol :: Lens' ManagedZoneOperationsList (Maybe Text)
mzolUploadProtocol
  = lens _mzolUploadProtocol
      (\ s a -> s{_mzolUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzolProject :: Lens' ManagedZoneOperationsList Text
mzolProject
  = lens _mzolProject (\ s a -> s{_mzolProject = a})

-- | OAuth access token.
mzolAccessToken :: Lens' ManagedZoneOperationsList (Maybe Text)
mzolAccessToken
  = lens _mzolAccessToken
      (\ s a -> s{_mzolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzolUploadType :: Lens' ManagedZoneOperationsList (Maybe Text)
mzolUploadType
  = lens _mzolUploadType
      (\ s a -> s{_mzolUploadType = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
mzolPageToken :: Lens' ManagedZoneOperationsList (Maybe Text)
mzolPageToken
  = lens _mzolPageToken
      (\ s a -> s{_mzolPageToken = a})

-- | Identifies the managed zone addressed by this request.
mzolManagedZone :: Lens' ManagedZoneOperationsList Text
mzolManagedZone
  = lens _mzolManagedZone
      (\ s a -> s{_mzolManagedZone = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
mzolMaxResults :: Lens' ManagedZoneOperationsList (Maybe Int32)
mzolMaxResults
  = lens _mzolMaxResults
      (\ s a -> s{_mzolMaxResults = a})
      . mapping _Coerce

-- | JSONP
mzolCallback :: Lens' ManagedZoneOperationsList (Maybe Text)
mzolCallback
  = lens _mzolCallback (\ s a -> s{_mzolCallback = a})

-- | Sorting criterion. The only supported values are START_TIME and ID.
mzolSortBy :: Lens' ManagedZoneOperationsList ManagedZoneOperationsListSortBy
mzolSortBy
  = lens _mzolSortBy (\ s a -> s{_mzolSortBy = a})

instance GoogleRequest ManagedZoneOperationsList
         where
        type Rs ManagedZoneOperationsList =
             ManagedZoneOperationsListResponse
        type Scopes ManagedZoneOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZoneOperationsList'{..}
          = go _mzolProject _mzolManagedZone _mzolXgafv
              _mzolUploadProtocol
              _mzolAccessToken
              _mzolUploadType
              _mzolPageToken
              _mzolMaxResults
              _mzolCallback
              (Just _mzolSortBy)
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZoneOperationsListResource)
                      mempty
