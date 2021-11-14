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
-- Module      : Network.Google.Resource.DNS.ManagedZones.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference> for @dns.managedZones.list@.
module Network.Google.Resource.DNS.ManagedZones.List
    (
    -- * REST Resource
      ManagedZonesListResource

    -- * Creating a Request
    , managedZonesList
    , ManagedZonesList

    -- * Request Lenses
    , mzlXgafv
    , mzlUploadProtocol
    , mzlProject
    , mzlAccessToken
    , mzlUploadType
    , mzlPageToken
    , mzlDNSName
    , mzlMaxResults
    , mzlCallback
    ) where

import Network.Google.DNS.Types
import Network.Google.Prelude

-- | A resource alias for @dns.managedZones.list@ method which the
-- 'ManagedZonesList' request conforms to.
type ManagedZonesListResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             "managedZones" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "dnsName" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ManagedZonesListResponse

-- | Enumerate ManagedZones that have been created but not yet deleted.
--
-- /See:/ 'managedZonesList' smart constructor.
data ManagedZonesList =
  ManagedZonesList'
    { _mzlXgafv :: !(Maybe Xgafv)
    , _mzlUploadProtocol :: !(Maybe Text)
    , _mzlProject :: !Text
    , _mzlAccessToken :: !(Maybe Text)
    , _mzlUploadType :: !(Maybe Text)
    , _mzlPageToken :: !(Maybe Text)
    , _mzlDNSName :: !(Maybe Text)
    , _mzlMaxResults :: !(Maybe (Textual Int32))
    , _mzlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedZonesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mzlXgafv'
--
-- * 'mzlUploadProtocol'
--
-- * 'mzlProject'
--
-- * 'mzlAccessToken'
--
-- * 'mzlUploadType'
--
-- * 'mzlPageToken'
--
-- * 'mzlDNSName'
--
-- * 'mzlMaxResults'
--
-- * 'mzlCallback'
managedZonesList
    :: Text -- ^ 'mzlProject'
    -> ManagedZonesList
managedZonesList pMzlProject_ =
  ManagedZonesList'
    { _mzlXgafv = Nothing
    , _mzlUploadProtocol = Nothing
    , _mzlProject = pMzlProject_
    , _mzlAccessToken = Nothing
    , _mzlUploadType = Nothing
    , _mzlPageToken = Nothing
    , _mzlDNSName = Nothing
    , _mzlMaxResults = Nothing
    , _mzlCallback = Nothing
    }


-- | V1 error format.
mzlXgafv :: Lens' ManagedZonesList (Maybe Xgafv)
mzlXgafv = lens _mzlXgafv (\ s a -> s{_mzlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mzlUploadProtocol :: Lens' ManagedZonesList (Maybe Text)
mzlUploadProtocol
  = lens _mzlUploadProtocol
      (\ s a -> s{_mzlUploadProtocol = a})

-- | Identifies the project addressed by this request.
mzlProject :: Lens' ManagedZonesList Text
mzlProject
  = lens _mzlProject (\ s a -> s{_mzlProject = a})

-- | OAuth access token.
mzlAccessToken :: Lens' ManagedZonesList (Maybe Text)
mzlAccessToken
  = lens _mzlAccessToken
      (\ s a -> s{_mzlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mzlUploadType :: Lens' ManagedZonesList (Maybe Text)
mzlUploadType
  = lens _mzlUploadType
      (\ s a -> s{_mzlUploadType = a})

-- | Optional. A tag returned by a previous list request that was truncated.
-- Use this parameter to continue a previous list request.
mzlPageToken :: Lens' ManagedZonesList (Maybe Text)
mzlPageToken
  = lens _mzlPageToken (\ s a -> s{_mzlPageToken = a})

-- | Restricts the list to return only zones with this domain name.
mzlDNSName :: Lens' ManagedZonesList (Maybe Text)
mzlDNSName
  = lens _mzlDNSName (\ s a -> s{_mzlDNSName = a})

-- | Optional. Maximum number of results to be returned. If unspecified, the
-- server will decide how many results to return.
mzlMaxResults :: Lens' ManagedZonesList (Maybe Int32)
mzlMaxResults
  = lens _mzlMaxResults
      (\ s a -> s{_mzlMaxResults = a})
      . mapping _Coerce

-- | JSONP
mzlCallback :: Lens' ManagedZonesList (Maybe Text)
mzlCallback
  = lens _mzlCallback (\ s a -> s{_mzlCallback = a})

instance GoogleRequest ManagedZonesList where
        type Rs ManagedZonesList = ManagedZonesListResponse
        type Scopes ManagedZonesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ManagedZonesList'{..}
          = go _mzlProject _mzlXgafv _mzlUploadProtocol
              _mzlAccessToken
              _mzlUploadType
              _mzlPageToken
              _mzlDNSName
              _mzlMaxResults
              _mzlCallback
              (Just AltJSON)
              dNSService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedZonesListResource)
                      mempty
