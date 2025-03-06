{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Mirror.Timeline.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a timeline item in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.update@.
module Gogol.Mirror.Timeline.Update
  ( -- * Resource
    MirrorTimelineUpdateResource,

    -- ** Constructing a Request
    MirrorTimelineUpdate (..),
    newMirrorTimelineUpdate,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.timeline.update@ method which the
-- 'MirrorTimelineUpdate' request conforms to.
type MirrorTimelineUpdateResource =
  "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TimelineItem
    Core.:> Core.Put '[Core.JSON] TimelineItem
    Core.:<|> "upload"
    Core.:> "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] TimelineItem
    Core.:> Core.Put '[Core.JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'newMirrorTimelineUpdate' smart constructor.
data MirrorTimelineUpdate = MirrorTimelineUpdate
  { -- | The ID of the timeline item.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: TimelineItem
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineUpdate' with the minimum fields required to make a request.
newMirrorTimelineUpdate ::
  -- |  The ID of the timeline item. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TimelineItem ->
  MirrorTimelineUpdate
newMirrorTimelineUpdate id payload =
  MirrorTimelineUpdate {id = id, payload = payload}

instance Core.GoogleRequest MirrorTimelineUpdate where
  type Rs MirrorTimelineUpdate = TimelineItem
  type
    Scopes MirrorTimelineUpdate =
      '[Glass'Location, Glass'Timeline]
  requestClient MirrorTimelineUpdate {..} =
    go id (Core.Just Core.AltJSON) payload mirrorService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorTimelineUpdateResource)
          Core.mempty

instance Core.GoogleRequest (Core.MediaUpload MirrorTimelineUpdate) where
  type Rs (Core.MediaUpload MirrorTimelineUpdate) = TimelineItem
  type
    Scopes (Core.MediaUpload MirrorTimelineUpdate) =
      Core.Scopes MirrorTimelineUpdate
  requestClient (Core.MediaUpload MirrorTimelineUpdate {..} body) =
    go
      id
      (Core.Just Core.AltJSON)
      (Core.Just Core.Multipart)
      payload
      body
      mirrorService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorTimelineUpdateResource)
          Core.mempty
