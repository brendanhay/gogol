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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , postsGet
    , PostsGet

    -- * Request Lenses
    , pggFetchBody
    , pggFetchImages
    , pggBlogId
    , pggMaxComments
    , pggView
    , pggPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.get@ method which the
-- 'PostsGet' request conforms to.
type PostsGetResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 QueryParam "fetchBody" Bool :>
                   QueryParam "fetchImages" Bool :>
                     QueryParam "maxComments" (Textual Word32) :>
                       QueryParam "view" PostsGetView :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Get a post by ID.
--
-- /See:/ 'postsGet' smart constructor.
data PostsGet =
  PostsGet'
    { _pggFetchBody   :: !Bool
    , _pggFetchImages :: !(Maybe Bool)
    , _pggBlogId      :: !Text
    , _pggMaxComments :: !(Maybe (Textual Word32))
    , _pggView        :: !(Maybe PostsGetView)
    , _pggPostId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggFetchBody'
--
-- * 'pggFetchImages'
--
-- * 'pggBlogId'
--
-- * 'pggMaxComments'
--
-- * 'pggView'
--
-- * 'pggPostId'
postsGet
    :: Text -- ^ 'pggBlogId'
    -> Text -- ^ 'pggPostId'
    -> PostsGet
postsGet pPggBlogId_ pPggPostId_ =
  PostsGet'
    { _pggFetchBody = True
    , _pggFetchImages = Nothing
    , _pggBlogId = pPggBlogId_
    , _pggMaxComments = Nothing
    , _pggView = Nothing
    , _pggPostId = pPggPostId_
    }


-- | Whether the body content of the post is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pggFetchBody :: Lens' PostsGet Bool
pggFetchBody
  = lens _pggFetchBody (\ s a -> s{_pggFetchBody = a})

-- | Whether image URL metadata for each post is included (default: false).
pggFetchImages :: Lens' PostsGet (Maybe Bool)
pggFetchImages
  = lens _pggFetchImages
      (\ s a -> s{_pggFetchImages = a})

-- | ID of the blog to fetch the post from.
pggBlogId :: Lens' PostsGet Text
pggBlogId
  = lens _pggBlogId (\ s a -> s{_pggBlogId = a})

-- | Maximum number of comments to pull back on a post.
pggMaxComments :: Lens' PostsGet (Maybe Word32)
pggMaxComments
  = lens _pggMaxComments
      (\ s a -> s{_pggMaxComments = a})
      . mapping _Coerce

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pggView :: Lens' PostsGet (Maybe PostsGetView)
pggView = lens _pggView (\ s a -> s{_pggView = a})

-- | The ID of the post
pggPostId :: Lens' PostsGet Text
pggPostId
  = lens _pggPostId (\ s a -> s{_pggPostId = a})

instance GoogleRequest PostsGet where
        type Rs PostsGet = Post'
        type Scopes PostsGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsGet'{..}
          = go _pggBlogId _pggPostId (Just _pggFetchBody)
              _pggFetchImages
              _pggMaxComments
              _pggView
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsGetResource)
                      mempty
