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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches an Organization resource identified by the specified resource
-- name.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.get@.
module Network.Google.Resource.CloudResourceManager.Organizations.Get
    (
    -- * REST Resource
      OrganizationsGetResource

    -- * Creating a Request
    , organizationsGet
    , OrganizationsGet

    -- * Request Lenses
    , oggXgafv
    , oggUploadProtocol
    , oggPp
    , oggAccessToken
    , oggUploadType
    , oggBearerToken
    , oggName
    , oggCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.get@ method which the
-- 'OrganizationsGet' request conforms to.
type OrganizationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Organization

-- | Fetches an Organization resource identified by the specified resource
-- name.
--
-- /See:/ 'organizationsGet' smart constructor.
data OrganizationsGet = OrganizationsGet'
    { _oggXgafv          :: !(Maybe Text)
    , _oggUploadProtocol :: !(Maybe Text)
    , _oggPp             :: !Bool
    , _oggAccessToken    :: !(Maybe Text)
    , _oggUploadType     :: !(Maybe Text)
    , _oggBearerToken    :: !(Maybe Text)
    , _oggName           :: !Text
    , _oggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oggXgafv'
--
-- * 'oggUploadProtocol'
--
-- * 'oggPp'
--
-- * 'oggAccessToken'
--
-- * 'oggUploadType'
--
-- * 'oggBearerToken'
--
-- * 'oggName'
--
-- * 'oggCallback'
organizationsGet
    :: Text -- ^ 'oggName'
    -> OrganizationsGet
organizationsGet pOggName_ =
    OrganizationsGet'
    { _oggXgafv = Nothing
    , _oggUploadProtocol = Nothing
    , _oggPp = True
    , _oggAccessToken = Nothing
    , _oggUploadType = Nothing
    , _oggBearerToken = Nothing
    , _oggName = pOggName_
    , _oggCallback = Nothing
    }

-- | V1 error format.
oggXgafv :: Lens' OrganizationsGet (Maybe Text)
oggXgafv = lens _oggXgafv (\ s a -> s{_oggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oggUploadProtocol :: Lens' OrganizationsGet (Maybe Text)
oggUploadProtocol
  = lens _oggUploadProtocol
      (\ s a -> s{_oggUploadProtocol = a})

-- | Pretty-print response.
oggPp :: Lens' OrganizationsGet Bool
oggPp = lens _oggPp (\ s a -> s{_oggPp = a})

-- | OAuth access token.
oggAccessToken :: Lens' OrganizationsGet (Maybe Text)
oggAccessToken
  = lens _oggAccessToken
      (\ s a -> s{_oggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oggUploadType :: Lens' OrganizationsGet (Maybe Text)
oggUploadType
  = lens _oggUploadType
      (\ s a -> s{_oggUploadType = a})

-- | OAuth bearer token.
oggBearerToken :: Lens' OrganizationsGet (Maybe Text)
oggBearerToken
  = lens _oggBearerToken
      (\ s a -> s{_oggBearerToken = a})

-- | The resource name of the Organization to fetch, e.g.
-- \"organizations\/1234\".
oggName :: Lens' OrganizationsGet Text
oggName = lens _oggName (\ s a -> s{_oggName = a})

-- | JSONP
oggCallback :: Lens' OrganizationsGet (Maybe Text)
oggCallback
  = lens _oggCallback (\ s a -> s{_oggCallback = a})

instance GoogleRequest OrganizationsGet where
        type Rs OrganizationsGet = Organization
        type Scopes OrganizationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OrganizationsGet'{..}
          = go _oggName _oggXgafv _oggUploadProtocol
              (Just _oggPp)
              _oggAccessToken
              _oggUploadType
              _oggBearerToken
              _oggCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsGetResource)
                      mempty
