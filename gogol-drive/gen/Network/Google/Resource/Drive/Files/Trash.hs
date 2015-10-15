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
-- Module      : Network.Google.Resource.Drive.Files.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesTrash@.
module Network.Google.Resource.Drive.Files.Trash
    (
    -- * REST Resource
      FilesTrashResource

    -- * Creating a Request
    , filesTrash'
    , FilesTrash'

    -- * Request Lenses
    , filFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesTrash@ method which the
-- 'FilesTrash'' request conforms to.
type FilesTrashResource =
     "files" :>
       Capture "fileId" Text :>
         "trash" :>
           QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ 'filesTrash'' smart constructor.
newtype FilesTrash' = FilesTrash'
    { _filFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filFileId'
filesTrash'
    :: Text -- ^ 'fileId'
    -> FilesTrash'
filesTrash' pFilFileId_ =
    FilesTrash'
    { _filFileId = pFilFileId_
    }

-- | The ID of the file to trash.
filFileId :: Lens' FilesTrash' Text
filFileId
  = lens _filFileId (\ s a -> s{_filFileId = a})

instance GoogleRequest FilesTrash' where
        type Rs FilesTrash' = File
        requestClient FilesTrash'{..}
          = go _filFileId (Just AltJSON) drive
          where go
                  = buildClient (Proxy :: Proxy FilesTrashResource)
                      mempty
