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
-- Module      : Network.Google.Resource.YouTube.Comments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsUpdate@.
module Network.Google.Resource.YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate'
    , CommentsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPart
    , cuPrettyPrint
    , cuUserIp
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsUpdate@ which the
-- 'CommentsUpdate'' request conforms to.
type CommentsUpdateResource =
     "comments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Comment

-- | Modifies a comment.
--
-- /See:/ 'commentsUpdate'' smart constructor.
data CommentsUpdate' = CommentsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPart        :: !Text
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Text)
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPart'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
commentsUpdate'
    :: Text -- ^ 'part'
    -> CommentsUpdate'
commentsUpdate' pCuPart_ =
    CommentsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPart = pCuPart_
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CommentsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. You must at least include the snippet part in the parameter
-- value since that part contains all of the properties that the API
-- request can update.
cuPart :: Lens' CommentsUpdate' Text
cuPart = lens _cuPart (\ s a -> s{_cuPart = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CommentsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CommentsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CommentsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CommentsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CommentsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CommentsUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CommentsUpdate' where
        type Rs CommentsUpdate' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsUpdate'{..}
          = go _cuQuotaUser (Just _cuPart)
              (Just _cuPrettyPrint)
              _cuUserIp
              _cuKey
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsUpdateResource)
                      r
                      u
