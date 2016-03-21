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
-- Module      : Network.Google.Resource.Drive.Comments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.delete@.
module Network.Google.Resource.Drive.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , cdFileId
    , cdCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.delete@ method which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete' smart constructor.
data CommentsDelete = CommentsDelete'
    { _cdFileId    :: !Text
    , _cdCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdFileId'
--
-- * 'cdCommentId'
commentsDelete
    :: Text -- ^ 'cdFileId'
    -> Text -- ^ 'cdCommentId'
    -> CommentsDelete
commentsDelete pCdFileId_ pCdCommentId_ =
    CommentsDelete'
    { _cdFileId = pCdFileId_
    , _cdCommentId = pCdCommentId_
    }

-- | The ID of the file.
cdFileId :: Lens' CommentsDelete Text
cdFileId = lens _cdFileId (\ s a -> s{_cdFileId = a})

-- | The ID of the comment.
cdCommentId :: Lens' CommentsDelete Text
cdCommentId
  = lens _cdCommentId (\ s a -> s{_cdCommentId = a})

instance GoogleRequest CommentsDelete where
        type Rs CommentsDelete = ()
        type Scopes CommentsDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient CommentsDelete'{..}
          = go _cdFileId _cdCommentId (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsDeleteResource)
                      mempty
