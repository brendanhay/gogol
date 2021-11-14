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
-- Module      : Network.Google.Resource.Drive.Files.GenerateIds
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a set of file IDs which can be provided in create or copy
-- requests.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.generateIds@.
module Network.Google.Resource.Drive.Files.GenerateIds
    (
    -- * REST Resource
      FilesGenerateIdsResource

    -- * Creating a Request
    , filesGenerateIds
    , FilesGenerateIds

    -- * Request Lenses
    , fgiSpace
    , fgiCount
    , fgiType
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.files.generateIds@ method which the
-- 'FilesGenerateIds' request conforms to.
type FilesGenerateIdsResource =
     "drive" :>
       "v3" :>
         "files" :>
           "generateIds" :>
             QueryParam "space" Text :>
               QueryParam "count" (Textual Int32) :>
                 QueryParam "type" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] GeneratedIds

-- | Generates a set of file IDs which can be provided in create or copy
-- requests.
--
-- /See:/ 'filesGenerateIds' smart constructor.
data FilesGenerateIds =
  FilesGenerateIds'
    { _fgiSpace :: !Text
    , _fgiCount :: !(Textual Int32)
    , _fgiType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesGenerateIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgiSpace'
--
-- * 'fgiCount'
--
-- * 'fgiType'
filesGenerateIds
    :: FilesGenerateIds
filesGenerateIds =
  FilesGenerateIds' {_fgiSpace = "drive", _fgiCount = 10, _fgiType = "files"}


-- | The space in which the IDs can be used to create new files. Supported
-- values are \'drive\' and \'appDataFolder\'. (Default: \'drive\')
fgiSpace :: Lens' FilesGenerateIds Text
fgiSpace = lens _fgiSpace (\ s a -> s{_fgiSpace = a})

-- | The number of IDs to return.
fgiCount :: Lens' FilesGenerateIds Int32
fgiCount
  = lens _fgiCount (\ s a -> s{_fgiCount = a}) .
      _Coerce

-- | The type of items which the IDs can be used for. Supported values are
-- \'files\' and \'shortcuts\'. Note that \'shortcuts\' are only supported
-- in the drive \'space\'. (Default: \'files\')
fgiType :: Lens' FilesGenerateIds Text
fgiType = lens _fgiType (\ s a -> s{_fgiType = a})

instance GoogleRequest FilesGenerateIds where
        type Rs FilesGenerateIds = GeneratedIds
        type Scopes FilesGenerateIds =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient FilesGenerateIds'{..}
          = go (Just _fgiSpace) (Just _fgiCount)
              (Just _fgiType)
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy FilesGenerateIdsResource)
                      mempty
