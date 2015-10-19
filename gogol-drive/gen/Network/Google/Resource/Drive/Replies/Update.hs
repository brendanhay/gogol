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
-- Module      : Network.Google.Resource.Drive.Replies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.update@.
module Network.Google.Resource.Drive.Replies.Update
    (
    -- * REST Resource
      RepliesUpdateResource

    -- * Creating a Request
    , repliesUpdate'
    , RepliesUpdate'

    -- * Request Lenses
    , repPayload
    , repReplyId
    , repFileId
    , repCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.update@ method which the
-- 'RepliesUpdate'' request conforms to.
type RepliesUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CommentReply :>
                     Put '[JSON] CommentReply

-- | Updates an existing reply.
--
-- /See:/ 'repliesUpdate'' smart constructor.
data RepliesUpdate' = RepliesUpdate'
    { _repPayload   :: !CommentReply
    , _repReplyId   :: !Text
    , _repFileId    :: !Text
    , _repCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repPayload'
--
-- * 'repReplyId'
--
-- * 'repFileId'
--
-- * 'repCommentId'
repliesUpdate'
    :: CommentReply -- ^ 'repPayload'
    -> Text -- ^ 'repReplyId'
    -> Text -- ^ 'repFileId'
    -> Text -- ^ 'repCommentId'
    -> RepliesUpdate'
repliesUpdate' pRepPayload_ pRepReplyId_ pRepFileId_ pRepCommentId_ =
    RepliesUpdate'
    { _repPayload = pRepPayload_
    , _repReplyId = pRepReplyId_
    , _repFileId = pRepFileId_
    , _repCommentId = pRepCommentId_
    }

-- | Multipart request metadata.
repPayload :: Lens' RepliesUpdate' CommentReply
repPayload
  = lens _repPayload (\ s a -> s{_repPayload = a})

-- | The ID of the reply.
repReplyId :: Lens' RepliesUpdate' Text
repReplyId
  = lens _repReplyId (\ s a -> s{_repReplyId = a})

-- | The ID of the file.
repFileId :: Lens' RepliesUpdate' Text
repFileId
  = lens _repFileId (\ s a -> s{_repFileId = a})

-- | The ID of the comment.
repCommentId :: Lens' RepliesUpdate' Text
repCommentId
  = lens _repCommentId (\ s a -> s{_repCommentId = a})

instance GoogleRequest RepliesUpdate' where
        type Rs RepliesUpdate' = CommentReply
        requestClient RepliesUpdate'{..}
          = go _repFileId _repCommentId _repReplyId
              (Just AltJSON)
              _repPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesUpdateResource)
                      mempty
