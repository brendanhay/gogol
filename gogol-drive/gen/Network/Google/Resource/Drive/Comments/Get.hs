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
-- Module      : Network.Google.Resource.Drive.Comments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a comment by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.get@.
module Network.Google.Resource.Drive.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet
    , CommentsGet

    -- * Request Lenses
    , cgFileId
    , cgCommentId
    , cgIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.get@ method which the
-- 'CommentsGet' request conforms to.
type CommentsGetResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "includeDeleted" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Gets a comment by ID.
--
-- /See:/ 'commentsGet' smart constructor.
data CommentsGet = CommentsGet
    { _cgFileId         :: !Text
    , _cgCommentId      :: !Text
    , _cgIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgFileId'
--
-- * 'cgCommentId'
--
-- * 'cgIncludeDeleted'
commentsGet
    :: Text -- ^ 'cgFileId'
    -> Text -- ^ 'cgCommentId'
    -> CommentsGet
commentsGet pCgFileId_ pCgCommentId_ =
    CommentsGet
    { _cgFileId = pCgFileId_
    , _cgCommentId = pCgCommentId_
    , _cgIncludeDeleted = False
    }

-- | The ID of the file.
cgFileId :: Lens' CommentsGet Text
cgFileId = lens _cgFileId (\ s a -> s{_cgFileId = a})

-- | The ID of the comment.
cgCommentId :: Lens' CommentsGet Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | Whether to return deleted comments. Deleted comments will not include
-- their original content.
cgIncludeDeleted :: Lens' CommentsGet Bool
cgIncludeDeleted
  = lens _cgIncludeDeleted
      (\ s a -> s{_cgIncludeDeleted = a})

instance GoogleRequest CommentsGet where
        type Rs CommentsGet = Comment
        requestClient CommentsGet{..}
          = go _cgFileId _cgCommentId (Just _cgIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsGetResource)
                      mempty
