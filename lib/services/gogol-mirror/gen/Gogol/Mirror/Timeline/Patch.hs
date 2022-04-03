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
-- Module      : Gogol.Mirror.Timeline.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.patch@.
module Gogol.Mirror.Timeline.Patch
  ( -- * Resource
    MirrorTimelinePatchResource,

    -- ** Constructing a Request
    MirrorTimelinePatch (..),
    newMirrorTimelinePatch,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.timeline.patch@ method which the
-- 'MirrorTimelinePatch' request conforms to.
type MirrorTimelinePatchResource =
  "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TimelineItem
    Core.:> Core.Patch '[Core.JSON] TimelineItem

-- | Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ 'newMirrorTimelinePatch' smart constructor.
data MirrorTimelinePatch = MirrorTimelinePatch
  { -- | The ID of the timeline item.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: TimelineItem
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelinePatch' with the minimum fields required to make a request.
newMirrorTimelinePatch ::
  -- |  The ID of the timeline item. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TimelineItem ->
  MirrorTimelinePatch
newMirrorTimelinePatch id payload =
  MirrorTimelinePatch {id = id, payload = payload}

instance Core.GoogleRequest MirrorTimelinePatch where
  type Rs MirrorTimelinePatch = TimelineItem
  type
    Scopes MirrorTimelinePatch =
      '[Glass'Location, Glass'Timeline]
  requestClient MirrorTimelinePatch {..} =
    go
      id
      (Core.Just Core.AltJSON)
      payload
      mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorTimelinePatchResource
          )
          Core.mempty
