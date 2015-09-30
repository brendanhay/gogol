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
-- Module      : Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of abuse reasons that can be used for reporting abusive
-- videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideoAbuseReportReasonsList@.
module Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
    (
    -- * REST Resource
      VideoAbuseReportReasonsListResource

    -- * Creating a Request
    , videoAbuseReportReasonsList'
    , VideoAbuseReportReasonsList'

    -- * Request Lenses
    , varrlQuotaUser
    , varrlPart
    , varrlPrettyPrint
    , varrlUserIp
    , varrlHl
    , varrlKey
    , varrlOauthToken
    , varrlFields
    , varrlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideoAbuseReportReasonsList@ which the
-- 'VideoAbuseReportReasonsList'' request conforms to.
type VideoAbuseReportReasonsListResource =
     "videoAbuseReportReasons" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "hl" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] VideoAbuseReportReasonListResponse

-- | Returns a list of abuse reasons that can be used for reporting abusive
-- videos.
--
-- /See:/ 'videoAbuseReportReasonsList'' smart constructor.
data VideoAbuseReportReasonsList' = VideoAbuseReportReasonsList'
    { _varrlQuotaUser   :: !(Maybe Text)
    , _varrlPart        :: !Text
    , _varrlPrettyPrint :: !Bool
    , _varrlUserIp      :: !(Maybe Text)
    , _varrlHl          :: !Text
    , _varrlKey         :: !(Maybe Text)
    , _varrlOauthToken  :: !(Maybe Text)
    , _varrlFields      :: !(Maybe Text)
    , _varrlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrlQuotaUser'
--
-- * 'varrlPart'
--
-- * 'varrlPrettyPrint'
--
-- * 'varrlUserIp'
--
-- * 'varrlHl'
--
-- * 'varrlKey'
--
-- * 'varrlOauthToken'
--
-- * 'varrlFields'
--
-- * 'varrlAlt'
videoAbuseReportReasonsList'
    :: Text -- ^ 'part'
    -> VideoAbuseReportReasonsList'
videoAbuseReportReasonsList' pVarrlPart_ =
    VideoAbuseReportReasonsList'
    { _varrlQuotaUser = Nothing
    , _varrlPart = pVarrlPart_
    , _varrlPrettyPrint = True
    , _varrlUserIp = Nothing
    , _varrlHl = "en_US"
    , _varrlKey = Nothing
    , _varrlOauthToken = Nothing
    , _varrlFields = Nothing
    , _varrlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
varrlQuotaUser :: Lens' VideoAbuseReportReasonsList' (Maybe Text)
varrlQuotaUser
  = lens _varrlQuotaUser
      (\ s a -> s{_varrlQuotaUser = a})

-- | The part parameter specifies the videoCategory resource parts that the
-- API response will include. Supported values are id and snippet.
varrlPart :: Lens' VideoAbuseReportReasonsList' Text
varrlPart
  = lens _varrlPart (\ s a -> s{_varrlPart = a})

-- | Returns response with indentations and line breaks.
varrlPrettyPrint :: Lens' VideoAbuseReportReasonsList' Bool
varrlPrettyPrint
  = lens _varrlPrettyPrint
      (\ s a -> s{_varrlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
varrlUserIp :: Lens' VideoAbuseReportReasonsList' (Maybe Text)
varrlUserIp
  = lens _varrlUserIp (\ s a -> s{_varrlUserIp = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
varrlHl :: Lens' VideoAbuseReportReasonsList' Text
varrlHl = lens _varrlHl (\ s a -> s{_varrlHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
varrlKey :: Lens' VideoAbuseReportReasonsList' (Maybe Text)
varrlKey = lens _varrlKey (\ s a -> s{_varrlKey = a})

-- | OAuth 2.0 token for the current user.
varrlOauthToken :: Lens' VideoAbuseReportReasonsList' (Maybe Text)
varrlOauthToken
  = lens _varrlOauthToken
      (\ s a -> s{_varrlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
varrlFields :: Lens' VideoAbuseReportReasonsList' (Maybe Text)
varrlFields
  = lens _varrlFields (\ s a -> s{_varrlFields = a})

-- | Data format for the response.
varrlAlt :: Lens' VideoAbuseReportReasonsList' Alt
varrlAlt = lens _varrlAlt (\ s a -> s{_varrlAlt = a})

instance GoogleRequest VideoAbuseReportReasonsList'
         where
        type Rs VideoAbuseReportReasonsList' =
             VideoAbuseReportReasonListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideoAbuseReportReasonsList'{..}
          = go _varrlQuotaUser (Just _varrlPart)
              (Just _varrlPrettyPrint)
              _varrlUserIp
              (Just _varrlHl)
              _varrlKey
              _varrlOauthToken
              _varrlFields
              (Just _varrlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideoAbuseReportReasonsListResource)
                      r
                      u
