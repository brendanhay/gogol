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
-- Module      : Gogol.Mirror.Timeline.Attachments.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attachment from a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.delete@.
module Gogol.Mirror.Timeline.Attachments.Delete
  ( -- * Resource
    MirrorTimelineAttachmentsDeleteResource,

    -- ** Constructing a Request
    MirrorTimelineAttachmentsDelete (..),
    newMirrorTimelineAttachmentsDelete,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.timeline.attachments.delete@ method which the
-- 'MirrorTimelineAttachmentsDelete' request conforms to.
type MirrorTimelineAttachmentsDeleteResource =
  "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "itemId" Core.Text
    Core.:> "attachments"
    Core.:> Core.Capture "attachmentId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an attachment from a timeline item.
--
-- /See:/ 'newMirrorTimelineAttachmentsDelete' smart constructor.
data MirrorTimelineAttachmentsDelete = MirrorTimelineAttachmentsDelete
  { -- | The ID of the attachment.
    attachmentId :: Core.Text,
    -- | The ID of the timeline item the attachment belongs to.
    itemId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineAttachmentsDelete' with the minimum fields required to make a request.
newMirrorTimelineAttachmentsDelete ::
  -- |  The ID of the attachment. See 'attachmentId'.
  Core.Text ->
  -- |  The ID of the timeline item the attachment belongs to. See 'itemId'.
  Core.Text ->
  MirrorTimelineAttachmentsDelete
newMirrorTimelineAttachmentsDelete attachmentId itemId =
  MirrorTimelineAttachmentsDelete
    { attachmentId = attachmentId,
      itemId = itemId
    }

instance Core.GoogleRequest MirrorTimelineAttachmentsDelete where
  type Rs MirrorTimelineAttachmentsDelete = ()
  type Scopes MirrorTimelineAttachmentsDelete = '[Glass'Timeline]
  requestClient MirrorTimelineAttachmentsDelete {..} =
    go itemId attachmentId (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorTimelineAttachmentsDeleteResource)
          Core.mempty
