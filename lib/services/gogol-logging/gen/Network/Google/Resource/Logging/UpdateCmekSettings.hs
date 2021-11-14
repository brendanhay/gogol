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
-- Module      : Network.Google.Resource.Logging.UpdateCmekSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Logs Router CMEK settings for the given resource.Note: CMEK
-- for the Logs Router can currently only be configured for GCP
-- organizations. Once configured, it applies to all projects and folders
-- in the GCP organization.UpdateCmekSettings will fail if 1) kms_key_name
-- is invalid, or 2) the associated service account does not have the
-- required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for
-- the key, or 3) access to the key is disabled.See Enabling CMEK for Logs
-- Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.updateCmekSettings@.
module Network.Google.Resource.Logging.UpdateCmekSettings
    (
    -- * REST Resource
      UpdateCmekSettingsResource

    -- * Creating a Request
    , updateCmekSettings
    , UpdateCmekSettings

    -- * Request Lenses
    , ucsXgafv
    , ucsUploadProtocol
    , ucsUpdateMask
    , ucsAccessToken
    , ucsUploadType
    , ucsPayload
    , ucsName
    , ucsCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.updateCmekSettings@ method which the
-- 'UpdateCmekSettings' request conforms to.
type UpdateCmekSettingsResource =
     "v2" :>
       Capture "name" Text :>
         "cmekSettings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CmekSettings :>
                           Patch '[JSON] CmekSettings

-- | Updates the Logs Router CMEK settings for the given resource.Note: CMEK
-- for the Logs Router can currently only be configured for GCP
-- organizations. Once configured, it applies to all projects and folders
-- in the GCP organization.UpdateCmekSettings will fail if 1) kms_key_name
-- is invalid, or 2) the associated service account does not have the
-- required roles\/cloudkms.cryptoKeyEncrypterDecrypter role assigned for
-- the key, or 3) access to the key is disabled.See Enabling CMEK for Logs
-- Router
-- (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption)
-- for more information.
--
-- /See:/ 'updateCmekSettings' smart constructor.
data UpdateCmekSettings =
  UpdateCmekSettings'
    { _ucsXgafv :: !(Maybe Xgafv)
    , _ucsUploadProtocol :: !(Maybe Text)
    , _ucsUpdateMask :: !(Maybe GFieldMask)
    , _ucsAccessToken :: !(Maybe Text)
    , _ucsUploadType :: !(Maybe Text)
    , _ucsPayload :: !CmekSettings
    , _ucsName :: !Text
    , _ucsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateCmekSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsXgafv'
--
-- * 'ucsUploadProtocol'
--
-- * 'ucsUpdateMask'
--
-- * 'ucsAccessToken'
--
-- * 'ucsUploadType'
--
-- * 'ucsPayload'
--
-- * 'ucsName'
--
-- * 'ucsCallback'
updateCmekSettings
    :: CmekSettings -- ^ 'ucsPayload'
    -> Text -- ^ 'ucsName'
    -> UpdateCmekSettings
updateCmekSettings pUcsPayload_ pUcsName_ =
  UpdateCmekSettings'
    { _ucsXgafv = Nothing
    , _ucsUploadProtocol = Nothing
    , _ucsUpdateMask = Nothing
    , _ucsAccessToken = Nothing
    , _ucsUploadType = Nothing
    , _ucsPayload = pUcsPayload_
    , _ucsName = pUcsName_
    , _ucsCallback = Nothing
    }


-- | V1 error format.
ucsXgafv :: Lens' UpdateCmekSettings (Maybe Xgafv)
ucsXgafv = lens _ucsXgafv (\ s a -> s{_ucsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ucsUploadProtocol :: Lens' UpdateCmekSettings (Maybe Text)
ucsUploadProtocol
  = lens _ucsUploadProtocol
      (\ s a -> s{_ucsUploadProtocol = a})

-- | Optional. Field mask identifying which fields from cmek_settings should
-- be updated. A field will be overwritten if and only if it is in the
-- update mask. Output only fields cannot be updated.See FieldMask for more
-- information.Example: \"updateMask=kmsKeyName\"
ucsUpdateMask :: Lens' UpdateCmekSettings (Maybe GFieldMask)
ucsUpdateMask
  = lens _ucsUpdateMask
      (\ s a -> s{_ucsUpdateMask = a})

-- | OAuth access token.
ucsAccessToken :: Lens' UpdateCmekSettings (Maybe Text)
ucsAccessToken
  = lens _ucsAccessToken
      (\ s a -> s{_ucsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ucsUploadType :: Lens' UpdateCmekSettings (Maybe Text)
ucsUploadType
  = lens _ucsUploadType
      (\ s a -> s{_ucsUploadType = a})

-- | Multipart request metadata.
ucsPayload :: Lens' UpdateCmekSettings CmekSettings
ucsPayload
  = lens _ucsPayload (\ s a -> s{_ucsPayload = a})

-- | Required. The resource name for the CMEK settings to update.
-- \"projects\/[PROJECT_ID]\/cmekSettings\"
-- \"organizations\/[ORGANIZATION_ID]\/cmekSettings\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/cmekSettings\"
-- \"folders\/[FOLDER_ID]\/cmekSettings\" Example:
-- \"organizations\/12345\/cmekSettings\".Note: CMEK for the Logs Router
-- can currently only be configured for GCP organizations. Once configured,
-- it applies to all projects and folders in the GCP organization.
ucsName :: Lens' UpdateCmekSettings Text
ucsName = lens _ucsName (\ s a -> s{_ucsName = a})

-- | JSONP
ucsCallback :: Lens' UpdateCmekSettings (Maybe Text)
ucsCallback
  = lens _ucsCallback (\ s a -> s{_ucsCallback = a})

instance GoogleRequest UpdateCmekSettings where
        type Rs UpdateCmekSettings = CmekSettings
        type Scopes UpdateCmekSettings =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient UpdateCmekSettings'{..}
          = go _ucsName _ucsXgafv _ucsUploadProtocol
              _ucsUpdateMask
              _ucsAccessToken
              _ucsUploadType
              _ucsCallback
              (Just AltJSON)
              _ucsPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy UpdateCmekSettingsResource)
                      mempty
