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
-- Module      : Network.Google.Resource.Drive.Drives.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a shared drive\'s metadata by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.get@.
module Network.Google.Resource.Drive.Drives.Get
    (
    -- * REST Resource
      DrivesGetResource

    -- * Creating a Request
    , drivesGet
    , DrivesGet

    -- * Request Lenses
    , dgUseDomainAdminAccess
    , dgDriveId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.drives.get@ method which the
-- 'DrivesGet' request conforms to.
type DrivesGetResource =
     "drive" :>
       "v3" :>
         "drives" :>
           Capture "driveId" Text :>
             QueryParam "useDomainAdminAccess" Bool :>
               QueryParam "alt" AltJSON :> Get '[JSON] Drive

-- | Gets a shared drive\'s metadata by ID.
--
-- /See:/ 'drivesGet' smart constructor.
data DrivesGet =
  DrivesGet'
    { _dgUseDomainAdminAccess :: !Bool
    , _dgDriveId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgUseDomainAdminAccess'
--
-- * 'dgDriveId'
drivesGet
    :: Text -- ^ 'dgDriveId'
    -> DrivesGet
drivesGet pDgDriveId_ =
  DrivesGet' {_dgUseDomainAdminAccess = False, _dgDriveId = pDgDriveId_}


-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if they are an administrator of the
-- domain to which the shared drive belongs.
dgUseDomainAdminAccess :: Lens' DrivesGet Bool
dgUseDomainAdminAccess
  = lens _dgUseDomainAdminAccess
      (\ s a -> s{_dgUseDomainAdminAccess = a})

-- | The ID of the shared drive.
dgDriveId :: Lens' DrivesGet Text
dgDriveId
  = lens _dgDriveId (\ s a -> s{_dgDriveId = a})

instance GoogleRequest DrivesGet where
        type Rs DrivesGet = Drive
        type Scopes DrivesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DrivesGet'{..}
          = go _dgDriveId (Just _dgUseDomainAdminAccess)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesGetResource)
                      mempty
