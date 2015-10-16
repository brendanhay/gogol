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
-- Module      : Network.Google.Resource.Drive.Files.Untrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a file from the trash.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesUntrash@.
module Network.Google.Resource.Drive.Files.Untrash
    (
    -- * REST Resource
      FilesUntrashResource

    -- * Creating a Request
    , filesUntrash'
    , FilesUntrash'

    -- * Request Lenses
    , fFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesUntrash@ method which the
-- 'FilesUntrash'' request conforms to.
type FilesUntrashResource =
     "files" :>
       Capture "fileId" Text :>
         "untrash" :>
           QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Restores a file from the trash.
--
-- /See:/ 'filesUntrash'' smart constructor.
newtype FilesUntrash' = FilesUntrash'
    { _fFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFileId'
filesUntrash'
    :: Text -- ^ 'fileId'
    -> FilesUntrash'
filesUntrash' pFFileId_ =
    FilesUntrash'
    { _fFileId = pFFileId_
    }

-- | The ID of the file to untrash.
fFileId :: Lens' FilesUntrash' Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

instance GoogleRequest FilesUntrash' where
        type Rs FilesUntrash' = File
        requestClient FilesUntrash'{..}
          = go _fFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy FilesUntrashResource)
                      mempty
