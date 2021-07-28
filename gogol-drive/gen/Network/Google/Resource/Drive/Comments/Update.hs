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
-- Module      : Network.Google.Resource.Drive.Comments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a comment with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.update@.
module Network.Google.Resource.Drive.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate
    , CommentsUpdate

    -- * Request Lenses
    , cuPayload
    , cuFileId
    , cuCommentId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.comments.update@ method which the
-- 'CommentsUpdate' request conforms to.
type CommentsUpdateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Comment :> Patch '[JSON] Comment

-- | Updates a comment with patch semantics.
--
-- /See:/ 'commentsUpdate' smart constructor.
data CommentsUpdate =
  CommentsUpdate'
    { _cuPayload :: !Comment
    , _cuFileId :: !Text
    , _cuCommentId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPayload'
--
-- * 'cuFileId'
--
-- * 'cuCommentId'
commentsUpdate
    :: Comment -- ^ 'cuPayload'
    -> Text -- ^ 'cuFileId'
    -> Text -- ^ 'cuCommentId'
    -> CommentsUpdate
commentsUpdate pCuPayload_ pCuFileId_ pCuCommentId_ =
  CommentsUpdate'
    { _cuPayload = pCuPayload_
    , _cuFileId = pCuFileId_
    , _cuCommentId = pCuCommentId_
    }


-- | Multipart request metadata.
cuPayload :: Lens' CommentsUpdate Comment
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | The ID of the file.
cuFileId :: Lens' CommentsUpdate Text
cuFileId = lens _cuFileId (\ s a -> s{_cuFileId = a})

-- | The ID of the comment.
cuCommentId :: Lens' CommentsUpdate Text
cuCommentId
  = lens _cuCommentId (\ s a -> s{_cuCommentId = a})

instance GoogleRequest CommentsUpdate where
        type Rs CommentsUpdate = Comment
        type Scopes CommentsUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient CommentsUpdate'{..}
          = go _cuFileId _cuCommentId (Just AltJSON) _cuPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsUpdateResource)
                      mempty
