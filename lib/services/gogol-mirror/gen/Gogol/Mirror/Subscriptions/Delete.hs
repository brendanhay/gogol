{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror.Subscriptions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.subscriptions.delete@.
module Gogol.Mirror.Subscriptions.Delete
    (
    -- * Resource
      MirrorSubscriptionsDeleteResource

    -- ** Constructing a Request
    , newMirrorSubscriptionsDelete
    , MirrorSubscriptionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.subscriptions.delete@ method which the
-- 'MirrorSubscriptionsDelete' request conforms to.
type MirrorSubscriptionsDeleteResource =
     "mirror" Core.:>
       "v1" Core.:>
         "subscriptions" Core.:>
           Core.Capture "id" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Delete '[Core.JSON] ()

-- | Deletes a subscription.
--
-- /See:/ 'newMirrorSubscriptionsDelete' smart constructor.
newtype MirrorSubscriptionsDelete = MirrorSubscriptionsDelete
    {
      -- | The ID of the subscription.
      id :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorSubscriptionsDelete' with the minimum fields required to make a request.
newMirrorSubscriptionsDelete 
    ::  Core.Text
       -- ^  The ID of the subscription. See 'id'.
    -> MirrorSubscriptionsDelete
newMirrorSubscriptionsDelete id = MirrorSubscriptionsDelete {id = id}

instance Core.GoogleRequest MirrorSubscriptionsDelete
         where
        type Rs MirrorSubscriptionsDelete = ()
        type Scopes MirrorSubscriptionsDelete =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient MirrorSubscriptionsDelete{..}
          = go id (Core.Just Core.AltJSON) mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorSubscriptionsDeleteResource)
                      Core.mempty

