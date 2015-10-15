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
-- | Creates a new comment on the given file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsInsert@.
module Network.Google.Resource.Drive.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciPayload
    , ciFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsInsert@ method which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a new comment on the given file.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _ciPayload :: !Comment
    , _ciFileId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
--
-- * 'ciFileId'
commentsInsert'
    :: Comment -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> CommentsInsert'
commentsInsert' pCiPayload_ pCiFileId_ =
    CommentsInsert'
    { _ciPayload = pCiPayload_
    , _ciFileId = pCiFileId_
    }

-- | Multipart request metadata.
ciPayload :: Lens' CommentsInsert' Comment
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | The ID of the file.
ciFileId :: Lens' CommentsInsert' Text
ciFileId = lens _ciFileId (\ s a -> s{_ciFileId = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        requestClient CommentsInsert'{..}
          = go _ciFileId (Just AltJSON) _ciPayload drive
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
