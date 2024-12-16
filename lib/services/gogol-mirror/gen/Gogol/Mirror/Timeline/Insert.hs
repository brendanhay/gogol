{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror.Timeline.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new item into the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.insert@.
module Gogol.Mirror.Timeline.Insert
    (
    -- * Resource
      MirrorTimelineInsertResource

    -- ** Constructing a Request
    , MirrorTimelineInsert (..)
    , newMirrorTimelineInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.insert@ method which the
-- 'MirrorTimelineInsert' request conforms to.
type MirrorTimelineInsertResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.QueryParam "alt" Core.AltJSON Core.:>
             Core.ReqBody '[Core.JSON] TimelineItem Core.:>
               Core.Post '[Core.JSON] TimelineItem
       Core.:<|>
       "upload" Core.:>
         "mirror" Core.:>
           "v1" Core.:>
             "timeline" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.QueryParam "uploadType" Core.Multipart Core.:>
                   Core.MultipartRelated '[Core.JSON] TimelineItem
                     Core.:> Core.Post '[Core.JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'newMirrorTimelineInsert' smart constructor.
newtype MirrorTimelineInsert = MirrorTimelineInsert
    {
      -- | Multipart request metadata.
      payload :: TimelineItem
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineInsert' with the minimum fields required to make a request.
newMirrorTimelineInsert 
    ::  TimelineItem
       -- ^  Multipart request metadata. See 'payload'.
    -> MirrorTimelineInsert
newMirrorTimelineInsert payload = MirrorTimelineInsert {payload = payload}

instance Core.GoogleRequest MirrorTimelineInsert
         where
        type Rs MirrorTimelineInsert = TimelineItem
        type Scopes MirrorTimelineInsert =
             '[Glass'Location, Glass'Timeline]
        requestClient MirrorTimelineInsert{..}
          = go (Core.Just Core.AltJSON) payload mirrorService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineInsertResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload MirrorTimelineInsert)
         where
        type Rs (Core.MediaUpload MirrorTimelineInsert) =
             TimelineItem
        type Scopes (Core.MediaUpload MirrorTimelineInsert) =
             Core.Scopes MirrorTimelineInsert
        requestClient
          (Core.MediaUpload MirrorTimelineInsert{..} body)
          = go (Core.Just Core.AltJSON)
              (Core.Just Core.Multipart)
              payload
              body
              mirrorService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineInsertResource)
                      Core.mempty

