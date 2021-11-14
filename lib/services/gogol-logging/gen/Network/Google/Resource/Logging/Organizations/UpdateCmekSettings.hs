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
-- Module      : Network.Google.Resource.Logging.Organizations.UpdateCmekSettings
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.updateCmekSettings@.
module Network.Google.Resource.Logging.Organizations.UpdateCmekSettings
    (
    -- * REST Resource
      OrganizationsUpdateCmekSettingsResource

    -- * Creating a Request
    , organizationsUpdateCmekSettings
    , OrganizationsUpdateCmekSettings

    -- * Request Lenses
    , oucsXgafv
    , oucsUploadProtocol
    , oucsUpdateMask
    , oucsAccessToken
    , oucsUploadType
    , oucsPayload
    , oucsName
    , oucsCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.updateCmekSettings@ method which the
-- 'OrganizationsUpdateCmekSettings' request conforms to.
type OrganizationsUpdateCmekSettingsResource =
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
-- /See:/ 'organizationsUpdateCmekSettings' smart constructor.
data OrganizationsUpdateCmekSettings =
  OrganizationsUpdateCmekSettings'
    { _oucsXgafv :: !(Maybe Xgafv)
    , _oucsUploadProtocol :: !(Maybe Text)
    , _oucsUpdateMask :: !(Maybe GFieldMask)
    , _oucsAccessToken :: !(Maybe Text)
    , _oucsUploadType :: !(Maybe Text)
    , _oucsPayload :: !CmekSettings
    , _oucsName :: !Text
    , _oucsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsUpdateCmekSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oucsXgafv'
--
-- * 'oucsUploadProtocol'
--
-- * 'oucsUpdateMask'
--
-- * 'oucsAccessToken'
--
-- * 'oucsUploadType'
--
-- * 'oucsPayload'
--
-- * 'oucsName'
--
-- * 'oucsCallback'
organizationsUpdateCmekSettings
    :: CmekSettings -- ^ 'oucsPayload'
    -> Text -- ^ 'oucsName'
    -> OrganizationsUpdateCmekSettings
organizationsUpdateCmekSettings pOucsPayload_ pOucsName_ =
  OrganizationsUpdateCmekSettings'
    { _oucsXgafv = Nothing
    , _oucsUploadProtocol = Nothing
    , _oucsUpdateMask = Nothing
    , _oucsAccessToken = Nothing
    , _oucsUploadType = Nothing
    , _oucsPayload = pOucsPayload_
    , _oucsName = pOucsName_
    , _oucsCallback = Nothing
    }


-- | V1 error format.
oucsXgafv :: Lens' OrganizationsUpdateCmekSettings (Maybe Xgafv)
oucsXgafv
  = lens _oucsXgafv (\ s a -> s{_oucsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oucsUploadProtocol :: Lens' OrganizationsUpdateCmekSettings (Maybe Text)
oucsUploadProtocol
  = lens _oucsUploadProtocol
      (\ s a -> s{_oucsUploadProtocol = a})

-- | Optional. Field mask identifying which fields from cmek_settings should
-- be updated. A field will be overwritten if and only if it is in the
-- update mask. Output only fields cannot be updated.See FieldMask for more
-- information.Example: \"updateMask=kmsKeyName\"
oucsUpdateMask :: Lens' OrganizationsUpdateCmekSettings (Maybe GFieldMask)
oucsUpdateMask
  = lens _oucsUpdateMask
      (\ s a -> s{_oucsUpdateMask = a})

-- | OAuth access token.
oucsAccessToken :: Lens' OrganizationsUpdateCmekSettings (Maybe Text)
oucsAccessToken
  = lens _oucsAccessToken
      (\ s a -> s{_oucsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oucsUploadType :: Lens' OrganizationsUpdateCmekSettings (Maybe Text)
oucsUploadType
  = lens _oucsUploadType
      (\ s a -> s{_oucsUploadType = a})

-- | Multipart request metadata.
oucsPayload :: Lens' OrganizationsUpdateCmekSettings CmekSettings
oucsPayload
  = lens _oucsPayload (\ s a -> s{_oucsPayload = a})

-- | Required. The resource name for the CMEK settings to update.
-- \"projects\/[PROJECT_ID]\/cmekSettings\"
-- \"organizations\/[ORGANIZATION_ID]\/cmekSettings\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/cmekSettings\"
-- \"folders\/[FOLDER_ID]\/cmekSettings\" Example:
-- \"organizations\/12345\/cmekSettings\".Note: CMEK for the Logs Router
-- can currently only be configured for GCP organizations. Once configured,
-- it applies to all projects and folders in the GCP organization.
oucsName :: Lens' OrganizationsUpdateCmekSettings Text
oucsName = lens _oucsName (\ s a -> s{_oucsName = a})

-- | JSONP
oucsCallback :: Lens' OrganizationsUpdateCmekSettings (Maybe Text)
oucsCallback
  = lens _oucsCallback (\ s a -> s{_oucsCallback = a})

instance GoogleRequest
           OrganizationsUpdateCmekSettings
         where
        type Rs OrganizationsUpdateCmekSettings =
             CmekSettings
        type Scopes OrganizationsUpdateCmekSettings =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsUpdateCmekSettings'{..}
          = go _oucsName _oucsXgafv _oucsUploadProtocol
              _oucsUpdateMask
              _oucsAccessToken
              _oucsUploadType
              _oucsCallback
              (Just AltJSON)
              _oucsPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsUpdateCmekSettingsResource)
                      mempty
