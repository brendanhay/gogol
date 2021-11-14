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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification config. The following update fields are allowed:
-- description, pubsub_topic, streaming_config.filter
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.patch@.
module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Patch
    (
    -- * REST Resource
      OrganizationsNotificationConfigsPatchResource

    -- * Creating a Request
    , organizationsNotificationConfigsPatch
    , OrganizationsNotificationConfigsPatch

    -- * Request Lenses
    , oncpXgafv
    , oncpUploadProtocol
    , oncpUpdateMask
    , oncpAccessToken
    , oncpUploadType
    , oncpPayload
    , oncpName
    , oncpCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.patch@ method which the
-- 'OrganizationsNotificationConfigsPatch' request conforms to.
type OrganizationsNotificationConfigsPatchResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NotificationConfig :>
                         Patch '[JSON] NotificationConfig

-- | Updates a notification config. The following update fields are allowed:
-- description, pubsub_topic, streaming_config.filter
--
-- /See:/ 'organizationsNotificationConfigsPatch' smart constructor.
data OrganizationsNotificationConfigsPatch =
  OrganizationsNotificationConfigsPatch'
    { _oncpXgafv :: !(Maybe Xgafv)
    , _oncpUploadProtocol :: !(Maybe Text)
    , _oncpUpdateMask :: !(Maybe GFieldMask)
    , _oncpAccessToken :: !(Maybe Text)
    , _oncpUploadType :: !(Maybe Text)
    , _oncpPayload :: !NotificationConfig
    , _oncpName :: !Text
    , _oncpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsNotificationConfigsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oncpXgafv'
--
-- * 'oncpUploadProtocol'
--
-- * 'oncpUpdateMask'
--
-- * 'oncpAccessToken'
--
-- * 'oncpUploadType'
--
-- * 'oncpPayload'
--
-- * 'oncpName'
--
-- * 'oncpCallback'
organizationsNotificationConfigsPatch
    :: NotificationConfig -- ^ 'oncpPayload'
    -> Text -- ^ 'oncpName'
    -> OrganizationsNotificationConfigsPatch
organizationsNotificationConfigsPatch pOncpPayload_ pOncpName_ =
  OrganizationsNotificationConfigsPatch'
    { _oncpXgafv = Nothing
    , _oncpUploadProtocol = Nothing
    , _oncpUpdateMask = Nothing
    , _oncpAccessToken = Nothing
    , _oncpUploadType = Nothing
    , _oncpPayload = pOncpPayload_
    , _oncpName = pOncpName_
    , _oncpCallback = Nothing
    }


-- | V1 error format.
oncpXgafv :: Lens' OrganizationsNotificationConfigsPatch (Maybe Xgafv)
oncpXgafv
  = lens _oncpXgafv (\ s a -> s{_oncpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oncpUploadProtocol :: Lens' OrganizationsNotificationConfigsPatch (Maybe Text)
oncpUploadProtocol
  = lens _oncpUploadProtocol
      (\ s a -> s{_oncpUploadProtocol = a})

-- | The FieldMask to use when updating the notification config. If empty all
-- mutable fields will be updated.
oncpUpdateMask :: Lens' OrganizationsNotificationConfigsPatch (Maybe GFieldMask)
oncpUpdateMask
  = lens _oncpUpdateMask
      (\ s a -> s{_oncpUpdateMask = a})

-- | OAuth access token.
oncpAccessToken :: Lens' OrganizationsNotificationConfigsPatch (Maybe Text)
oncpAccessToken
  = lens _oncpAccessToken
      (\ s a -> s{_oncpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oncpUploadType :: Lens' OrganizationsNotificationConfigsPatch (Maybe Text)
oncpUploadType
  = lens _oncpUploadType
      (\ s a -> s{_oncpUploadType = a})

-- | Multipart request metadata.
oncpPayload :: Lens' OrganizationsNotificationConfigsPatch NotificationConfig
oncpPayload
  = lens _oncpPayload (\ s a -> s{_oncpPayload = a})

-- | The relative resource name of this notification config. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example:
-- \"organizations\/{organization_id}\/notificationConfigs\/notify_public_bucket\".
oncpName :: Lens' OrganizationsNotificationConfigsPatch Text
oncpName = lens _oncpName (\ s a -> s{_oncpName = a})

-- | JSONP
oncpCallback :: Lens' OrganizationsNotificationConfigsPatch (Maybe Text)
oncpCallback
  = lens _oncpCallback (\ s a -> s{_oncpCallback = a})

instance GoogleRequest
           OrganizationsNotificationConfigsPatch
         where
        type Rs OrganizationsNotificationConfigsPatch =
             NotificationConfig
        type Scopes OrganizationsNotificationConfigsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsNotificationConfigsPatch'{..}
          = go _oncpName _oncpXgafv _oncpUploadProtocol
              _oncpUpdateMask
              _oncpAccessToken
              _oncpUploadType
              _oncpCallback
              (Just AltJSON)
              _oncpPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsNotificationConfigsPatchResource)
                      mempty
