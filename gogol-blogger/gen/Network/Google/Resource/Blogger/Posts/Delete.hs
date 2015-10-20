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
-- Module      : Network.Google.Resource.Blogger.Posts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.delete@.
module Network.Google.Resource.Blogger.Posts.Delete
    (
    -- * REST Resource
      PostsDeleteResource

    -- * Creating a Request
    , postsDelete
    , PostsDelete

    -- * Request Lenses
    , pdBlogId
    , pdPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.delete@ method which the
-- 'PostsDelete' request conforms to.
type PostsDeleteResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a post by ID.
--
-- /See:/ 'postsDelete' smart constructor.
data PostsDelete = PostsDelete
    { _pdBlogId :: !Text
    , _pdPostId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdBlogId'
--
-- * 'pdPostId'
postsDelete
    :: Text -- ^ 'pdBlogId'
    -> Text -- ^ 'pdPostId'
    -> PostsDelete
postsDelete pPdBlogId_ pPdPostId_ =
    PostsDelete
    { _pdBlogId = pPdBlogId_
    , _pdPostId = pPdPostId_
    }

-- | The ID of the Blog.
pdBlogId :: Lens' PostsDelete Text
pdBlogId = lens _pdBlogId (\ s a -> s{_pdBlogId = a})

-- | The ID of the Post.
pdPostId :: Lens' PostsDelete Text
pdPostId = lens _pdPostId (\ s a -> s{_pdPostId = a})

instance GoogleRequest PostsDelete where
        type Rs PostsDelete = ()
        requestClient PostsDelete{..}
          = go _pdBlogId _pdPostId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsDeleteResource)
                      mempty
