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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a comment\'s replies.
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
    , rlPageSize
    , rlIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.list@ method which the
-- 'RepliesList' request conforms to.
type RepliesListResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "replies" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "includeDeleted" Bool :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ReplyList

-- | Lists a comment\'s replies.
--
-- /See:/ 'repliesList' smart constructor.
data RepliesList = RepliesList'
    { _rlPageToken      :: !(Maybe Text)
    , _rlFileId         :: !Text
    , _rlCommentId      :: !Text
    , _rlPageSize       :: !(Textual Int32)
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
-- * 'rlPageSize'
--
-- * 'rlIncludeDeleted'
repliesList
    :: Text -- ^ 'rlFileId'
    -> Text -- ^ 'rlCommentId'
    -> RepliesList
repliesList pRlFileId_ pRlCommentId_ =
    RepliesList'
    { _rlPageToken = Nothing
    , _rlFileId = pRlFileId_
    , _rlCommentId = pRlCommentId_
    , _rlPageSize = 20
    , _rlIncludeDeleted = False
    }

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
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

-- | The maximum number of replies to return per page.
rlPageSize :: Lens' RepliesList Int32
rlPageSize
  = lens _rlPageSize (\ s a -> s{_rlPageSize = a}) .
      _Coerce

-- | Whether to include deleted replies. Deleted replies will not include
-- their original content.
rlIncludeDeleted :: Lens' RepliesList Bool
rlIncludeDeleted
  = lens _rlIncludeDeleted
      (\ s a -> s{_rlIncludeDeleted = a})

instance GoogleRequest RepliesList where
        type Rs RepliesList = ReplyList
        type Scopes RepliesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient RepliesList'{..}
          = go _rlFileId _rlCommentId _rlPageToken
              (Just _rlPageSize)
              (Just _rlIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesListResource)
                      mempty
