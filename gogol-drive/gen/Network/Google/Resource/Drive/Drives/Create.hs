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
-- Module      : Network.Google.Resource.Drive.Drives.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.create@.
module Network.Google.Resource.Drive.Drives.Create
    (
    -- * REST Resource
      DrivesCreateResource

    -- * Creating a Request
    , drivesCreate
    , DrivesCreate

    -- * Request Lenses
    , dcRequestId
    , dcPayload
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.drives.create@ method which the
-- 'DrivesCreate' request conforms to.
type DrivesCreateResource =
     "drive" :>
       "v3" :>
         "drives" :>
           QueryParam "requestId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Drive :> Post '[JSON] Drive

-- | Creates a new shared drive.
--
-- /See:/ 'drivesCreate' smart constructor.
data DrivesCreate =
  DrivesCreate'
    { _dcRequestId :: !Text
    , _dcPayload   :: !Drive
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcRequestId'
--
-- * 'dcPayload'
drivesCreate
    :: Text -- ^ 'dcRequestId'
    -> Drive -- ^ 'dcPayload'
    -> DrivesCreate
drivesCreate pDcRequestId_ pDcPayload_ =
  DrivesCreate' {_dcRequestId = pDcRequestId_, _dcPayload = pDcPayload_}


-- | An ID, such as a random UUID, which uniquely identifies this user\'s
-- request for idempotent creation of a shared drive. A repeated request by
-- the same user and with the same request ID will avoid creating
-- duplicates by attempting to create the same shared drive. If the shared
-- drive already exists a 409 error will be returned.
dcRequestId :: Lens' DrivesCreate Text
dcRequestId
  = lens _dcRequestId (\ s a -> s{_dcRequestId = a})

-- | Multipart request metadata.
dcPayload :: Lens' DrivesCreate Drive
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

instance GoogleRequest DrivesCreate where
        type Rs DrivesCreate = Drive
        type Scopes DrivesCreate =
             '["https://www.googleapis.com/auth/drive"]
        requestClient DrivesCreate'{..}
          = go (Just _dcRequestId) (Just AltJSON) _dcPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesCreateResource)
                      mempty
