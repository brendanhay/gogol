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
-- Module      : Network.Google.Resource.Blogger.Comments.ListByBlog
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the comments for a blog, across all posts, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.listByBlog@.
module Network.Google.Resource.Blogger.Comments.ListByBlog
    (
    -- * REST Resource
      CommentsListByBlogResource

    -- * Creating a Request
    , commentsListByBlog
    , CommentsListByBlog

    -- * Request Lenses
    , clbbStatus
    , clbbEndDate
    , clbbBlogId
    , clbbStartDate
    , clbbFetchBodies
    , clbbPageToken
    , clbbMaxResults
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.comments.listByBlog@ method which the
-- 'CommentsListByBlog' request conforms to.
type CommentsListByBlogResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "comments" :>
               QueryParams "status" CommentsListByBlogStatus :>
                 QueryParam "endDate" DateTime' :>
                   QueryParam "startDate" DateTime' :>
                     QueryParam "fetchBodies" Bool :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "alt" AltJSON :> Get '[JSON] CommentList

-- | Retrieves the comments for a blog, across all posts, possibly filtered.
--
-- /See:/ 'commentsListByBlog' smart constructor.
data CommentsListByBlog = CommentsListByBlog
    { _clbbStatus      :: !(Maybe [CommentsListByBlogStatus])
    , _clbbEndDate     :: !(Maybe DateTime')
    , _clbbBlogId      :: !Text
    , _clbbStartDate   :: !(Maybe DateTime')
    , _clbbFetchBodies :: !(Maybe Bool)
    , _clbbPageToken   :: !(Maybe Text)
    , _clbbMaxResults  :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsListByBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clbbStatus'
--
-- * 'clbbEndDate'
--
-- * 'clbbBlogId'
--
-- * 'clbbStartDate'
--
-- * 'clbbFetchBodies'
--
-- * 'clbbPageToken'
--
-- * 'clbbMaxResults'
commentsListByBlog
    :: Text -- ^ 'clbbBlogId'
    -> CommentsListByBlog
commentsListByBlog pClbbBlogId_ =
    CommentsListByBlog
    { _clbbStatus = Nothing
    , _clbbEndDate = Nothing
    , _clbbBlogId = pClbbBlogId_
    , _clbbStartDate = Nothing
    , _clbbFetchBodies = Nothing
    , _clbbPageToken = Nothing
    , _clbbMaxResults = Nothing
    }

clbbStatus :: Lens' CommentsListByBlog [CommentsListByBlogStatus]
clbbStatus
  = lens _clbbStatus (\ s a -> s{_clbbStatus = a}) .
      _Default
      . _Coerce

-- | Latest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbEndDate :: Lens' CommentsListByBlog (Maybe UTCTime)
clbbEndDate
  = lens _clbbEndDate (\ s a -> s{_clbbEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch comments from.
clbbBlogId :: Lens' CommentsListByBlog Text
clbbBlogId
  = lens _clbbBlogId (\ s a -> s{_clbbBlogId = a})

-- | Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
clbbStartDate :: Lens' CommentsListByBlog (Maybe UTCTime)
clbbStartDate
  = lens _clbbStartDate
      (\ s a -> s{_clbbStartDate = a})
      . mapping _DateTime

-- | Whether the body content of the comments is included.
clbbFetchBodies :: Lens' CommentsListByBlog (Maybe Bool)
clbbFetchBodies
  = lens _clbbFetchBodies
      (\ s a -> s{_clbbFetchBodies = a})

-- | Continuation token if request is paged.
clbbPageToken :: Lens' CommentsListByBlog (Maybe Text)
clbbPageToken
  = lens _clbbPageToken
      (\ s a -> s{_clbbPageToken = a})

-- | Maximum number of comments to include in the result.
clbbMaxResults :: Lens' CommentsListByBlog (Maybe Word32)
clbbMaxResults
  = lens _clbbMaxResults
      (\ s a -> s{_clbbMaxResults = a})

instance GoogleRequest CommentsListByBlog where
        type Rs CommentsListByBlog = CommentList
        requestClient CommentsListByBlog{..}
          = go _clbbBlogId (_clbbStatus ^. _Default)
              _clbbEndDate
              _clbbStartDate
              _clbbFetchBodies
              _clbbPageToken
              _clbbMaxResults
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsListByBlogResource)
                      mempty
