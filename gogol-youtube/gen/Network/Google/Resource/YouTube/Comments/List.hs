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
-- Module      : Network.Google.Resource.YouTube.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsList@.
module Network.Google.Resource.YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , comPart
    , comId
    , comPageToken
    , comTextFormat
    , comMaxResults
    , comParentId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsList@ method which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "id" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "textFormat" CommentsListTextFormat :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "parentId" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] CommentListResponse

-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _comPart       :: !Text
    , _comId         :: !(Maybe Text)
    , _comPageToken  :: !(Maybe Text)
    , _comTextFormat :: !CommentsListTextFormat
    , _comMaxResults :: !Word32
    , _comParentId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comPart'
--
-- * 'comId'
--
-- * 'comPageToken'
--
-- * 'comTextFormat'
--
-- * 'comMaxResults'
--
-- * 'comParentId'
commentsList'
    :: Text -- ^ 'part'
    -> CommentsList'
commentsList' pComPart_ =
    CommentsList'
    { _comPart = pComPart_
    , _comId = Nothing
    , _comPageToken = Nothing
    , _comTextFormat = HTML
    , _comMaxResults = 20
    , _comParentId = Nothing
    }

-- | The part parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
comPart :: Lens' CommentsList' Text
comPart = lens _comPart (\ s a -> s{_comPart = a})

-- | The id parameter specifies a comma-separated list of comment IDs for the
-- resources that are being retrieved. In a comment resource, the id
-- property specifies the comment\'s ID.
comId :: Lens' CommentsList' (Maybe Text)
comId = lens _comId (\ s a -> s{_comId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
comPageToken :: Lens' CommentsList' (Maybe Text)
comPageToken
  = lens _comPageToken (\ s a -> s{_comPageToken = a})

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
comTextFormat :: Lens' CommentsList' CommentsListTextFormat
comTextFormat
  = lens _comTextFormat
      (\ s a -> s{_comTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
comMaxResults :: Lens' CommentsList' Word32
comMaxResults
  = lens _comMaxResults
      (\ s a -> s{_comMaxResults = a})

-- | The parentId parameter specifies the ID of the comment for which replies
-- should be retrieved. Note: YouTube currently supports replies only for
-- top-level comments. However, replies to replies may be supported in the
-- future.
comParentId :: Lens' CommentsList' (Maybe Text)
comParentId
  = lens _comParentId (\ s a -> s{_comParentId = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentListResponse
        requestClient CommentsList'{..}
          = go (Just _comPart) _comId _comPageToken
              (Just _comTextFormat)
              (Just _comMaxResults)
              _comParentId
              (Just AltJSON)
              youTube
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
