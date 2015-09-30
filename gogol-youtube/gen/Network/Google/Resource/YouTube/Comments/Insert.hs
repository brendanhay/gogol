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
-- Module      : Network.Google.Resource.YouTube.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsInsert@.
module Network.Google.Resource.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , cQuotaUser
    , cPart
    , cPrettyPrint
    , cUserIp
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsInsert@ which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "comments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Comment

-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPart        :: !Text
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cKey         :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPart'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
commentsInsert'
    :: Text -- ^ 'part'
    -> CommentsInsert'
commentsInsert' pCPart_ =
    CommentsInsert'
    { _cQuotaUser = Nothing
    , _cPart = pCPart_
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CommentsInsert' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
cPart :: Lens' CommentsInsert' Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CommentsInsert' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CommentsInsert' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CommentsInsert' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CommentsInsert' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CommentsInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CommentsInsert' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsInsert'{..}
          = go _cQuotaUser (Just _cPart) (Just _cPrettyPrint)
              _cUserIp
              _cKey
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsInsertResource)
                      r
                      u
