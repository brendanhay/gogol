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
-- Module      : Network.Google.Resource.Drive.Files.EmptyTrash
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes all of the user\'s trashed files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.emptyTrash@.
module Network.Google.Resource.Drive.Files.EmptyTrash
    (
    -- * REST Resource
      FilesEmptyTrashResource

    -- * Creating a Request
    , filesEmptyTrash
    , FilesEmptyTrash

    -- * Request Lenses
    , fetEnforceSingleParent
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.files.emptyTrash@ method which the
-- 'FilesEmptyTrash' request conforms to.
type FilesEmptyTrashResource =
     "drive" :>
       "v3" :>
         "files" :>
           "trash" :>
             QueryParam "enforceSingleParent" Bool :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes all of the user\'s trashed files.
--
-- /See:/ 'filesEmptyTrash' smart constructor.
newtype FilesEmptyTrash =
  FilesEmptyTrash'
    { _fetEnforceSingleParent :: Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesEmptyTrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fetEnforceSingleParent'
filesEmptyTrash
    :: FilesEmptyTrash
filesEmptyTrash = FilesEmptyTrash' {_fetEnforceSingleParent = False}


-- | Deprecated. If an item is not in a shared drive and its last parent is
-- deleted but the item itself is not, the item will be placed under its
-- owner\'s root.
fetEnforceSingleParent :: Lens' FilesEmptyTrash Bool
fetEnforceSingleParent
  = lens _fetEnforceSingleParent
      (\ s a -> s{_fetEnforceSingleParent = a})

instance GoogleRequest FilesEmptyTrash where
        type Rs FilesEmptyTrash = ()
        type Scopes FilesEmptyTrash =
             '["https://www.googleapis.com/auth/drive"]
        requestClient FilesEmptyTrash'{..}
          = go (Just _fetEnforceSingleParent) (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy FilesEmptyTrashResource)
                      mempty
