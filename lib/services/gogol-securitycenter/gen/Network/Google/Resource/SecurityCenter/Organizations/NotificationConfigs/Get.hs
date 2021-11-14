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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.get@.
module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Get
    (
    -- * REST Resource
      OrganizationsNotificationConfigsGetResource

    -- * Creating a Request
    , organizationsNotificationConfigsGet
    , OrganizationsNotificationConfigsGet

    -- * Request Lenses
    , oncgXgafv
    , oncgUploadProtocol
    , oncgAccessToken
    , oncgUploadType
    , oncgName
    , oncgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.get@ method which the
-- 'OrganizationsNotificationConfigsGet' request conforms to.
type OrganizationsNotificationConfigsGetResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] NotificationConfig

-- | Gets a notification config.
--
-- /See:/ 'organizationsNotificationConfigsGet' smart constructor.
data OrganizationsNotificationConfigsGet =
  OrganizationsNotificationConfigsGet'
    { _oncgXgafv :: !(Maybe Xgafv)
    , _oncgUploadProtocol :: !(Maybe Text)
    , _oncgAccessToken :: !(Maybe Text)
    , _oncgUploadType :: !(Maybe Text)
    , _oncgName :: !Text
    , _oncgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsNotificationConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oncgXgafv'
--
-- * 'oncgUploadProtocol'
--
-- * 'oncgAccessToken'
--
-- * 'oncgUploadType'
--
-- * 'oncgName'
--
-- * 'oncgCallback'
organizationsNotificationConfigsGet
    :: Text -- ^ 'oncgName'
    -> OrganizationsNotificationConfigsGet
organizationsNotificationConfigsGet pOncgName_ =
  OrganizationsNotificationConfigsGet'
    { _oncgXgafv = Nothing
    , _oncgUploadProtocol = Nothing
    , _oncgAccessToken = Nothing
    , _oncgUploadType = Nothing
    , _oncgName = pOncgName_
    , _oncgCallback = Nothing
    }


-- | V1 error format.
oncgXgafv :: Lens' OrganizationsNotificationConfigsGet (Maybe Xgafv)
oncgXgafv
  = lens _oncgXgafv (\ s a -> s{_oncgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oncgUploadProtocol :: Lens' OrganizationsNotificationConfigsGet (Maybe Text)
oncgUploadProtocol
  = lens _oncgUploadProtocol
      (\ s a -> s{_oncgUploadProtocol = a})

-- | OAuth access token.
oncgAccessToken :: Lens' OrganizationsNotificationConfigsGet (Maybe Text)
oncgAccessToken
  = lens _oncgAccessToken
      (\ s a -> s{_oncgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oncgUploadType :: Lens' OrganizationsNotificationConfigsGet (Maybe Text)
oncgUploadType
  = lens _oncgUploadType
      (\ s a -> s{_oncgUploadType = a})

-- | Required. Name of the notification config to get. Its format is
-- \"organizations\/[organization_id]\/notificationConfigs\/[config_id]\".
oncgName :: Lens' OrganizationsNotificationConfigsGet Text
oncgName = lens _oncgName (\ s a -> s{_oncgName = a})

-- | JSONP
oncgCallback :: Lens' OrganizationsNotificationConfigsGet (Maybe Text)
oncgCallback
  = lens _oncgCallback (\ s a -> s{_oncgCallback = a})

instance GoogleRequest
           OrganizationsNotificationConfigsGet
         where
        type Rs OrganizationsNotificationConfigsGet =
             NotificationConfig
        type Scopes OrganizationsNotificationConfigsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsNotificationConfigsGet'{..}
          = go _oncgName _oncgXgafv _oncgUploadProtocol
              _oncgAccessToken
              _oncgUploadType
              _oncgCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsNotificationConfigsGetResource)
                      mempty
