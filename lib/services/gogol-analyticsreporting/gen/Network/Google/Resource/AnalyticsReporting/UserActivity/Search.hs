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
-- Module      : Network.Google.Resource.AnalyticsReporting.UserActivity.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns User Activity data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/core/v4/ Analytics Reporting API Reference> for @analyticsreporting.userActivity.search@.
module Network.Google.Resource.AnalyticsReporting.UserActivity.Search
    (
    -- * REST Resource
      UserActivitySearchResource

    -- * Creating a Request
    , userActivitySearch
    , UserActivitySearch

    -- * Request Lenses
    , uasXgafv
    , uasUploadProtocol
    , uasAccessToken
    , uasUploadType
    , uasPayload
    , uasCallback
    ) where

import Network.Google.AnalyticsReporting.Types
import Network.Google.Prelude

-- | A resource alias for @analyticsreporting.userActivity.search@ method which the
-- 'UserActivitySearch' request conforms to.
type UserActivitySearchResource =
     "v4" :>
       "userActivity:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SearchUserActivityRequest :>
                       Post '[JSON] SearchUserActivityResponse

-- | Returns User Activity data.
--
-- /See:/ 'userActivitySearch' smart constructor.
data UserActivitySearch =
  UserActivitySearch'
    { _uasXgafv :: !(Maybe Xgafv)
    , _uasUploadProtocol :: !(Maybe Text)
    , _uasAccessToken :: !(Maybe Text)
    , _uasUploadType :: !(Maybe Text)
    , _uasPayload :: !SearchUserActivityRequest
    , _uasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserActivitySearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasXgafv'
--
-- * 'uasUploadProtocol'
--
-- * 'uasAccessToken'
--
-- * 'uasUploadType'
--
-- * 'uasPayload'
--
-- * 'uasCallback'
userActivitySearch
    :: SearchUserActivityRequest -- ^ 'uasPayload'
    -> UserActivitySearch
userActivitySearch pUasPayload_ =
  UserActivitySearch'
    { _uasXgafv = Nothing
    , _uasUploadProtocol = Nothing
    , _uasAccessToken = Nothing
    , _uasUploadType = Nothing
    , _uasPayload = pUasPayload_
    , _uasCallback = Nothing
    }


-- | V1 error format.
uasXgafv :: Lens' UserActivitySearch (Maybe Xgafv)
uasXgafv = lens _uasXgafv (\ s a -> s{_uasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uasUploadProtocol :: Lens' UserActivitySearch (Maybe Text)
uasUploadProtocol
  = lens _uasUploadProtocol
      (\ s a -> s{_uasUploadProtocol = a})

-- | OAuth access token.
uasAccessToken :: Lens' UserActivitySearch (Maybe Text)
uasAccessToken
  = lens _uasAccessToken
      (\ s a -> s{_uasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uasUploadType :: Lens' UserActivitySearch (Maybe Text)
uasUploadType
  = lens _uasUploadType
      (\ s a -> s{_uasUploadType = a})

-- | Multipart request metadata.
uasPayload :: Lens' UserActivitySearch SearchUserActivityRequest
uasPayload
  = lens _uasPayload (\ s a -> s{_uasPayload = a})

-- | JSONP
uasCallback :: Lens' UserActivitySearch (Maybe Text)
uasCallback
  = lens _uasCallback (\ s a -> s{_uasCallback = a})

instance GoogleRequest UserActivitySearch where
        type Rs UserActivitySearch =
             SearchUserActivityResponse
        type Scopes UserActivitySearch =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient UserActivitySearch'{..}
          = go _uasXgafv _uasUploadProtocol _uasAccessToken
              _uasUploadType
              _uasCallback
              (Just AltJSON)
              _uasPayload
              analyticsReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserActivitySearchResource)
                      mempty
