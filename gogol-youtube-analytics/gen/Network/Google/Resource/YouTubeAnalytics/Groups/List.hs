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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groups.list@.
module Network.Google.Resource.YouTubeAnalytics.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glXgafv
    , glMine
    , glUploadProtocol
    , glAccessToken
    , glUploadType
    , glOnBehalfOfContentOwner
    , glId
    , glPageToken
    , glCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "v2" :>
       "groups" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "mine" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "id" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListGroupsResponse

-- | Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList =
  GroupsList'
    { _glXgafv                  :: !(Maybe Xgafv)
    , _glMine                   :: !(Maybe Bool)
    , _glUploadProtocol         :: !(Maybe Text)
    , _glAccessToken            :: !(Maybe Text)
    , _glUploadType             :: !(Maybe Text)
    , _glOnBehalfOfContentOwner :: !(Maybe Text)
    , _glId                     :: !(Maybe Text)
    , _glPageToken              :: !(Maybe Text)
    , _glCallback               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glXgafv'
--
-- * 'glMine'
--
-- * 'glUploadProtocol'
--
-- * 'glAccessToken'
--
-- * 'glUploadType'
--
-- * 'glOnBehalfOfContentOwner'
--
-- * 'glId'
--
-- * 'glPageToken'
--
-- * 'glCallback'
groupsList
    :: GroupsList
groupsList =
  GroupsList'
    { _glXgafv = Nothing
    , _glMine = Nothing
    , _glUploadProtocol = Nothing
    , _glAccessToken = Nothing
    , _glUploadType = Nothing
    , _glOnBehalfOfContentOwner = Nothing
    , _glId = Nothing
    , _glPageToken = Nothing
    , _glCallback = Nothing
    }

-- | V1 error format.
glXgafv :: Lens' GroupsList (Maybe Xgafv)
glXgafv = lens _glXgafv (\ s a -> s{_glXgafv = a})

-- | This parameter can only be used in a properly authorized request. Set
-- this parameter\'s value to true to retrieve all groups owned by the
-- authenticated user.
glMine :: Lens' GroupsList (Maybe Bool)
glMine = lens _glMine (\ s a -> s{_glMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
glUploadProtocol :: Lens' GroupsList (Maybe Text)
glUploadProtocol
  = lens _glUploadProtocol
      (\ s a -> s{_glUploadProtocol = a})

-- | OAuth access token.
glAccessToken :: Lens' GroupsList (Maybe Text)
glAccessToken
  = lens _glAccessToken
      (\ s a -> s{_glAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
glUploadType :: Lens' GroupsList (Maybe Text)
glUploadType
  = lens _glUploadType (\ s a -> s{_glUploadType = a})

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
glOnBehalfOfContentOwner :: Lens' GroupsList (Maybe Text)
glOnBehalfOfContentOwner
  = lens _glOnBehalfOfContentOwner
      (\ s a -> s{_glOnBehalfOfContentOwner = a})

-- | The \`id\` parameter specifies a comma-separated list of the YouTube
-- group ID(s) for the resource(s) that are being retrieved. Each group
-- must be owned by the authenticated user. In a \`group\` resource, the
-- \`id\` property specifies the group\'s YouTube group ID. Note that if
-- you do not specify a value for the \`id\` parameter, then you must set
-- the \`mine\` parameter to \`true\`.
glId :: Lens' GroupsList (Maybe Text)
glId = lens _glId (\ s a -> s{_glId = a})

-- | The \`pageToken\` parameter identifies a specific page in the result set
-- that should be returned. In an API response, the \`nextPageToken\`
-- property identifies the next page that can be retrieved.
glPageToken :: Lens' GroupsList (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

-- | JSONP
glCallback :: Lens' GroupsList (Maybe Text)
glCallback
  = lens _glCallback (\ s a -> s{_glCallback = a})

instance GoogleRequest GroupsList where
        type Rs GroupsList = ListGroupsResponse
        type Scopes GroupsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupsList'{..}
          = go _glXgafv _glMine _glUploadProtocol
              _glAccessToken
              _glUploadType
              _glOnBehalfOfContentOwner
              _glId
              _glPageToken
              _glCallback
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
