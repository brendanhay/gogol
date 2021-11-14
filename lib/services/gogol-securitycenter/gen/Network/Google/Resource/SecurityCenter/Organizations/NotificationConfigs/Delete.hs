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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.delete@.
module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Delete
    (
    -- * REST Resource
      OrganizationsNotificationConfigsDeleteResource

    -- * Creating a Request
    , organizationsNotificationConfigsDelete
    , OrganizationsNotificationConfigsDelete

    -- * Request Lenses
    , oncdXgafv
    , oncdUploadProtocol
    , oncdAccessToken
    , oncdUploadType
    , oncdName
    , oncdCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.delete@ method which the
-- 'OrganizationsNotificationConfigsDelete' request conforms to.
type OrganizationsNotificationConfigsDeleteResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a notification config.
--
-- /See:/ 'organizationsNotificationConfigsDelete' smart constructor.
data OrganizationsNotificationConfigsDelete =
  OrganizationsNotificationConfigsDelete'
    { _oncdXgafv :: !(Maybe Xgafv)
    , _oncdUploadProtocol :: !(Maybe Text)
    , _oncdAccessToken :: !(Maybe Text)
    , _oncdUploadType :: !(Maybe Text)
    , _oncdName :: !Text
    , _oncdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsNotificationConfigsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oncdXgafv'
--
-- * 'oncdUploadProtocol'
--
-- * 'oncdAccessToken'
--
-- * 'oncdUploadType'
--
-- * 'oncdName'
--
-- * 'oncdCallback'
organizationsNotificationConfigsDelete
    :: Text -- ^ 'oncdName'
    -> OrganizationsNotificationConfigsDelete
organizationsNotificationConfigsDelete pOncdName_ =
  OrganizationsNotificationConfigsDelete'
    { _oncdXgafv = Nothing
    , _oncdUploadProtocol = Nothing
    , _oncdAccessToken = Nothing
    , _oncdUploadType = Nothing
    , _oncdName = pOncdName_
    , _oncdCallback = Nothing
    }


-- | V1 error format.
oncdXgafv :: Lens' OrganizationsNotificationConfigsDelete (Maybe Xgafv)
oncdXgafv
  = lens _oncdXgafv (\ s a -> s{_oncdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oncdUploadProtocol :: Lens' OrganizationsNotificationConfigsDelete (Maybe Text)
oncdUploadProtocol
  = lens _oncdUploadProtocol
      (\ s a -> s{_oncdUploadProtocol = a})

-- | OAuth access token.
oncdAccessToken :: Lens' OrganizationsNotificationConfigsDelete (Maybe Text)
oncdAccessToken
  = lens _oncdAccessToken
      (\ s a -> s{_oncdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oncdUploadType :: Lens' OrganizationsNotificationConfigsDelete (Maybe Text)
oncdUploadType
  = lens _oncdUploadType
      (\ s a -> s{_oncdUploadType = a})

-- | Required. Name of the notification config to delete. Its format is
-- \"organizations\/[organization_id]\/notificationConfigs\/[config_id]\".
oncdName :: Lens' OrganizationsNotificationConfigsDelete Text
oncdName = lens _oncdName (\ s a -> s{_oncdName = a})

-- | JSONP
oncdCallback :: Lens' OrganizationsNotificationConfigsDelete (Maybe Text)
oncdCallback
  = lens _oncdCallback (\ s a -> s{_oncdCallback = a})

instance GoogleRequest
           OrganizationsNotificationConfigsDelete
         where
        type Rs OrganizationsNotificationConfigsDelete =
             Empty
        type Scopes OrganizationsNotificationConfigsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsNotificationConfigsDelete'{..}
          = go _oncdName _oncdXgafv _oncdUploadProtocol
              _oncdAccessToken
              _oncdUploadType
              _oncdCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsNotificationConfigsDeleteResource)
                      mempty
