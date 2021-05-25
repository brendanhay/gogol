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
-- Module      : Network.Google.Resource.Drive.Teamdrives.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.delete instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.delete@.
module Network.Google.Resource.Drive.Teamdrives.Delete
    (
    -- * REST Resource
      TeamdrivesDeleteResource

    -- * Creating a Request
    , teamdrivesDelete
    , TeamdrivesDelete

    -- * Request Lenses
    , tdTeamDriveId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.teamdrives.delete@ method which the
-- 'TeamdrivesDelete' request conforms to.
type TeamdrivesDeleteResource =
     "drive" :>
       "v3" :>
         "teamdrives" :>
           Capture "teamDriveId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deprecated use drives.delete instead.
--
-- /See:/ 'teamdrivesDelete' smart constructor.
newtype TeamdrivesDelete =
  TeamdrivesDelete'
    { _tdTeamDriveId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TeamdrivesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTeamDriveId'
teamdrivesDelete
    :: Text -- ^ 'tdTeamDriveId'
    -> TeamdrivesDelete
teamdrivesDelete pTdTeamDriveId_ =
  TeamdrivesDelete' {_tdTeamDriveId = pTdTeamDriveId_}


-- | The ID of the Team Drive
tdTeamDriveId :: Lens' TeamdrivesDelete Text
tdTeamDriveId
  = lens _tdTeamDriveId
      (\ s a -> s{_tdTeamDriveId = a})

instance GoogleRequest TeamdrivesDelete where
        type Rs TeamdrivesDelete = ()
        type Scopes TeamdrivesDelete =
             '["https://www.googleapis.com/auth/drive"]
        requestClient TeamdrivesDelete'{..}
          = go _tdTeamDriveId (Just AltJSON) driveService
          where go
                  = buildClient
                      (Proxy :: Proxy TeamdrivesDeleteResource)
                      mempty
