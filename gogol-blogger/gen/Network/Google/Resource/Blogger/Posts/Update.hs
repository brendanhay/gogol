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
-- Module      : Network.Google.Resource.Blogger.Posts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.update@.
module Network.Google.Resource.Blogger.Posts.Update
    (
    -- * REST Resource
      PostsUpdateResource

    -- * Creating a Request
    , postsUpdate
    , PostsUpdate

    -- * Request Lenses
    , puFetchBody
    , puFetchImages
    , puBlogId
    , puPayload
    , puMaxComments
    , puRevert
    , puPostId
    , puPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.update@ method which the
-- 'PostsUpdate' request conforms to.
type PostsUpdateResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 QueryParam "fetchBody" Bool :>
                   QueryParam "fetchImages" Bool :>
                     QueryParam "maxComments" (JSONText Word32) :>
                       QueryParam "revert" Bool :>
                         QueryParam "publish" Bool :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Post' :> Put '[JSON] Post'

-- | Update a post.
--
-- /See:/ 'postsUpdate' smart constructor.
data PostsUpdate = PostsUpdate
    { _puFetchBody   :: !Bool
    , _puFetchImages :: !(Maybe Bool)
    , _puBlogId      :: !Text
    , _puPayload     :: !Post'
    , _puMaxComments :: !(Maybe (JSONText Word32))
    , _puRevert      :: !(Maybe Bool)
    , _puPostId      :: !Text
    , _puPublish     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puFetchBody'
--
-- * 'puFetchImages'
--
-- * 'puBlogId'
--
-- * 'puPayload'
--
-- * 'puMaxComments'
--
-- * 'puRevert'
--
-- * 'puPostId'
--
-- * 'puPublish'
postsUpdate
    :: Text -- ^ 'puBlogId'
    -> Post' -- ^ 'puPayload'
    -> Text -- ^ 'puPostId'
    -> PostsUpdate
postsUpdate pPuBlogId_ pPuPayload_ pPuPostId_ =
    PostsUpdate
    { _puFetchBody = True
    , _puFetchImages = Nothing
    , _puBlogId = pPuBlogId_
    , _puPayload = pPuPayload_
    , _puMaxComments = Nothing
    , _puRevert = Nothing
    , _puPostId = pPuPostId_
    , _puPublish = Nothing
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
puFetchBody :: Lens' PostsUpdate Bool
puFetchBody
  = lens _puFetchBody (\ s a -> s{_puFetchBody = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
puFetchImages :: Lens' PostsUpdate (Maybe Bool)
puFetchImages
  = lens _puFetchImages
      (\ s a -> s{_puFetchImages = a})

-- | The ID of the Blog.
puBlogId :: Lens' PostsUpdate Text
puBlogId = lens _puBlogId (\ s a -> s{_puBlogId = a})

-- | Multipart request metadata.
puPayload :: Lens' PostsUpdate Post'
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Maximum number of comments to retrieve with the returned post.
puMaxComments :: Lens' PostsUpdate (Maybe Word32)
puMaxComments
  = lens _puMaxComments
      (\ s a -> s{_puMaxComments = a})
      . mapping _Coerce

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
puRevert :: Lens' PostsUpdate (Maybe Bool)
puRevert = lens _puRevert (\ s a -> s{_puRevert = a})

-- | The ID of the Post.
puPostId :: Lens' PostsUpdate Text
puPostId = lens _puPostId (\ s a -> s{_puPostId = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
puPublish :: Lens' PostsUpdate (Maybe Bool)
puPublish
  = lens _puPublish (\ s a -> s{_puPublish = a})

instance GoogleRequest PostsUpdate where
        type Rs PostsUpdate = Post'
        requestClient PostsUpdate{..}
          = go _puBlogId _puPostId (Just _puFetchBody)
              _puFetchImages
              _puMaxComments
              _puRevert
              _puPublish
              (Just AltJSON)
              _puPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsUpdateResource)
                      mempty
