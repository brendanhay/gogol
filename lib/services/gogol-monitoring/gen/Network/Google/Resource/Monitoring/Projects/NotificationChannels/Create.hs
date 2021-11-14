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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new notification channel, representing a single notification
-- endpoint such as an email address, SMS number, or PagerDuty service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.create@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Create
    (
    -- * REST Resource
      ProjectsNotificationChannelsCreateResource

    -- * Creating a Request
    , projectsNotificationChannelsCreate
    , ProjectsNotificationChannelsCreate

    -- * Request Lenses
    , pnccXgafv
    , pnccUploadProtocol
    , pnccAccessToken
    , pnccUploadType
    , pnccPayload
    , pnccName
    , pnccCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.create@ method which the
-- 'ProjectsNotificationChannelsCreate' request conforms to.
type ProjectsNotificationChannelsCreateResource =
     "v3" :>
       Capture "name" Text :>
         "notificationChannels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NotificationChannel :>
                         Post '[JSON] NotificationChannel

-- | Creates a new notification channel, representing a single notification
-- endpoint such as an email address, SMS number, or PagerDuty service.
--
-- /See:/ 'projectsNotificationChannelsCreate' smart constructor.
data ProjectsNotificationChannelsCreate =
  ProjectsNotificationChannelsCreate'
    { _pnccXgafv :: !(Maybe Xgafv)
    , _pnccUploadProtocol :: !(Maybe Text)
    , _pnccAccessToken :: !(Maybe Text)
    , _pnccUploadType :: !(Maybe Text)
    , _pnccPayload :: !NotificationChannel
    , _pnccName :: !Text
    , _pnccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnccXgafv'
--
-- * 'pnccUploadProtocol'
--
-- * 'pnccAccessToken'
--
-- * 'pnccUploadType'
--
-- * 'pnccPayload'
--
-- * 'pnccName'
--
-- * 'pnccCallback'
projectsNotificationChannelsCreate
    :: NotificationChannel -- ^ 'pnccPayload'
    -> Text -- ^ 'pnccName'
    -> ProjectsNotificationChannelsCreate
projectsNotificationChannelsCreate pPnccPayload_ pPnccName_ =
  ProjectsNotificationChannelsCreate'
    { _pnccXgafv = Nothing
    , _pnccUploadProtocol = Nothing
    , _pnccAccessToken = Nothing
    , _pnccUploadType = Nothing
    , _pnccPayload = pPnccPayload_
    , _pnccName = pPnccName_
    , _pnccCallback = Nothing
    }


-- | V1 error format.
pnccXgafv :: Lens' ProjectsNotificationChannelsCreate (Maybe Xgafv)
pnccXgafv
  = lens _pnccXgafv (\ s a -> s{_pnccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnccUploadProtocol :: Lens' ProjectsNotificationChannelsCreate (Maybe Text)
pnccUploadProtocol
  = lens _pnccUploadProtocol
      (\ s a -> s{_pnccUploadProtocol = a})

-- | OAuth access token.
pnccAccessToken :: Lens' ProjectsNotificationChannelsCreate (Maybe Text)
pnccAccessToken
  = lens _pnccAccessToken
      (\ s a -> s{_pnccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnccUploadType :: Lens' ProjectsNotificationChannelsCreate (Maybe Text)
pnccUploadType
  = lens _pnccUploadType
      (\ s a -> s{_pnccUploadType = a})

-- | Multipart request metadata.
pnccPayload :: Lens' ProjectsNotificationChannelsCreate NotificationChannel
pnccPayload
  = lens _pnccPayload (\ s a -> s{_pnccPayload = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) on which
-- to execute the request. The format is: projects\/[PROJECT_ID_OR_NUMBER]
-- This names the container into which the channel will be written, this
-- does not name the newly created channel. The resulting channel\'s name
-- will have a normalized version of this field as a prefix, but will add
-- \/notificationChannels\/[CHANNEL_ID] to identify the channel.
pnccName :: Lens' ProjectsNotificationChannelsCreate Text
pnccName = lens _pnccName (\ s a -> s{_pnccName = a})

-- | JSONP
pnccCallback :: Lens' ProjectsNotificationChannelsCreate (Maybe Text)
pnccCallback
  = lens _pnccCallback (\ s a -> s{_pnccCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelsCreate
         where
        type Rs ProjectsNotificationChannelsCreate =
             NotificationChannel
        type Scopes ProjectsNotificationChannelsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsNotificationChannelsCreate'{..}
          = go _pnccName _pnccXgafv _pnccUploadProtocol
              _pnccAccessToken
              _pnccUploadType
              _pnccCallback
              (Just AltJSON)
              _pnccPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsCreateResource)
                      mempty
