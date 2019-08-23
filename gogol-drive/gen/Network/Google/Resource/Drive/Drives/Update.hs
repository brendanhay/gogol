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
-- Module      : Network.Google.Resource.Drive.Drives.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadate for a shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.update@.
module Network.Google.Resource.Drive.Drives.Update
    (
    -- * REST Resource
      DrivesUpdateResource

    -- * Creating a Request
    , drivesUpdate
    , DrivesUpdate

    -- * Request Lenses
    , dPayload
    , dUseDomainAdminAccess
    , dDriveId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.drives.update@ method which the
-- 'DrivesUpdate' request conforms to.
type DrivesUpdateResource =
     "drive" :>
       "v3" :>
         "drives" :>
           Capture "driveId" Text :>
             QueryParam "useDomainAdminAccess" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Drive :> Patch '[JSON] Drive

-- | Updates the metadate for a shared drive.
--
-- /See:/ 'drivesUpdate' smart constructor.
data DrivesUpdate =
  DrivesUpdate'
    { _dPayload              :: !Drive
    , _dUseDomainAdminAccess :: !Bool
    , _dDriveId              :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dPayload'
--
-- * 'dUseDomainAdminAccess'
--
-- * 'dDriveId'
drivesUpdate
    :: Drive -- ^ 'dPayload'
    -> Text -- ^ 'dDriveId'
    -> DrivesUpdate
drivesUpdate pDPayload_ pDDriveId_ =
  DrivesUpdate'
    { _dPayload = pDPayload_
    , _dUseDomainAdminAccess = False
    , _dDriveId = pDDriveId_
    }


-- | Multipart request metadata.
dPayload :: Lens' DrivesUpdate Drive
dPayload = lens _dPayload (\ s a -> s{_dPayload = a})

-- | Issue the request as a domain administrator; if set to true, then the
-- requester will be granted access if they are an administrator of the
-- domain to which the shared drive belongs.
dUseDomainAdminAccess :: Lens' DrivesUpdate Bool
dUseDomainAdminAccess
  = lens _dUseDomainAdminAccess
      (\ s a -> s{_dUseDomainAdminAccess = a})

-- | The ID of the shared drive.
dDriveId :: Lens' DrivesUpdate Text
dDriveId = lens _dDriveId (\ s a -> s{_dDriveId = a})

instance GoogleRequest DrivesUpdate where
        type Rs DrivesUpdate = Drive
        type Scopes DrivesUpdate =
             '["https://www.googleapis.com/auth/drive"]
        requestClient DrivesUpdate'{..}
          = go _dDriveId (Just _dUseDomainAdminAccess)
              (Just AltJSON)
              _dPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesUpdateResource)
                      mempty
