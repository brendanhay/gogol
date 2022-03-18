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
-- Module      : Gogol.Mirror.Timeline.Attachments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.get@.
module Gogol.Mirror.Timeline.Attachments.Get
    (
    -- * Resource
      MirrorTimelineAttachmentsGetResource

    -- ** Constructing a Request
    , newMirrorTimelineAttachmentsGet
    , MirrorTimelineAttachmentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.attachments.get@ method which the
-- 'MirrorTimelineAttachmentsGet' request conforms to.
type MirrorTimelineAttachmentsGetResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.Capture "itemId" Core.Text Core.:>
             "attachments" Core.:>
               Core.Capture "attachmentId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] Attachment
       Core.:<|>
       "mirror" Core.:>
         "v1" Core.:>
           "timeline" Core.:>
             Core.Capture "itemId" Core.Text Core.:>
               "attachments" Core.:>
                 Core.Capture "attachmentId" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltMedia Core.:>
                     Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ 'newMirrorTimelineAttachmentsGet' smart constructor.
data MirrorTimelineAttachmentsGet = MirrorTimelineAttachmentsGet
    {
      -- | The ID of the attachment.
      attachmentId :: Core.Text
      -- | The ID of the timeline item the attachment belongs to.
    , itemId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineAttachmentsGet' with the minimum fields required to make a request.
newMirrorTimelineAttachmentsGet 
    ::  Core.Text
       -- ^  The ID of the attachment. See 'attachmentId'.
    -> Core.Text
       -- ^  The ID of the timeline item the attachment belongs to. See 'itemId'.
    -> MirrorTimelineAttachmentsGet
newMirrorTimelineAttachmentsGet attachmentId itemId =
  MirrorTimelineAttachmentsGet {attachmentId = attachmentId, itemId = itemId}

instance Core.GoogleRequest
           MirrorTimelineAttachmentsGet
         where
        type Rs MirrorTimelineAttachmentsGet = Attachment
        type Scopes MirrorTimelineAttachmentsGet =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient MirrorTimelineAttachmentsGet{..}
          = go itemId attachmentId (Core.Just Core.AltJSON)
              mirrorService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineAttachmentsGetResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload MirrorTimelineAttachmentsGet)
         where
        type Rs
               (Core.MediaDownload MirrorTimelineAttachmentsGet)
             = Core.Stream
        type Scopes
               (Core.MediaDownload MirrorTimelineAttachmentsGet)
             = Core.Scopes MirrorTimelineAttachmentsGet
        requestClient
          (Core.MediaDownload MirrorTimelineAttachmentsGet{..})
          = go itemId attachmentId (Core.Just Core.AltMedia)
              mirrorService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineAttachmentsGetResource)
                      Core.mempty

