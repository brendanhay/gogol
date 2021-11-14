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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single notification channel. The channel includes the relevant
-- configuration details with which the channel was created. However, the
-- response may truncate or omit passwords, API keys, or other private key
-- matter and thus the response may not be 100% identical to the
-- information that was supplied in the call to the create method.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.get@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Get
    (
    -- * REST Resource
      ProjectsNotificationChannelsGetResource

    -- * Creating a Request
    , projectsNotificationChannelsGet
    , ProjectsNotificationChannelsGet

    -- * Request Lenses
    , pncgXgafv
    , pncgUploadProtocol
    , pncgAccessToken
    , pncgUploadType
    , pncgName
    , pncgCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.get@ method which the
-- 'ProjectsNotificationChannelsGet' request conforms to.
type ProjectsNotificationChannelsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] NotificationChannel

-- | Gets a single notification channel. The channel includes the relevant
-- configuration details with which the channel was created. However, the
-- response may truncate or omit passwords, API keys, or other private key
-- matter and thus the response may not be 100% identical to the
-- information that was supplied in the call to the create method.
--
-- /See:/ 'projectsNotificationChannelsGet' smart constructor.
data ProjectsNotificationChannelsGet =
  ProjectsNotificationChannelsGet'
    { _pncgXgafv :: !(Maybe Xgafv)
    , _pncgUploadProtocol :: !(Maybe Text)
    , _pncgAccessToken :: !(Maybe Text)
    , _pncgUploadType :: !(Maybe Text)
    , _pncgName :: !Text
    , _pncgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncgXgafv'
--
-- * 'pncgUploadProtocol'
--
-- * 'pncgAccessToken'
--
-- * 'pncgUploadType'
--
-- * 'pncgName'
--
-- * 'pncgCallback'
projectsNotificationChannelsGet
    :: Text -- ^ 'pncgName'
    -> ProjectsNotificationChannelsGet
projectsNotificationChannelsGet pPncgName_ =
  ProjectsNotificationChannelsGet'
    { _pncgXgafv = Nothing
    , _pncgUploadProtocol = Nothing
    , _pncgAccessToken = Nothing
    , _pncgUploadType = Nothing
    , _pncgName = pPncgName_
    , _pncgCallback = Nothing
    }


-- | V1 error format.
pncgXgafv :: Lens' ProjectsNotificationChannelsGet (Maybe Xgafv)
pncgXgafv
  = lens _pncgXgafv (\ s a -> s{_pncgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncgUploadProtocol :: Lens' ProjectsNotificationChannelsGet (Maybe Text)
pncgUploadProtocol
  = lens _pncgUploadProtocol
      (\ s a -> s{_pncgUploadProtocol = a})

-- | OAuth access token.
pncgAccessToken :: Lens' ProjectsNotificationChannelsGet (Maybe Text)
pncgAccessToken
  = lens _pncgAccessToken
      (\ s a -> s{_pncgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncgUploadType :: Lens' ProjectsNotificationChannelsGet (Maybe Text)
pncgUploadType
  = lens _pncgUploadType
      (\ s a -> s{_pncgUploadType = a})

-- | Required. The channel for which to execute the request. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannels\/[CHANNEL_ID]
pncgName :: Lens' ProjectsNotificationChannelsGet Text
pncgName = lens _pncgName (\ s a -> s{_pncgName = a})

-- | JSONP
pncgCallback :: Lens' ProjectsNotificationChannelsGet (Maybe Text)
pncgCallback
  = lens _pncgCallback (\ s a -> s{_pncgCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelsGet
         where
        type Rs ProjectsNotificationChannelsGet =
             NotificationChannel
        type Scopes ProjectsNotificationChannelsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsNotificationChannelsGet'{..}
          = go _pncgName _pncgXgafv _pncgUploadProtocol
              _pncgAccessToken
              _pncgUploadType
              _pncgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsGetResource)
                      mempty
