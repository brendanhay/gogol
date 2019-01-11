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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.list@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.List
    (
    -- * REST Resource
      GroupItemsListResource

    -- * Creating a Request
    , groupItemsList
    , GroupItemsList

    -- * Request Lenses
    , gilXgafv
    , gilUploadProtocol
    , gilAccessToken
    , gilUploadType
    , gilOnBehalfOfContentOwner
    , gilGroupId
    , gilCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.list@ method which the
-- 'GroupItemsList' request conforms to.
type GroupItemsListResource =
     "v2" :>
       "groupItems" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "groupId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListGroupItemsResponse

-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ 'groupItemsList' smart constructor.
data GroupItemsList = GroupItemsList'
    { _gilXgafv                  :: !(Maybe Xgafv)
    , _gilUploadProtocol         :: !(Maybe Text)
    , _gilAccessToken            :: !(Maybe Text)
    , _gilUploadType             :: !(Maybe Text)
    , _gilOnBehalfOfContentOwner :: !(Maybe Text)
    , _gilGroupId                :: !(Maybe Text)
    , _gilCallback               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gilXgafv'
--
-- * 'gilUploadProtocol'
--
-- * 'gilAccessToken'
--
-- * 'gilUploadType'
--
-- * 'gilOnBehalfOfContentOwner'
--
-- * 'gilGroupId'
--
-- * 'gilCallback'
groupItemsList
    :: GroupItemsList
groupItemsList =
    GroupItemsList'
    { _gilXgafv = Nothing
    , _gilUploadProtocol = Nothing
    , _gilAccessToken = Nothing
    , _gilUploadType = Nothing
    , _gilOnBehalfOfContentOwner = Nothing
    , _gilGroupId = Nothing
    , _gilCallback = Nothing
    }

-- | V1 error format.
gilXgafv :: Lens' GroupItemsList (Maybe Xgafv)
gilXgafv = lens _gilXgafv (\ s a -> s{_gilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gilUploadProtocol :: Lens' GroupItemsList (Maybe Text)
gilUploadProtocol
  = lens _gilUploadProtocol
      (\ s a -> s{_gilUploadProtocol = a})

-- | OAuth access token.
gilAccessToken :: Lens' GroupItemsList (Maybe Text)
gilAccessToken
  = lens _gilAccessToken
      (\ s a -> s{_gilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gilUploadType :: Lens' GroupItemsList (Maybe Text)
gilUploadType
  = lens _gilUploadType
      (\ s a -> s{_gilUploadType = a})

-- | This parameter can only be used in a properly authorized request.
-- **Note:** This parameter is intended exclusively for YouTube content
-- partners that own and manage many different YouTube channels. The
-- \`onBehalfOfContentOwner\` parameter indicates that the request\'s
-- authorization credentials identify a YouTube user who is acting on
-- behalf of the content owner specified in the parameter value. It allows
-- content owners to authenticate once and get access to all their video
-- and channel data, without having to provide authentication credentials
-- for each individual channel. The account that the user authenticates
-- with must be linked to the specified YouTube content owner.
gilOnBehalfOfContentOwner :: Lens' GroupItemsList (Maybe Text)
gilOnBehalfOfContentOwner
  = lens _gilOnBehalfOfContentOwner
      (\ s a -> s{_gilOnBehalfOfContentOwner = a})

-- | The \`groupId\` parameter specifies the unique ID of the group for which
-- you want to retrieve group items.
gilGroupId :: Lens' GroupItemsList (Maybe Text)
gilGroupId
  = lens _gilGroupId (\ s a -> s{_gilGroupId = a})

-- | JSONP
gilCallback :: Lens' GroupItemsList (Maybe Text)
gilCallback
  = lens _gilCallback (\ s a -> s{_gilCallback = a})

instance GoogleRequest GroupItemsList where
        type Rs GroupItemsList = ListGroupItemsResponse
        type Scopes GroupItemsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupItemsList'{..}
          = go _gilXgafv _gilUploadProtocol _gilAccessToken
              _gilUploadType
              _gilOnBehalfOfContentOwner
              _gilGroupId
              _gilCallback
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupItemsListResource)
                      mempty
