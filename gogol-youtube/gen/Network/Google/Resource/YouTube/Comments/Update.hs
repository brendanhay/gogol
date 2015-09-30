{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateAPI

    -- * Creating a Request
    , commentsUpdate
    , CommentsUpdate

    -- * Request Lenses
    , cuuQuotaUser
    , cuuPart
    , cuuPrettyPrint
    , cuuUserIp
    , cuuKey
    , cuuOauthToken
    , cuuFields
    , cuuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsUpdate@ which the
-- 'CommentsUpdate' request conforms to.
type CommentsUpdateAPI =
     "comments" :>
       QueryParam "part" Text :> Put '[JSON] Comment

-- | Modifies a comment.
--
-- /See:/ 'commentsUpdate' smart constructor.
data CommentsUpdate = CommentsUpdate
    { _cuuQuotaUser   :: !(Maybe Text)
    , _cuuPart        :: !Text
    , _cuuPrettyPrint :: !Bool
    , _cuuUserIp      :: !(Maybe Text)
    , _cuuKey         :: !(Maybe Text)
    , _cuuOauthToken  :: !(Maybe Text)
    , _cuuFields      :: !(Maybe Text)
    , _cuuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuQuotaUser'
--
-- * 'cuuPart'
--
-- * 'cuuPrettyPrint'
--
-- * 'cuuUserIp'
--
-- * 'cuuKey'
--
-- * 'cuuOauthToken'
--
-- * 'cuuFields'
--
-- * 'cuuAlt'
commentsUpdate
    :: Text -- ^ 'part'
    -> CommentsUpdate
commentsUpdate pCuuPart_ =
    CommentsUpdate
    { _cuuQuotaUser = Nothing
    , _cuuPart = pCuuPart_
    , _cuuPrettyPrint = True
    , _cuuUserIp = Nothing
    , _cuuKey = Nothing
    , _cuuOauthToken = Nothing
    , _cuuFields = Nothing
    , _cuuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuuQuotaUser :: Lens' CommentsUpdate' (Maybe Text)
cuuQuotaUser
  = lens _cuuQuotaUser (\ s a -> s{_cuuQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. You must at least include the snippet part in the parameter
-- value since that part contains all of the properties that the API
-- request can update.
cuuPart :: Lens' CommentsUpdate' Text
cuuPart = lens _cuuPart (\ s a -> s{_cuuPart = a})

-- | Returns response with indentations and line breaks.
cuuPrettyPrint :: Lens' CommentsUpdate' Bool
cuuPrettyPrint
  = lens _cuuPrettyPrint
      (\ s a -> s{_cuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuuUserIp :: Lens' CommentsUpdate' (Maybe Text)
cuuUserIp
  = lens _cuuUserIp (\ s a -> s{_cuuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' CommentsUpdate' (Maybe Text)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOauthToken :: Lens' CommentsUpdate' (Maybe Text)
cuuOauthToken
  = lens _cuuOauthToken
      (\ s a -> s{_cuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' CommentsUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

-- | Data format for the response.
cuuAlt :: Lens' CommentsUpdate' Text
cuuAlt = lens _cuuAlt (\ s a -> s{_cuuAlt = a})

instance GoogleRequest CommentsUpdate' where
        type Rs CommentsUpdate' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsUpdate{..}
          = go _cuuQuotaUser (Just _cuuPart) _cuuPrettyPrint
              _cuuUserIp
              _cuuKey
              _cuuOauthToken
              _cuuFields
              _cuuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsUpdateAPI)
                      r
                      u
