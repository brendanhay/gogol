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
-- Module      : Gogol.Drive.Apps.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific app. For more information, see <https://developers.google.com/drive/api/guides/user-info Return user info>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.apps.get@.
module Gogol.Drive.Apps.Get
    (
    -- * Resource
      DriveAppsGetResource

    -- ** Constructing a Request
    , DriveAppsGet (..)
    , newDriveAppsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.apps.get@ method which the
-- 'DriveAppsGet' request conforms to.
type DriveAppsGetResource =
     "drive" Core.:>
       "v3" Core.:>
         "apps" Core.:>
           Core.Capture "appId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] App

-- | Gets a specific app. For more information, see <https://developers.google.com/drive/api/guides/user-info Return user info>.
--
-- /See:/ 'newDriveAppsGet' smart constructor.
data DriveAppsGet = DriveAppsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the app.
    , appId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveAppsGet' with the minimum fields required to make a request.
newDriveAppsGet 
    ::  Core.Text
       -- ^  The ID of the app. See 'appId'.
    -> DriveAppsGet
newDriveAppsGet appId =
  DriveAppsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appId = appId
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveAppsGet where
        type Rs DriveAppsGet = App
        type Scopes DriveAppsGet =
             '[Drive'FullControl, Drive'Appdata,
               Drive'Apps'Readonly, Drive'File, Drive'Metadata,
               Drive'Metadata'Readonly, Drive'Readonly]
        requestClient DriveAppsGet{..}
          = go appId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveAppsGetResource)
                      Core.mempty

