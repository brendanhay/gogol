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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches an Organization resource by id.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.get@.
module Network.Google.Resource.CloudResourceManager.Organizations.Get
    (
    -- * REST Resource
      OrganizationsGetResource

    -- * Creating a Request
    , organizationsGet'
    , OrganizationsGet'

    -- * Request Lenses
    , ogXgafv
    , ogUploadProtocol
    , ogPp
    , ogAccessToken
    , ogUploadType
    , ogBearerToken
    , ogOrganizationId
    , ogCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.get@ method which the
-- 'OrganizationsGet'' request conforms to.
type OrganizationsGetResource =
     "v1beta1" :>
       "organizations" :>
         Capture "organizationId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Organization

-- | Fetches an Organization resource by id.
--
-- /See:/ 'organizationsGet'' smart constructor.
data OrganizationsGet' = OrganizationsGet'
    { _ogXgafv          :: !(Maybe Text)
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogPp             :: !Bool
    , _ogAccessToken    :: !(Maybe Text)
    , _ogUploadType     :: !(Maybe Text)
    , _ogBearerToken    :: !(Maybe Text)
    , _ogOrganizationId :: !Text
    , _ogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogUploadProtocol'
--
-- * 'ogPp'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogBearerToken'
--
-- * 'ogOrganizationId'
--
-- * 'ogCallback'
organizationsGet'
    :: Text -- ^ 'ogOrganizationId'
    -> OrganizationsGet'
organizationsGet' pOgOrganizationId_ =
    OrganizationsGet'
    { _ogXgafv = Nothing
    , _ogUploadProtocol = Nothing
    , _ogPp = True
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogBearerToken = Nothing
    , _ogOrganizationId = pOgOrganizationId_
    , _ogCallback = Nothing
    }

-- | V1 error format.
ogXgafv :: Lens' OrganizationsGet' (Maybe Text)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OrganizationsGet' (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | Pretty-print response.
ogPp :: Lens' OrganizationsGet' Bool
ogPp = lens _ogPp (\ s a -> s{_ogPp = a})

-- | OAuth access token.
ogAccessToken :: Lens' OrganizationsGet' (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OrganizationsGet' (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | OAuth bearer token.
ogBearerToken :: Lens' OrganizationsGet' (Maybe Text)
ogBearerToken
  = lens _ogBearerToken
      (\ s a -> s{_ogBearerToken = a})

-- | The id of the Organization resource to fetch.
ogOrganizationId :: Lens' OrganizationsGet' Text
ogOrganizationId
  = lens _ogOrganizationId
      (\ s a -> s{_ogOrganizationId = a})

-- | JSONP
ogCallback :: Lens' OrganizationsGet' (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleRequest OrganizationsGet' where
        type Rs OrganizationsGet' = Organization
        requestClient OrganizationsGet'{..}
          = go _ogOrganizationId _ogXgafv _ogUploadProtocol
              (Just _ogPp)
              _ogAccessToken
              _ogUploadType
              _ogBearerToken
              _ogCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsGetResource)
                      mempty
