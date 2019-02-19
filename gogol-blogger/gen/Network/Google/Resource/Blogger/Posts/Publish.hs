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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.publish@.
module Network.Google.Resource.Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishResource

    -- * Creating a Request
    , postsPublish
    , PostsPublish

    -- * Request Lenses
    , pppPublishDate
    , pppBlogId
    , pppPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.publish@ method which the
-- 'PostsPublish' request conforms to.
type PostsPublishResource =
     "blogger" :>
       "v3" :>
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
-- /See:/ 'postsPublish' smart constructor.
data PostsPublish =
  PostsPublish'
    { _pppPublishDate :: !(Maybe DateTime')
    , _pppBlogId      :: !Text
    , _pppPostId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PostsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppPublishDate'
--
-- * 'pppBlogId'
--
-- * 'pppPostId'
postsPublish
    :: Text -- ^ 'pppBlogId'
    -> Text -- ^ 'pppPostId'
    -> PostsPublish
postsPublish pPppBlogId_ pPppPostId_ =
  PostsPublish'
    { _pppPublishDate = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppPostId = pPppPostId_
    }

-- | Optional date and time to schedule the publishing of the Blog. If no
-- publishDate parameter is given, the post is either published at the a
-- previously saved schedule date (if present), or the current time. If a
-- future date is given, the post will be scheduled to be published.
pppPublishDate :: Lens' PostsPublish (Maybe UTCTime)
pppPublishDate
  = lens _pppPublishDate
      (\ s a -> s{_pppPublishDate = a})
      . mapping _DateTime

-- | The ID of the Blog.
pppBlogId :: Lens' PostsPublish Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

-- | The ID of the Post.
pppPostId :: Lens' PostsPublish Text
pppPostId
  = lens _pppPostId (\ s a -> s{_pppPostId = a})

instance GoogleRequest PostsPublish where
        type Rs PostsPublish = Post'
        type Scopes PostsPublish =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsPublish'{..}
          = go _pppBlogId _pppPostId _pppPublishDate
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPublishResource)
                      mempty
