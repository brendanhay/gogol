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
-- Module      : Network.Google.Resource.Logging.GetCmekSettings
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.getCmekSettings@.
module Network.Google.Resource.Logging.GetCmekSettings
    (
    -- * REST Resource
      GetCmekSettingsResource

    -- * Creating a Request
    , getCmekSettings
    , GetCmekSettings

    -- * Request Lenses
    , gcsXgafv
    , gcsUploadProtocol
    , gcsAccessToken
    , gcsUploadType
    , gcsName
    , gcsCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.getCmekSettings@ method which the
-- 'GetCmekSettings' request conforms to.
type GetCmekSettingsResource =
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
-- /See:/ 'getCmekSettings' smart constructor.
data GetCmekSettings =
  GetCmekSettings'
    { _gcsXgafv :: !(Maybe Xgafv)
    , _gcsUploadProtocol :: !(Maybe Text)
    , _gcsAccessToken :: !(Maybe Text)
    , _gcsUploadType :: !(Maybe Text)
    , _gcsName :: !Text
    , _gcsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetCmekSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsXgafv'
--
-- * 'gcsUploadProtocol'
--
-- * 'gcsAccessToken'
--
-- * 'gcsUploadType'
--
-- * 'gcsName'
--
-- * 'gcsCallback'
getCmekSettings
    :: Text -- ^ 'gcsName'
    -> GetCmekSettings
getCmekSettings pGcsName_ =
  GetCmekSettings'
    { _gcsXgafv = Nothing
    , _gcsUploadProtocol = Nothing
    , _gcsAccessToken = Nothing
    , _gcsUploadType = Nothing
    , _gcsName = pGcsName_
    , _gcsCallback = Nothing
    }


-- | V1 error format.
gcsXgafv :: Lens' GetCmekSettings (Maybe Xgafv)
gcsXgafv = lens _gcsXgafv (\ s a -> s{_gcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gcsUploadProtocol :: Lens' GetCmekSettings (Maybe Text)
gcsUploadProtocol
  = lens _gcsUploadProtocol
      (\ s a -> s{_gcsUploadProtocol = a})

-- | OAuth access token.
gcsAccessToken :: Lens' GetCmekSettings (Maybe Text)
gcsAccessToken
  = lens _gcsAccessToken
      (\ s a -> s{_gcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gcsUploadType :: Lens' GetCmekSettings (Maybe Text)
gcsUploadType
  = lens _gcsUploadType
      (\ s a -> s{_gcsUploadType = a})

-- | Required. The resource for which to retrieve CMEK settings.
-- \"projects\/[PROJECT_ID]\/cmekSettings\"
-- \"organizations\/[ORGANIZATION_ID]\/cmekSettings\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/cmekSettings\"
-- \"folders\/[FOLDER_ID]\/cmekSettings\" Example:
-- \"organizations\/12345\/cmekSettings\".Note: CMEK for the Logs Router
-- can currently only be configured for GCP organizations. Once configured,
-- it applies to all projects and folders in the GCP organization.
gcsName :: Lens' GetCmekSettings Text
gcsName = lens _gcsName (\ s a -> s{_gcsName = a})

-- | JSONP
gcsCallback :: Lens' GetCmekSettings (Maybe Text)
gcsCallback
  = lens _gcsCallback (\ s a -> s{_gcsCallback = a})

instance GoogleRequest GetCmekSettings where
        type Rs GetCmekSettings = CmekSettings
        type Scopes GetCmekSettings =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient GetCmekSettings'{..}
          = go _gcsName _gcsXgafv _gcsUploadProtocol
              _gcsAccessToken
              _gcsUploadType
              _gcsCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy GetCmekSettingsResource)
                      mempty
