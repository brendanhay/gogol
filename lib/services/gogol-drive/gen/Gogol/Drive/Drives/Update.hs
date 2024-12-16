{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Drives.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata for a shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.drives.update@.
module Gogol.Drive.Drives.Update
    (
    -- * Resource
      DriveDrivesUpdateResource

    -- ** Constructing a Request
    , DriveDrivesUpdate (..)
    , newDriveDrivesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.drives.update@ method which the
-- 'DriveDrivesUpdate' request conforms to.
type DriveDrivesUpdateResource =
     "drive" Core.:>
       "v3" Core.:>
         "drives" Core.:>
           Core.Capture "driveId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "useDomainAdminAccess" Core.Bool
                         Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Drive Core.:>
                             Core.Patch '[Core.JSON] Drive

-- | Updates the metadata for a shared drive.
--
-- /See:/ 'newDriveDrivesUpdate' smart constructor.
data DriveDrivesUpdate = DriveDrivesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the shared drive.
    , driveId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Drive
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
    , useDomainAdminAccess :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesUpdate' with the minimum fields required to make a request.
newDriveDrivesUpdate 
    ::  Core.Text
       -- ^  The ID of the shared drive. See 'driveId'.
    -> Drive
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveDrivesUpdate
newDriveDrivesUpdate driveId payload =
  DriveDrivesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , driveId = driveId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveDrivesUpdate where
        type Rs DriveDrivesUpdate = Drive
        type Scopes DriveDrivesUpdate = '[Drive'FullControl]
        requestClient DriveDrivesUpdate{..}
          = go driveId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just useDomainAdminAccess)
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveDrivesUpdateResource)
                      Core.mempty

