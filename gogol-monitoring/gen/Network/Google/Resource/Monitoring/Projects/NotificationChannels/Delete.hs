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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notification channel.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.delete@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Delete
    (
    -- * REST Resource
      ProjectsNotificationChannelsDeleteResource

    -- * Creating a Request
    , projectsNotificationChannelsDelete
    , ProjectsNotificationChannelsDelete

    -- * Request Lenses
    , pncdXgafv
    , pncdUploadProtocol
    , pncdForce
    , pncdAccessToken
    , pncdUploadType
    , pncdName
    , pncdCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.delete@ method which the
-- 'ProjectsNotificationChannelsDelete' request conforms to.
type ProjectsNotificationChannelsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a notification channel.
--
-- /See:/ 'projectsNotificationChannelsDelete' smart constructor.
data ProjectsNotificationChannelsDelete =
  ProjectsNotificationChannelsDelete'
    { _pncdXgafv :: !(Maybe Xgafv)
    , _pncdUploadProtocol :: !(Maybe Text)
    , _pncdForce :: !(Maybe Bool)
    , _pncdAccessToken :: !(Maybe Text)
    , _pncdUploadType :: !(Maybe Text)
    , _pncdName :: !Text
    , _pncdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncdXgafv'
--
-- * 'pncdUploadProtocol'
--
-- * 'pncdForce'
--
-- * 'pncdAccessToken'
--
-- * 'pncdUploadType'
--
-- * 'pncdName'
--
-- * 'pncdCallback'
projectsNotificationChannelsDelete
    :: Text -- ^ 'pncdName'
    -> ProjectsNotificationChannelsDelete
projectsNotificationChannelsDelete pPncdName_ =
  ProjectsNotificationChannelsDelete'
    { _pncdXgafv = Nothing
    , _pncdUploadProtocol = Nothing
    , _pncdForce = Nothing
    , _pncdAccessToken = Nothing
    , _pncdUploadType = Nothing
    , _pncdName = pPncdName_
    , _pncdCallback = Nothing
    }


-- | V1 error format.
pncdXgafv :: Lens' ProjectsNotificationChannelsDelete (Maybe Xgafv)
pncdXgafv
  = lens _pncdXgafv (\ s a -> s{_pncdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncdUploadProtocol :: Lens' ProjectsNotificationChannelsDelete (Maybe Text)
pncdUploadProtocol
  = lens _pncdUploadProtocol
      (\ s a -> s{_pncdUploadProtocol = a})

-- | If true, the notification channel will be deleted regardless of its use
-- in alert policies (the policies will be updated to remove the channel).
-- If false, channels that are still referenced by an existing alerting
-- policy will fail to be deleted in a delete operation.
pncdForce :: Lens' ProjectsNotificationChannelsDelete (Maybe Bool)
pncdForce
  = lens _pncdForce (\ s a -> s{_pncdForce = a})

-- | OAuth access token.
pncdAccessToken :: Lens' ProjectsNotificationChannelsDelete (Maybe Text)
pncdAccessToken
  = lens _pncdAccessToken
      (\ s a -> s{_pncdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncdUploadType :: Lens' ProjectsNotificationChannelsDelete (Maybe Text)
pncdUploadType
  = lens _pncdUploadType
      (\ s a -> s{_pncdUploadType = a})

-- | Required. The channel for which to execute the request. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/notificationChannels\/[CHANNEL_ID]
pncdName :: Lens' ProjectsNotificationChannelsDelete Text
pncdName = lens _pncdName (\ s a -> s{_pncdName = a})

-- | JSONP
pncdCallback :: Lens' ProjectsNotificationChannelsDelete (Maybe Text)
pncdCallback
  = lens _pncdCallback (\ s a -> s{_pncdCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelsDelete
         where
        type Rs ProjectsNotificationChannelsDelete = Empty
        type Scopes ProjectsNotificationChannelsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsNotificationChannelsDelete'{..}
          = go _pncdName _pncdXgafv _pncdUploadProtocol
              _pncdForce
              _pncdAccessToken
              _pncdUploadType
              _pncdCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsDeleteResource)
                      mempty
