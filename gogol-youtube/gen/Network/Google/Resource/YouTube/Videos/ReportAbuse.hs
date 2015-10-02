{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Videos.ReportAbuse
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Report abuse for a video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosReportAbuse@.
module Network.Google.Resource.YouTube.Videos.ReportAbuse
    (
    -- * REST Resource
      VideosReportAbuseResource

    -- * Creating a Request
    , videosReportAbuse'
    , VideosReportAbuse'

    -- * Request Lenses
    , vraQuotaUser
    , vraPrettyPrint
    , vraUserIP
    , vraOnBehalfOfContentOwner
    , vraKey
    , vraVideoAbuseReport
    , vraOAuthToken
    , vraFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosReportAbuse@ which the
-- 'VideosReportAbuse'' request conforms to.
type VideosReportAbuseResource =
     "videos" :>
       "reportAbuse" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] VideoAbuseReport :> Post '[JSON] ()

-- | Report abuse for a video.
--
-- /See:/ 'videosReportAbuse'' smart constructor.
data VideosReportAbuse' = VideosReportAbuse'
    { _vraQuotaUser              :: !(Maybe Text)
    , _vraPrettyPrint            :: !Bool
    , _vraUserIP                 :: !(Maybe Text)
    , _vraOnBehalfOfContentOwner :: !(Maybe Text)
    , _vraKey                    :: !(Maybe Key)
    , _vraVideoAbuseReport       :: !VideoAbuseReport
    , _vraOAuthToken             :: !(Maybe OAuthToken)
    , _vraFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosReportAbuse'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vraQuotaUser'
--
-- * 'vraPrettyPrint'
--
-- * 'vraUserIP'
--
-- * 'vraOnBehalfOfContentOwner'
--
-- * 'vraKey'
--
-- * 'vraVideoAbuseReport'
--
-- * 'vraOAuthToken'
--
-- * 'vraFields'
videosReportAbuse'
    :: VideoAbuseReport -- ^ 'VideoAbuseReport'
    -> VideosReportAbuse'
videosReportAbuse' pVraVideoAbuseReport_ =
    VideosReportAbuse'
    { _vraQuotaUser = Nothing
    , _vraPrettyPrint = True
    , _vraUserIP = Nothing
    , _vraOnBehalfOfContentOwner = Nothing
    , _vraKey = Nothing
    , _vraVideoAbuseReport = pVraVideoAbuseReport_
    , _vraOAuthToken = Nothing
    , _vraFields = Nothing
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
vraUserIP :: Lens' VideosReportAbuse' (Maybe Text)
vraUserIP
  = lens _vraUserIP (\ s a -> s{_vraUserIP = a})

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
vraKey :: Lens' VideosReportAbuse' (Maybe Key)
vraKey = lens _vraKey (\ s a -> s{_vraKey = a})

-- | Multipart request metadata.
vraVideoAbuseReport :: Lens' VideosReportAbuse' VideoAbuseReport
vraVideoAbuseReport
  = lens _vraVideoAbuseReport
      (\ s a -> s{_vraVideoAbuseReport = a})

-- | OAuth 2.0 token for the current user.
vraOAuthToken :: Lens' VideosReportAbuse' (Maybe OAuthToken)
vraOAuthToken
  = lens _vraOAuthToken
      (\ s a -> s{_vraOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vraFields :: Lens' VideosReportAbuse' (Maybe Text)
vraFields
  = lens _vraFields (\ s a -> s{_vraFields = a})

instance GoogleAuth VideosReportAbuse' where
        authKey = vraKey . _Just
        authToken = vraOAuthToken . _Just

instance GoogleRequest VideosReportAbuse' where
        type Rs VideosReportAbuse' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosReportAbuse'{..}
          = go _vraQuotaUser (Just _vraPrettyPrint) _vraUserIP
              _vraOnBehalfOfContentOwner
              _vraKey
              _vraOAuthToken
              _vraFields
              (Just AltJSON)
              _vraVideoAbuseReport
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosReportAbuseResource)
                      r
                      u
