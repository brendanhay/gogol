{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Blogger.Posts.Update
    (
    -- * REST Resource
      PostsUpdateResource

    -- * Creating a Request
    , postsUpdate'
    , PostsUpdate'

    -- * Request Lenses
    , puFetchBody
    , puQuotaUser
    , puPrettyPrint
    , puUserIP
    , puFetchImages
    , puBlogId
    , puPayload
    , puMaxComments
    , puKey
    , puRevert
    , puPostId
    , puOAuthToken
    , puPublish
    , puFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsUpdate@ which the
-- 'PostsUpdate'' request conforms to.
type PostsUpdateResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "fetchBody" Bool :>
               QueryParam "fetchImages" Bool :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "revert" Bool :>
                     QueryParam "publish" Bool :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Post :> Put '[JSON] Post

-- | Update a post.
--
-- /See:/ 'postsUpdate'' smart constructor.
data PostsUpdate' = PostsUpdate'
    { _puFetchBody   :: !Bool
    , _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIP      :: !(Maybe Text)
    , _puFetchImages :: !(Maybe Bool)
    , _puBlogId      :: !Text
    , _puPayload     :: !Post
    , _puMaxComments :: !(Maybe Word32)
    , _puKey         :: !(Maybe Key)
    , _puRevert      :: !(Maybe Bool)
    , _puPostId      :: !Text
    , _puOAuthToken  :: !(Maybe OAuthToken)
    , _puPublish     :: !(Maybe Bool)
    , _puFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puFetchBody'
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIP'
--
-- * 'puFetchImages'
--
-- * 'puBlogId'
--
-- * 'puPayload'
--
-- * 'puMaxComments'
--
-- * 'puKey'
--
-- * 'puRevert'
--
-- * 'puPostId'
--
-- * 'puOAuthToken'
--
-- * 'puPublish'
--
-- * 'puFields'
postsUpdate'
    :: Text -- ^ 'blogId'
    -> Post -- ^ 'payload'
    -> Text -- ^ 'postId'
    -> PostsUpdate'
postsUpdate' pPuBlogId_ pPuPayload_ pPuPostId_ =
    PostsUpdate'
    { _puFetchBody = True
    , _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIP = Nothing
    , _puFetchImages = Nothing
    , _puBlogId = pPuBlogId_
    , _puPayload = pPuPayload_
    , _puMaxComments = Nothing
    , _puKey = Nothing
    , _puRevert = Nothing
    , _puPostId = pPuPostId_
    , _puOAuthToken = Nothing
    , _puPublish = Nothing
    , _puFields = Nothing
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
puFetchBody :: Lens' PostsUpdate' Bool
puFetchBody
  = lens _puFetchBody (\ s a -> s{_puFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PostsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PostsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PostsUpdate' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
puFetchImages :: Lens' PostsUpdate' (Maybe Bool)
puFetchImages
  = lens _puFetchImages
      (\ s a -> s{_puFetchImages = a})

-- | The ID of the Blog.
puBlogId :: Lens' PostsUpdate' Text
puBlogId = lens _puBlogId (\ s a -> s{_puBlogId = a})

-- | Multipart request metadata.
puPayload :: Lens' PostsUpdate' Post
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Maximum number of comments to retrieve with the returned post.
puMaxComments :: Lens' PostsUpdate' (Maybe Word32)
puMaxComments
  = lens _puMaxComments
      (\ s a -> s{_puMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PostsUpdate' (Maybe Key)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
puRevert :: Lens' PostsUpdate' (Maybe Bool)
puRevert = lens _puRevert (\ s a -> s{_puRevert = a})

-- | The ID of the Post.
puPostId :: Lens' PostsUpdate' Text
puPostId = lens _puPostId (\ s a -> s{_puPostId = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PostsUpdate' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
puPublish :: Lens' PostsUpdate' (Maybe Bool)
puPublish
  = lens _puPublish (\ s a -> s{_puPublish = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PostsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PostsUpdate' where
        authKey = puKey . _Just
        authToken = puOAuthToken . _Just

instance GoogleRequest PostsUpdate' where
        type Rs PostsUpdate' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsUpdate'{..}
          = go _puBlogId _puPostId (Just _puFetchBody)
              _puFetchImages
              _puMaxComments
              _puRevert
              _puPublish
              _puQuotaUser
              (Just _puPrettyPrint)
              _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
              _puPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostsUpdateResource)
                      r
                      u
