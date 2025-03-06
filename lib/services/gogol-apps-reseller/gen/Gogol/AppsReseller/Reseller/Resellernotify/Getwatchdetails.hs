{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsReseller.Reseller.Resellernotify.Getwatchdetails
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the details of the watch corresponding to the reseller.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.getwatchdetails@.
module Gogol.AppsReseller.Reseller.Resellernotify.Getwatchdetails
  ( -- * Resource
    ResellerResellernotifyGetwatchdetailsResource,

    -- ** Constructing a Request
    ResellerResellernotifyGetwatchdetails (..),
    newResellerResellernotifyGetwatchdetails,
  )
where

import Gogol.AppsReseller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @reseller.resellernotify.getwatchdetails@ method which the
-- 'ResellerResellernotifyGetwatchdetails' request conforms to.
type ResellerResellernotifyGetwatchdetailsResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "resellernotify"
    Core.:> "getwatchdetails"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ResellernotifyGetwatchdetailsResponse

-- | Returns all the details of the watch corresponding to the reseller.
--
-- /See:/ 'newResellerResellernotifyGetwatchdetails' smart constructor.
data ResellerResellernotifyGetwatchdetails = ResellerResellernotifyGetwatchdetails
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerResellernotifyGetwatchdetails' with the minimum fields required to make a request.
newResellerResellernotifyGetwatchdetails ::
  ResellerResellernotifyGetwatchdetails
newResellerResellernotifyGetwatchdetails =
  ResellerResellernotifyGetwatchdetails
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerResellernotifyGetwatchdetails where
  type
    Rs ResellerResellernotifyGetwatchdetails =
      ResellernotifyGetwatchdetailsResponse
  type
    Scopes ResellerResellernotifyGetwatchdetails =
      '[Apps'Order, Apps'Order'Readonly]
  requestClient ResellerResellernotifyGetwatchdetails {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerResellernotifyGetwatchdetailsResource
          )
          Core.mempty
