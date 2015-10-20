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
-- Module      : Network.Google.Resource.Drive.Replies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new reply to the given comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.insert@.
module Network.Google.Resource.Drive.Replies.Insert
    (
    -- * REST Resource
      RepliesInsertResource

    -- * Creating a Request
    , repliesInsert
    , RepliesInsert

    -- * Request Lenses
    , riPayload
    , riFileId
    , riCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.insert@ method which the
-- 'RepliesInsert' request conforms to.
type RepliesInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] CommentReply :>
                   Post '[JSON] CommentReply

-- | Creates a new reply to the given comment.
--
-- /See:/ 'repliesInsert' smart constructor.
data RepliesInsert = RepliesInsert
    { _riPayload   :: !CommentReply
    , _riFileId    :: !Text
    , _riCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riPayload'
--
-- * 'riFileId'
--
-- * 'riCommentId'
repliesInsert
    :: CommentReply -- ^ 'riPayload'
    -> Text -- ^ 'riFileId'
    -> Text -- ^ 'riCommentId'
    -> RepliesInsert
repliesInsert pRiPayload_ pRiFileId_ pRiCommentId_ =
    RepliesInsert
    { _riPayload = pRiPayload_
    , _riFileId = pRiFileId_
    , _riCommentId = pRiCommentId_
    }

-- | Multipart request metadata.
riPayload :: Lens' RepliesInsert CommentReply
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | The ID of the file.
riFileId :: Lens' RepliesInsert Text
riFileId = lens _riFileId (\ s a -> s{_riFileId = a})

-- | The ID of the comment.
riCommentId :: Lens' RepliesInsert Text
riCommentId
  = lens _riCommentId (\ s a -> s{_riCommentId = a})

instance GoogleRequest RepliesInsert where
        type Rs RepliesInsert = CommentReply
        requestClient RepliesInsert{..}
          = go _riFileId _riCommentId (Just AltJSON) _riPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesInsertResource)
                      mempty
