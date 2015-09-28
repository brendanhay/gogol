{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.CommentThreads.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the top-level comment in a comment thread.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.commentThreads.update@.
module Network.Google.API.YouTube.CommentThreads.Update
    (
    -- * REST Resource
      CommentThreadsUpdateAPI

    -- * Creating a Request
    , commentThreadsUpdate'
    , CommentThreadsUpdate'

    -- * Request Lenses
    , ctuQuotaUser
    , ctuPart
    , ctuPrettyPrint
    , ctuUserIp
    , ctuKey
    , ctuOauthToken
    , ctuFields
    , ctuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.commentThreads.update which the
-- 'CommentThreadsUpdate'' request conforms to.
type CommentThreadsUpdateAPI =
     "commentThreads" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] CommentThread

-- | Modifies the top-level comment in a comment thread.
--
-- /See:/ 'commentThreadsUpdate'' smart constructor.
data CommentThreadsUpdate' = CommentThreadsUpdate'
    { _ctuQuotaUser   :: !(Maybe Text)
    , _ctuPart        :: !Text
    , _ctuPrettyPrint :: !Bool
    , _ctuUserIp      :: !(Maybe Text)
    , _ctuKey         :: !(Maybe Text)
    , _ctuOauthToken  :: !(Maybe Text)
    , _ctuFields      :: !(Maybe Text)
    , _ctuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuQuotaUser'
--
-- * 'ctuPart'
--
-- * 'ctuPrettyPrint'
--
-- * 'ctuUserIp'
--
-- * 'ctuKey'
--
-- * 'ctuOauthToken'
--
-- * 'ctuFields'
--
-- * 'ctuAlt'
commentThreadsUpdate'
    :: Text -- ^ 'part'
    -> CommentThreadsUpdate'
commentThreadsUpdate' pCtuPart_ =
    CommentThreadsUpdate'
    { _ctuQuotaUser = Nothing
    , _ctuPart = pCtuPart_
    , _ctuPrettyPrint = True
    , _ctuUserIp = Nothing
    , _ctuKey = Nothing
    , _ctuOauthToken = Nothing
    , _ctuFields = Nothing
    , _ctuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctuQuotaUser :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuQuotaUser
  = lens _ctuQuotaUser (\ s a -> s{_ctuQuotaUser = a})

-- | The part parameter specifies a comma-separated list of commentThread
-- resource properties that the API response will include. You must at
-- least include the snippet part in the parameter value since that part
-- contains all of the properties that the API request can update.
ctuPart :: Lens' CommentThreadsUpdate' Text
ctuPart = lens _ctuPart (\ s a -> s{_ctuPart = a})

-- | Returns response with indentations and line breaks.
ctuPrettyPrint :: Lens' CommentThreadsUpdate' Bool
ctuPrettyPrint
  = lens _ctuPrettyPrint
      (\ s a -> s{_ctuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctuUserIp :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuUserIp
  = lens _ctuUserIp (\ s a -> s{_ctuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctuKey :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuKey = lens _ctuKey (\ s a -> s{_ctuKey = a})

-- | OAuth 2.0 token for the current user.
ctuOauthToken :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuOauthToken
  = lens _ctuOauthToken
      (\ s a -> s{_ctuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctuFields :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuFields
  = lens _ctuFields (\ s a -> s{_ctuFields = a})

-- | Data format for the response.
ctuAlt :: Lens' CommentThreadsUpdate' Alt
ctuAlt = lens _ctuAlt (\ s a -> s{_ctuAlt = a})

instance GoogleRequest CommentThreadsUpdate' where
        type Rs CommentThreadsUpdate' = CommentThread
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentThreadsUpdate'{..}
          = go _ctuQuotaUser (Just _ctuPart)
              (Just _ctuPrettyPrint)
              _ctuUserIp
              _ctuKey
              _ctuOauthToken
              _ctuFields
              (Just _ctuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentThreadsUpdateAPI)
                      r
                      u
