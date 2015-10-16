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
-- Module      : Network.Google.Resource.Blogger.Posts.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled post to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsRevert@.
module Network.Google.Resource.Blogger.Posts.Revert
    (
    -- * REST Resource
      PostsRevertResource

    -- * Creating a Request
    , postsRevert'
    , PostsRevert'

    -- * Request Lenses
    , prBlogId
    , prPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsRevert@ method which the
-- 'PostsRevert'' request conforms to.
type PostsRevertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "revert" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Post'

-- | Revert a published or scheduled post to draft state.
--
-- /See:/ 'postsRevert'' smart constructor.
data PostsRevert' = PostsRevert'
    { _prBlogId :: !Text
    , _prPostId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prBlogId'
--
-- * 'prPostId'
postsRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsRevert'
postsRevert' pPrBlogId_ pPrPostId_ =
    PostsRevert'
    { _prBlogId = pPrBlogId_
    , _prPostId = pPrPostId_
    }

-- | The ID of the Blog.
prBlogId :: Lens' PostsRevert' Text
prBlogId = lens _prBlogId (\ s a -> s{_prBlogId = a})

-- | The ID of the Post.
prPostId :: Lens' PostsRevert' Text
prPostId = lens _prPostId (\ s a -> s{_prPostId = a})

instance GoogleRequest PostsRevert' where
        type Rs PostsRevert' = Post'
        requestClient PostsRevert'{..}
          = go _prBlogId _prPostId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsRevertResource)
                      mempty
