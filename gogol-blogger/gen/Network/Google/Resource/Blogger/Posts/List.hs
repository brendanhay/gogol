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
-- Module      : Network.Google.Resource.Blogger.Posts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of posts, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.list@.
module Network.Google.Resource.Blogger.Posts.List
    (
    -- * REST Resource
      PostsListResource

    -- * Creating a Request
    , postsList
    , PostsList

    -- * Request Lenses
    , pllStatus
    , pllOrderBy
    , pllFetchImages
    , pllEndDate
    , pllBlogId
    , pllStartDate
    , pllFetchBodies
    , pllView
    , pllLabels
    , pllPageToken
    , pllMaxResults
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.list@ method which the
-- 'PostsList' request conforms to.
type PostsListResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               QueryParams "status" PostsListStatus :>
                 QueryParam "orderBy" PostsListOrderBy :>
                   QueryParam "fetchImages" Bool :>
                     QueryParam "endDate" DateTime' :>
                       QueryParam "startDate" DateTime' :>
                         QueryParam "fetchBodies" Bool :>
                           QueryParam "view" PostsListView :>
                             QueryParam "labels" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] PostList

-- | Retrieves a list of posts, possibly filtered.
--
-- /See:/ 'postsList' smart constructor.
data PostsList = PostsList'
    { _pllStatus      :: !(Maybe [PostsListStatus])
    , _pllOrderBy     :: !PostsListOrderBy
    , _pllFetchImages :: !(Maybe Bool)
    , _pllEndDate     :: !(Maybe DateTime')
    , _pllBlogId      :: !Text
    , _pllStartDate   :: !(Maybe DateTime')
    , _pllFetchBodies :: !Bool
    , _pllView        :: !(Maybe PostsListView)
    , _pllLabels      :: !(Maybe Text)
    , _pllPageToken   :: !(Maybe Text)
    , _pllMaxResults  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllStatus'
--
-- * 'pllOrderBy'
--
-- * 'pllFetchImages'
--
-- * 'pllEndDate'
--
-- * 'pllBlogId'
--
-- * 'pllStartDate'
--
-- * 'pllFetchBodies'
--
-- * 'pllView'
--
-- * 'pllLabels'
--
-- * 'pllPageToken'
--
-- * 'pllMaxResults'
postsList
    :: Text -- ^ 'pllBlogId'
    -> PostsList
postsList pPllBlogId_ =
    PostsList'
    { _pllStatus = Nothing
    , _pllOrderBy = Published
    , _pllFetchImages = Nothing
    , _pllEndDate = Nothing
    , _pllBlogId = pPllBlogId_
    , _pllStartDate = Nothing
    , _pllFetchBodies = True
    , _pllView = Nothing
    , _pllLabels = Nothing
    , _pllPageToken = Nothing
    , _pllMaxResults = Nothing
    }

-- | Statuses to include in the results.
pllStatus :: Lens' PostsList [PostsListStatus]
pllStatus
  = lens _pllStatus (\ s a -> s{_pllStatus = a}) .
      _Default
      . _Coerce

-- | Sort search results
pllOrderBy :: Lens' PostsList PostsListOrderBy
pllOrderBy
  = lens _pllOrderBy (\ s a -> s{_pllOrderBy = a})

-- | Whether image URL metadata for each post is included.
pllFetchImages :: Lens' PostsList (Maybe Bool)
pllFetchImages
  = lens _pllFetchImages
      (\ s a -> s{_pllFetchImages = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
pllEndDate :: Lens' PostsList (Maybe UTCTime)
pllEndDate
  = lens _pllEndDate (\ s a -> s{_pllEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch posts from.
pllBlogId :: Lens' PostsList Text
pllBlogId
  = lens _pllBlogId (\ s a -> s{_pllBlogId = a})

-- | Earliest post date to fetch, a date-time with RFC 3339 formatting.
pllStartDate :: Lens' PostsList (Maybe UTCTime)
pllStartDate
  = lens _pllStartDate (\ s a -> s{_pllStartDate = a})
      . mapping _DateTime

-- | Whether the body content of posts is included (default: true). This
-- should be set to false when the post bodies are not required, to help
-- minimize traffic.
pllFetchBodies :: Lens' PostsList Bool
pllFetchBodies
  = lens _pllFetchBodies
      (\ s a -> s{_pllFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
pllView :: Lens' PostsList (Maybe PostsListView)
pllView = lens _pllView (\ s a -> s{_pllView = a})

-- | Comma-separated list of labels to search for.
pllLabels :: Lens' PostsList (Maybe Text)
pllLabels
  = lens _pllLabels (\ s a -> s{_pllLabels = a})

-- | Continuation token if the request is paged.
pllPageToken :: Lens' PostsList (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | Maximum number of posts to fetch.
pllMaxResults :: Lens' PostsList (Maybe Word32)
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})
      . mapping _Coerce

instance GoogleRequest PostsList where
        type Rs PostsList = PostList
        type Scopes PostsList =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsList'{..}
          = go _pllBlogId (_pllStatus ^. _Default)
              (Just _pllOrderBy)
              _pllFetchImages
              _pllEndDate
              _pllStartDate
              (Just _pllFetchBodies)
              _pllView
              _pllLabels
              _pllPageToken
              _pllMaxResults
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsListResource)
                      mempty
