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
-- Module      : Gogol.CloudProfiler.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudProfiler.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CreateProfileRequest_ProfileTypeItem
    CreateProfileRequest_ProfileTypeItem
      (
        CreateProfileRequest_ProfileTypeItem_PROFILETYPEUNSPECIFIED,
        CreateProfileRequest_ProfileTypeItem_Cpu,
        CreateProfileRequest_ProfileTypeItem_Wall,
        CreateProfileRequest_ProfileTypeItem_Heap,
        CreateProfileRequest_ProfileTypeItem_Threads,
        CreateProfileRequest_ProfileTypeItem_Contention,
        CreateProfileRequest_ProfileTypeItem_PEAKHEAP,
        CreateProfileRequest_ProfileTypeItem_HEAPALLOC,
        ..
      ),

    -- * Profile_ProfileType
    Profile_ProfileType
      (
        Profile_ProfileType_PROFILETYPEUNSPECIFIED,
        Profile_ProfileType_Cpu,
        Profile_ProfileType_Wall,
        Profile_ProfileType_Heap,
        Profile_ProfileType_Threads,
        Profile_ProfileType_Contention,
        Profile_ProfileType_PEAKHEAP,
        Profile_ProfileType_HEAPALLOC,
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

newtype CreateProfileRequest_ProfileTypeItem = CreateProfileRequest_ProfileTypeItem { fromCreateProfileRequest_ProfileTypeItem :: Core.Text }
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

-- | Unspecified profile type.
pattern CreateProfileRequest_ProfileTypeItem_PROFILETYPEUNSPECIFIED :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_PROFILETYPEUNSPECIFIED = CreateProfileRequest_ProfileTypeItem "PROFILE_TYPE_UNSPECIFIED"

-- | Thread CPU time sampling.
pattern CreateProfileRequest_ProfileTypeItem_Cpu :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_Cpu = CreateProfileRequest_ProfileTypeItem "CPU"

-- | Wallclock time sampling. More expensive as stops all threads.
pattern CreateProfileRequest_ProfileTypeItem_Wall :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_Wall = CreateProfileRequest_ProfileTypeItem "WALL"

-- | In-use heap profile. Represents a snapshot of the allocations that are live at the time of the profiling.
pattern CreateProfileRequest_ProfileTypeItem_Heap :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_Heap = CreateProfileRequest_ProfileTypeItem "HEAP"

-- | Single-shot collection of all thread stacks.
pattern CreateProfileRequest_ProfileTypeItem_Threads :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_Threads = CreateProfileRequest_ProfileTypeItem "THREADS"

-- | Synchronization contention profile.
pattern CreateProfileRequest_ProfileTypeItem_Contention :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_Contention = CreateProfileRequest_ProfileTypeItem "CONTENTION"

-- | Peak heap profile.
pattern CreateProfileRequest_ProfileTypeItem_PEAKHEAP :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_PEAKHEAP = CreateProfileRequest_ProfileTypeItem "PEAK_HEAP"

-- | Heap allocation profile. It represents the aggregation of all allocations made over the duration of the profile. All allocations are included, including those that might have been freed by the end of the profiling interval. The profile is in particular useful for garbage collecting languages to understand which parts of the code create most of the garbage collection pressure to see if those can be optimized.
pattern CreateProfileRequest_ProfileTypeItem_HEAPALLOC :: CreateProfileRequest_ProfileTypeItem
pattern CreateProfileRequest_ProfileTypeItem_HEAPALLOC = CreateProfileRequest_ProfileTypeItem "HEAP_ALLOC"

{-# COMPLETE
  CreateProfileRequest_ProfileTypeItem_PROFILETYPEUNSPECIFIED,
  CreateProfileRequest_ProfileTypeItem_Cpu,
  CreateProfileRequest_ProfileTypeItem_Wall,
  CreateProfileRequest_ProfileTypeItem_Heap,
  CreateProfileRequest_ProfileTypeItem_Threads,
  CreateProfileRequest_ProfileTypeItem_Contention,
  CreateProfileRequest_ProfileTypeItem_PEAKHEAP,
  CreateProfileRequest_ProfileTypeItem_HEAPALLOC,
  CreateProfileRequest_ProfileTypeItem #-}

-- | Type of profile. For offline mode, this must be specified when creating the profile. For online mode it is assigned and returned by the server.
newtype Profile_ProfileType = Profile_ProfileType { fromProfile_ProfileType :: Core.Text }
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

-- | Unspecified profile type.
pattern Profile_ProfileType_PROFILETYPEUNSPECIFIED :: Profile_ProfileType
pattern Profile_ProfileType_PROFILETYPEUNSPECIFIED = Profile_ProfileType "PROFILE_TYPE_UNSPECIFIED"

-- | Thread CPU time sampling.
pattern Profile_ProfileType_Cpu :: Profile_ProfileType
pattern Profile_ProfileType_Cpu = Profile_ProfileType "CPU"

-- | Wallclock time sampling. More expensive as stops all threads.
pattern Profile_ProfileType_Wall :: Profile_ProfileType
pattern Profile_ProfileType_Wall = Profile_ProfileType "WALL"

-- | In-use heap profile. Represents a snapshot of the allocations that are live at the time of the profiling.
pattern Profile_ProfileType_Heap :: Profile_ProfileType
pattern Profile_ProfileType_Heap = Profile_ProfileType "HEAP"

-- | Single-shot collection of all thread stacks.
pattern Profile_ProfileType_Threads :: Profile_ProfileType
pattern Profile_ProfileType_Threads = Profile_ProfileType "THREADS"

-- | Synchronization contention profile.
pattern Profile_ProfileType_Contention :: Profile_ProfileType
pattern Profile_ProfileType_Contention = Profile_ProfileType "CONTENTION"

-- | Peak heap profile.
pattern Profile_ProfileType_PEAKHEAP :: Profile_ProfileType
pattern Profile_ProfileType_PEAKHEAP = Profile_ProfileType "PEAK_HEAP"

-- | Heap allocation profile. It represents the aggregation of all allocations made over the duration of the profile. All allocations are included, including those that might have been freed by the end of the profiling interval. The profile is in particular useful for garbage collecting languages to understand which parts of the code create most of the garbage collection pressure to see if those can be optimized.
pattern Profile_ProfileType_HEAPALLOC :: Profile_ProfileType
pattern Profile_ProfileType_HEAPALLOC = Profile_ProfileType "HEAP_ALLOC"

{-# COMPLETE
  Profile_ProfileType_PROFILETYPEUNSPECIFIED,
  Profile_ProfileType_Cpu,
  Profile_ProfileType_Wall,
  Profile_ProfileType_Heap,
  Profile_ProfileType_Threads,
  Profile_ProfileType_Contention,
  Profile_ProfileType_PEAKHEAP,
  Profile_ProfileType_HEAPALLOC,
  Profile_ProfileType #-}
