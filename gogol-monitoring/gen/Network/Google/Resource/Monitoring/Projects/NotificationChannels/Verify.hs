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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.Verify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies a NotificationChannel by proving receipt of the code delivered
-- to the channel as a result of calling
-- SendNotificationChannelVerificationCode.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.notificationChannels.verify@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.Verify
    (
    -- * REST Resource
      ProjectsNotificationChannelsVerifyResource

    -- * Creating a Request
    , projectsNotificationChannelsVerify
    , ProjectsNotificationChannelsVerify

    -- * Request Lenses
    , pncvXgafv
    , pncvUploadProtocol
    , pncvAccessToken
    , pncvUploadType
    , pncvPayload
    , pncvName
    , pncvCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.verify@ method which the
-- 'ProjectsNotificationChannelsVerify' request conforms to.
type ProjectsNotificationChannelsVerifyResource =
     "v3" :>
       CaptureMode "name" "verify" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] VerifyNotificationChannelRequest :>
                       Post '[JSON] NotificationChannel

-- | Verifies a NotificationChannel by proving receipt of the code delivered
-- to the channel as a result of calling
-- SendNotificationChannelVerificationCode.
--
-- /See:/ 'projectsNotificationChannelsVerify' smart constructor.
data ProjectsNotificationChannelsVerify = ProjectsNotificationChannelsVerify'
    { _pncvXgafv          :: !(Maybe Xgafv)
    , _pncvUploadProtocol :: !(Maybe Text)
    , _pncvAccessToken    :: !(Maybe Text)
    , _pncvUploadType     :: !(Maybe Text)
    , _pncvPayload        :: !VerifyNotificationChannelRequest
    , _pncvName           :: !Text
    , _pncvCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsNotificationChannelsVerify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncvXgafv'
--
-- * 'pncvUploadProtocol'
--
-- * 'pncvAccessToken'
--
-- * 'pncvUploadType'
--
-- * 'pncvPayload'
--
-- * 'pncvName'
--
-- * 'pncvCallback'
projectsNotificationChannelsVerify
    :: VerifyNotificationChannelRequest -- ^ 'pncvPayload'
    -> Text -- ^ 'pncvName'
    -> ProjectsNotificationChannelsVerify
projectsNotificationChannelsVerify pPncvPayload_ pPncvName_ =
    ProjectsNotificationChannelsVerify'
    { _pncvXgafv = Nothing
    , _pncvUploadProtocol = Nothing
    , _pncvAccessToken = Nothing
    , _pncvUploadType = Nothing
    , _pncvPayload = pPncvPayload_
    , _pncvName = pPncvName_
    , _pncvCallback = Nothing
    }

-- | V1 error format.
pncvXgafv :: Lens' ProjectsNotificationChannelsVerify (Maybe Xgafv)
pncvXgafv
  = lens _pncvXgafv (\ s a -> s{_pncvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncvUploadProtocol :: Lens' ProjectsNotificationChannelsVerify (Maybe Text)
pncvUploadProtocol
  = lens _pncvUploadProtocol
      (\ s a -> s{_pncvUploadProtocol = a})

-- | OAuth access token.
pncvAccessToken :: Lens' ProjectsNotificationChannelsVerify (Maybe Text)
pncvAccessToken
  = lens _pncvAccessToken
      (\ s a -> s{_pncvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncvUploadType :: Lens' ProjectsNotificationChannelsVerify (Maybe Text)
pncvUploadType
  = lens _pncvUploadType
      (\ s a -> s{_pncvUploadType = a})

-- | Multipart request metadata.
pncvPayload :: Lens' ProjectsNotificationChannelsVerify VerifyNotificationChannelRequest
pncvPayload
  = lens _pncvPayload (\ s a -> s{_pncvPayload = a})

-- | The notification channel to verify.
pncvName :: Lens' ProjectsNotificationChannelsVerify Text
pncvName = lens _pncvName (\ s a -> s{_pncvName = a})

-- | JSONP
pncvCallback :: Lens' ProjectsNotificationChannelsVerify (Maybe Text)
pncvCallback
  = lens _pncvCallback (\ s a -> s{_pncvCallback = a})

instance GoogleRequest
         ProjectsNotificationChannelsVerify where
        type Rs ProjectsNotificationChannelsVerify =
             NotificationChannel
        type Scopes ProjectsNotificationChannelsVerify =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsNotificationChannelsVerify'{..}
          = go _pncvName _pncvXgafv _pncvUploadProtocol
              _pncvAccessToken
              _pncvUploadType
              _pncvCallback
              (Just AltJSON)
              _pncvPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsVerifyResource)
                      mempty
