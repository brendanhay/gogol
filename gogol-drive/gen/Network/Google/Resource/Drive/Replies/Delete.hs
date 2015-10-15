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
-- Module      : Network.Google.Resource.Drive.Replies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesDelete@.
module Network.Google.Resource.Drive.Replies.Delete
    (
    -- * REST Resource
      RepliesDeleteResource

    -- * Creating a Request
    , repliesDelete'
    , RepliesDelete'

    -- * Request Lenses
    , rddReplyId
    , rddFileId
    , rddCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesDelete@ method which the
-- 'RepliesDelete'' request conforms to.
type RepliesDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a reply.
--
-- /See:/ 'repliesDelete'' smart constructor.
data RepliesDelete' = RepliesDelete'
    { _rddReplyId   :: !Text
    , _rddFileId    :: !Text
    , _rddCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddReplyId'
--
-- * 'rddFileId'
--
-- * 'rddCommentId'
repliesDelete'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesDelete'
repliesDelete' pRddReplyId_ pRddFileId_ pRddCommentId_ =
    RepliesDelete'
    { _rddReplyId = pRddReplyId_
    , _rddFileId = pRddFileId_
    , _rddCommentId = pRddCommentId_
    }

-- | The ID of the reply.
rddReplyId :: Lens' RepliesDelete' Text
rddReplyId
  = lens _rddReplyId (\ s a -> s{_rddReplyId = a})

-- | The ID of the file.
rddFileId :: Lens' RepliesDelete' Text
rddFileId
  = lens _rddFileId (\ s a -> s{_rddFileId = a})

-- | The ID of the comment.
rddCommentId :: Lens' RepliesDelete' Text
rddCommentId
  = lens _rddCommentId (\ s a -> s{_rddCommentId = a})

instance GoogleRequest RepliesDelete' where
        type Rs RepliesDelete' = ()
        requestClient RepliesDelete'{..}
          = go _rddFileId _rddCommentId _rddReplyId
              (Just AltJSON)
              drive
          where go
                  = buildClient (Proxy :: Proxy RepliesDeleteResource)
                      mempty
