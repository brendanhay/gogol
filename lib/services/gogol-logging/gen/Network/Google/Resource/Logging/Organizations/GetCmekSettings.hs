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
-- Module      : Network.Google.Resource.Logging.Organizations.GetCmekSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Logs Router CMEK settings for the given resource.Note: CMEK for
-- the Logs Router can currently only be configured for GCP organizations.
-- Once configured, it applies to all projects and folders in the GCP
-- organization.See Enabling CMEK for Logs Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.getCmekSettings@.
module Network.Google.Resource.Logging.Organizations.GetCmekSettings
    (
    -- * REST Resource
      OrganizationsGetCmekSettingsResource

    -- * Creating a Request
    , organizationsGetCmekSettings
    , OrganizationsGetCmekSettings

    -- * Request Lenses
    , ogcsXgafv
    , ogcsUploadProtocol
    , ogcsAccessToken
    , ogcsUploadType
    , ogcsName
    , ogcsCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.getCmekSettings@ method which the
-- 'OrganizationsGetCmekSettings' request conforms to.
type OrganizationsGetCmekSettingsResource =
     "v2" :>
       Capture "name" Text :>
         "cmekSettings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] CmekSettings

-- | Gets the Logs Router CMEK settings for the given resource.Note: CMEK for
-- the Logs Router can currently only be configured for GCP organizations.
-- Once configured, it applies to all projects and folders in the GCP
-- organization.See Enabling CMEK for Logs Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
--
-- /See:/ 'organizationsGetCmekSettings' smart constructor.
data OrganizationsGetCmekSettings =
  OrganizationsGetCmekSettings'
    { _ogcsXgafv :: !(Maybe Xgafv)
    , _ogcsUploadProtocol :: !(Maybe Text)
    , _ogcsAccessToken :: !(Maybe Text)
    , _ogcsUploadType :: !(Maybe Text)
    , _ogcsName :: !Text
    , _ogcsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGetCmekSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogcsXgafv'
--
-- * 'ogcsUploadProtocol'
--
-- * 'ogcsAccessToken'
--
-- * 'ogcsUploadType'
--
-- * 'ogcsName'
--
-- * 'ogcsCallback'
organizationsGetCmekSettings
    :: Text -- ^ 'ogcsName'
    -> OrganizationsGetCmekSettings
organizationsGetCmekSettings pOgcsName_ =
  OrganizationsGetCmekSettings'
    { _ogcsXgafv = Nothing
    , _ogcsUploadProtocol = Nothing
    , _ogcsAccessToken = Nothing
    , _ogcsUploadType = Nothing
    , _ogcsName = pOgcsName_
    , _ogcsCallback = Nothing
    }


-- | V1 error format.
ogcsXgafv :: Lens' OrganizationsGetCmekSettings (Maybe Xgafv)
ogcsXgafv
  = lens _ogcsXgafv (\ s a -> s{_ogcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogcsUploadProtocol :: Lens' OrganizationsGetCmekSettings (Maybe Text)
ogcsUploadProtocol
  = lens _ogcsUploadProtocol
      (\ s a -> s{_ogcsUploadProtocol = a})

-- | OAuth access token.
ogcsAccessToken :: Lens' OrganizationsGetCmekSettings (Maybe Text)
ogcsAccessToken
  = lens _ogcsAccessToken
      (\ s a -> s{_ogcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogcsUploadType :: Lens' OrganizationsGetCmekSettings (Maybe Text)
ogcsUploadType
  = lens _ogcsUploadType
      (\ s a -> s{_ogcsUploadType = a})

-- | Required. The resource for which to retrieve CMEK settings.
-- \"projects\/[PROJECT_ID]\/cmekSettings\"
-- \"organizations\/[ORGANIZATION_ID]\/cmekSettings\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/cmekSettings\"
-- \"folders\/[FOLDER_ID]\/cmekSettings\" Example:
-- \"organizations\/12345\/cmekSettings\".Note: CMEK for the Logs Router
-- can currently only be configured for GCP organizations. Once configured,
-- it applies to all projects and folders in the GCP organization.
ogcsName :: Lens' OrganizationsGetCmekSettings Text
ogcsName = lens _ogcsName (\ s a -> s{_ogcsName = a})

-- | JSONP
ogcsCallback :: Lens' OrganizationsGetCmekSettings (Maybe Text)
ogcsCallback
  = lens _ogcsCallback (\ s a -> s{_ogcsCallback = a})

instance GoogleRequest OrganizationsGetCmekSettings
         where
        type Rs OrganizationsGetCmekSettings = CmekSettings
        type Scopes OrganizationsGetCmekSettings =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsGetCmekSettings'{..}
          = go _ogcsName _ogcsXgafv _ogcsUploadProtocol
              _ogcsAccessToken
              _ogcsUploadType
              _ogcsCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsGetCmekSettingsResource)
                      mempty
