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
-- Module      : Gogol.Games.Metagame.GetMetagameConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return the metagame configuration data for the calling application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.metagame.getMetagameConfig@.
module Gogol.Games.Metagame.GetMetagameConfig
  ( -- * Resource
    GamesMetagameGetMetagameConfigResource,

    -- ** Constructing a Request
    newGamesMetagameGetMetagameConfig,
    GamesMetagameGetMetagameConfig,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.metagame.getMetagameConfig@ method which the
-- 'GamesMetagameGetMetagameConfig' request conforms to.
type GamesMetagameGetMetagameConfigResource =
  "games"
    Core.:> "v1"
    Core.:> "metagameConfig"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MetagameConfig

-- | Return the metagame configuration data for the calling application.
--
-- /See:/ 'newGamesMetagameGetMetagameConfig' smart constructor.
data GamesMetagameGetMetagameConfig = GamesMetagameGetMetagameConfig
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

-- | Creates a value of 'GamesMetagameGetMetagameConfig' with the minimum fields required to make a request.
newGamesMetagameGetMetagameConfig ::
  GamesMetagameGetMetagameConfig
newGamesMetagameGetMetagameConfig =
  GamesMetagameGetMetagameConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesMetagameGetMetagameConfig
  where
  type
    Rs GamesMetagameGetMetagameConfig =
      MetagameConfig
  type
    Scopes GamesMetagameGetMetagameConfig =
      '[Games'FullControl]
  requestClient GamesMetagameGetMetagameConfig {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesMetagameGetMetagameConfigResource
          )
          Core.mempty
