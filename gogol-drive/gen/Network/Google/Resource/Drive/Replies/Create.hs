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
-- Module      : Network.Google.Resource.Drive.Replies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new reply to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.create@.
module Network.Google.Resource.Drive.Replies.Create
    (
    -- * REST Resource
      RepliesCreateResource

    -- * Creating a Request
    , repliesCreate
    , RepliesCreate

    -- * Request Lenses
    , rcPayload
    , rcFileId
    , rcCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.create@ method which the
-- 'RepliesCreate' request conforms to.
type RepliesCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "replies" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Reply :> Post '[JSON] Reply

-- | Creates a new reply to a comment.
--
-- /See:/ 'repliesCreate' smart constructor.
data RepliesCreate = RepliesCreate
    { _rcPayload   :: !Reply
    , _rcFileId    :: !Text
    , _rcCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcPayload'
--
-- * 'rcFileId'
--
-- * 'rcCommentId'
repliesCreate
    :: Reply -- ^ 'rcPayload'
    -> Text -- ^ 'rcFileId'
    -> Text -- ^ 'rcCommentId'
    -> RepliesCreate
repliesCreate pRcPayload_ pRcFileId_ pRcCommentId_ =
    RepliesCreate
    { _rcPayload = pRcPayload_
    , _rcFileId = pRcFileId_
    , _rcCommentId = pRcCommentId_
    }

-- | Multipart request metadata.
rcPayload :: Lens' RepliesCreate Reply
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

-- | The ID of the file.
rcFileId :: Lens' RepliesCreate Text
rcFileId = lens _rcFileId (\ s a -> s{_rcFileId = a})

-- | The ID of the comment.
rcCommentId :: Lens' RepliesCreate Text
rcCommentId
  = lens _rcCommentId (\ s a -> s{_rcCommentId = a})

instance GoogleRequest RepliesCreate where
        type Rs RepliesCreate = Reply
        type Scopes RepliesCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient RepliesCreate{..}
          = go _rcFileId _rcCommentId (Just AltJSON) _rcPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesCreateResource)
                      mempty
