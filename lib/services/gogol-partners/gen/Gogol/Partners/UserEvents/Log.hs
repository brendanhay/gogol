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
-- Module      : Gogol.Partners.UserEvents.Log
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Logs a user event.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.userEvents.log@.
module Gogol.Partners.UserEvents.Log
  ( -- * Resource
    PartnersUserEventsLogResource,

    -- ** Constructing a Request
    PartnersUserEventsLog (..),
    newPartnersUserEventsLog,
  )
where

import Gogol.Partners.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @partners.userEvents.log@ method which the
-- 'PartnersUserEventsLog' request conforms to.
type PartnersUserEventsLogResource =
  "v2"
    Core.:> "userEvents:log"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogUserEventRequest
    Core.:> Core.Post '[Core.JSON] LogUserEventResponse

-- | Logs a user event.
--
-- /See:/ 'newPartnersUserEventsLog' smart constructor.
data PartnersUserEventsLog = PartnersUserEventsLog
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LogUserEventRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersUserEventsLog' with the minimum fields required to make a request.
newPartnersUserEventsLog ::
  -- |  Multipart request metadata. See 'payload'.
  LogUserEventRequest ->
  PartnersUserEventsLog
newPartnersUserEventsLog payload =
  PartnersUserEventsLog
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PartnersUserEventsLog where
  type Rs PartnersUserEventsLog = LogUserEventResponse
  type Scopes PartnersUserEventsLog = '[]
  requestClient PartnersUserEventsLog {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersUserEventsLogResource
          )
          Core.mempty
