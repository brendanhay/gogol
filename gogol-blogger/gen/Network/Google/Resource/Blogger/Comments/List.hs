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
-- Module      : Network.Google.Resource.Blogger.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the comments for a post, possibly filtered.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.list@.
module Network.Google.Resource.Blogger.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , clStatus
    , clEndDate
    , clBlogId
    , clStartDate
    , clFetchBodies
    , clView
    , clPostId
    , clPageToken
    , clMaxResults
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 "comments" :>
                   QueryParams "status" CommentsListStatus :>
                     QueryParam "endDate" DateTime' :>
                       QueryParam "startDate" DateTime' :>
                         QueryParam "fetchBodies" Bool :>
                           QueryParam "view" CommentsListView :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (JSONText Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CommentList

-- | Retrieves the comments for a post, possibly filtered.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _clStatus      :: !(Maybe [CommentsListStatus])
    , _clEndDate     :: !(Maybe DateTime')
    , _clBlogId      :: !Text
    , _clStartDate   :: !(Maybe DateTime')
    , _clFetchBodies :: !(Maybe Bool)
    , _clView        :: !(Maybe CommentsListView)
    , _clPostId      :: !Text
    , _clPageToken   :: !(Maybe Text)
    , _clMaxResults  :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clStatus'
--
-- * 'clEndDate'
--
-- * 'clBlogId'
--
-- * 'clStartDate'
--
-- * 'clFetchBodies'
--
-- * 'clView'
--
-- * 'clPostId'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
commentsList
    :: Text -- ^ 'clBlogId'
    -> Text -- ^ 'clPostId'
    -> CommentsList
commentsList pClBlogId_ pClPostId_ =
    CommentsList
    { _clStatus = Nothing
    , _clEndDate = Nothing
    , _clBlogId = pClBlogId_
    , _clStartDate = Nothing
    , _clFetchBodies = Nothing
    , _clView = Nothing
    , _clPostId = pClPostId_
    , _clPageToken = Nothing
    , _clMaxResults = Nothing
    }

clStatus :: Lens' CommentsList [CommentsListStatus]
clStatus
  = lens _clStatus (\ s a -> s{_clStatus = a}) .
      _Default
      . _Coerce

-- | Latest date of comment to fetch, a date-time with RFC 3339 formatting.
clEndDate :: Lens' CommentsList (Maybe UTCTime)
clEndDate
  = lens _clEndDate (\ s a -> s{_clEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch comments from.
clBlogId :: Lens' CommentsList Text
clBlogId = lens _clBlogId (\ s a -> s{_clBlogId = a})

-- | Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
clStartDate :: Lens' CommentsList (Maybe UTCTime)
clStartDate
  = lens _clStartDate (\ s a -> s{_clStartDate = a}) .
      mapping _DateTime

-- | Whether the body content of the comments is included.
clFetchBodies :: Lens' CommentsList (Maybe Bool)
clFetchBodies
  = lens _clFetchBodies
      (\ s a -> s{_clFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
clView :: Lens' CommentsList (Maybe CommentsListView)
clView = lens _clView (\ s a -> s{_clView = a})

-- | ID of the post to fetch posts from.
clPostId :: Lens' CommentsList Text
clPostId = lens _clPostId (\ s a -> s{_clPostId = a})

-- | Continuation token if request is paged.
clPageToken :: Lens' CommentsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Maximum number of comments to include in the result.
clMaxResults :: Lens' CommentsList (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentList
        requestClient CommentsList{..}
          = go _clBlogId _clPostId (_clStatus ^. _Default)
              _clEndDate
              _clStartDate
              _clFetchBodies
              _clView
              _clPageToken
              _clMaxResults
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
