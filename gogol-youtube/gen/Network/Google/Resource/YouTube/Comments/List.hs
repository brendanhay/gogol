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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of comments that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.list@.
module Network.Google.Resource.YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , cllPart
    , cllId
    , cllPageToken
    , cllTextFormat
    , cllMaxResults
    , cllParentId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           QueryParam "part" Text :>
             QueryParam "id" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "textFormat" CommentsListTextFormat :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "parentId" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CommentListResponse

-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _cllPart       :: !Text
    , _cllId         :: !(Maybe Text)
    , _cllPageToken  :: !(Maybe Text)
    , _cllTextFormat :: !CommentsListTextFormat
    , _cllMaxResults :: !(Textual Word32)
    , _cllParentId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllPart'
--
-- * 'cllId'
--
-- * 'cllPageToken'
--
-- * 'cllTextFormat'
--
-- * 'cllMaxResults'
--
-- * 'cllParentId'
commentsList
    :: Text -- ^ 'cllPart'
    -> CommentsList
commentsList pCllPart_ =
    CommentsList
    { _cllPart = pCllPart_
    , _cllId = Nothing
    , _cllPageToken = Nothing
    , _cllTextFormat = HTML
    , _cllMaxResults = 20
    , _cllParentId = Nothing
    }

-- | The part parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
cllPart :: Lens' CommentsList Text
cllPart = lens _cllPart (\ s a -> s{_cllPart = a})

-- | The id parameter specifies a comma-separated list of comment IDs for the
-- resources that are being retrieved. In a comment resource, the id
-- property specifies the comment\'s ID.
cllId :: Lens' CommentsList (Maybe Text)
cllId = lens _cllId (\ s a -> s{_cllId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
cllPageToken :: Lens' CommentsList (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
cllTextFormat :: Lens' CommentsList CommentsListTextFormat
cllTextFormat
  = lens _cllTextFormat
      (\ s a -> s{_cllTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
cllMaxResults :: Lens' CommentsList Word32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})
      . _Coerce

-- | The parentId parameter specifies the ID of the comment for which replies
-- should be retrieved. Note: YouTube currently supports replies only for
-- top-level comments. However, replies to replies may be supported in the
-- future.
cllParentId :: Lens' CommentsList (Maybe Text)
cllParentId
  = lens _cllParentId (\ s a -> s{_cllParentId = a})

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentListResponse
        type Scopes CommentsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsList{..}
          = go (Just _cllPart) _cllId _cllPageToken
              (Just _cllTextFormat)
              (Just _cllMaxResults)
              _cllParentId
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
