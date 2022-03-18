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
-- Module      : Network.Google.Mirror.Timeline.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single timeline item by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.get@.
module Network.Google.Mirror.Timeline.Get
  ( -- * Resource
    MirrorTimelineGetResource,

    -- ** Constructing a Request
    newMirrorTimelineGet,
    MirrorTimelineGet,
  )
where

import Network.Google.Mirror.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @mirror.timeline.get@ method which the
-- 'MirrorTimelineGet' request conforms to.
type MirrorTimelineGetResource =
  "mirror"
    Core.:> "v1"
    Core.:> "timeline"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TimelineItem

-- | Gets a single timeline item by ID.
--
-- /See:/ 'newMirrorTimelineGet' smart constructor.
newtype MirrorTimelineGet = MirrorTimelineGet
  { -- | The ID of the timeline item.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineGet' with the minimum fields required to make a request.
newMirrorTimelineGet ::
  -- |  The ID of the timeline item. See 'id'.
  Core.Text ->
  MirrorTimelineGet
newMirrorTimelineGet id = MirrorTimelineGet {id = id}

instance Core.GoogleRequest MirrorTimelineGet where
  type Rs MirrorTimelineGet = TimelineItem
  type
    Scopes MirrorTimelineGet =
      '[ "https://www.googleapis.com/auth/glass.location",
         "https://www.googleapis.com/auth/glass.timeline"
       ]
  requestClient MirrorTimelineGet {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorTimelineGetResource)
          Core.mempty
