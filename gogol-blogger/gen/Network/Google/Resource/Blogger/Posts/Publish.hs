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
-- Module      : Network.Google.Resource.Blogger.Posts.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsPublish@.
module Network.Google.Resource.Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishResource

    -- * Creating a Request
    , postsPublish'
    , PostsPublish'

    -- * Request Lenses
    , posPublishDate
    , posBlogId
    , posPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPublish@ method which the
-- 'PostsPublish'' request conforms to.
type PostsPublishResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "publish" :>
               QueryParam "publishDate" DateTime' :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Post'

-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ 'postsPublish'' smart constructor.
data PostsPublish' = PostsPublish'
    { _posPublishDate :: !(Maybe DateTime')
    , _posBlogId      :: !Text
    , _posPostId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posPublishDate'
--
-- * 'posBlogId'
--
-- * 'posPostId'
postsPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPublish'
postsPublish' pPosBlogId_ pPosPostId_ =
    PostsPublish'
    { _posPublishDate = Nothing
    , _posBlogId = pPosBlogId_
    , _posPostId = pPosPostId_
    }

-- | Optional date and time to schedule the publishing of the Blog. If no
-- publishDate parameter is given, the post is either published at the a
-- previously saved schedule date (if present), or the current time. If a
-- future date is given, the post will be scheduled to be published.
posPublishDate :: Lens' PostsPublish' (Maybe UTCTime)
posPublishDate
  = lens _posPublishDate
      (\ s a -> s{_posPublishDate = a})
      . mapping _DateTime

-- | The ID of the Blog.
posBlogId :: Lens' PostsPublish' Text
posBlogId
  = lens _posBlogId (\ s a -> s{_posBlogId = a})

-- | The ID of the Post.
posPostId :: Lens' PostsPublish' Text
posPostId
  = lens _posPostId (\ s a -> s{_posPostId = a})

instance GoogleRequest PostsPublish' where
        type Rs PostsPublish' = Post'
        requestClient PostsPublish'{..}
          = go _posBlogId _posPostId _posPublishDate
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPublishResource)
                      mempty
