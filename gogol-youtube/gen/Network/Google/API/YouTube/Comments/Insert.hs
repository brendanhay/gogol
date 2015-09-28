{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.insert@.
module Network.Google.API.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertAPI

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciiQuotaUser
    , ciiPart
    , ciiPrettyPrint
    , ciiUserIp
    , ciiKey
    , ciiOauthToken
    , ciiFields
    , ciiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.comments.insert which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertAPI =
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
    { _ciiQuotaUser   :: !(Maybe Text)
    , _ciiPart        :: !Text
    , _ciiPrettyPrint :: !Bool
    , _ciiUserIp      :: !(Maybe Text)
    , _ciiKey         :: !(Maybe Text)
    , _ciiOauthToken  :: !(Maybe Text)
    , _ciiFields      :: !(Maybe Text)
    , _ciiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiQuotaUser'
--
-- * 'ciiPart'
--
-- * 'ciiPrettyPrint'
--
-- * 'ciiUserIp'
--
-- * 'ciiKey'
--
-- * 'ciiOauthToken'
--
-- * 'ciiFields'
--
-- * 'ciiAlt'
commentsInsert'
    :: Text -- ^ 'part'
    -> CommentsInsert'
commentsInsert' pCiiPart_ =
    CommentsInsert'
    { _ciiQuotaUser = Nothing
    , _ciiPart = pCiiPart_
    , _ciiPrettyPrint = True
    , _ciiUserIp = Nothing
    , _ciiKey = Nothing
    , _ciiOauthToken = Nothing
    , _ciiFields = Nothing
    , _ciiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciiQuotaUser :: Lens' CommentsInsert' (Maybe Text)
ciiQuotaUser
  = lens _ciiQuotaUser (\ s a -> s{_ciiQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
ciiPart :: Lens' CommentsInsert' Text
ciiPart = lens _ciiPart (\ s a -> s{_ciiPart = a})

-- | Returns response with indentations and line breaks.
ciiPrettyPrint :: Lens' CommentsInsert' Bool
ciiPrettyPrint
  = lens _ciiPrettyPrint
      (\ s a -> s{_ciiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciiUserIp :: Lens' CommentsInsert' (Maybe Text)
ciiUserIp
  = lens _ciiUserIp (\ s a -> s{_ciiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciiKey :: Lens' CommentsInsert' (Maybe Text)
ciiKey = lens _ciiKey (\ s a -> s{_ciiKey = a})

-- | OAuth 2.0 token for the current user.
ciiOauthToken :: Lens' CommentsInsert' (Maybe Text)
ciiOauthToken
  = lens _ciiOauthToken
      (\ s a -> s{_ciiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciiFields :: Lens' CommentsInsert' (Maybe Text)
ciiFields
  = lens _ciiFields (\ s a -> s{_ciiFields = a})

-- | Data format for the response.
ciiAlt :: Lens' CommentsInsert' Alt
ciiAlt = lens _ciiAlt (\ s a -> s{_ciiAlt = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsInsert'{..}
          = go _ciiQuotaUser (Just _ciiPart)
              (Just _ciiPrettyPrint)
              _ciiUserIp
              _ciiKey
              _ciiOauthToken
              _ciiFields
              (Just _ciiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsInsertAPI)
                      r
                      u
