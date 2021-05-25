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
-- Module      : Network.Google.Resource.Drive.Drives.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a shared drive for which the user is an organizer.
-- The shared drive cannot contain any untrashed items.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.delete@.
module Network.Google.Resource.Drive.Drives.Delete
    (
    -- * REST Resource
      DrivesDeleteResource

    -- * Creating a Request
    , drivesDelete
    , DrivesDelete

    -- * Request Lenses
    , ddDriveId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.drives.delete@ method which the
-- 'DrivesDelete' request conforms to.
type DrivesDeleteResource =
     "drive" :>
       "v3" :>
         "drives" :>
           Capture "driveId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes a shared drive for which the user is an organizer.
-- The shared drive cannot contain any untrashed items.
--
-- /See:/ 'drivesDelete' smart constructor.
newtype DrivesDelete =
  DrivesDelete'
    { _ddDriveId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDriveId'
drivesDelete
    :: Text -- ^ 'ddDriveId'
    -> DrivesDelete
drivesDelete pDdDriveId_ = DrivesDelete' {_ddDriveId = pDdDriveId_}


-- | The ID of the shared drive.
ddDriveId :: Lens' DrivesDelete Text
ddDriveId
  = lens _ddDriveId (\ s a -> s{_ddDriveId = a})

instance GoogleRequest DrivesDelete where
        type Rs DrivesDelete = ()
        type Scopes DrivesDelete =
             '["https://www.googleapis.com/auth/drive"]
        requestClient DrivesDelete'{..}
          = go _ddDriveId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesDeleteResource)
                      mempty
