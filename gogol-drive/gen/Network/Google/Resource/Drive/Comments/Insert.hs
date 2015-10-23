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
-- Module      : Network.Google.Resource.Drive.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new comment on the given file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.insert@.
module Network.Google.Resource.Drive.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert
    , CommentsInsert

    -- * Request Lenses
    , comPayload
    , comFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.insert@ method which the
-- 'CommentsInsert' request conforms to.
type CommentsInsertResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a new comment on the given file.
--
-- /See:/ 'commentsInsert' smart constructor.
data CommentsInsert = CommentsInsert
    { _comPayload :: !Comment
    , _comFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comPayload'
--
-- * 'comFileId'
commentsInsert
    :: Comment -- ^ 'comPayload'
    -> Text -- ^ 'comFileId'
    -> CommentsInsert
commentsInsert pComPayload_ pComFileId_ =
    CommentsInsert
    { _comPayload = pComPayload_
    , _comFileId = pComFileId_
    }

-- | Multipart request metadata.
comPayload :: Lens' CommentsInsert Comment
comPayload
  = lens _comPayload (\ s a -> s{_comPayload = a})

-- | The ID of the file.
comFileId :: Lens' CommentsInsert Text
comFileId
  = lens _comFileId (\ s a -> s{_comFileId = a})

instance GoogleRequest CommentsInsert where
        type Rs CommentsInsert = Comment
        requestClient CommentsInsert{..}
          = go _comFileId (Just AltJSON) _comPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
