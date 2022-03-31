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
-- Module      : Gogol.Mirror.Subscriptions.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.update@.
module Gogol.Mirror.Subscriptions.Update
  ( -- * Resource
    MirrorSubscriptionsUpdateResource,

    -- ** Constructing a Request
    newMirrorSubscriptionsUpdate,
    MirrorSubscriptionsUpdate,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.subscriptions.update@ method which the
-- 'MirrorSubscriptionsUpdate' request conforms to.
type MirrorSubscriptionsUpdateResource =
  "mirror"
    Core.:> "v1"
    Core.:> "subscriptions"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Subscription
    Core.:> Core.Put '[Core.JSON] Subscription

-- | Updates an existing subscription in place.
--
-- /See:/ 'newMirrorSubscriptionsUpdate' smart constructor.
data MirrorSubscriptionsUpdate = MirrorSubscriptionsUpdate
  { -- | The ID of the subscription.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Subscription
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorSubscriptionsUpdate' with the minimum fields required to make a request.
newMirrorSubscriptionsUpdate ::
  -- |  The ID of the subscription. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Subscription ->
  MirrorSubscriptionsUpdate
newMirrorSubscriptionsUpdate id payload =
  MirrorSubscriptionsUpdate {id = id, payload = payload}

instance Core.GoogleRequest MirrorSubscriptionsUpdate where
  type Rs MirrorSubscriptionsUpdate = Subscription
  type
    Scopes MirrorSubscriptionsUpdate =
      '[Glass'Timeline]
  requestClient MirrorSubscriptionsUpdate {..} =
    go
      id
      (Core.Just Core.AltJSON)
      payload
      mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorSubscriptionsUpdateResource
          )
          Core.mempty
