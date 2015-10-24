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
    , repliesUpdate
    , RepliesUpdate

    -- * Request Lenses
    , ruPayload
    , ruReplyId
    , ruFileId
    , ruCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.update@ method which the
-- 'RepliesUpdate' request conforms to.
type RepliesUpdateResource =
     "drive" :>
       "v2" :>
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
-- /See:/ 'repliesUpdate' smart constructor.
data RepliesUpdate = RepliesUpdate
    { _ruPayload   :: !CommentReply
    , _ruReplyId   :: !Text
    , _ruFileId    :: !Text
    , _ruCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruPayload'
--
-- * 'ruReplyId'
--
-- * 'ruFileId'
--
-- * 'ruCommentId'
repliesUpdate
    :: CommentReply -- ^ 'ruPayload'
    -> Text -- ^ 'ruReplyId'
    -> Text -- ^ 'ruFileId'
    -> Text -- ^ 'ruCommentId'
    -> RepliesUpdate
repliesUpdate pRuPayload_ pRuReplyId_ pRuFileId_ pRuCommentId_ =
    RepliesUpdate
    { _ruPayload = pRuPayload_
    , _ruReplyId = pRuReplyId_
    , _ruFileId = pRuFileId_
    , _ruCommentId = pRuCommentId_
    }

-- | Multipart request metadata.
ruPayload :: Lens' RepliesUpdate CommentReply
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | The ID of the reply.
ruReplyId :: Lens' RepliesUpdate Text
ruReplyId
  = lens _ruReplyId (\ s a -> s{_ruReplyId = a})

-- | The ID of the file.
ruFileId :: Lens' RepliesUpdate Text
ruFileId = lens _ruFileId (\ s a -> s{_ruFileId = a})

-- | The ID of the comment.
ruCommentId :: Lens' RepliesUpdate Text
ruCommentId
  = lens _ruCommentId (\ s a -> s{_ruCommentId = a})

instance GoogleRequest RepliesUpdate where
        type Rs RepliesUpdate = CommentReply
        requestClient RepliesUpdate{..}
          = go _ruFileId _ruCommentId _ruReplyId (Just AltJSON)
              _ruPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesUpdateResource)
                      mempty
