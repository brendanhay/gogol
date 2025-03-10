{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.create@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Create
  ( -- * Resource
    DoubleclickbidmanagerQueriesCreateResource,

    -- ** Constructing a Request
    DoubleclickbidmanagerQueriesCreate (..),
    newDoubleclickbidmanagerQueriesCreate,
  )
where

import Gogol.DoubleClickBids.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @doubleclickbidmanager.queries.create@ method which the
-- 'DoubleclickbidmanagerQueriesCreate' request conforms to.
type DoubleclickbidmanagerQueriesCreateResource =
  "v2"
    Core.:> "queries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Query
    Core.:> Core.Post '[Core.JSON] Query

-- | Creates a new query.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesCreate' smart constructor.
data DoubleclickbidmanagerQueriesCreate = DoubleclickbidmanagerQueriesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Query,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerQueriesCreate' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Query ->
  DoubleclickbidmanagerQueriesCreate
newDoubleclickbidmanagerQueriesCreate payload =
  DoubleclickbidmanagerQueriesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DoubleclickbidmanagerQueriesCreate where
  type Rs DoubleclickbidmanagerQueriesCreate = Query
  type
    Scopes DoubleclickbidmanagerQueriesCreate =
      '[Doubleclickbidmanager'FullControl]
  requestClient DoubleclickbidmanagerQueriesCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      doubleClickBidsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleclickbidmanagerQueriesCreateResource
          )
          Core.mempty
