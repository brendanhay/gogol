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
-- Module      : Network.Google.Resource.Blogger.Posts.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.search@.
module Network.Google.Resource.Blogger.Posts.Search
    (
    -- * REST Resource
      PostsSearchResource

    -- * Creating a Request
    , postsSearch'
    , PostsSearch'

    -- * Request Lenses
    , psOrderBy
    , psBlogId
    , psQ
    , psFetchBodies
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.search@ method which the
-- 'PostsSearch'' request conforms to.
type PostsSearchResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           "search" :>
             QueryParam "q" Text :>
               QueryParam "orderBy" PostsSearchOrderBy :>
                 QueryParam "fetchBodies" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] PostList

-- | Search for a post.
--
-- /See:/ 'postsSearch'' smart constructor.
data PostsSearch' = PostsSearch'
    { _psOrderBy     :: !PostsSearchOrderBy
    , _psBlogId      :: !Text
    , _psQ           :: !Text
    , _psFetchBodies :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psOrderBy'
--
-- * 'psBlogId'
--
-- * 'psQ'
--
-- * 'psFetchBodies'
postsSearch'
    :: Text -- ^ 'psBlogId'
    -> Text -- ^ 'psQ'
    -> PostsSearch'
postsSearch' pPsBlogId_ pPsQ_ =
    PostsSearch'
    { _psOrderBy = PSOBPublished
    , _psBlogId = pPsBlogId_
    , _psQ = pPsQ_
    , _psFetchBodies = True
    }

-- | Sort search results
psOrderBy :: Lens' PostsSearch' PostsSearchOrderBy
psOrderBy
  = lens _psOrderBy (\ s a -> s{_psOrderBy = a})

-- | ID of the blog to fetch the post from.
psBlogId :: Lens' PostsSearch' Text
psBlogId = lens _psBlogId (\ s a -> s{_psBlogId = a})

-- | Query terms to search this blog for matching posts.
psQ :: Lens' PostsSearch' Text
psQ = lens _psQ (\ s a -> s{_psQ = a})

-- | Whether the body content of posts is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
psFetchBodies :: Lens' PostsSearch' Bool
psFetchBodies
  = lens _psFetchBodies
      (\ s a -> s{_psFetchBodies = a})

instance GoogleRequest PostsSearch' where
        type Rs PostsSearch' = PostList
        requestClient PostsSearch'{..}
          = go _psBlogId (Just _psQ) (Just _psOrderBy)
              (Just _psFetchBodies)
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsSearchResource)
                      mempty
