{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.CommentThreads.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new top-level comment. To add a reply to an existing comment,
-- use the comments.insert method instead.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.commentThreads.insert@.
module Network.Google.API.YouTube.CommentThreads.Insert
    (
    -- * REST Resource
      CommentThreadsInsertAPI

    -- * Creating a Request
    , commentThreadsInsert'
    , CommentThreadsInsert'

    -- * Request Lenses
    , ctiQuotaUser
    , ctiPart
    , ctiPrettyPrint
    , ctiUserIp
    , ctiKey
    , ctiOauthToken
    , ctiFields
    , ctiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.commentThreads.insert which the
-- 'CommentThreadsInsert'' request conforms to.
type CommentThreadsInsertAPI =
     "commentThreads" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] CommentThread

-- | Creates a new top-level comment. To add a reply to an existing comment,
-- use the comments.insert method instead.
--
-- /See:/ 'commentThreadsInsert'' smart constructor.
data CommentThreadsInsert' = CommentThreadsInsert'
    { _ctiQuotaUser   :: !(Maybe Text)
    , _ctiPart        :: !Text
    , _ctiPrettyPrint :: !Bool
    , _ctiUserIp      :: !(Maybe Text)
    , _ctiKey         :: !(Maybe Text)
    , _ctiOauthToken  :: !(Maybe Text)
    , _ctiFields      :: !(Maybe Text)
    , _ctiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctiQuotaUser'
--
-- * 'ctiPart'
--
-- * 'ctiPrettyPrint'
--
-- * 'ctiUserIp'
--
-- * 'ctiKey'
--
-- * 'ctiOauthToken'
--
-- * 'ctiFields'
--
-- * 'ctiAlt'
commentThreadsInsert'
    :: Text -- ^ 'part'
    -> CommentThreadsInsert'
commentThreadsInsert' pCtiPart_ =
    CommentThreadsInsert'
    { _ctiQuotaUser = Nothing
    , _ctiPart = pCtiPart_
    , _ctiPrettyPrint = True
    , _ctiUserIp = Nothing
    , _ctiKey = Nothing
    , _ctiOauthToken = Nothing
    , _ctiFields = Nothing
    , _ctiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctiQuotaUser :: Lens' CommentThreadsInsert' (Maybe Text)
ctiQuotaUser
  = lens _ctiQuotaUser (\ s a -> s{_ctiQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
ctiPart :: Lens' CommentThreadsInsert' Text
ctiPart = lens _ctiPart (\ s a -> s{_ctiPart = a})

-- | Returns response with indentations and line breaks.
ctiPrettyPrint :: Lens' CommentThreadsInsert' Bool
ctiPrettyPrint
  = lens _ctiPrettyPrint
      (\ s a -> s{_ctiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctiUserIp :: Lens' CommentThreadsInsert' (Maybe Text)
ctiUserIp
  = lens _ctiUserIp (\ s a -> s{_ctiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctiKey :: Lens' CommentThreadsInsert' (Maybe Text)
ctiKey = lens _ctiKey (\ s a -> s{_ctiKey = a})

-- | OAuth 2.0 token for the current user.
ctiOauthToken :: Lens' CommentThreadsInsert' (Maybe Text)
ctiOauthToken
  = lens _ctiOauthToken
      (\ s a -> s{_ctiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctiFields :: Lens' CommentThreadsInsert' (Maybe Text)
ctiFields
  = lens _ctiFields (\ s a -> s{_ctiFields = a})

-- | Data format for the response.
ctiAlt :: Lens' CommentThreadsInsert' Alt
ctiAlt = lens _ctiAlt (\ s a -> s{_ctiAlt = a})

instance GoogleRequest CommentThreadsInsert' where
        type Rs CommentThreadsInsert' = CommentThread
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentThreadsInsert'{..}
          = go _ctiQuotaUser (Just _ctiPart)
              (Just _ctiPrettyPrint)
              _ctiUserIp
              _ctiKey
              _ctiOauthToken
              _ctiFields
              (Just _ctiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentThreadsInsertAPI)
                      r
                      u
