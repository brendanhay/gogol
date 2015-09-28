{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Posts.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled post to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.revert@.
module Network.Google.API.Blogger.Posts.Revert
    (
    -- * REST Resource
      PostsRevertAPI

    -- * Creating a Request
    , postsRevert'
    , PostsRevert'

    -- * Request Lenses
    , prrQuotaUser
    , prrPrettyPrint
    , prrUserIp
    , prrBlogId
    , prrKey
    , prrPostId
    , prrOauthToken
    , prrFields
    , prrAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.posts.revert which the
-- 'PostsRevert'' request conforms to.
type PostsRevertAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "revert" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Post

-- | Revert a published or scheduled post to draft state.
--
-- /See:/ 'postsRevert'' smart constructor.
data PostsRevert' = PostsRevert'
    { _prrQuotaUser   :: !(Maybe Text)
    , _prrPrettyPrint :: !Bool
    , _prrUserIp      :: !(Maybe Text)
    , _prrBlogId      :: !Text
    , _prrKey         :: !(Maybe Text)
    , _prrPostId      :: !Text
    , _prrOauthToken  :: !(Maybe Text)
    , _prrFields      :: !(Maybe Text)
    , _prrAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrQuotaUser'
--
-- * 'prrPrettyPrint'
--
-- * 'prrUserIp'
--
-- * 'prrBlogId'
--
-- * 'prrKey'
--
-- * 'prrPostId'
--
-- * 'prrOauthToken'
--
-- * 'prrFields'
--
-- * 'prrAlt'
postsRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsRevert'
postsRevert' pPrrBlogId_ pPrrPostId_ =
    PostsRevert'
    { _prrQuotaUser = Nothing
    , _prrPrettyPrint = True
    , _prrUserIp = Nothing
    , _prrBlogId = pPrrBlogId_
    , _prrKey = Nothing
    , _prrPostId = pPrrPostId_
    , _prrOauthToken = Nothing
    , _prrFields = Nothing
    , _prrAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prrQuotaUser :: Lens' PostsRevert' (Maybe Text)
prrQuotaUser
  = lens _prrQuotaUser (\ s a -> s{_prrQuotaUser = a})

-- | Returns response with indentations and line breaks.
prrPrettyPrint :: Lens' PostsRevert' Bool
prrPrettyPrint
  = lens _prrPrettyPrint
      (\ s a -> s{_prrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prrUserIp :: Lens' PostsRevert' (Maybe Text)
prrUserIp
  = lens _prrUserIp (\ s a -> s{_prrUserIp = a})

-- | The ID of the Blog.
prrBlogId :: Lens' PostsRevert' Text
prrBlogId
  = lens _prrBlogId (\ s a -> s{_prrBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prrKey :: Lens' PostsRevert' (Maybe Text)
prrKey = lens _prrKey (\ s a -> s{_prrKey = a})

-- | The ID of the Post.
prrPostId :: Lens' PostsRevert' Text
prrPostId
  = lens _prrPostId (\ s a -> s{_prrPostId = a})

-- | OAuth 2.0 token for the current user.
prrOauthToken :: Lens' PostsRevert' (Maybe Text)
prrOauthToken
  = lens _prrOauthToken
      (\ s a -> s{_prrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prrFields :: Lens' PostsRevert' (Maybe Text)
prrFields
  = lens _prrFields (\ s a -> s{_prrFields = a})

-- | Data format for the response.
prrAlt :: Lens' PostsRevert' Alt
prrAlt = lens _prrAlt (\ s a -> s{_prrAlt = a})

instance GoogleRequest PostsRevert' where
        type Rs PostsRevert' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsRevert'{..}
          = go _prrQuotaUser (Just _prrPrettyPrint) _prrUserIp
              _prrBlogId
              _prrKey
              _prrPostId
              _prrOauthToken
              _prrFields
              (Just _prrAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsRevertAPI) r u
