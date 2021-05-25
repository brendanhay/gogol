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
-- Module      : Network.Google.Resource.Drive.Drives.Hide
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hides a shared drive from the default view.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.hide@.
module Network.Google.Resource.Drive.Drives.Hide
    (
    -- * REST Resource
      DrivesHideResource

    -- * Creating a Request
    , drivesHide
    , DrivesHide

    -- * Request Lenses
    , dhDriveId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.drives.hide@ method which the
-- 'DrivesHide' request conforms to.
type DrivesHideResource =
     "drive" :>
       "v3" :>
         "drives" :>
           Capture "driveId" Text :>
             "hide" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Drive

-- | Hides a shared drive from the default view.
--
-- /See:/ 'drivesHide' smart constructor.
newtype DrivesHide =
  DrivesHide'
    { _dhDriveId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesHide' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhDriveId'
drivesHide
    :: Text -- ^ 'dhDriveId'
    -> DrivesHide
drivesHide pDhDriveId_ = DrivesHide' {_dhDriveId = pDhDriveId_}


-- | The ID of the shared drive.
dhDriveId :: Lens' DrivesHide Text
dhDriveId
  = lens _dhDriveId (\ s a -> s{_dhDriveId = a})

instance GoogleRequest DrivesHide where
        type Rs DrivesHide = Drive
        type Scopes DrivesHide =
             '["https://www.googleapis.com/auth/drive"]
        requestClient DrivesHide'{..}
          = go _dhDriveId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesHideResource)
                      mempty
