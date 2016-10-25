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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches Organization resources that are visible to the user and satisfy
-- the specified filter. This method returns Organizations in an
-- unspecified order. New Organizations do not necessarily appear at the
-- end of the results.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.search@.
module Network.Google.Resource.CloudResourceManager.Organizations.Search
    (
    -- * REST Resource
      OrganizationsSearchResource

    -- * Creating a Request
    , organizationsSearch
    , OrganizationsSearch

    -- * Request Lenses
    , osXgafv
    , osUploadProtocol
    , osPp
    , osAccessToken
    , osUploadType
    , osPayload
    , osBearerToken
    , osCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.search@ method which the
-- 'OrganizationsSearch' request conforms to.
type OrganizationsSearchResource =
     "v1" :>
       "organizations:search" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SearchOrganizationsRequest :>
                           Post '[JSON] SearchOrganizationsResponse

-- | Searches Organization resources that are visible to the user and satisfy
-- the specified filter. This method returns Organizations in an
-- unspecified order. New Organizations do not necessarily appear at the
-- end of the results.
--
-- /See:/ 'organizationsSearch' smart constructor.
data OrganizationsSearch = OrganizationsSearch'
    { _osXgafv          :: !(Maybe Text)
    , _osUploadProtocol :: !(Maybe Text)
    , _osPp             :: !Bool
    , _osAccessToken    :: !(Maybe Text)
    , _osUploadType     :: !(Maybe Text)
    , _osPayload        :: !SearchOrganizationsRequest
    , _osBearerToken    :: !(Maybe Text)
    , _osCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osXgafv'
--
-- * 'osUploadProtocol'
--
-- * 'osPp'
--
-- * 'osAccessToken'
--
-- * 'osUploadType'
--
-- * 'osPayload'
--
-- * 'osBearerToken'
--
-- * 'osCallback'
organizationsSearch
    :: SearchOrganizationsRequest -- ^ 'osPayload'
    -> OrganizationsSearch
organizationsSearch pOsPayload_ =
    OrganizationsSearch'
    { _osXgafv = Nothing
    , _osUploadProtocol = Nothing
    , _osPp = True
    , _osAccessToken = Nothing
    , _osUploadType = Nothing
    , _osPayload = pOsPayload_
    , _osBearerToken = Nothing
    , _osCallback = Nothing
    }

-- | V1 error format.
osXgafv :: Lens' OrganizationsSearch (Maybe Text)
osXgafv = lens _osXgafv (\ s a -> s{_osXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osUploadProtocol :: Lens' OrganizationsSearch (Maybe Text)
osUploadProtocol
  = lens _osUploadProtocol
      (\ s a -> s{_osUploadProtocol = a})

-- | Pretty-print response.
osPp :: Lens' OrganizationsSearch Bool
osPp = lens _osPp (\ s a -> s{_osPp = a})

-- | OAuth access token.
osAccessToken :: Lens' OrganizationsSearch (Maybe Text)
osAccessToken
  = lens _osAccessToken
      (\ s a -> s{_osAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osUploadType :: Lens' OrganizationsSearch (Maybe Text)
osUploadType
  = lens _osUploadType (\ s a -> s{_osUploadType = a})

-- | Multipart request metadata.
osPayload :: Lens' OrganizationsSearch SearchOrganizationsRequest
osPayload
  = lens _osPayload (\ s a -> s{_osPayload = a})

-- | OAuth bearer token.
osBearerToken :: Lens' OrganizationsSearch (Maybe Text)
osBearerToken
  = lens _osBearerToken
      (\ s a -> s{_osBearerToken = a})

-- | JSONP
osCallback :: Lens' OrganizationsSearch (Maybe Text)
osCallback
  = lens _osCallback (\ s a -> s{_osCallback = a})

instance GoogleRequest OrganizationsSearch where
        type Rs OrganizationsSearch =
             SearchOrganizationsResponse
        type Scopes OrganizationsSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OrganizationsSearch'{..}
          = go _osXgafv _osUploadProtocol (Just _osPp)
              _osAccessToken
              _osUploadType
              _osBearerToken
              _osCallback
              (Just AltJSON)
              _osPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSearchResource)
                      mempty
