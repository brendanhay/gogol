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
-- Module      : Network.Google.Resource.Drive.Files.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesDelete@.
module Network.Google.Resource.Drive.Files.Delete
    (
    -- * REST Resource
      FilesDeleteResource

    -- * Creating a Request
    , filesDelete'
    , FilesDelete'

    -- * Request Lenses
    , fdFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesDelete@ method which the
-- 'FilesDelete'' request conforms to.
type FilesDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ 'filesDelete'' smart constructor.
newtype FilesDelete' = FilesDelete'
    { _fdFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdFileId'
filesDelete'
    :: Text -- ^ 'fileId'
    -> FilesDelete'
filesDelete' pFdFileId_ =
    FilesDelete'
    { _fdFileId = pFdFileId_
    }

-- | The ID of the file to delete.
fdFileId :: Lens' FilesDelete' Text
fdFileId = lens _fdFileId (\ s a -> s{_fdFileId = a})

instance GoogleRequest FilesDelete' where
        type Rs FilesDelete' = ()
        requestClient FilesDelete'{..}
          = go _fdFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy FilesDeleteResource)
                      mempty
