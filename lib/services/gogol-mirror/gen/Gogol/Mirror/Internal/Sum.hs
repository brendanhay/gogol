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
-- Module      : Gogol.Mirror.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Mirror.Internal.Sum
  (

    -- * TimelineListOrderBy
    TimelineListOrderBy
      (
        TimelineListOrderBy_DisplayTime,
        TimelineListOrderBy_WriteTime,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | Controls the order in which timeline items are returned.
newtype TimelineListOrderBy = TimelineListOrderBy { fromTimelineListOrderBy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Results will be ordered by displayTime (default). This is the same ordering as is used in the timeline on the device.
pattern TimelineListOrderBy_DisplayTime :: TimelineListOrderBy
pattern TimelineListOrderBy_DisplayTime = TimelineListOrderBy "displayTime"

-- | Results will be ordered by the time at which they were last written to the data store.
pattern TimelineListOrderBy_WriteTime :: TimelineListOrderBy
pattern TimelineListOrderBy_WriteTime = TimelineListOrderBy "writeTime"

{-# COMPLETE
  TimelineListOrderBy_DisplayTime,
  TimelineListOrderBy_WriteTime,
  TimelineListOrderBy #-}
