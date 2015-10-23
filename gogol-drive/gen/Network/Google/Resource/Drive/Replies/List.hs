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
-- Module      : Network.Google.Resource.Drive.Replies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the replies to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.list@.
module Network.Google.Resource.Drive.Replies.List
    (
    -- * REST Resource
      RepliesListResource

    -- * Creating a Request
    , repliesList
    , RepliesList

    -- * Request Lenses
    , rlPageToken
    , rlFileId
    , rlCommentId
    , rlMaxResults
    , rlIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.list@ method which the
-- 'RepliesList' request conforms to.
type RepliesListResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "replies" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "includeDeleted" Bool :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CommentReplyList

-- | Lists all of the replies to a comment.
--
-- /See:/ 'repliesList' smart constructor.
data RepliesList = RepliesList
    { _rlPageToken      :: !(Maybe Text)
    , _rlFileId         :: !Text
    , _rlCommentId      :: !Text
    , _rlMaxResults     :: !Int32
    , _rlIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlPageToken'
--
-- * 'rlFileId'
--
-- * 'rlCommentId'
--
-- * 'rlMaxResults'
--
-- * 'rlIncludeDeleted'
repliesList
    :: Text -- ^ 'rlFileId'
    -> Text -- ^ 'rlCommentId'
    -> RepliesList
repliesList pRlFileId_ pRlCommentId_ =
    RepliesList
    { _rlPageToken = Nothing
    , _rlFileId = pRlFileId_
    , _rlCommentId = pRlCommentId_
    , _rlMaxResults = 20
    , _rlIncludeDeleted = False
    }

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
rlPageToken :: Lens' RepliesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The ID of the file.
rlFileId :: Lens' RepliesList Text
rlFileId = lens _rlFileId (\ s a -> s{_rlFileId = a})

-- | The ID of the comment.
rlCommentId :: Lens' RepliesList Text
rlCommentId
  = lens _rlCommentId (\ s a -> s{_rlCommentId = a})

-- | The maximum number of replies to include in the response, used for
-- paging.
rlMaxResults :: Lens' RepliesList Int32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | If set, all replies, including deleted replies (with content stripped)
-- will be returned.
rlIncludeDeleted :: Lens' RepliesList Bool
rlIncludeDeleted
  = lens _rlIncludeDeleted
      (\ s a -> s{_rlIncludeDeleted = a})

instance GoogleRequest RepliesList where
        type Rs RepliesList = CommentReplyList
        requestClient RepliesList{..}
          = go _rlFileId _rlCommentId _rlPageToken
              (Just _rlMaxResults)
              (Just _rlIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesListResource)
                      mempty
