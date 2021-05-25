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
-- Module      : Network.Google.Resource.Indexing.URLNotifications.Publish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies that a URL has been updated or deleted.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference> for @indexing.urlNotifications.publish@.
module Network.Google.Resource.Indexing.URLNotifications.Publish
    (
    -- * REST Resource
      URLNotificationsPublishResource

    -- * Creating a Request
    , urlNotificationsPublish
    , URLNotificationsPublish

    -- * Request Lenses
    , unpXgafv
    , unpUploadProtocol
    , unpAccessToken
    , unpUploadType
    , unpPayload
    , unpCallback
    ) where

import Network.Google.Indexing.Types
import Network.Google.Prelude

-- | A resource alias for @indexing.urlNotifications.publish@ method which the
-- 'URLNotificationsPublish' request conforms to.
type URLNotificationsPublishResource =
     "v3" :>
       "urlNotifications:publish" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] URLNotification :>
                       Post '[JSON] PublishURLNotificationResponse

-- | Notifies that a URL has been updated or deleted.
--
-- /See:/ 'urlNotificationsPublish' smart constructor.
data URLNotificationsPublish =
  URLNotificationsPublish'
    { _unpXgafv :: !(Maybe Xgafv)
    , _unpUploadProtocol :: !(Maybe Text)
    , _unpAccessToken :: !(Maybe Text)
    , _unpUploadType :: !(Maybe Text)
    , _unpPayload :: !URLNotification
    , _unpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLNotificationsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unpXgafv'
--
-- * 'unpUploadProtocol'
--
-- * 'unpAccessToken'
--
-- * 'unpUploadType'
--
-- * 'unpPayload'
--
-- * 'unpCallback'
urlNotificationsPublish
    :: URLNotification -- ^ 'unpPayload'
    -> URLNotificationsPublish
urlNotificationsPublish pUnpPayload_ =
  URLNotificationsPublish'
    { _unpXgafv = Nothing
    , _unpUploadProtocol = Nothing
    , _unpAccessToken = Nothing
    , _unpUploadType = Nothing
    , _unpPayload = pUnpPayload_
    , _unpCallback = Nothing
    }


-- | V1 error format.
unpXgafv :: Lens' URLNotificationsPublish (Maybe Xgafv)
unpXgafv = lens _unpXgafv (\ s a -> s{_unpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
unpUploadProtocol :: Lens' URLNotificationsPublish (Maybe Text)
unpUploadProtocol
  = lens _unpUploadProtocol
      (\ s a -> s{_unpUploadProtocol = a})

-- | OAuth access token.
unpAccessToken :: Lens' URLNotificationsPublish (Maybe Text)
unpAccessToken
  = lens _unpAccessToken
      (\ s a -> s{_unpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
unpUploadType :: Lens' URLNotificationsPublish (Maybe Text)
unpUploadType
  = lens _unpUploadType
      (\ s a -> s{_unpUploadType = a})

-- | Multipart request metadata.
unpPayload :: Lens' URLNotificationsPublish URLNotification
unpPayload
  = lens _unpPayload (\ s a -> s{_unpPayload = a})

-- | JSONP
unpCallback :: Lens' URLNotificationsPublish (Maybe Text)
unpCallback
  = lens _unpCallback (\ s a -> s{_unpCallback = a})

instance GoogleRequest URLNotificationsPublish where
        type Rs URLNotificationsPublish =
             PublishURLNotificationResponse
        type Scopes URLNotificationsPublish =
             '["https://www.googleapis.com/auth/indexing"]
        requestClient URLNotificationsPublish'{..}
          = go _unpXgafv _unpUploadProtocol _unpAccessToken
              _unpUploadType
              _unpCallback
              (Just AltJSON)
              _unpPayload
              indexingService
          where go
                  = buildClient
                      (Proxy :: Proxy URLNotificationsPublishResource)
                      mempty
