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
-- Module      : Network.Google.Resource.PlusDomains.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the comments for an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCommentsList@.
module Network.Google.Resource.PlusDomains.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , cActivityId
    , cSortOrder
    , cPageToken
    , cMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsList@ method which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "sortOrder" CommentsListSortOrder :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] CommentFeed

-- | List all of the comments for an activity.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _cActivityId :: !Text
    , _cSortOrder  :: !CommentsListSortOrder
    , _cPageToken  :: !(Maybe Text)
    , _cMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cActivityId'
--
-- * 'cSortOrder'
--
-- * 'cPageToken'
--
-- * 'cMaxResults'
commentsList'
    :: Text -- ^ 'activityId'
    -> CommentsList'
commentsList' pCActivityId_ =
    CommentsList'
    { _cActivityId = pCActivityId_
    , _cSortOrder = Ascending
    , _cPageToken = Nothing
    , _cMaxResults = 20
    }

-- | The ID of the activity to get comments for.
cActivityId :: Lens' CommentsList' Text
cActivityId
  = lens _cActivityId (\ s a -> s{_cActivityId = a})

-- | The order in which to sort the list of comments.
cSortOrder :: Lens' CommentsList' CommentsListSortOrder
cSortOrder
  = lens _cSortOrder (\ s a -> s{_cSortOrder = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cPageToken :: Lens' CommentsList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | The maximum number of comments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
cMaxResults :: Lens' CommentsList' Word32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentFeed
        requestClient CommentsList'{..}
          = go _cActivityId (Just _cSortOrder) _cPageToken
              (Just _cMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
