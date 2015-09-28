{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Videos.ReportAbuse
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Report abuse for a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.reportAbuse@.
module Network.Google.API.YouTube.Videos.ReportAbuse
    (
    -- * REST Resource
      VideosReportAbuseAPI

    -- * Creating a Request
    , videosReportAbuse'
    , VideosReportAbuse'

    -- * Request Lenses
    , vraQuotaUser
    , vraPrettyPrint
    , vraUserIp
    , vraOnBehalfOfContentOwner
    , vraKey
    , vraOauthToken
    , vraFields
    , vraAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.videos.reportAbuse which the
-- 'VideosReportAbuse'' request conforms to.
type VideosReportAbuseAPI =
     "videos" :>
       "reportAbuse" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Report abuse for a video.
--
-- /See:/ 'videosReportAbuse'' smart constructor.
data VideosReportAbuse' = VideosReportAbuse'
    { _vraQuotaUser              :: !(Maybe Text)
    , _vraPrettyPrint            :: !Bool
    , _vraUserIp                 :: !(Maybe Text)
    , _vraOnBehalfOfContentOwner :: !(Maybe Text)
    , _vraKey                    :: !(Maybe Text)
    , _vraOauthToken             :: !(Maybe Text)
    , _vraFields                 :: !(Maybe Text)
    , _vraAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosReportAbuse'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vraQuotaUser'
--
-- * 'vraPrettyPrint'
--
-- * 'vraUserIp'
--
-- * 'vraOnBehalfOfContentOwner'
--
-- * 'vraKey'
--
-- * 'vraOauthToken'
--
-- * 'vraFields'
--
-- * 'vraAlt'
videosReportAbuse'
    :: VideosReportAbuse'
videosReportAbuse' =
    VideosReportAbuse'
    { _vraQuotaUser = Nothing
    , _vraPrettyPrint = True
    , _vraUserIp = Nothing
    , _vraOnBehalfOfContentOwner = Nothing
    , _vraKey = Nothing
    , _vraOauthToken = Nothing
    , _vraFields = Nothing
    , _vraAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vraQuotaUser :: Lens' VideosReportAbuse' (Maybe Text)
vraQuotaUser
  = lens _vraQuotaUser (\ s a -> s{_vraQuotaUser = a})

-- | Returns response with indentations and line breaks.
vraPrettyPrint :: Lens' VideosReportAbuse' Bool
vraPrettyPrint
  = lens _vraPrettyPrint
      (\ s a -> s{_vraPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vraUserIp :: Lens' VideosReportAbuse' (Maybe Text)
vraUserIp
  = lens _vraUserIp (\ s a -> s{_vraUserIp = a})

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
vraOnBehalfOfContentOwner :: Lens' VideosReportAbuse' (Maybe Text)
vraOnBehalfOfContentOwner
  = lens _vraOnBehalfOfContentOwner
      (\ s a -> s{_vraOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vraKey :: Lens' VideosReportAbuse' (Maybe Text)
vraKey = lens _vraKey (\ s a -> s{_vraKey = a})

-- | OAuth 2.0 token for the current user.
vraOauthToken :: Lens' VideosReportAbuse' (Maybe Text)
vraOauthToken
  = lens _vraOauthToken
      (\ s a -> s{_vraOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vraFields :: Lens' VideosReportAbuse' (Maybe Text)
vraFields
  = lens _vraFields (\ s a -> s{_vraFields = a})

-- | Data format for the response.
vraAlt :: Lens' VideosReportAbuse' Alt
vraAlt = lens _vraAlt (\ s a -> s{_vraAlt = a})

instance GoogleRequest VideosReportAbuse' where
        type Rs VideosReportAbuse' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosReportAbuse'{..}
          = go _vraQuotaUser (Just _vraPrettyPrint) _vraUserIp
              _vraOnBehalfOfContentOwner
              _vraKey
              _vraOauthToken
              _vraFields
              (Just _vraAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosReportAbuseAPI)
                      r
                      u
