{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a comment.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.get@.
module Network.Google.API.PlusDomains.Comments.Get
    (
    -- * REST Resource
      CommentsGetAPI

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIp
    , cggKey
    , cggOauthToken
    , cggCommentId
    , cggFields
    , cggAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.comments.get which the
-- 'CommentsGet'' request conforms to.
type CommentsGetAPI =
     "comments" :>
       Capture "commentId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Comment

-- | Get a comment.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIp      :: !(Maybe Text)
    , _cggKey         :: !(Maybe Text)
    , _cggOauthToken  :: !(Maybe Text)
    , _cggCommentId   :: !Text
    , _cggFields      :: !(Maybe Text)
    , _cggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIp'
--
-- * 'cggKey'
--
-- * 'cggOauthToken'
--
-- * 'cggCommentId'
--
-- * 'cggFields'
--
-- * 'cggAlt'
commentsGet'
    :: Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCggCommentId_ =
    CommentsGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIp = Nothing
    , _cggKey = Nothing
    , _cggOauthToken = Nothing
    , _cggCommentId = pCggCommentId_
    , _cggFields = Nothing
    , _cggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CommentsGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CommentsGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' CommentsGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CommentsGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' CommentsGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | The ID of the comment to get.
cggCommentId :: Lens' CommentsGet' Text
cggCommentId
  = lens _cggCommentId (\ s a -> s{_cggCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CommentsGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' CommentsGet' Alt
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CommentsGet'{..}
          = go _cggQuotaUser (Just _cggPrettyPrint) _cggUserIp
              _cggKey
              _cggOauthToken
              _cggCommentId
              _cggFields
              (Just _cggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsGetAPI) r u
