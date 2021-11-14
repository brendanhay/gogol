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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.GetVerificationCode
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a verification code for an already verified channel that can
-- then be used in a call to VerifyNotificationChannel() on a different
-- channel with an equivalent identity in the same or in a different
-- project. This makes it possible to copy a channel between projects
-- without requiring manual reverification of the channel. If the channel
-- is not in the verified state, this method will fail (in other words,
-- this may only be used if the SendNotificationChannelVerificationCode and
-- VerifyNotificationChannel paths have already been used to put the given
-- channel into the verified state).There is no guarantee that the
-- verification codes returned by this method will be of a similar
-- structure or form as the ones that are delivered to the channel via
-- SendNotificationChannelVerificationCode; while
-- VerifyNotificationChannel() will recognize both the codes delivered via
-- SendNotificationChannelVerificationCode() and returned from
-- GetNotificationChannelVerificationCode(), it is typically the case that
-- the verification codes delivered via
-- SendNotificationChannelVerificationCode() will be shorter and also have
-- a shorter expiration (e.g. codes such as \"G-123456\") whereas
-- GetVerificationCode() will typically return a much longer, websafe base
-- 64 encoded string that has a longer expiration time.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.getVerificationCode@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.GetVerificationCode
    (
    -- * REST Resource
      ProjectsNotificationChannelsGetVerificationCodeResource

    -- * Creating a Request
    , projectsNotificationChannelsGetVerificationCode
    , ProjectsNotificationChannelsGetVerificationCode

    -- * Request Lenses
    , pncgvcXgafv
    , pncgvcUploadProtocol
    , pncgvcAccessToken
    , pncgvcUploadType
    , pncgvcPayload
    , pncgvcName
    , pncgvcCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.getVerificationCode@ method which the
-- 'ProjectsNotificationChannelsGetVerificationCode' request conforms to.
type ProjectsNotificationChannelsGetVerificationCodeResource
     =
     "v3" :>
       CaptureMode "name" "getVerificationCode" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GetNotificationChannelVerificationCodeRequest
                       :>
                       Post '[JSON]
                         GetNotificationChannelVerificationCodeResponse

-- | Requests a verification code for an already verified channel that can
-- then be used in a call to VerifyNotificationChannel() on a different
-- channel with an equivalent identity in the same or in a different
-- project. This makes it possible to copy a channel between projects
-- without requiring manual reverification of the channel. If the channel
-- is not in the verified state, this method will fail (in other words,
-- this may only be used if the SendNotificationChannelVerificationCode and
-- VerifyNotificationChannel paths have already been used to put the given
-- channel into the verified state).There is no guarantee that the
-- verification codes returned by this method will be of a similar
-- structure or form as the ones that are delivered to the channel via
-- SendNotificationChannelVerificationCode; while
-- VerifyNotificationChannel() will recognize both the codes delivered via
-- SendNotificationChannelVerificationCode() and returned from
-- GetNotificationChannelVerificationCode(), it is typically the case that
-- the verification codes delivered via
-- SendNotificationChannelVerificationCode() will be shorter and also have
-- a shorter expiration (e.g. codes such as \"G-123456\") whereas
-- GetVerificationCode() will typically return a much longer, websafe base
-- 64 encoded string that has a longer expiration time.
--
-- /See:/ 'projectsNotificationChannelsGetVerificationCode' smart constructor.
data ProjectsNotificationChannelsGetVerificationCode =
  ProjectsNotificationChannelsGetVerificationCode'
    { _pncgvcXgafv :: !(Maybe Xgafv)
    , _pncgvcUploadProtocol :: !(Maybe Text)
    , _pncgvcAccessToken :: !(Maybe Text)
    , _pncgvcUploadType :: !(Maybe Text)
    , _pncgvcPayload :: !GetNotificationChannelVerificationCodeRequest
    , _pncgvcName :: !Text
    , _pncgvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelsGetVerificationCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncgvcXgafv'
--
-- * 'pncgvcUploadProtocol'
--
-- * 'pncgvcAccessToken'
--
-- * 'pncgvcUploadType'
--
-- * 'pncgvcPayload'
--
-- * 'pncgvcName'
--
-- * 'pncgvcCallback'
projectsNotificationChannelsGetVerificationCode
    :: GetNotificationChannelVerificationCodeRequest -- ^ 'pncgvcPayload'
    -> Text -- ^ 'pncgvcName'
    -> ProjectsNotificationChannelsGetVerificationCode
projectsNotificationChannelsGetVerificationCode pPncgvcPayload_ pPncgvcName_ =
  ProjectsNotificationChannelsGetVerificationCode'
    { _pncgvcXgafv = Nothing
    , _pncgvcUploadProtocol = Nothing
    , _pncgvcAccessToken = Nothing
    , _pncgvcUploadType = Nothing
    , _pncgvcPayload = pPncgvcPayload_
    , _pncgvcName = pPncgvcName_
    , _pncgvcCallback = Nothing
    }


-- | V1 error format.
pncgvcXgafv :: Lens' ProjectsNotificationChannelsGetVerificationCode (Maybe Xgafv)
pncgvcXgafv
  = lens _pncgvcXgafv (\ s a -> s{_pncgvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncgvcUploadProtocol :: Lens' ProjectsNotificationChannelsGetVerificationCode (Maybe Text)
pncgvcUploadProtocol
  = lens _pncgvcUploadProtocol
      (\ s a -> s{_pncgvcUploadProtocol = a})

-- | OAuth access token.
pncgvcAccessToken :: Lens' ProjectsNotificationChannelsGetVerificationCode (Maybe Text)
pncgvcAccessToken
  = lens _pncgvcAccessToken
      (\ s a -> s{_pncgvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncgvcUploadType :: Lens' ProjectsNotificationChannelsGetVerificationCode (Maybe Text)
pncgvcUploadType
  = lens _pncgvcUploadType
      (\ s a -> s{_pncgvcUploadType = a})

-- | Multipart request metadata.
pncgvcPayload :: Lens' ProjectsNotificationChannelsGetVerificationCode GetNotificationChannelVerificationCodeRequest
pncgvcPayload
  = lens _pncgvcPayload
      (\ s a -> s{_pncgvcPayload = a})

-- | Required. The notification channel for which a verification code is to
-- be generated and retrieved. This must name a channel that is already
-- verified; if the specified channel is not verified, the request will
-- fail.
pncgvcName :: Lens' ProjectsNotificationChannelsGetVerificationCode Text
pncgvcName
  = lens _pncgvcName (\ s a -> s{_pncgvcName = a})

-- | JSONP
pncgvcCallback :: Lens' ProjectsNotificationChannelsGetVerificationCode (Maybe Text)
pncgvcCallback
  = lens _pncgvcCallback
      (\ s a -> s{_pncgvcCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelsGetVerificationCode
         where
        type Rs
               ProjectsNotificationChannelsGetVerificationCode
             = GetNotificationChannelVerificationCodeResponse
        type Scopes
               ProjectsNotificationChannelsGetVerificationCode
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          ProjectsNotificationChannelsGetVerificationCode'{..}
          = go _pncgvcName _pncgvcXgafv _pncgvcUploadProtocol
              _pncgvcAccessToken
              _pncgvcUploadType
              _pncgvcCallback
              (Just AltJSON)
              _pncgvcPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsNotificationChannelsGetVerificationCodeResource)
                      mempty
