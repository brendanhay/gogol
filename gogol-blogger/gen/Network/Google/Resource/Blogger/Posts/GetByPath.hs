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
-- Module      : Network.Google.Resource.Blogger.Posts.GetByPath
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a Post by Path.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.getByPath@.
module Network.Google.Resource.Blogger.Posts.GetByPath
    (
    -- * REST Resource
      PostsGetByPathResource

    -- * Creating a Request
    , postsGetByPath
    , PostsGetByPath

    -- * Request Lenses
    , pgbpPath
    , pgbpBlogId
    , pgbpMaxComments
    , pgbpView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.getByPath@ method which the
-- 'PostsGetByPath' request conforms to.
type PostsGetByPathResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               "bypath" :>
                 QueryParam "path" Text :>
                   QueryParam "maxComments" (Textual Word32) :>
                     QueryParam "view" PostsGetByPathView :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Retrieve a Post by Path.
--
-- /See:/ 'postsGetByPath' smart constructor.
data PostsGetByPath = PostsGetByPath
    { _pgbpPath        :: !Text
    , _pgbpBlogId      :: !Text
    , _pgbpMaxComments :: !(Maybe (Textual Word32))
    , _pgbpView        :: !(Maybe PostsGetByPathView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsGetByPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbpPath'
--
-- * 'pgbpBlogId'
--
-- * 'pgbpMaxComments'
--
-- * 'pgbpView'
postsGetByPath
    :: Text -- ^ 'pgbpPath'
    -> Text -- ^ 'pgbpBlogId'
    -> PostsGetByPath
postsGetByPath pPgbpPath_ pPgbpBlogId_ =
    PostsGetByPath
    { _pgbpPath = pPgbpPath_
    , _pgbpBlogId = pPgbpBlogId_
    , _pgbpMaxComments = Nothing
    , _pgbpView = Nothing
    }

-- | Path of the Post to retrieve.
pgbpPath :: Lens' PostsGetByPath Text
pgbpPath = lens _pgbpPath (\ s a -> s{_pgbpPath = a})

-- | ID of the blog to fetch the post from.
pgbpBlogId :: Lens' PostsGetByPath Text
pgbpBlogId
  = lens _pgbpBlogId (\ s a -> s{_pgbpBlogId = a})

-- | Maximum number of comments to pull back on a post.
pgbpMaxComments :: Lens' PostsGetByPath (Maybe Word32)
pgbpMaxComments
  = lens _pgbpMaxComments
      (\ s a -> s{_pgbpMaxComments = a})
      . mapping _Coerce

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgbpView :: Lens' PostsGetByPath (Maybe PostsGetByPathView)
pgbpView = lens _pgbpView (\ s a -> s{_pgbpView = a})

instance GoogleRequest PostsGetByPath where
        type Rs PostsGetByPath = Post'
        requestClient PostsGetByPath{..}
          = go _pgbpBlogId (Just _pgbpPath) _pgbpMaxComments
              _pgbpView
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsGetByPathResource)
                      mempty
