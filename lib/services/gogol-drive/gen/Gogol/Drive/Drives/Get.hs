{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Drives.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a shared drive\'s metadata by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.get@.
module Gogol.Drive.Drives.Get
    (
    -- * Resource
      DriveDrivesGetResource

    -- ** Constructing a Request
    , newDriveDrivesGet
    , DriveDrivesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.drives.get@ method which the
-- 'DriveDrivesGet' request conforms to.
type DriveDrivesGetResource =
     "drive" Core.:>
       "v3" Core.:>
         "drives" Core.:>
           Core.Capture "driveId" Core.Text Core.:>
             Core.QueryParam "useDomainAdminAccess" Core.Bool
               Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] Drive

-- | Gets a shared drive\'s metadata by ID.
--
-- /See:/ 'newDriveDrivesGet' smart constructor.
data DriveDrivesGet = DriveDrivesGet
    {
      -- | The ID of the shared drive.
      driveId :: Core.Text
      -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
    , useDomainAdminAccess :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesGet' with the minimum fields required to make a request.
newDriveDrivesGet 
    ::  Core.Text
       -- ^  The ID of the shared drive. See 'driveId'.
    -> DriveDrivesGet
newDriveDrivesGet driveId =
  DriveDrivesGet {driveId = driveId, useDomainAdminAccess = Core.False}

instance Core.GoogleRequest DriveDrivesGet where
        type Rs DriveDrivesGet = Drive
        type Scopes DriveDrivesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DriveDrivesGet{..}
          = go driveId (Core.Just useDomainAdminAccess)
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveDrivesGetResource)
                      Core.mempty

