{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsUpdate@.
module Blogger.Posts.Update
    (
    -- * REST Resource
      PostsUpdateAPI

    -- * Creating a Request
    , postsUpdate
    , PostsUpdate

    -- * Request Lenses
    , puuFetchBody
    , puuQuotaUser
    , puuPrettyPrint
    , puuUserIp
    , puuFetchImages
    , puuBlogId
    , puuMaxComments
    , puuKey
    , puuRevert
    , puuPostId
    , puuOauthToken
    , puuPublish
    , puuFields
    , puuAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsUpdate@ which the
-- 'PostsUpdate' request conforms to.
type PostsUpdateAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "fetchImages" Bool :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "revert" Bool :>
                     QueryParam "publish" Bool :> Put '[JSON] Post

-- | Update a post.
--
-- /See:/ 'postsUpdate' smart constructor.
data PostsUpdate = PostsUpdate
    { _puuFetchBody   :: !Bool
    , _puuQuotaUser   :: !(Maybe Text)
    , _puuPrettyPrint :: !Bool
    , _puuUserIp      :: !(Maybe Text)
    , _puuFetchImages :: !(Maybe Bool)
    , _puuBlogId      :: !Text
    , _puuMaxComments :: !(Maybe Word32)
    , _puuKey         :: !(Maybe Text)
    , _puuRevert      :: !(Maybe Bool)
    , _puuPostId      :: !Text
    , _puuOauthToken  :: !(Maybe Text)
    , _puuPublish     :: !(Maybe Bool)
    , _puuFields      :: !(Maybe Text)
    , _puuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuFetchBody'
--
-- * 'puuQuotaUser'
--
-- * 'puuPrettyPrint'
--
-- * 'puuUserIp'
--
-- * 'puuFetchImages'
--
-- * 'puuBlogId'
--
-- * 'puuMaxComments'
--
-- * 'puuKey'
--
-- * 'puuRevert'
--
-- * 'puuPostId'
--
-- * 'puuOauthToken'
--
-- * 'puuPublish'
--
-- * 'puuFields'
--
-- * 'puuAlt'
postsUpdate
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsUpdate
postsUpdate pPuuBlogId_ pPuuPostId_ =
    PostsUpdate
    { _puuFetchBody = True
    , _puuQuotaUser = Nothing
    , _puuPrettyPrint = True
    , _puuUserIp = Nothing
    , _puuFetchImages = Nothing
    , _puuBlogId = pPuuBlogId_
    , _puuMaxComments = Nothing
    , _puuKey = Nothing
    , _puuRevert = Nothing
    , _puuPostId = pPuuPostId_
    , _puuOauthToken = Nothing
    , _puuPublish = Nothing
    , _puuFields = Nothing
    , _puuAlt = "json"
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
puuFetchBody :: Lens' PostsUpdate' Bool
puuFetchBody
  = lens _puuFetchBody (\ s a -> s{_puuFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puuQuotaUser :: Lens' PostsUpdate' (Maybe Text)
puuQuotaUser
  = lens _puuQuotaUser (\ s a -> s{_puuQuotaUser = a})

-- | Returns response with indentations and line breaks.
puuPrettyPrint :: Lens' PostsUpdate' Bool
puuPrettyPrint
  = lens _puuPrettyPrint
      (\ s a -> s{_puuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puuUserIp :: Lens' PostsUpdate' (Maybe Text)
puuUserIp
  = lens _puuUserIp (\ s a -> s{_puuUserIp = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
puuFetchImages :: Lens' PostsUpdate' (Maybe Bool)
puuFetchImages
  = lens _puuFetchImages
      (\ s a -> s{_puuFetchImages = a})

-- | The ID of the Blog.
puuBlogId :: Lens' PostsUpdate' Text
puuBlogId
  = lens _puuBlogId (\ s a -> s{_puuBlogId = a})

-- | Maximum number of comments to retrieve with the returned post.
puuMaxComments :: Lens' PostsUpdate' (Maybe Word32)
puuMaxComments
  = lens _puuMaxComments
      (\ s a -> s{_puuMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puuKey :: Lens' PostsUpdate' (Maybe Text)
puuKey = lens _puuKey (\ s a -> s{_puuKey = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
puuRevert :: Lens' PostsUpdate' (Maybe Bool)
puuRevert
  = lens _puuRevert (\ s a -> s{_puuRevert = a})

-- | The ID of the Post.
puuPostId :: Lens' PostsUpdate' Text
puuPostId
  = lens _puuPostId (\ s a -> s{_puuPostId = a})

-- | OAuth 2.0 token for the current user.
puuOauthToken :: Lens' PostsUpdate' (Maybe Text)
puuOauthToken
  = lens _puuOauthToken
      (\ s a -> s{_puuOauthToken = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
puuPublish :: Lens' PostsUpdate' (Maybe Bool)
puuPublish
  = lens _puuPublish (\ s a -> s{_puuPublish = a})

-- | Selector specifying which fields to include in a partial response.
puuFields :: Lens' PostsUpdate' (Maybe Text)
puuFields
  = lens _puuFields (\ s a -> s{_puuFields = a})

-- | Data format for the response.
puuAlt :: Lens' PostsUpdate' Text
puuAlt = lens _puuAlt (\ s a -> s{_puuAlt = a})

instance GoogleRequest PostsUpdate' where
        type Rs PostsUpdate' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsUpdate{..}
          = go (Just _puuFetchBody) _puuQuotaUser
              _puuPrettyPrint
              _puuUserIp
              _puuFetchImages
              _puuBlogId
              _puuMaxComments
              _puuKey
              _puuRevert
              _puuPostId
              _puuOauthToken
              _puuPublish
              _puuFields
              _puuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsUpdateAPI) r u
