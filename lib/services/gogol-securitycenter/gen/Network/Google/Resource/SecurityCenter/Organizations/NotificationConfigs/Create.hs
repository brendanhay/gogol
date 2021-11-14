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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.create@.
module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Create
    (
    -- * REST Resource
      OrganizationsNotificationConfigsCreateResource

    -- * Creating a Request
    , organizationsNotificationConfigsCreate
    , OrganizationsNotificationConfigsCreate

    -- * Request Lenses
    , onccParent
    , onccXgafv
    , onccUploadProtocol
    , onccAccessToken
    , onccUploadType
    , onccPayload
    , onccConfigId
    , onccCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.create@ method which the
-- 'OrganizationsNotificationConfigsCreate' request conforms to.
type OrganizationsNotificationConfigsCreateResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "notificationConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "configId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NotificationConfig :>
                           Post '[JSON] NotificationConfig

-- | Creates a notification config.
--
-- /See:/ 'organizationsNotificationConfigsCreate' smart constructor.
data OrganizationsNotificationConfigsCreate =
  OrganizationsNotificationConfigsCreate'
    { _onccParent :: !Text
    , _onccXgafv :: !(Maybe Xgafv)
    , _onccUploadProtocol :: !(Maybe Text)
    , _onccAccessToken :: !(Maybe Text)
    , _onccUploadType :: !(Maybe Text)
    , _onccPayload :: !NotificationConfig
    , _onccConfigId :: !(Maybe Text)
    , _onccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsNotificationConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onccParent'
--
-- * 'onccXgafv'
--
-- * 'onccUploadProtocol'
--
-- * 'onccAccessToken'
--
-- * 'onccUploadType'
--
-- * 'onccPayload'
--
-- * 'onccConfigId'
--
-- * 'onccCallback'
organizationsNotificationConfigsCreate
    :: Text -- ^ 'onccParent'
    -> NotificationConfig -- ^ 'onccPayload'
    -> OrganizationsNotificationConfigsCreate
organizationsNotificationConfigsCreate pOnccParent_ pOnccPayload_ =
  OrganizationsNotificationConfigsCreate'
    { _onccParent = pOnccParent_
    , _onccXgafv = Nothing
    , _onccUploadProtocol = Nothing
    , _onccAccessToken = Nothing
    , _onccUploadType = Nothing
    , _onccPayload = pOnccPayload_
    , _onccConfigId = Nothing
    , _onccCallback = Nothing
    }


-- | Required. Resource name of the new notification config\'s parent. Its
-- format is \"organizations\/[organization_id]\".
onccParent :: Lens' OrganizationsNotificationConfigsCreate Text
onccParent
  = lens _onccParent (\ s a -> s{_onccParent = a})

-- | V1 error format.
onccXgafv :: Lens' OrganizationsNotificationConfigsCreate (Maybe Xgafv)
onccXgafv
  = lens _onccXgafv (\ s a -> s{_onccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
onccUploadProtocol :: Lens' OrganizationsNotificationConfigsCreate (Maybe Text)
onccUploadProtocol
  = lens _onccUploadProtocol
      (\ s a -> s{_onccUploadProtocol = a})

-- | OAuth access token.
onccAccessToken :: Lens' OrganizationsNotificationConfigsCreate (Maybe Text)
onccAccessToken
  = lens _onccAccessToken
      (\ s a -> s{_onccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
onccUploadType :: Lens' OrganizationsNotificationConfigsCreate (Maybe Text)
onccUploadType
  = lens _onccUploadType
      (\ s a -> s{_onccUploadType = a})

-- | Multipart request metadata.
onccPayload :: Lens' OrganizationsNotificationConfigsCreate NotificationConfig
onccPayload
  = lens _onccPayload (\ s a -> s{_onccPayload = a})

-- | Required. Unique identifier provided by the client within the parent
-- scope. It must be between 1 and 128 characters, and contains
-- alphanumeric characters, underscores or hyphens only.
onccConfigId :: Lens' OrganizationsNotificationConfigsCreate (Maybe Text)
onccConfigId
  = lens _onccConfigId (\ s a -> s{_onccConfigId = a})

-- | JSONP
onccCallback :: Lens' OrganizationsNotificationConfigsCreate (Maybe Text)
onccCallback
  = lens _onccCallback (\ s a -> s{_onccCallback = a})

instance GoogleRequest
           OrganizationsNotificationConfigsCreate
         where
        type Rs OrganizationsNotificationConfigsCreate =
             NotificationConfig
        type Scopes OrganizationsNotificationConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsNotificationConfigsCreate'{..}
          = go _onccParent _onccXgafv _onccUploadProtocol
              _onccAccessToken
              _onccUploadType
              _onccConfigId
              _onccCallback
              (Just AltJSON)
              _onccPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsNotificationConfigsCreateResource)
                      mempty
