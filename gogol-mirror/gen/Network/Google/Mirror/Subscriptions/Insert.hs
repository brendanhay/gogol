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
-- Module      : Network.Google.Mirror.Subscriptions.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.insert@.
module Network.Google.Mirror.Subscriptions.Insert
  ( -- * Resource
    MirrorSubscriptionsInsertResource,

    -- ** Constructing a Request
    newMirrorSubscriptionsInsert,
    MirrorSubscriptionsInsert,
  )
where

import Network.Google.Mirror.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @mirror.subscriptions.insert@ method which the
-- 'MirrorSubscriptionsInsert' request conforms to.
type MirrorSubscriptionsInsertResource =
  "mirror"
    Core.:> "v1"
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Subscription
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Creates a new subscription.
--
-- /See:/ 'newMirrorSubscriptionsInsert' smart constructor.
newtype MirrorSubscriptionsInsert = MirrorSubscriptionsInsert
  { -- | Multipart request metadata.
    payload :: Subscription
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorSubscriptionsInsert' with the minimum fields required to make a request.
newMirrorSubscriptionsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Subscription ->
  MirrorSubscriptionsInsert
newMirrorSubscriptionsInsert payload =
  MirrorSubscriptionsInsert {payload = payload}

instance Core.GoogleRequest MirrorSubscriptionsInsert where
  type Rs MirrorSubscriptionsInsert = Subscription
  type
    Scopes MirrorSubscriptionsInsert =
      '["https://www.googleapis.com/auth/glass.timeline"]
  requestClient MirrorSubscriptionsInsert {..} =
    go (Core.Just Core.AltJSON) payload mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorSubscriptionsInsertResource
          )
          Core.mempty
