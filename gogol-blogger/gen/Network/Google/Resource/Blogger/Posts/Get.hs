{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , pgUserIP
    , pgFetchImages
    , pgBlogId
    , pgMaxComments
    , pgKey
    , pgView
    , pgPostId
    , pgOAuthToken
    , pgFields
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
               QueryParam "fetchImages" Bool :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "view" PostsGetView :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Get a post by ID.
--
-- /See:/ 'postsGet'' smart constructor.
data PostsGet' = PostsGet'
    { _pgFetchBody   :: !Bool
    , _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIP      :: !(Maybe Text)
    , _pgFetchImages :: !(Maybe Bool)
    , _pgBlogId      :: !Text
    , _pgMaxComments :: !(Maybe Word32)
    , _pgKey         :: !(Maybe Key)
    , _pgView        :: !(Maybe PostsGetView)
    , _pgPostId      :: !Text
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pgUserIP'
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
-- * 'pgOAuthToken'
--
-- * 'pgFields'
postsGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsGet'
postsGet' pPgBlogId_ pPgPostId_ =
    PostsGet'
    { _pgFetchBody = True
    , _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgFetchImages = Nothing
    , _pgBlogId = pPgBlogId_
    , _pgMaxComments = Nothing
    , _pgKey = Nothing
    , _pgView = Nothing
    , _pgPostId = pPgPostId_
    , _pgOAuthToken = Nothing
    , _pgFields = Nothing
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
pgUserIP :: Lens' PostsGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

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
pgKey :: Lens' PostsGet' (Maybe Key)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgView :: Lens' PostsGet' (Maybe PostsGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | The ID of the post
pgPostId :: Lens' PostsGet' Text
pgPostId = lens _pgPostId (\ s a -> s{_pgPostId = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' PostsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PostsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth PostsGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest PostsGet' where
        type Rs PostsGet' = Post'
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsGet'{..}
          = go _pgBlogId _pgPostId (Just _pgFetchBody)
              _pgFetchImages
              _pgMaxComments
              _pgView
              _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsGetResource) r
                      u
