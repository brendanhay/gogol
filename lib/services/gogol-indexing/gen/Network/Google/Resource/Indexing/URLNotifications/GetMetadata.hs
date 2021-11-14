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
-- Module      : Network.Google.Resource.Indexing.URLNotifications.GetMetadata
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata about a Web Document. This method can _only_ be used to
-- query URLs that were previously seen in successful Indexing API
-- notifications. Includes the latest \`UrlNotification\` received via this
-- API.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference> for @indexing.urlNotifications.getMetadata@.
module Network.Google.Resource.Indexing.URLNotifications.GetMetadata
    (
    -- * REST Resource
      URLNotificationsGetMetadataResource

    -- * Creating a Request
    , urlNotificationsGetMetadata
    , URLNotificationsGetMetadata

    -- * Request Lenses
    , ungmXgafv
    , ungmUploadProtocol
    , ungmAccessToken
    , ungmURL
    , ungmUploadType
    , ungmCallback
    ) where

import Network.Google.Indexing.Types
import Network.Google.Prelude

-- | A resource alias for @indexing.urlNotifications.getMetadata@ method which the
-- 'URLNotificationsGetMetadata' request conforms to.
type URLNotificationsGetMetadataResource =
     "v3" :>
       "urlNotifications" :>
         "metadata" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "url" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] URLNotificationMetadata

-- | Gets metadata about a Web Document. This method can _only_ be used to
-- query URLs that were previously seen in successful Indexing API
-- notifications. Includes the latest \`UrlNotification\` received via this
-- API.
--
-- /See:/ 'urlNotificationsGetMetadata' smart constructor.
data URLNotificationsGetMetadata =
  URLNotificationsGetMetadata'
    { _ungmXgafv :: !(Maybe Xgafv)
    , _ungmUploadProtocol :: !(Maybe Text)
    , _ungmAccessToken :: !(Maybe Text)
    , _ungmURL :: !(Maybe Text)
    , _ungmUploadType :: !(Maybe Text)
    , _ungmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLNotificationsGetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ungmXgafv'
--
-- * 'ungmUploadProtocol'
--
-- * 'ungmAccessToken'
--
-- * 'ungmURL'
--
-- * 'ungmUploadType'
--
-- * 'ungmCallback'
urlNotificationsGetMetadata
    :: URLNotificationsGetMetadata
urlNotificationsGetMetadata =
  URLNotificationsGetMetadata'
    { _ungmXgafv = Nothing
    , _ungmUploadProtocol = Nothing
    , _ungmAccessToken = Nothing
    , _ungmURL = Nothing
    , _ungmUploadType = Nothing
    , _ungmCallback = Nothing
    }


-- | V1 error format.
ungmXgafv :: Lens' URLNotificationsGetMetadata (Maybe Xgafv)
ungmXgafv
  = lens _ungmXgafv (\ s a -> s{_ungmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ungmUploadProtocol :: Lens' URLNotificationsGetMetadata (Maybe Text)
ungmUploadProtocol
  = lens _ungmUploadProtocol
      (\ s a -> s{_ungmUploadProtocol = a})

-- | OAuth access token.
ungmAccessToken :: Lens' URLNotificationsGetMetadata (Maybe Text)
ungmAccessToken
  = lens _ungmAccessToken
      (\ s a -> s{_ungmAccessToken = a})

-- | URL that is being queried.
ungmURL :: Lens' URLNotificationsGetMetadata (Maybe Text)
ungmURL = lens _ungmURL (\ s a -> s{_ungmURL = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ungmUploadType :: Lens' URLNotificationsGetMetadata (Maybe Text)
ungmUploadType
  = lens _ungmUploadType
      (\ s a -> s{_ungmUploadType = a})

-- | JSONP
ungmCallback :: Lens' URLNotificationsGetMetadata (Maybe Text)
ungmCallback
  = lens _ungmCallback (\ s a -> s{_ungmCallback = a})

instance GoogleRequest URLNotificationsGetMetadata
         where
        type Rs URLNotificationsGetMetadata =
             URLNotificationMetadata
        type Scopes URLNotificationsGetMetadata =
             '["https://www.googleapis.com/auth/indexing"]
        requestClient URLNotificationsGetMetadata'{..}
          = go _ungmXgafv _ungmUploadProtocol _ungmAccessToken
              _ungmURL
              _ungmUploadType
              _ungmCallback
              (Just AltJSON)
              indexingService
          where go
                  = buildClient
                      (Proxy :: Proxy URLNotificationsGetMetadataResource)
                      mempty
