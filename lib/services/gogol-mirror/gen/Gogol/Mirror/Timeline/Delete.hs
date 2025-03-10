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
-- Module      : Gogol.Mirror.Timeline.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.delete@.
module Gogol.Mirror.Timeline.Delete
  ( -- * Resource
    MirrorTimelineDeleteResource,

    -- ** Constructing a Request
    MirrorTimelineDelete (..),
    newMirrorTimelineDelete,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.timeline.delete@ method which the
-- 'MirrorTimelineDelete' request conforms to.
type MirrorTimelineDeleteResource =
  "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a timeline item.
--
-- /See:/ 'newMirrorTimelineDelete' smart constructor.
newtype MirrorTimelineDelete = MirrorTimelineDelete
  { -- | The ID of the timeline item.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineDelete' with the minimum fields required to make a request.
newMirrorTimelineDelete ::
  -- |  The ID of the timeline item. See 'id'.
  Core.Text ->
  MirrorTimelineDelete
newMirrorTimelineDelete id = MirrorTimelineDelete {id = id}

instance Core.GoogleRequest MirrorTimelineDelete where
  type Rs MirrorTimelineDelete = ()
  type
    Scopes MirrorTimelineDelete =
      '[Glass'Location, Glass'Timeline]
  requestClient MirrorTimelineDelete {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorTimelineDeleteResource)
          Core.mempty
