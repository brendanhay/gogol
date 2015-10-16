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
-- Module      : Network.Google.Resource.Drive.Replies.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesPatch@.
module Network.Google.Resource.Drive.Replies.Patch
    (
    -- * REST Resource
      RepliesPatchResource

    -- * Creating a Request
    , repliesPatch'
    , RepliesPatch'

    -- * Request Lenses
    , rpPayload
    , rpReplyId
    , rpFileId
    , rpCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesPatch@ method which the
-- 'RepliesPatch'' request conforms to.
type RepliesPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CommentReply :>
                     Patch '[JSON] CommentReply

-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ 'repliesPatch'' smart constructor.
data RepliesPatch' = RepliesPatch'
    { _rpPayload   :: !CommentReply
    , _rpReplyId   :: !Text
    , _rpFileId    :: !Text
    , _rpCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpPayload'
--
-- * 'rpReplyId'
--
-- * 'rpFileId'
--
-- * 'rpCommentId'
repliesPatch'
    :: CommentReply -- ^ 'payload'
    -> Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesPatch'
repliesPatch' pRpPayload_ pRpReplyId_ pRpFileId_ pRpCommentId_ =
    RepliesPatch'
    { _rpPayload = pRpPayload_
    , _rpReplyId = pRpReplyId_
    , _rpFileId = pRpFileId_
    , _rpCommentId = pRpCommentId_
    }

-- | Multipart request metadata.
rpPayload :: Lens' RepliesPatch' CommentReply
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | The ID of the reply.
rpReplyId :: Lens' RepliesPatch' Text
rpReplyId
  = lens _rpReplyId (\ s a -> s{_rpReplyId = a})

-- | The ID of the file.
rpFileId :: Lens' RepliesPatch' Text
rpFileId = lens _rpFileId (\ s a -> s{_rpFileId = a})

-- | The ID of the comment.
rpCommentId :: Lens' RepliesPatch' Text
rpCommentId
  = lens _rpCommentId (\ s a -> s{_rpCommentId = a})

instance GoogleRequest RepliesPatch' where
        type Rs RepliesPatch' = CommentReply
        requestClient RepliesPatch'{..}
          = go _rpFileId _rpCommentId _rpReplyId (Just AltJSON)
              _rpPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesPatchResource)
                      mempty
