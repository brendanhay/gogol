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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.SendVerificationCode
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Causes a verification code to be delivered to the channel. The code can
-- then be supplied in VerifyNotificationChannel to verify the channel.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.sendVerificationCode@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.SendVerificationCode
    (
    -- * REST Resource
      ProjectsNotificationChannelsSendVerificationCodeResource

    -- * Creating a Request
    , projectsNotificationChannelsSendVerificationCode
    , ProjectsNotificationChannelsSendVerificationCode

    -- * Request Lenses
    , pncsvcXgafv
    , pncsvcUploadProtocol
    , pncsvcAccessToken
    , pncsvcUploadType
    , pncsvcPayload
    , pncsvcName
    , pncsvcCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.sendVerificationCode@ method which the
-- 'ProjectsNotificationChannelsSendVerificationCode' request conforms to.
type ProjectsNotificationChannelsSendVerificationCodeResource
     =
     "v3" :>
       CaptureMode "name" "sendVerificationCode" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       SendNotificationChannelVerificationCodeRequest
                       :> Post '[JSON] Empty

-- | Causes a verification code to be delivered to the channel. The code can
-- then be supplied in VerifyNotificationChannel to verify the channel.
--
-- /See:/ 'projectsNotificationChannelsSendVerificationCode' smart constructor.
data ProjectsNotificationChannelsSendVerificationCode =
  ProjectsNotificationChannelsSendVerificationCode'
    { _pncsvcXgafv :: !(Maybe Xgafv)
    , _pncsvcUploadProtocol :: !(Maybe Text)
    , _pncsvcAccessToken :: !(Maybe Text)
    , _pncsvcUploadType :: !(Maybe Text)
    , _pncsvcPayload :: !SendNotificationChannelVerificationCodeRequest
    , _pncsvcName :: !Text
    , _pncsvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelsSendVerificationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncsvcXgafv'
--
-- * 'pncsvcUploadProtocol'
--
-- * 'pncsvcAccessToken'
--
-- * 'pncsvcUploadType'
--
-- * 'pncsvcPayload'
--
-- * 'pncsvcName'
--
-- * 'pncsvcCallback'
projectsNotificationChannelsSendVerificationCode
    :: SendNotificationChannelVerificationCodeRequest -- ^ 'pncsvcPayload'
    -> Text -- ^ 'pncsvcName'
    -> ProjectsNotificationChannelsSendVerificationCode
projectsNotificationChannelsSendVerificationCode pPncsvcPayload_ pPncsvcName_ =
  ProjectsNotificationChannelsSendVerificationCode'
    { _pncsvcXgafv = Nothing
    , _pncsvcUploadProtocol = Nothing
    , _pncsvcAccessToken = Nothing
    , _pncsvcUploadType = Nothing
    , _pncsvcPayload = pPncsvcPayload_
    , _pncsvcName = pPncsvcName_
    , _pncsvcCallback = Nothing
    }


-- | V1 error format.
pncsvcXgafv :: Lens' ProjectsNotificationChannelsSendVerificationCode (Maybe Xgafv)
pncsvcXgafv
  = lens _pncsvcXgafv (\ s a -> s{_pncsvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncsvcUploadProtocol :: Lens' ProjectsNotificationChannelsSendVerificationCode (Maybe Text)
pncsvcUploadProtocol
  = lens _pncsvcUploadProtocol
      (\ s a -> s{_pncsvcUploadProtocol = a})

-- | OAuth access token.
pncsvcAccessToken :: Lens' ProjectsNotificationChannelsSendVerificationCode (Maybe Text)
pncsvcAccessToken
  = lens _pncsvcAccessToken
      (\ s a -> s{_pncsvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncsvcUploadType :: Lens' ProjectsNotificationChannelsSendVerificationCode (Maybe Text)
pncsvcUploadType
  = lens _pncsvcUploadType
      (\ s a -> s{_pncsvcUploadType = a})

-- | Multipart request metadata.
pncsvcPayload :: Lens' ProjectsNotificationChannelsSendVerificationCode SendNotificationChannelVerificationCodeRequest
pncsvcPayload
  = lens _pncsvcPayload
      (\ s a -> s{_pncsvcPayload = a})

-- | Required. The notification channel to which to send a verification code.
pncsvcName :: Lens' ProjectsNotificationChannelsSendVerificationCode Text
pncsvcName
  = lens _pncsvcName (\ s a -> s{_pncsvcName = a})

-- | JSONP
pncsvcCallback :: Lens' ProjectsNotificationChannelsSendVerificationCode (Maybe Text)
pncsvcCallback
  = lens _pncsvcCallback
      (\ s a -> s{_pncsvcCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelsSendVerificationCode
         where
        type Rs
               ProjectsNotificationChannelsSendVerificationCode
             = Empty
        type Scopes
               ProjectsNotificationChannelsSendVerificationCode
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ProjectsNotificationChannelsSendVerificationCode'{..}
          = go _pncsvcName _pncsvcXgafv _pncsvcUploadProtocol
              _pncsvcAccessToken
              _pncsvcUploadType
              _pncsvcCallback
              (Just AltJSON)
              _pncsvcPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsNotificationChannelsSendVerificationCodeResource)
                      mempty
