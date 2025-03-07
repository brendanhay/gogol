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
-- Module      : Gogol.ServiceUser.Services.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search available services.
--
-- When no filter is specified, returns all accessible services. For authenticated users, also returns all services the calling user has \"servicemanagement.services.bind\" permission for.
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.services.search@.
module Gogol.ServiceUser.Services.Search
  ( -- * Resource
    ServiceUserServicesSearchResource,

    -- ** Constructing a Request
    ServiceUserServicesSearch (..),
    newServiceUserServicesSearch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceUser.Types

-- | A resource alias for @serviceuser.services.search@ method which the
-- 'ServiceUserServicesSearch' request conforms to.
type ServiceUserServicesSearchResource =
  "v1"
    Core.:> "services:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchServicesResponse

-- | Search available services.
--
-- When no filter is specified, returns all accessible services. For authenticated users, also returns all services the calling user has \"servicemanagement.services.bind\" permission for.
--
-- /See:/ 'newServiceUserServicesSearch' smart constructor.
data ServiceUserServicesSearch = ServiceUserServicesSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested size of the next page of data.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token identifying which result to start with; returned by a previous list call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUserServicesSearch' with the minimum fields required to make a request.
newServiceUserServicesSearch ::
  ServiceUserServicesSearch
newServiceUserServicesSearch =
  ServiceUserServicesSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceUserServicesSearch where
  type Rs ServiceUserServicesSearch = SearchServicesResponse
  type
    Scopes ServiceUserServicesSearch =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient ServiceUserServicesSearch {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceUserService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ServiceUserServicesSearchResource)
          Core.mempty
