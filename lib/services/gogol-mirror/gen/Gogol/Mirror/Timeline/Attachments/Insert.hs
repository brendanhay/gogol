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
-- Module      : Gogol.Mirror.Timeline.Attachments.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new attachment to a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.insert@.
module Gogol.Mirror.Timeline.Attachments.Insert
    (
    -- * Resource
      MirrorTimelineAttachmentsInsertResource

    -- ** Constructing a Request
    , newMirrorTimelineAttachmentsInsert
    , MirrorTimelineAttachmentsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.attachments.insert@ method which the
-- 'MirrorTimelineAttachmentsInsert' request conforms to.
type MirrorTimelineAttachmentsInsertResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.Capture "itemId" Core.Text Core.:>
             "attachments" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Post '[Core.JSON] Attachment
       Core.:<|>
       "upload" Core.:>
         "mirror" Core.:>
           "v1" Core.:>
             "timeline" Core.:>
               Core.Capture "itemId" Core.Text Core.:>
                 "attachments" Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.QueryParam "uploadType" Core.AltMedia Core.:>
                       Core.AltMedia Core.:>
                         Core.Post '[Core.JSON] Attachment

-- | Adds a new attachment to a timeline item.
--
-- /See:/ 'newMirrorTimelineAttachmentsInsert' smart constructor.
newtype MirrorTimelineAttachmentsInsert = MirrorTimelineAttachmentsInsert
    {
      -- | The ID of the timeline item the attachment belongs to.
      itemId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineAttachmentsInsert' with the minimum fields required to make a request.
newMirrorTimelineAttachmentsInsert 
    ::  Core.Text
       -- ^  The ID of the timeline item the attachment belongs to. See 'itemId'.
    -> MirrorTimelineAttachmentsInsert
newMirrorTimelineAttachmentsInsert itemId =
  MirrorTimelineAttachmentsInsert {itemId = itemId}

instance Core.GoogleRequest
           MirrorTimelineAttachmentsInsert
         where
        type Rs MirrorTimelineAttachmentsInsert = Attachment
        type Scopes MirrorTimelineAttachmentsInsert =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient MirrorTimelineAttachmentsInsert{..}
          = go itemId (Core.Just Core.AltJSON) mirrorService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineAttachmentsInsertResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload MirrorTimelineAttachmentsInsert)
         where
        type Rs
               (Core.MediaUpload MirrorTimelineAttachmentsInsert)
             = Attachment
        type Scopes
               (Core.MediaUpload MirrorTimelineAttachmentsInsert)
             = Core.Scopes MirrorTimelineAttachmentsInsert
        requestClient
          (Core.MediaUpload MirrorTimelineAttachmentsInsert{..}
             body)
          = go itemId (Core.Just Core.AltJSON)
              (Core.Just Core.AltMedia)
              body
              mirrorService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineAttachmentsInsertResource)
                      Core.mempty

