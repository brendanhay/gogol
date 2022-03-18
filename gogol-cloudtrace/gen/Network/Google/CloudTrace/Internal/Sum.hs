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
-- Module      : Network.Google.CloudTrace.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CloudTrace.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Link_Type
    Link_Type
      ( Link_Type_TYPEUNSPECIFIED,
        Link_Type_CHILDLINKEDSPAN,
        Link_Type_PARENTLINKEDSPAN,
        ..
      ),

    -- * MessageEvent_Type
    MessageEvent_Type
      ( MessageEvent_Type_TYPEUNSPECIFIED,
        MessageEvent_Type_Sent,
        MessageEvent_Type_Received,
        ..
      ),

    -- * Span_SpanKind
    Span_SpanKind
      ( Span_SpanKind_SPANKINDUNSPECIFIED,
        Span_SpanKind_Internal,
        Span_SpanKind_Server,
        Span_SpanKind_Client,
        Span_SpanKind_Producer,
        Span_SpanKind_Consumer,
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

-- | The linked span is a child of the current span.
pattern Link_Type_CHILDLINKEDSPAN :: Link_Type
pattern Link_Type_CHILDLINKEDSPAN = Link_Type "CHILD_LINKED_SPAN"

-- | The linked span is a parent of the current span.
pattern Link_Type_PARENTLINKEDSPAN :: Link_Type
pattern Link_Type_PARENTLINKEDSPAN = Link_Type "PARENT_LINKED_SPAN"

{-# COMPLETE
  Link_Type_TYPEUNSPECIFIED,
  Link_Type_CHILDLINKEDSPAN,
  Link_Type_PARENTLINKEDSPAN,
  Link_Type
  #-}

-- | Type of MessageEvent. Indicates whether the message was sent or received.
newtype MessageEvent_Type = MessageEvent_Type {fromMessageEvent_Type :: Core.Text}
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
pattern MessageEvent_Type_TYPEUNSPECIFIED :: MessageEvent_Type
pattern MessageEvent_Type_TYPEUNSPECIFIED = MessageEvent_Type "TYPE_UNSPECIFIED"

-- | Indicates a sent message.
pattern MessageEvent_Type_Sent :: MessageEvent_Type
pattern MessageEvent_Type_Sent = MessageEvent_Type "SENT"

-- | Indicates a received message.
pattern MessageEvent_Type_Received :: MessageEvent_Type
pattern MessageEvent_Type_Received = MessageEvent_Type "RECEIVED"

{-# COMPLETE
  MessageEvent_Type_TYPEUNSPECIFIED,
  MessageEvent_Type_Sent,
  MessageEvent_Type_Received,
  MessageEvent_Type
  #-}

-- | Optional. Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using @CLIENT@ (caller) and @SERVER@ (callee) to identify an RPC call.
newtype Span_SpanKind = Span_SpanKind {fromSpan_SpanKind :: Core.Text}
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

-- | Unspecified. Do NOT use as default. Implementations MAY assume SpanKind.INTERNAL to be default.
pattern Span_SpanKind_SPANKINDUNSPECIFIED :: Span_SpanKind
pattern Span_SpanKind_SPANKINDUNSPECIFIED = Span_SpanKind "SPAN_KIND_UNSPECIFIED"

-- | Indicates that the span is used internally. Default value.
pattern Span_SpanKind_Internal :: Span_SpanKind
pattern Span_SpanKind_Internal = Span_SpanKind "INTERNAL"

-- | Indicates that the span covers server-side handling of an RPC or other remote network request.
pattern Span_SpanKind_Server :: Span_SpanKind
pattern Span_SpanKind_Server = Span_SpanKind "SERVER"

-- | Indicates that the span covers the client-side wrapper around an RPC or other remote request.
pattern Span_SpanKind_Client :: Span_SpanKind
pattern Span_SpanKind_Client = Span_SpanKind "CLIENT"

-- | Indicates that the span describes producer sending a message to a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. publishing a message to a pubsub service).
pattern Span_SpanKind_Producer :: Span_SpanKind
pattern Span_SpanKind_Producer = Span_SpanKind "PRODUCER"

-- | Indicates that the span describes consumer receiving a message from a broker. Unlike client and server, there is no direct critical path latency relationship between producer and consumer spans (e.g. receiving a message from a pubsub service subscription).
pattern Span_SpanKind_Consumer :: Span_SpanKind
pattern Span_SpanKind_Consumer = Span_SpanKind "CONSUMER"

{-# COMPLETE
  Span_SpanKind_SPANKINDUNSPECIFIED,
  Span_SpanKind_Internal,
  Span_SpanKind_Server,
  Span_SpanKind_Client,
  Span_SpanKind_Producer,
  Span_SpanKind_Consumer,
  Span_SpanKind
  #-}
