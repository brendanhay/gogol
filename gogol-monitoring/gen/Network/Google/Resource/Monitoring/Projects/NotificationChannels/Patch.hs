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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification channel. Fields not specified in the field mask
-- remain unchanged.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.notificationChannels.patch@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Patch
    (
    -- * REST Resource
      ProjectsNotificationChannelsPatchResource

    -- * Creating a Request
    , projectsNotificationChannelsPatch
    , ProjectsNotificationChannelsPatch

    -- * Request Lenses
    , pncpXgafv
    , pncpUploadProtocol
    , pncpUpdateMask
    , pncpAccessToken
    , pncpUploadType
    , pncpPayload
    , pncpName
    , pncpCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.patch@ method which the
-- 'ProjectsNotificationChannelsPatch' request conforms to.
type ProjectsNotificationChannelsPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NotificationChannel :>
                         Patch '[JSON] NotificationChannel

-- | Updates a notification channel. Fields not specified in the field mask
-- remain unchanged.
--
-- /See:/ 'projectsNotificationChannelsPatch' smart constructor.
data ProjectsNotificationChannelsPatch = ProjectsNotificationChannelsPatch'
    { _pncpXgafv          :: !(Maybe Xgafv)
    , _pncpUploadProtocol :: !(Maybe Text)
    , _pncpUpdateMask     :: !(Maybe GFieldMask)
    , _pncpAccessToken    :: !(Maybe Text)
    , _pncpUploadType     :: !(Maybe Text)
    , _pncpPayload        :: !NotificationChannel
    , _pncpName           :: !Text
    , _pncpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsNotificationChannelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncpXgafv'
--
-- * 'pncpUploadProtocol'
--
-- * 'pncpUpdateMask'
--
-- * 'pncpAccessToken'
--
-- * 'pncpUploadType'
--
-- * 'pncpPayload'
--
-- * 'pncpName'
--
-- * 'pncpCallback'
projectsNotificationChannelsPatch
    :: NotificationChannel -- ^ 'pncpPayload'
    -> Text -- ^ 'pncpName'
    -> ProjectsNotificationChannelsPatch
projectsNotificationChannelsPatch pPncpPayload_ pPncpName_ =
    ProjectsNotificationChannelsPatch'
    { _pncpXgafv = Nothing
    , _pncpUploadProtocol = Nothing
    , _pncpUpdateMask = Nothing
    , _pncpAccessToken = Nothing
    , _pncpUploadType = Nothing
    , _pncpPayload = pPncpPayload_
    , _pncpName = pPncpName_
    , _pncpCallback = Nothing
    }

-- | V1 error format.
pncpXgafv :: Lens' ProjectsNotificationChannelsPatch (Maybe Xgafv)
pncpXgafv
  = lens _pncpXgafv (\ s a -> s{_pncpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncpUploadProtocol :: Lens' ProjectsNotificationChannelsPatch (Maybe Text)
pncpUploadProtocol
  = lens _pncpUploadProtocol
      (\ s a -> s{_pncpUploadProtocol = a})

-- | The fields to update.
pncpUpdateMask :: Lens' ProjectsNotificationChannelsPatch (Maybe GFieldMask)
pncpUpdateMask
  = lens _pncpUpdateMask
      (\ s a -> s{_pncpUpdateMask = a})

-- | OAuth access token.
pncpAccessToken :: Lens' ProjectsNotificationChannelsPatch (Maybe Text)
pncpAccessToken
  = lens _pncpAccessToken
      (\ s a -> s{_pncpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncpUploadType :: Lens' ProjectsNotificationChannelsPatch (Maybe Text)
pncpUploadType
  = lens _pncpUploadType
      (\ s a -> s{_pncpUploadType = a})

-- | Multipart request metadata.
pncpPayload :: Lens' ProjectsNotificationChannelsPatch NotificationChannel
pncpPayload
  = lens _pncpPayload (\ s a -> s{_pncpPayload = a})

-- | The full REST resource name for this channel. The syntax is:
-- projects\/[PROJECT_ID]\/notificationChannels\/[CHANNEL_ID] The
-- [CHANNEL_ID] is automatically assigned by the server on creation.
pncpName :: Lens' ProjectsNotificationChannelsPatch Text
pncpName = lens _pncpName (\ s a -> s{_pncpName = a})

-- | JSONP
pncpCallback :: Lens' ProjectsNotificationChannelsPatch (Maybe Text)
pncpCallback
  = lens _pncpCallback (\ s a -> s{_pncpCallback = a})

instance GoogleRequest
         ProjectsNotificationChannelsPatch where
        type Rs ProjectsNotificationChannelsPatch =
             NotificationChannel
        type Scopes ProjectsNotificationChannelsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsNotificationChannelsPatch'{..}
          = go _pncpName _pncpXgafv _pncpUploadProtocol
              _pncpUpdateMask
              _pncpAccessToken
              _pncpUploadType
              _pncpCallback
              (Just AltJSON)
              _pncpPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsPatchResource)
                      mempty
