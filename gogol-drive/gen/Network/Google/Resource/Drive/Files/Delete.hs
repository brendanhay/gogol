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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a file owned by the user without moving it to the
-- trash. If the target is a folder, all descendants owned by the user are
-- also deleted.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.delete@.
module Network.Google.Resource.Drive.Files.Delete
    (
    -- * REST Resource
      FilesDeleteResource

    -- * Creating a Request
    , filesDelete
    , FilesDelete

    -- * Request Lenses
    , fdFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.delete@ method which the
-- 'FilesDelete' request conforms to.
type FilesDeleteResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes a file owned by the user without moving it to the
-- trash. If the target is a folder, all descendants owned by the user are
-- also deleted.
--
-- /See:/ 'filesDelete' smart constructor.
newtype FilesDelete = FilesDelete
    { _fdFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdFileId'
filesDelete
    :: Text -- ^ 'fdFileId'
    -> FilesDelete
filesDelete pFdFileId_ =
    FilesDelete
    { _fdFileId = pFdFileId_
    }

-- | The ID of the file.
fdFileId :: Lens' FilesDelete Text
fdFileId = lens _fdFileId (\ s a -> s{_fdFileId = a})

instance GoogleRequest FilesDelete where
        type Rs FilesDelete = ()
        requestClient FilesDelete{..}
          = go _fdFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy FilesDeleteResource)
                      mempty
