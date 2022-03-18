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
-- Module      : Network.Google.Tracing.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Tracing.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Link_Type
    Link_Type
      ( Link_Type_TYPEUNSPECIFIED,
        Link_Type_Child,
        Link_Type_Parent,
        ..
      ),

    -- * NetworkEvent_Type
    NetworkEvent_Type
      ( NetworkEvent_Type_TYPEUNSPECIFIED,
        NetworkEvent_Type_Sent,
        NetworkEvent_Type_Recv,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | The relationship of the current span relative to the linked span.
newtype Link_Type = Link_Type {fromLink_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The relationship of the two spans is unknown.
pattern Link_Type_TYPEUNSPECIFIED :: Link_Type
pattern Link_Type_TYPEUNSPECIFIED = Link_Type "TYPE_UNSPECIFIED"

-- | The current span is a child of the linked span.
pattern Link_Type_Child :: Link_Type
pattern Link_Type_Child = Link_Type "CHILD"

-- | The current span is the parent of the linked span.
pattern Link_Type_Parent :: Link_Type
pattern Link_Type_Parent = Link_Type "PARENT"

{-# COMPLETE
  Link_Type_TYPEUNSPECIFIED,
  Link_Type_Child,
  Link_Type_Parent,
  Link_Type
  #-}

-- | Type of NetworkEvent. Indicates whether the RPC message was sent or received.
newtype NetworkEvent_Type = NetworkEvent_Type {fromNetworkEvent_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown event type.
pattern NetworkEvent_Type_TYPEUNSPECIFIED :: NetworkEvent_Type
pattern NetworkEvent_Type_TYPEUNSPECIFIED = NetworkEvent_Type "TYPE_UNSPECIFIED"

-- | Indicates a sent RPC message.
pattern NetworkEvent_Type_Sent :: NetworkEvent_Type
pattern NetworkEvent_Type_Sent = NetworkEvent_Type "SENT"

-- | Indicates a received RPC message.
pattern NetworkEvent_Type_Recv :: NetworkEvent_Type
pattern NetworkEvent_Type_Recv = NetworkEvent_Type "RECV"

{-# COMPLETE
  NetworkEvent_Type_TYPEUNSPECIFIED,
  NetworkEvent_Type_Sent,
  NetworkEvent_Type_Recv,
  NetworkEvent_Type
  #-}
