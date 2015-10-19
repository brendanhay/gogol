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
-- Get a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.get@.
module Network.Google.Resource.Blogger.Posts.Get
    (
    -- * REST Resource
      PostsGetResource

    -- * Creating a Request
    , postsGet'
    , PostsGet'

    -- * Request Lenses
    , pgFetchBody
    , pgFetchImages
    , pgBlogId
    , pgMaxComments
    , pgView
    , pgPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.get@ method which the
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
                     QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Get a post by ID.
--
-- /See:/ 'postsGet'' smart constructor.
data PostsGet' = PostsGet'
    { _pgFetchBody   :: !Bool
    , _pgFetchImages :: !(Maybe Bool)
    , _pgBlogId      :: !Text
    , _pgMaxComments :: !(Maybe Word32)
    , _pgView        :: !(Maybe PostsGetView)
    , _pgPostId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgFetchBody'
--
-- * 'pgFetchImages'
--
-- * 'pgBlogId'
--
-- * 'pgMaxComments'
--
-- * 'pgView'
--
-- * 'pgPostId'
postsGet'
    :: Text -- ^ 'pgBlogId'
    -> Text -- ^ 'pgPostId'
    -> PostsGet'
postsGet' pPgBlogId_ pPgPostId_ =
    PostsGet'
    { _pgFetchBody = True
    , _pgFetchImages = Nothing
    , _pgBlogId = pPgBlogId_
    , _pgMaxComments = Nothing
    , _pgView = Nothing
    , _pgPostId = pPgPostId_
    }

-- | Whether the body content of the post is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pgFetchBody :: Lens' PostsGet' Bool
pgFetchBody
  = lens _pgFetchBody (\ s a -> s{_pgFetchBody = a})

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

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgView :: Lens' PostsGet' (Maybe PostsGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

-- | The ID of the post
pgPostId :: Lens' PostsGet' Text
pgPostId = lens _pgPostId (\ s a -> s{_pgPostId = a})

instance GoogleRequest PostsGet' where
        type Rs PostsGet' = Post'
        requestClient PostsGet'{..}
          = go _pgBlogId _pgPostId (Just _pgFetchBody)
              _pgFetchImages
              _pgMaxComments
              _pgView
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsGetResource)
                      mempty
