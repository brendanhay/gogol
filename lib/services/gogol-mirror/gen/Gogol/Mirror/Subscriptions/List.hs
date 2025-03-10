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
-- Module      : Gogol.Mirror.Subscriptions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of subscriptions for the authenticated user and service.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.list@.
module Gogol.Mirror.Subscriptions.List
  ( -- * Resource
    MirrorSubscriptionsListResource,

    -- ** Constructing a Request
    MirrorSubscriptionsList (..),
    newMirrorSubscriptionsList,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.subscriptions.list@ method which the
-- 'MirrorSubscriptionsList' request conforms to.
type MirrorSubscriptionsListResource =
  "mirror"
    Core.:> "v1"
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SubscriptionsListResponse

-- | Retrieves a list of subscriptions for the authenticated user and service.
--
-- /See:/ 'newMirrorSubscriptionsList' smart constructor.
data MirrorSubscriptionsList = MirrorSubscriptionsList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorSubscriptionsList' with the minimum fields required to make a request.
newMirrorSubscriptionsList ::
  MirrorSubscriptionsList
newMirrorSubscriptionsList = MirrorSubscriptionsList

instance Core.GoogleRequest MirrorSubscriptionsList where
  type Rs MirrorSubscriptionsList = SubscriptionsListResponse
  type Scopes MirrorSubscriptionsList = '[Glass'Timeline]
  requestClient MirrorSubscriptionsList {} =
    go (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorSubscriptionsListResource)
          Core.mempty
