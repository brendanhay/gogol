{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Comments.MarkAsSpam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.markAsSpam@.
module Network.Google.API.YouTube.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamAPI

    -- * Creating a Request
    , commentsMarkAsSpam'
    , CommentsMarkAsSpam'

    -- * Request Lenses
    , cmasQuotaUser
    , cmasPrettyPrint
    , cmasUserIp
    , cmasKey
    , cmasId
    , cmasOauthToken
    , cmasFields
    , cmasAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.comments.markAsSpam which the
-- 'CommentsMarkAsSpam'' request conforms to.
type CommentsMarkAsSpamAPI =
     "comments" :>
       "markAsSpam" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "id" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ 'commentsMarkAsSpam'' smart constructor.
data CommentsMarkAsSpam' = CommentsMarkAsSpam'
    { _cmasQuotaUser   :: !(Maybe Text)
    , _cmasPrettyPrint :: !Bool
    , _cmasUserIp      :: !(Maybe Text)
    , _cmasKey         :: !(Maybe Text)
    , _cmasId          :: !Text
    , _cmasOauthToken  :: !(Maybe Text)
    , _cmasFields      :: !(Maybe Text)
    , _cmasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsMarkAsSpam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasQuotaUser'
--
-- * 'cmasPrettyPrint'
--
-- * 'cmasUserIp'
--
-- * 'cmasKey'
--
-- * 'cmasId'
--
-- * 'cmasOauthToken'
--
-- * 'cmasFields'
--
-- * 'cmasAlt'
commentsMarkAsSpam'
    :: Text -- ^ 'id'
    -> CommentsMarkAsSpam'
commentsMarkAsSpam' pCmasId_ =
    CommentsMarkAsSpam'
    { _cmasQuotaUser = Nothing
    , _cmasPrettyPrint = True
    , _cmasUserIp = Nothing
    , _cmasKey = Nothing
    , _cmasId = pCmasId_
    , _cmasOauthToken = Nothing
    , _cmasFields = Nothing
    , _cmasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cmasQuotaUser :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasQuotaUser
  = lens _cmasQuotaUser
      (\ s a -> s{_cmasQuotaUser = a})

-- | Returns response with indentations and line breaks.
cmasPrettyPrint :: Lens' CommentsMarkAsSpam' Bool
cmasPrettyPrint
  = lens _cmasPrettyPrint
      (\ s a -> s{_cmasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cmasUserIp :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasUserIp
  = lens _cmasUserIp (\ s a -> s{_cmasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cmasKey :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasKey = lens _cmasKey (\ s a -> s{_cmasKey = a})

-- | The id parameter specifies a comma-separated list of IDs of comments
-- that the caller believes should be classified as spam.
cmasId :: Lens' CommentsMarkAsSpam' Text
cmasId = lens _cmasId (\ s a -> s{_cmasId = a})

-- | OAuth 2.0 token for the current user.
cmasOauthToken :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasOauthToken
  = lens _cmasOauthToken
      (\ s a -> s{_cmasOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cmasFields :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasFields
  = lens _cmasFields (\ s a -> s{_cmasFields = a})

-- | Data format for the response.
cmasAlt :: Lens' CommentsMarkAsSpam' Alt
cmasAlt = lens _cmasAlt (\ s a -> s{_cmasAlt = a})

instance GoogleRequest CommentsMarkAsSpam' where
        type Rs CommentsMarkAsSpam' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsMarkAsSpam'{..}
          = go _cmasQuotaUser (Just _cmasPrettyPrint)
              _cmasUserIp
              _cmasKey
              (Just _cmasId)
              _cmasOauthToken
              _cmasFields
              (Just _cmasAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsMarkAsSpamAPI)
                      r
                      u
