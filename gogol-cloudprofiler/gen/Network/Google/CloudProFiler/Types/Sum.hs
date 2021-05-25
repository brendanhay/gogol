{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudProFiler.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudProFiler.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Type of profile. For offline mode, this must be specified when creating
-- the profile. For online mode it is assigned and returned by the server.
data ProFileProFileType
    = ProFileTypeUnspecified
      -- ^ @PROFILE_TYPE_UNSPECIFIED@
      -- Unspecified profile type.
    | CPU
      -- ^ @CPU@
      -- Thread CPU time sampling.
    | Wall
      -- ^ @WALL@
      -- Wallclock time sampling. More expensive as stops all threads.
    | Heap
      -- ^ @HEAP@
      -- In-use heap profile. Represents a snapshot of the allocations that are
      -- live at the time of the profiling.
    | Threads
      -- ^ @THREADS@
      -- Single-shot collection of all thread stacks.
    | Contention
      -- ^ @CONTENTION@
      -- Synchronization contention profile.
    | PeakHeap
      -- ^ @PEAK_HEAP@
      -- Peak heap profile.
    | HeapAlloc
      -- ^ @HEAP_ALLOC@
      -- Heap allocation profile. It represents the aggregation of all
      -- allocations made over the duration of the profile. All allocations are
      -- included, including those that might have been freed by the end of the
      -- profiling interval. The profile is in particular useful for garbage
      -- collecting languages to understand which parts of the code create most
      -- of the garbage collection pressure to see if those can be optimized.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProFileProFileType

instance FromHttpApiData ProFileProFileType where
    parseQueryParam = \case
        "PROFILE_TYPE_UNSPECIFIED" -> Right ProFileTypeUnspecified
        "CPU" -> Right CPU
        "WALL" -> Right Wall
        "HEAP" -> Right Heap
        "THREADS" -> Right Threads
        "CONTENTION" -> Right Contention
        "PEAK_HEAP" -> Right PeakHeap
        "HEAP_ALLOC" -> Right HeapAlloc
        x -> Left ("Unable to parse ProFileProFileType from: " <> x)

instance ToHttpApiData ProFileProFileType where
    toQueryParam = \case
        ProFileTypeUnspecified -> "PROFILE_TYPE_UNSPECIFIED"
        CPU -> "CPU"
        Wall -> "WALL"
        Heap -> "HEAP"
        Threads -> "THREADS"
        Contention -> "CONTENTION"
        PeakHeap -> "PEAK_HEAP"
        HeapAlloc -> "HEAP_ALLOC"

instance FromJSON ProFileProFileType where
    parseJSON = parseJSONText "ProFileProFileType"

instance ToJSON ProFileProFileType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

data CreateProFileRequestProFileTypeItem
    = CPFRPFTIProFileTypeUnspecified
      -- ^ @PROFILE_TYPE_UNSPECIFIED@
      -- Unspecified profile type.
    | CPFRPFTICPU
      -- ^ @CPU@
      -- Thread CPU time sampling.
    | CPFRPFTIWall
      -- ^ @WALL@
      -- Wallclock time sampling. More expensive as stops all threads.
    | CPFRPFTIHeap
      -- ^ @HEAP@
      -- In-use heap profile. Represents a snapshot of the allocations that are
      -- live at the time of the profiling.
    | CPFRPFTIThreads
      -- ^ @THREADS@
      -- Single-shot collection of all thread stacks.
    | CPFRPFTIContention
      -- ^ @CONTENTION@
      -- Synchronization contention profile.
    | CPFRPFTIPeakHeap
      -- ^ @PEAK_HEAP@
      -- Peak heap profile.
    | CPFRPFTIHeapAlloc
      -- ^ @HEAP_ALLOC@
      -- Heap allocation profile. It represents the aggregation of all
      -- allocations made over the duration of the profile. All allocations are
      -- included, including those that might have been freed by the end of the
      -- profiling interval. The profile is in particular useful for garbage
      -- collecting languages to understand which parts of the code create most
      -- of the garbage collection pressure to see if those can be optimized.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateProFileRequestProFileTypeItem

instance FromHttpApiData CreateProFileRequestProFileTypeItem where
    parseQueryParam = \case
        "PROFILE_TYPE_UNSPECIFIED" -> Right CPFRPFTIProFileTypeUnspecified
        "CPU" -> Right CPFRPFTICPU
        "WALL" -> Right CPFRPFTIWall
        "HEAP" -> Right CPFRPFTIHeap
        "THREADS" -> Right CPFRPFTIThreads
        "CONTENTION" -> Right CPFRPFTIContention
        "PEAK_HEAP" -> Right CPFRPFTIPeakHeap
        "HEAP_ALLOC" -> Right CPFRPFTIHeapAlloc
        x -> Left ("Unable to parse CreateProFileRequestProFileTypeItem from: " <> x)

instance ToHttpApiData CreateProFileRequestProFileTypeItem where
    toQueryParam = \case
        CPFRPFTIProFileTypeUnspecified -> "PROFILE_TYPE_UNSPECIFIED"
        CPFRPFTICPU -> "CPU"
        CPFRPFTIWall -> "WALL"
        CPFRPFTIHeap -> "HEAP"
        CPFRPFTIThreads -> "THREADS"
        CPFRPFTIContention -> "CONTENTION"
        CPFRPFTIPeakHeap -> "PEAK_HEAP"
        CPFRPFTIHeapAlloc -> "HEAP_ALLOC"

instance FromJSON CreateProFileRequestProFileTypeItem where
    parseJSON = parseJSONText "CreateProFileRequestProFileTypeItem"

instance ToJSON CreateProFileRequestProFileTypeItem where
    toJSON = toJSONText
