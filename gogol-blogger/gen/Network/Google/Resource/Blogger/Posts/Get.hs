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
-- Module      : Network.Google.Resource.Blogger.Posts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsGet@.
module Network.Google.Resource.Blogger.Posts.Get
    (
    -- * REST Resource
      PostsGetResource

    -- * Creating a Request
    , postsGet'
    , PostsGet'

    -- * Request Lenses
    , pgFetchBody
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgFetchImages
    , pgBlogId
    , pgMaxComments
    , pgKey
    , pgView
    , pgPostId
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsGet@ which the
-- 'PostsGet'' request conforms to.
type PostsGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fetchImages" Bool :>
                       QueryParam "maxComments" Word32 :>
                         QueryParam "key" Text :>
                           QueryParam "view" BloggerPostsGetView :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] Post

-- | Get a post by ID.
--
-- /See:/ 'postsGet'' smart constructor.
data PostsGet' = PostsGet'
    { _pgFetchBody   :: !Bool
    , _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgFetchImages :: !(Maybe Bool)
    , _pgBlogId      :: !Text
    , _pgMaxComments :: !(Maybe Word32)
    , _pgKey         :: !(Maybe Text)
    , _pgView        :: !(Maybe BloggerPostsGetView)
    , _pgPostId      :: !Text
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgFetchBody'
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgFetchImages'
--
-- * 'pgBlogId'
--
-- * 'pgMaxComments'
--
-- * 'pgKey'
--
-- * 'pgView'
--
-- * 'pgPostId'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
postsGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsGet'
postsGet' pPgBlogId_ pPgPostId_ =
    PostsGet'
    { _pgFetchBody = True
    , _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgFetchImages = Nothing
    , _pgBlogId = pPgBlogId_
    , _pgMaxComments = Nothing
    , _pgKey = Nothing
    , _pgView = Nothing
    , _pgPostId = pPgPostId_
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Whether the body content of the post is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pgFetchBody :: Lens' PostsGet' Bool
pgFetchBody
  = lens _pgFetchBody (\ s a -> s{_pgFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PostsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PostsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PostsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | Whether image URL metadata for each post is included (default: false).
pgFetchImages :: Lens' PostsGet' (Maybe Bool)
pgFetchImages
  = lens _pgFetchImages
      (\ s a -> s{_pgFetchImages = a})

-- | ID of the blog to fetch the post from.
pgBlogId :: Lens' PostsGet' Text
pgBlogId = lens _pgBlogId (\ s a -> s{_pgBlogId = a})

-- | Maximum number of comments to pull back on a post.
pgMaxComments :: Lens' PostsGet' (Maybe Word32)
pgMaxComments
  = lens _pgMaxComments
      (\ s a -> s{_pgMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PostsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgView :: Lens' PostsGet' (Maybe BloggerPostsGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | The ID of the post
pgPostId :: Lens' PostsGet' Text
pgPostId = lens _pgPostId (\ s a -> s{_pgPostId = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PostsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PostsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PostsGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PostsGet' where
        type Rs PostsGet' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsGet'{..}
          = go (Just _pgFetchBody) _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIp
              _pgFetchImages
              _pgBlogId
              _pgMaxComments
              _pgKey
              _pgView
              _pgPostId
              _pgOauthToken
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsGetResource) r
                      u
