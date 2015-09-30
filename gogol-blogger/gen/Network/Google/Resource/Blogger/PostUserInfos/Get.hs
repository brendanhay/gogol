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
-- Module      : Network.Google.Resource.Blogger.PostUserInfos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one post and user info pair, by post ID and user ID. The post user
-- info contains per-user information about the post, such as access
-- rights, specific to the user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostUserInfosGet@.
module Network.Google.Resource.Blogger.PostUserInfos.Get
    (
    -- * REST Resource
      PostUserInfosGetResource

    -- * Creating a Request
    , postUserInfosGet'
    , PostUserInfosGet'

    -- * Request Lenses
    , puigQuotaUser
    , puigPrettyPrint
    , puigUserIp
    , puigBlogId
    , puigMaxComments
    , puigUserId
    , puigKey
    , puigPostId
    , puigOauthToken
    , puigFields
    , puigAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostUserInfosGet@ which the
-- 'PostUserInfosGet'' request conforms to.
type PostUserInfosGetResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "maxComments" Word32 :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] PostUserInfo

-- | Gets one post and user info pair, by post ID and user ID. The post user
-- info contains per-user information about the post, such as access
-- rights, specific to the user.
--
-- /See:/ 'postUserInfosGet'' smart constructor.
data PostUserInfosGet' = PostUserInfosGet'
    { _puigQuotaUser   :: !(Maybe Text)
    , _puigPrettyPrint :: !Bool
    , _puigUserIp      :: !(Maybe Text)
    , _puigBlogId      :: !Text
    , _puigMaxComments :: !(Maybe Word32)
    , _puigUserId      :: !Text
    , _puigKey         :: !(Maybe Text)
    , _puigPostId      :: !Text
    , _puigOauthToken  :: !(Maybe Text)
    , _puigFields      :: !(Maybe Text)
    , _puigAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puigQuotaUser'
--
-- * 'puigPrettyPrint'
--
-- * 'puigUserIp'
--
-- * 'puigBlogId'
--
-- * 'puigMaxComments'
--
-- * 'puigUserId'
--
-- * 'puigKey'
--
-- * 'puigPostId'
--
-- * 'puigOauthToken'
--
-- * 'puigFields'
--
-- * 'puigAlt'
postUserInfosGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'postId'
    -> PostUserInfosGet'
postUserInfosGet' pPuigBlogId_ pPuigUserId_ pPuigPostId_ =
    PostUserInfosGet'
    { _puigQuotaUser = Nothing
    , _puigPrettyPrint = True
    , _puigUserIp = Nothing
    , _puigBlogId = pPuigBlogId_
    , _puigMaxComments = Nothing
    , _puigUserId = pPuigUserId_
    , _puigKey = Nothing
    , _puigPostId = pPuigPostId_
    , _puigOauthToken = Nothing
    , _puigFields = Nothing
    , _puigAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puigQuotaUser :: Lens' PostUserInfosGet' (Maybe Text)
puigQuotaUser
  = lens _puigQuotaUser
      (\ s a -> s{_puigQuotaUser = a})

-- | Returns response with indentations and line breaks.
puigPrettyPrint :: Lens' PostUserInfosGet' Bool
puigPrettyPrint
  = lens _puigPrettyPrint
      (\ s a -> s{_puigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puigUserIp :: Lens' PostUserInfosGet' (Maybe Text)
puigUserIp
  = lens _puigUserIp (\ s a -> s{_puigUserIp = a})

-- | The ID of the blog.
puigBlogId :: Lens' PostUserInfosGet' Text
puigBlogId
  = lens _puigBlogId (\ s a -> s{_puigBlogId = a})

-- | Maximum number of comments to pull back on a post.
puigMaxComments :: Lens' PostUserInfosGet' (Maybe Word32)
puigMaxComments
  = lens _puigMaxComments
      (\ s a -> s{_puigMaxComments = a})

-- | ID of the user for the per-user information to be fetched. Either the
-- word \'self\' (sans quote marks) or the user\'s profile identifier.
puigUserId :: Lens' PostUserInfosGet' Text
puigUserId
  = lens _puigUserId (\ s a -> s{_puigUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puigKey :: Lens' PostUserInfosGet' (Maybe Text)
puigKey = lens _puigKey (\ s a -> s{_puigKey = a})

-- | The ID of the post to get.
puigPostId :: Lens' PostUserInfosGet' Text
puigPostId
  = lens _puigPostId (\ s a -> s{_puigPostId = a})

-- | OAuth 2.0 token for the current user.
puigOauthToken :: Lens' PostUserInfosGet' (Maybe Text)
puigOauthToken
  = lens _puigOauthToken
      (\ s a -> s{_puigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puigFields :: Lens' PostUserInfosGet' (Maybe Text)
puigFields
  = lens _puigFields (\ s a -> s{_puigFields = a})

-- | Data format for the response.
puigAlt :: Lens' PostUserInfosGet' Alt
puigAlt = lens _puigAlt (\ s a -> s{_puigAlt = a})

instance GoogleRequest PostUserInfosGet' where
        type Rs PostUserInfosGet' = PostUserInfo
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostUserInfosGet'{..}
          = go _puigQuotaUser (Just _puigPrettyPrint)
              _puigUserIp
              _puigBlogId
              _puigMaxComments
              _puigUserId
              _puigKey
              _puigPostId
              _puigOauthToken
              _puigFields
              (Just _puigAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostUserInfosGetResource)
                      r
                      u
