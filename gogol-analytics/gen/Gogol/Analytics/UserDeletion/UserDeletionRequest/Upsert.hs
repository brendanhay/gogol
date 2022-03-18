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
-- Module      : Gogol.Analytics.UserDeletion.UserDeletionRequest.Upsert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert or update a user deletion requests.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.userDeletion.userDeletionRequest.upsert@.
module Gogol.Analytics.UserDeletion.UserDeletionRequest.Upsert
  ( -- * Resource
    AnalyticsUserDeletionUserDeletionRequestUpsertResource,

    -- ** Constructing a Request
    newAnalyticsUserDeletionUserDeletionRequestUpsert,
    AnalyticsUserDeletionUserDeletionRequestUpsert,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.userDeletion.userDeletionRequest.upsert@ method which the
-- 'AnalyticsUserDeletionUserDeletionRequestUpsert' request conforms to.
type AnalyticsUserDeletionUserDeletionRequestUpsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "userDeletion"
    Core.:> "userDeletionRequests:upsert"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserDeletionRequest
    Core.:> Core.Post '[Core.JSON] UserDeletionRequest

-- | Insert or update a user deletion requests.
--
-- /See:/ 'newAnalyticsUserDeletionUserDeletionRequestUpsert' smart constructor.
newtype AnalyticsUserDeletionUserDeletionRequestUpsert = AnalyticsUserDeletionUserDeletionRequestUpsert
  { -- | Multipart request metadata.
    payload :: UserDeletionRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsUserDeletionUserDeletionRequestUpsert' with the minimum fields required to make a request.
newAnalyticsUserDeletionUserDeletionRequestUpsert ::
  -- |  Multipart request metadata. See 'payload'.
  UserDeletionRequest ->
  AnalyticsUserDeletionUserDeletionRequestUpsert
newAnalyticsUserDeletionUserDeletionRequestUpsert payload =
  AnalyticsUserDeletionUserDeletionRequestUpsert {payload = payload}

instance
  Core.GoogleRequest
    AnalyticsUserDeletionUserDeletionRequestUpsert
  where
  type
    Rs
      AnalyticsUserDeletionUserDeletionRequestUpsert =
      UserDeletionRequest
  type
    Scopes
      AnalyticsUserDeletionUserDeletionRequestUpsert =
      '["https://www.googleapis.com/auth/analytics.user.deletion"]
  requestClient
    AnalyticsUserDeletionUserDeletionRequestUpsert {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsUserDeletionUserDeletionRequestUpsertResource
            )
            Core.mempty
