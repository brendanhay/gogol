{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Comments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.update@.
module Network.Google.API.YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateAPI

    -- * Creating a Request
    , commentsUpdate'
    , CommentsUpdate'

    -- * Request Lenses
    , comQuotaUser
    , comPart
    , comPrettyPrint
    , comUserIp
    , comKey
    , comOauthToken
    , comFields
    , comAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.comments.update which the
-- 'CommentsUpdate'' request conforms to.
type CommentsUpdateAPI =
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
    { _comQuotaUser   :: !(Maybe Text)
    , _comPart        :: !Text
    , _comPrettyPrint :: !Bool
    , _comUserIp      :: !(Maybe Text)
    , _comKey         :: !(Maybe Text)
    , _comOauthToken  :: !(Maybe Text)
    , _comFields      :: !(Maybe Text)
    , _comAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPart'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIp'
--
-- * 'comKey'
--
-- * 'comOauthToken'
--
-- * 'comFields'
--
-- * 'comAlt'
commentsUpdate'
    :: Text -- ^ 'part'
    -> CommentsUpdate'
commentsUpdate' pComPart_ =
    CommentsUpdate'
    { _comQuotaUser = Nothing
    , _comPart = pComPart_
    , _comPrettyPrint = True
    , _comUserIp = Nothing
    , _comKey = Nothing
    , _comOauthToken = Nothing
    , _comFields = Nothing
    , _comAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsUpdate' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. You must at least include the snippet part in the parameter
-- value since that part contains all of the properties that the API
-- request can update.
comPart :: Lens' CommentsUpdate' Text
comPart = lens _comPart (\ s a -> s{_comPart = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsUpdate' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIp :: Lens' CommentsUpdate' (Maybe Text)
comUserIp
  = lens _comUserIp (\ s a -> s{_comUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsUpdate' (Maybe Text)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | OAuth 2.0 token for the current user.
comOauthToken :: Lens' CommentsUpdate' (Maybe Text)
comOauthToken
  = lens _comOauthToken
      (\ s a -> s{_comOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsUpdate' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

-- | Data format for the response.
comAlt :: Lens' CommentsUpdate' Alt
comAlt = lens _comAlt (\ s a -> s{_comAlt = a})

instance GoogleRequest CommentsUpdate' where
        type Rs CommentsUpdate' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsUpdate'{..}
          = go _comQuotaUser (Just _comPart)
              (Just _comPrettyPrint)
              _comUserIp
              _comKey
              _comOauthToken
              _comFields
              (Just _comAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsUpdateAPI)
                      r
                      u
