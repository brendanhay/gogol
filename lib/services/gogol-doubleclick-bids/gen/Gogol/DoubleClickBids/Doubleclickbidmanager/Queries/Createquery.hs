{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Createquery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.createquery@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Queries.Createquery
  ( -- * Resource
    DoubleclickbidmanagerQueriesCreatequeryResource,

    -- ** Constructing a Request
    newDoubleclickbidmanagerQueriesCreatequery,
    DoubleclickbidmanagerQueriesCreatequery,
  )
where

import Gogol.DoubleClickBids.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclickbidmanager.queries.createquery@ method which the
-- 'DoubleclickbidmanagerQueriesCreatequery' request conforms to.
type DoubleclickbidmanagerQueriesCreatequeryResource =
  "doubleclickbidmanager"
    Core.:> "v1.1"
    Core.:> "query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "asynchronous" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Query
    Core.:> Core.Post '[Core.JSON] Query

-- | Creates a query.
--
-- /See:/ 'newDoubleclickbidmanagerQueriesCreatequery' smart constructor.
data DoubleclickbidmanagerQueriesCreatequery = DoubleclickbidmanagerQueriesCreatequery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If true, tries to run the query asynchronously. Only applicable when the frequency is ONE_TIME.
    asynchronous :: Core.Bool,
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

-- | Creates a value of 'DoubleclickbidmanagerQueriesCreatequery' with the minimum fields required to make a request.
newDoubleclickbidmanagerQueriesCreatequery ::
  -- |  Multipart request metadata. See 'payload'.
  Query ->
  DoubleclickbidmanagerQueriesCreatequery
newDoubleclickbidmanagerQueriesCreatequery payload =
  DoubleclickbidmanagerQueriesCreatequery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      asynchronous = Core.False,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleclickbidmanagerQueriesCreatequery
  where
  type
    Rs DoubleclickbidmanagerQueriesCreatequery =
      Query
  type
    Scopes DoubleclickbidmanagerQueriesCreatequery =
      '[Doubleclickbidmanager'FullControl]
  requestClient
    DoubleclickbidmanagerQueriesCreatequery {..} =
      go
        xgafv
        accessToken
        (Core.Just asynchronous)
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
                Core.Proxy
                  DoubleclickbidmanagerQueriesCreatequeryResource
            )
            Core.mempty
