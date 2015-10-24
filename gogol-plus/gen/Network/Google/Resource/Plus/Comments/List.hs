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
-- Module      : Network.Google.Resource.Plus.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the comments for an activity.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.comments.list@.
module Network.Google.Resource.Plus.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , clActivityId
    , clSortOrder
    , clPageToken
    , clMaxResults
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "plus" :>
       "v1" :>
         "activities" :>
           Capture "activityId" Text :>
             "comments" :>
               QueryParam "sortOrder" CommentsListSortOrder :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] CommentFeed

-- | List all of the comments for an activity.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _clActivityId :: !Text
    , _clSortOrder  :: !CommentsListSortOrder
    , _clPageToken  :: !(Maybe Text)
    , _clMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clActivityId'
--
-- * 'clSortOrder'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
commentsList
    :: Text -- ^ 'clActivityId'
    -> CommentsList
commentsList pClActivityId_ =
    CommentsList
    { _clActivityId = pClActivityId_
    , _clSortOrder = Ascending
    , _clPageToken = Nothing
    , _clMaxResults = 20
    }

-- | The ID of the activity to get comments for.
clActivityId :: Lens' CommentsList Text
clActivityId
  = lens _clActivityId (\ s a -> s{_clActivityId = a})

-- | The order in which to sort the list of comments.
clSortOrder :: Lens' CommentsList CommentsListSortOrder
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CommentsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of comments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
clMaxResults :: Lens' CommentsList Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . _Coerce

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentFeed
        requestClient CommentsList{..}
          = go _clActivityId (Just _clSortOrder) _clPageToken
              (Just _clMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
