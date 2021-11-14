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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.GetOrganizationSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings for an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.getOrganizationSettings@.
module Network.Google.Resource.SecurityCenter.Organizations.GetOrganizationSettings
    (
    -- * REST Resource
      OrganizationsGetOrganizationSettingsResource

    -- * Creating a Request
    , organizationsGetOrganizationSettings
    , OrganizationsGetOrganizationSettings

    -- * Request Lenses
    , ogosXgafv
    , ogosUploadProtocol
    , ogosAccessToken
    , ogosUploadType
    , ogosName
    , ogosCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.getOrganizationSettings@ method which the
-- 'OrganizationsGetOrganizationSettings' request conforms to.
type OrganizationsGetOrganizationSettingsResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] OrganizationSettings

-- | Gets the settings for an organization.
--
-- /See:/ 'organizationsGetOrganizationSettings' smart constructor.
data OrganizationsGetOrganizationSettings =
  OrganizationsGetOrganizationSettings'
    { _ogosXgafv :: !(Maybe Xgafv)
    , _ogosUploadProtocol :: !(Maybe Text)
    , _ogosAccessToken :: !(Maybe Text)
    , _ogosUploadType :: !(Maybe Text)
    , _ogosName :: !Text
    , _ogosCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGetOrganizationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogosXgafv'
--
-- * 'ogosUploadProtocol'
--
-- * 'ogosAccessToken'
--
-- * 'ogosUploadType'
--
-- * 'ogosName'
--
-- * 'ogosCallback'
organizationsGetOrganizationSettings
    :: Text -- ^ 'ogosName'
    -> OrganizationsGetOrganizationSettings
organizationsGetOrganizationSettings pOgosName_ =
  OrganizationsGetOrganizationSettings'
    { _ogosXgafv = Nothing
    , _ogosUploadProtocol = Nothing
    , _ogosAccessToken = Nothing
    , _ogosUploadType = Nothing
    , _ogosName = pOgosName_
    , _ogosCallback = Nothing
    }


-- | V1 error format.
ogosXgafv :: Lens' OrganizationsGetOrganizationSettings (Maybe Xgafv)
ogosXgafv
  = lens _ogosXgafv (\ s a -> s{_ogosXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogosUploadProtocol :: Lens' OrganizationsGetOrganizationSettings (Maybe Text)
ogosUploadProtocol
  = lens _ogosUploadProtocol
      (\ s a -> s{_ogosUploadProtocol = a})

-- | OAuth access token.
ogosAccessToken :: Lens' OrganizationsGetOrganizationSettings (Maybe Text)
ogosAccessToken
  = lens _ogosAccessToken
      (\ s a -> s{_ogosAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogosUploadType :: Lens' OrganizationsGetOrganizationSettings (Maybe Text)
ogosUploadType
  = lens _ogosUploadType
      (\ s a -> s{_ogosUploadType = a})

-- | Required. Name of the organization to get organization settings for. Its
-- format is \"organizations\/[organization_id]\/organizationSettings\".
ogosName :: Lens' OrganizationsGetOrganizationSettings Text
ogosName = lens _ogosName (\ s a -> s{_ogosName = a})

-- | JSONP
ogosCallback :: Lens' OrganizationsGetOrganizationSettings (Maybe Text)
ogosCallback
  = lens _ogosCallback (\ s a -> s{_ogosCallback = a})

instance GoogleRequest
           OrganizationsGetOrganizationSettings
         where
        type Rs OrganizationsGetOrganizationSettings =
             OrganizationSettings
        type Scopes OrganizationsGetOrganizationSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGetOrganizationSettings'{..}
          = go _ogosName _ogosXgafv _ogosUploadProtocol
              _ogosAccessToken
              _ogosUploadType
              _ogosCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsGetOrganizationSettingsResource)
                      mempty
