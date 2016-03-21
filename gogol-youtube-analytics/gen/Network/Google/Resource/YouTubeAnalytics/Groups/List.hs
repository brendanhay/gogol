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
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groups.list@.
module Network.Google.Resource.YouTubeAnalytics.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList
    , GroupsList

    -- * Request Lenses
    , glMine
    , glOnBehalfOfContentOwner
    , glId
    , glPageToken
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.list@ method which the
-- 'GroupsList' request conforms to.
type GroupsListResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "groups" :>
             QueryParam "mine" Bool :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "id" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GroupListResponse

-- | Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ 'groupsList' smart constructor.
data GroupsList = GroupsList'
    { _glMine                   :: !(Maybe Bool)
    , _glOnBehalfOfContentOwner :: !(Maybe Text)
    , _glId                     :: !(Maybe Text)
    , _glPageToken              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glMine'
--
-- * 'glOnBehalfOfContentOwner'
--
-- * 'glId'
--
-- * 'glPageToken'
groupsList
    :: GroupsList
groupsList =
    GroupsList'
    { _glMine = Nothing
    , _glOnBehalfOfContentOwner = Nothing
    , _glId = Nothing
    , _glPageToken = Nothing
    }

-- | Set this parameter\'s value to true to instruct the API to only return
-- groups owned by the authenticated user.
glMine :: Lens' GroupsList (Maybe Bool)
glMine = lens _glMine (\ s a -> s{_glMine = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
glOnBehalfOfContentOwner :: Lens' GroupsList (Maybe Text)
glOnBehalfOfContentOwner
  = lens _glOnBehalfOfContentOwner
      (\ s a -> s{_glOnBehalfOfContentOwner = a})

-- | The id parameter specifies a comma-separated list of the YouTube group
-- ID(s) for the resource(s) that are being retrieved. In a group resource,
-- the id property specifies the group\'s YouTube group ID.
glId :: Lens' GroupsList (Maybe Text)
glId = lens _glId (\ s a -> s{_glId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page that can be retrieved.
glPageToken :: Lens' GroupsList (Maybe Text)
glPageToken
  = lens _glPageToken (\ s a -> s{_glPageToken = a})

instance GoogleRequest GroupsList where
        type Rs GroupsList = GroupListResponse
        type Scopes GroupsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient GroupsList'{..}
          = go _glMine _glOnBehalfOfContentOwner _glId
              _glPageToken
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsListResource)
                      mempty
