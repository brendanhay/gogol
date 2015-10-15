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
-- | Lists all of the replies to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesList@.
module Network.Google.Resource.Drive.Replies.List
    (
    -- * REST Resource
      RepliesListResource

    -- * Creating a Request
    , repliesList'
    , RepliesList'

    -- * Request Lenses
    , rllPageToken
    , rllFileId
    , rllCommentId
    , rllMaxResults
    , rllIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesList@ method which the
-- 'RepliesList'' request conforms to.
type RepliesListResource =
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
-- /See:/ 'repliesList'' smart constructor.
data RepliesList' = RepliesList'
    { _rllPageToken      :: !(Maybe Text)
    , _rllFileId         :: !Text
    , _rllCommentId      :: !Text
    , _rllMaxResults     :: !Int32
    , _rllIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllPageToken'
--
-- * 'rllFileId'
--
-- * 'rllCommentId'
--
-- * 'rllMaxResults'
--
-- * 'rllIncludeDeleted'
repliesList'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesList'
repliesList' pRllFileId_ pRllCommentId_ =
    RepliesList'
    { _rllPageToken = Nothing
    , _rllFileId = pRllFileId_
    , _rllCommentId = pRllCommentId_
    , _rllMaxResults = 20
    , _rllIncludeDeleted = False
    }

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
rllPageToken :: Lens' RepliesList' (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | The ID of the file.
rllFileId :: Lens' RepliesList' Text
rllFileId
  = lens _rllFileId (\ s a -> s{_rllFileId = a})

-- | The ID of the comment.
rllCommentId :: Lens' RepliesList' Text
rllCommentId
  = lens _rllCommentId (\ s a -> s{_rllCommentId = a})

-- | The maximum number of replies to include in the response, used for
-- paging.
rllMaxResults :: Lens' RepliesList' Int32
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})

-- | If set, all replies, including deleted replies (with content stripped)
-- will be returned.
rllIncludeDeleted :: Lens' RepliesList' Bool
rllIncludeDeleted
  = lens _rllIncludeDeleted
      (\ s a -> s{_rllIncludeDeleted = a})

instance GoogleRequest RepliesList' where
        type Rs RepliesList' = CommentReplyList
        requestClient RepliesList'{..}
          = go _rllFileId _rllCommentId _rllPageToken
              (Just _rllMaxResults)
              (Just _rllIncludeDeleted)
              (Just AltJSON)
              drive
          where go
                  = buildClient (Proxy :: Proxy RepliesListResource)
                      mempty
