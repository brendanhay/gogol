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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Assets.Group
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Filters an organization\'s assets and groups them by their specified
-- properties.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.assets.group@.
module Network.Google.Resource.SecurityCenter.Organizations.Assets.Group
    (
    -- * REST Resource
      OrganizationsAssetsGroupResource

    -- * Creating a Request
    , organizationsAssetsGroup
    , OrganizationsAssetsGroup

    -- * Request Lenses
    , oagParent
    , oagXgafv
    , oagUploadProtocol
    , oagAccessToken
    , oagUploadType
    , oagPayload
    , oagCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.group@ method which the
-- 'OrganizationsAssetsGroup' request conforms to.
type OrganizationsAssetsGroupResource =
     "v1" :>
       Capture "parent" Text :>
         "assets:group" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GroupAssetsRequest :>
                         Post '[JSON] GroupAssetsResponse

-- | Filters an organization\'s assets and groups them by their specified
-- properties.
--
-- /See:/ 'organizationsAssetsGroup' smart constructor.
data OrganizationsAssetsGroup =
  OrganizationsAssetsGroup'
    { _oagParent         :: !Text
    , _oagXgafv          :: !(Maybe Xgafv)
    , _oagUploadProtocol :: !(Maybe Text)
    , _oagAccessToken    :: !(Maybe Text)
    , _oagUploadType     :: !(Maybe Text)
    , _oagPayload        :: !GroupAssetsRequest
    , _oagCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsAssetsGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oagParent'
--
-- * 'oagXgafv'
--
-- * 'oagUploadProtocol'
--
-- * 'oagAccessToken'
--
-- * 'oagUploadType'
--
-- * 'oagPayload'
--
-- * 'oagCallback'
organizationsAssetsGroup
    :: Text -- ^ 'oagParent'
    -> GroupAssetsRequest -- ^ 'oagPayload'
    -> OrganizationsAssetsGroup
organizationsAssetsGroup pOagParent_ pOagPayload_ =
  OrganizationsAssetsGroup'
    { _oagParent = pOagParent_
    , _oagXgafv = Nothing
    , _oagUploadProtocol = Nothing
    , _oagAccessToken = Nothing
    , _oagUploadType = Nothing
    , _oagPayload = pOagPayload_
    , _oagCallback = Nothing
    }


-- | Name of the organization to groupBy. Its format is
-- \"organizations\/[organization_id]\".
oagParent :: Lens' OrganizationsAssetsGroup Text
oagParent
  = lens _oagParent (\ s a -> s{_oagParent = a})

-- | V1 error format.
oagXgafv :: Lens' OrganizationsAssetsGroup (Maybe Xgafv)
oagXgafv = lens _oagXgafv (\ s a -> s{_oagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oagUploadProtocol :: Lens' OrganizationsAssetsGroup (Maybe Text)
oagUploadProtocol
  = lens _oagUploadProtocol
      (\ s a -> s{_oagUploadProtocol = a})

-- | OAuth access token.
oagAccessToken :: Lens' OrganizationsAssetsGroup (Maybe Text)
oagAccessToken
  = lens _oagAccessToken
      (\ s a -> s{_oagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oagUploadType :: Lens' OrganizationsAssetsGroup (Maybe Text)
oagUploadType
  = lens _oagUploadType
      (\ s a -> s{_oagUploadType = a})

-- | Multipart request metadata.
oagPayload :: Lens' OrganizationsAssetsGroup GroupAssetsRequest
oagPayload
  = lens _oagPayload (\ s a -> s{_oagPayload = a})

-- | JSONP
oagCallback :: Lens' OrganizationsAssetsGroup (Maybe Text)
oagCallback
  = lens _oagCallback (\ s a -> s{_oagCallback = a})

instance GoogleRequest OrganizationsAssetsGroup where
        type Rs OrganizationsAssetsGroup =
             GroupAssetsResponse
        type Scopes OrganizationsAssetsGroup =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsAssetsGroup'{..}
          = go _oagParent _oagXgafv _oagUploadProtocol
              _oagAccessToken
              _oagUploadType
              _oagCallback
              (Just AltJSON)
              _oagPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsAssetsGroupResource)
                      mempty
