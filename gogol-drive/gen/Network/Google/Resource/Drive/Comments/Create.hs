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
-- Module      : Network.Google.Resource.Drive.Comments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new comment on a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.create@.
module Network.Google.Resource.Drive.Comments.Create
    (
    -- * REST Resource
      CommentsCreateResource

    -- * Creating a Request
    , commentsCreate
    , CommentsCreate

    -- * Request Lenses
    , ccPayload
    , ccFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.create@ method which the
-- 'CommentsCreate' request conforms to.
type CommentsCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a new comment on a file.
--
-- /See:/ 'commentsCreate' smart constructor.
data CommentsCreate =
  CommentsCreate'
    { _ccPayload :: !Comment
    , _ccFileId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccPayload'
--
-- * 'ccFileId'
commentsCreate
    :: Comment -- ^ 'ccPayload'
    -> Text -- ^ 'ccFileId'
    -> CommentsCreate
commentsCreate pCcPayload_ pCcFileId_ =
  CommentsCreate' {_ccPayload = pCcPayload_, _ccFileId = pCcFileId_}


-- | Multipart request metadata.
ccPayload :: Lens' CommentsCreate Comment
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | The ID of the file.
ccFileId :: Lens' CommentsCreate Text
ccFileId = lens _ccFileId (\ s a -> s{_ccFileId = a})

instance GoogleRequest CommentsCreate where
        type Rs CommentsCreate = Comment
        type Scopes CommentsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient CommentsCreate'{..}
          = go _ccFileId (Just AltJSON) _ccPayload driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsCreateResource)
                      mempty
