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
-- Module      : Gogol.Mirror.Timeline.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.list@.
module Gogol.Mirror.Timeline.List
    (
    -- * Resource
      MirrorTimelineListResource

    -- ** Constructing a Request
    , MirrorTimelineList (..)
    , newMirrorTimelineList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.list@ method which the
-- 'MirrorTimelineList' request conforms to.
type MirrorTimelineListResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.QueryParam "bundleId" Core.Text Core.:>
             Core.QueryParam "includeDeleted" Core.Bool Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "orderBy" TimelineListOrderBy Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "pinnedOnly" Core.Bool Core.:>
                       Core.QueryParam "sourceItemId" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] TimelineListResponse

-- | Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ 'newMirrorTimelineList' smart constructor.
data MirrorTimelineList = MirrorTimelineList
    {
      -- | If provided, only items with the given bundleId will be returned.
      bundleId :: (Core.Maybe Core.Text)
      -- | If true, tombstone records for deleted items will be returned.
    , includeDeleted :: (Core.Maybe Core.Bool)
      -- | The maximum number of items to include in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | Controls the order in which timeline items are returned.
    , orderBy :: (Core.Maybe TimelineListOrderBy)
      -- | Token for the page of results to return.
    , pageToken :: (Core.Maybe Core.Text)
      -- | If true, only pinned items will be returned.
    , pinnedOnly :: (Core.Maybe Core.Bool)
      -- | If provided, only items with the given sourceItemId will be returned.
    , sourceItemId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineList' with the minimum fields required to make a request.
newMirrorTimelineList 
    ::  MirrorTimelineList
newMirrorTimelineList =
  MirrorTimelineList
    { bundleId = Core.Nothing
    , includeDeleted = Core.Nothing
    , maxResults = Core.Nothing
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , pinnedOnly = Core.Nothing
    , sourceItemId = Core.Nothing
    }

instance Core.GoogleRequest MirrorTimelineList where
        type Rs MirrorTimelineList = TimelineListResponse
        type Scopes MirrorTimelineList =
             '[Glass'Location, Glass'Timeline]
        requestClient MirrorTimelineList{..}
          = go bundleId includeDeleted maxResults orderBy
              pageToken
              pinnedOnly
              sourceItemId
              (Core.Just Core.AltJSON)
              mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy MirrorTimelineListResource)
                      Core.mempty

