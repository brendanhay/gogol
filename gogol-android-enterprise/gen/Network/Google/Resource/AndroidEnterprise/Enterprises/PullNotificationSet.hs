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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.PullNotificationSet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pulls and returns a notification set for the enterprises associated with
-- the service account authenticated for the request. The notification set
-- may be empty if no notification are pending. A notification set returned
-- needs to be acknowledged within 20 seconds by calling
-- Enterprises.AcknowledgeNotificationSet, unless the notification set is
-- empty. Notifications that are not acknowledged within the 20 seconds
-- will eventually be included again in the response to another
-- PullNotificationSet request, and those that are never acknowledged will
-- ultimately be deleted according to the Google Cloud Platform Pub\/Sub
-- system policy. Multiple requests might be performed concurrently to
-- retrieve notifications, in which case the pending notifications (if any)
-- will be split among each caller, if any are pending. If no notifications
-- are present, an empty notification list is returned. Subsequent requests
-- may return more notifications once they become available.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.pullNotificationSet@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.PullNotificationSet
    (
    -- * REST Resource
      EnterprisesPullNotificationSetResource

    -- * Creating a Request
    , enterprisesPullNotificationSet
    , EnterprisesPullNotificationSet

    -- * Request Lenses
    , epnsXgafv
    , epnsUploadProtocol
    , epnsAccessToken
    , epnsUploadType
    , epnsRequestMode
    , epnsCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.pullNotificationSet@ method which the
-- 'EnterprisesPullNotificationSet' request conforms to.
type EnterprisesPullNotificationSetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "pullNotificationSet" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "requestMode"
                       EnterprisesPullNotificationSetRequestMode
                       :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] NotificationSet

-- | Pulls and returns a notification set for the enterprises associated with
-- the service account authenticated for the request. The notification set
-- may be empty if no notification are pending. A notification set returned
-- needs to be acknowledged within 20 seconds by calling
-- Enterprises.AcknowledgeNotificationSet, unless the notification set is
-- empty. Notifications that are not acknowledged within the 20 seconds
-- will eventually be included again in the response to another
-- PullNotificationSet request, and those that are never acknowledged will
-- ultimately be deleted according to the Google Cloud Platform Pub\/Sub
-- system policy. Multiple requests might be performed concurrently to
-- retrieve notifications, in which case the pending notifications (if any)
-- will be split among each caller, if any are pending. If no notifications
-- are present, an empty notification list is returned. Subsequent requests
-- may return more notifications once they become available.
--
-- /See:/ 'enterprisesPullNotificationSet' smart constructor.
data EnterprisesPullNotificationSet =
  EnterprisesPullNotificationSet'
    { _epnsXgafv :: !(Maybe Xgafv)
    , _epnsUploadProtocol :: !(Maybe Text)
    , _epnsAccessToken :: !(Maybe Text)
    , _epnsUploadType :: !(Maybe Text)
    , _epnsRequestMode :: !(Maybe EnterprisesPullNotificationSetRequestMode)
    , _epnsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesPullNotificationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epnsXgafv'
--
-- * 'epnsUploadProtocol'
--
-- * 'epnsAccessToken'
--
-- * 'epnsUploadType'
--
-- * 'epnsRequestMode'
--
-- * 'epnsCallback'
enterprisesPullNotificationSet
    :: EnterprisesPullNotificationSet
enterprisesPullNotificationSet =
  EnterprisesPullNotificationSet'
    { _epnsXgafv = Nothing
    , _epnsUploadProtocol = Nothing
    , _epnsAccessToken = Nothing
    , _epnsUploadType = Nothing
    , _epnsRequestMode = Nothing
    , _epnsCallback = Nothing
    }


-- | V1 error format.
epnsXgafv :: Lens' EnterprisesPullNotificationSet (Maybe Xgafv)
epnsXgafv
  = lens _epnsXgafv (\ s a -> s{_epnsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
epnsUploadProtocol :: Lens' EnterprisesPullNotificationSet (Maybe Text)
epnsUploadProtocol
  = lens _epnsUploadProtocol
      (\ s a -> s{_epnsUploadProtocol = a})

-- | OAuth access token.
epnsAccessToken :: Lens' EnterprisesPullNotificationSet (Maybe Text)
epnsAccessToken
  = lens _epnsAccessToken
      (\ s a -> s{_epnsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
epnsUploadType :: Lens' EnterprisesPullNotificationSet (Maybe Text)
epnsUploadType
  = lens _epnsUploadType
      (\ s a -> s{_epnsUploadType = a})

-- | The request mode for pulling notifications. Specifying
-- waitForNotifications will cause the request to block and wait until one
-- or more notifications are present, or return an empty notification list
-- if no notifications are present after some time. Speciying
-- returnImmediately will cause the request to immediately return the
-- pending notifications, or an empty list if no notifications are present.
-- If omitted, defaults to waitForNotifications.
epnsRequestMode :: Lens' EnterprisesPullNotificationSet (Maybe EnterprisesPullNotificationSetRequestMode)
epnsRequestMode
  = lens _epnsRequestMode
      (\ s a -> s{_epnsRequestMode = a})

-- | JSONP
epnsCallback :: Lens' EnterprisesPullNotificationSet (Maybe Text)
epnsCallback
  = lens _epnsCallback (\ s a -> s{_epnsCallback = a})

instance GoogleRequest EnterprisesPullNotificationSet
         where
        type Rs EnterprisesPullNotificationSet =
             NotificationSet
        type Scopes EnterprisesPullNotificationSet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesPullNotificationSet'{..}
          = go _epnsXgafv _epnsUploadProtocol _epnsAccessToken
              _epnsUploadType
              _epnsRequestMode
              _epnsCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesPullNotificationSetResource)
                      mempty
