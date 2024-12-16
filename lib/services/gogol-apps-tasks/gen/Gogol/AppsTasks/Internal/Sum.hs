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
-- Module      : Gogol.AppsTasks.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsTasks.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AssignmentInfo_SurfaceType
    AssignmentInfo_SurfaceType
      (
        AssignmentInfo_SurfaceType_CONTEXTTYPEUNSPECIFIED,
        AssignmentInfo_SurfaceType_Gmail,
        AssignmentInfo_SurfaceType_Document,
        AssignmentInfo_SurfaceType_Space,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
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

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Output only. The type of surface this assigned task originates from. Currently limited to DOCUMENT or SPACE.
newtype AssignmentInfo_SurfaceType = AssignmentInfo_SurfaceType { fromAssignmentInfo_SurfaceType :: Core.Text }
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

-- | Unknown value for this task\'s context.
pattern AssignmentInfo_SurfaceType_CONTEXTTYPEUNSPECIFIED :: AssignmentInfo_SurfaceType
pattern AssignmentInfo_SurfaceType_CONTEXTTYPEUNSPECIFIED = AssignmentInfo_SurfaceType "CONTEXT_TYPE_UNSPECIFIED"

-- | The task is created from Gmail.
pattern AssignmentInfo_SurfaceType_Gmail :: AssignmentInfo_SurfaceType
pattern AssignmentInfo_SurfaceType_Gmail = AssignmentInfo_SurfaceType "GMAIL"

-- | The task is assigned from a document.
pattern AssignmentInfo_SurfaceType_Document :: AssignmentInfo_SurfaceType
pattern AssignmentInfo_SurfaceType_Document = AssignmentInfo_SurfaceType "DOCUMENT"

-- | The task is assigned from a Chat Space.
pattern AssignmentInfo_SurfaceType_Space :: AssignmentInfo_SurfaceType
pattern AssignmentInfo_SurfaceType_Space = AssignmentInfo_SurfaceType "SPACE"

{-# COMPLETE
  AssignmentInfo_SurfaceType_CONTEXTTYPEUNSPECIFIED,
  AssignmentInfo_SurfaceType_Gmail,
  AssignmentInfo_SurfaceType_Document,
  AssignmentInfo_SurfaceType_Space,
  AssignmentInfo_SurfaceType #-}
