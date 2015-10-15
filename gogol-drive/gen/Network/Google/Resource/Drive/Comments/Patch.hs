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
-- Module      : Network.Google.Resource.Drive.Comments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsPatch@.
module Network.Google.Resource.Drive.Comments.Patch
    (
    -- * REST Resource
      CommentsPatchResource

    -- * Creating a Request
    , commentsPatch'
    , CommentsPatch'

    -- * Request Lenses
    , cpPayload
    , cpFileId
    , cpCommentId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsPatch@ method which the
-- 'CommentsPatch'' request conforms to.
type CommentsPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Comment :> Patch '[JSON] Comment

-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ 'commentsPatch'' smart constructor.
data CommentsPatch' = CommentsPatch'
    { _cpPayload   :: !Comment
    , _cpFileId    :: !Text
    , _cpCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpPayload'
--
-- * 'cpFileId'
--
-- * 'cpCommentId'
commentsPatch'
    :: Comment -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsPatch'
commentsPatch' pCpPayload_ pCpFileId_ pCpCommentId_ =
    CommentsPatch'
    { _cpPayload = pCpPayload_
    , _cpFileId = pCpFileId_
    , _cpCommentId = pCpCommentId_
    }

-- | Multipart request metadata.
cpPayload :: Lens' CommentsPatch' Comment
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | The ID of the file.
cpFileId :: Lens' CommentsPatch' Text
cpFileId = lens _cpFileId (\ s a -> s{_cpFileId = a})

-- | The ID of the comment.
cpCommentId :: Lens' CommentsPatch' Text
cpCommentId
  = lens _cpCommentId (\ s a -> s{_cpCommentId = a})

instance GoogleRequest CommentsPatch' where
        type Rs CommentsPatch' = Comment
        requestClient CommentsPatch'{..}
          = go _cpFileId _cpCommentId (Just AltJSON) _cpPayload
              drive
          where go
                  = buildClient (Proxy :: Proxy CommentsPatchResource)
                      mempty
