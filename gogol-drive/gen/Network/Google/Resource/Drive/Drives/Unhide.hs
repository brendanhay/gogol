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
-- Module      : Network.Google.Resource.Drive.Drives.Unhide
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a shared drive to the default view.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.unhide@.
module Network.Google.Resource.Drive.Drives.Unhide
    (
    -- * REST Resource
      DrivesUnhideResource

    -- * Creating a Request
    , drivesUnhide
    , DrivesUnhide

    -- * Request Lenses
    , duDriveId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.drives.unhide@ method which the
-- 'DrivesUnhide' request conforms to.
type DrivesUnhideResource =
     "drive" :>
       "v3" :>
         "drives" :>
           Capture "driveId" Text :>
             "unhide" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Drive

-- | Restores a shared drive to the default view.
--
-- /See:/ 'drivesUnhide' smart constructor.
newtype DrivesUnhide =
  DrivesUnhide'
    { _duDriveId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesUnhide' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duDriveId'
drivesUnhide
    :: Text -- ^ 'duDriveId'
    -> DrivesUnhide
drivesUnhide pDuDriveId_ = DrivesUnhide' {_duDriveId = pDuDriveId_}


-- | The ID of the shared drive.
duDriveId :: Lens' DrivesUnhide Text
duDriveId
  = lens _duDriveId (\ s a -> s{_duDriveId = a})

instance GoogleRequest DrivesUnhide where
        type Rs DrivesUnhide = Drive
        type Scopes DrivesUnhide =
             '["https://www.googleapis.com/auth/drive"]
        requestClient DrivesUnhide'{..}
          = go _duDriveId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesUnhideResource)
                      mempty
