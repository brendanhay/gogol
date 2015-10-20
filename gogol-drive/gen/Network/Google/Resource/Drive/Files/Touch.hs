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
-- Module      : Network.Google.Resource.Drive.Files.Touch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set the file\'s updated time to the current server time.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.touch@.
module Network.Google.Resource.Drive.Files.Touch
    (
    -- * REST Resource
      FilesTouchResource

    -- * Creating a Request
    , filesTouch
    , FilesTouch

    -- * Request Lenses
    , ftFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.touch@ method which the
-- 'FilesTouch' request conforms to.
type FilesTouchResource =
     "files" :>
       Capture "fileId" Text :>
         "touch" :>
           QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Set the file\'s updated time to the current server time.
--
-- /See:/ 'filesTouch' smart constructor.
newtype FilesTouch = FilesTouch
    { _ftFileId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTouch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftFileId'
filesTouch
    :: Text -- ^ 'ftFileId'
    -> FilesTouch
filesTouch pFtFileId_ =
    FilesTouch
    { _ftFileId = pFtFileId_
    }

-- | The ID of the file to update.
ftFileId :: Lens' FilesTouch Text
ftFileId = lens _ftFileId (\ s a -> s{_ftFileId = a})

instance GoogleRequest FilesTouch where
        type Rs FilesTouch = File
        requestClient FilesTouch{..}
          = go _ftFileId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy FilesTouchResource)
                      mempty
