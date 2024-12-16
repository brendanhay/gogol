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
-- Module      : Gogol.Chat.Spaces.SpaceEvents.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists events from a Google Chat space. For each event, the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload payload> contains the most recent version of the Chat resource. For example, if you list events about new space members, the server returns @Membership@ resources that contain the latest membership details. If new members were removed during the requested period, the event payload contains an empty @Membership@ resource. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>. To list events, the authenticated user must be a member of the space. For an example, see <https://developers.google.com/workspace/chat/list-space-events List events from a Google Chat space>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.spaceEvents.list@.
module Gogol.Chat.Spaces.SpaceEvents.List
    (
    -- * Resource
      ChatSpacesSpaceEventsListResource

    -- ** Constructing a Request
    , ChatSpacesSpaceEventsList (..)
    , newChatSpacesSpaceEventsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.spaceEvents.list@ method which the
-- 'ChatSpacesSpaceEventsList' request conforms to.
type ChatSpacesSpaceEventsListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "spaceEvents" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListSpaceEventsResponse

-- | Lists events from a Google Chat space. For each event, the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.oneof_payload payload> contains the most recent version of the Chat resource. For example, if you list events about new space members, the server returns @Membership@ resources that contain the latest membership details. If new members were removed during the requested period, the event payload contains an empty @Membership@ resource. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>. To list events, the authenticated user must be a member of the space. For an example, see <https://developers.google.com/workspace/chat/list-space-events List events from a Google Chat space>.
--
-- /See:/ 'newChatSpacesSpaceEventsList' smart constructor.
data ChatSpacesSpaceEventsList = ChatSpacesSpaceEventsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A query filter. You must specify at least one event type (@event_type@) using the has @:@ operator. To filter by multiple event types, use the @OR@ operator. Omit batch event types in your filter. The request automatically returns any related batch events. For example, if you filter by new reactions (@google.workspace.chat.reaction.v1.created@), the server also returns batch new reactions events (@google.workspace.chat.reaction.v1.batchCreated@). For a list of supported event types, see the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.event_type SpaceEvents reference documentation>. Optionally, you can also filter by start time (@start_time@) and end time (@end_time@): * @start_time@: Exclusive timestamp from which to start listing space events. You can list events that occurred up to 28 days ago. If unspecified, lists space events from the past 28 days. * @end_time@: Inclusive timestamp until which space events are listed. If unspecified,
      -- lists events up to the time of the request. To specify a start or end time, use the equals @=@ operator and format in <https://www.rfc-editor.org/rfc/rfc3339 RFC-3339>. To filter by both @start_time@ and @end_time@, use the @AND@ operator. For example, the following queries are valid: @start_time=\"2023-08-23T19:20:33+00:00\" AND end_time=\"2023-08-23T19:21:54+00:00\"@ @start_time=\"2023-08-23T19:20:33+00:00\" AND (event_types:\"google.workspace.chat.space.v1.updated\" OR event_types:\"google.workspace.chat.message.v1.created\")@ The following queries are invalid: @start_time=\"2023-08-23T19:20:33+00:00\" OR end_time=\"2023-08-23T19:21:54+00:00\"@ @event_types:\"google.workspace.chat.space.v1.updated\" AND event_types:\"google.workspace.chat.message.v1.created\"@ Invalid queries are rejected by the server with an @INVALID_ARGUMENT@ error.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of space events returned. The service might return fewer than this value. Negative values return an @INVALID_ARGUMENT@ error.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token, received from a previous list space events call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to list space events must match the call that provided the page token. Passing different values to the other parameters might lead to unexpected results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces Google Chat space> where the events occurred. Format: @spaces\/{space}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesSpaceEventsList' with the minimum fields required to make a request.
newChatSpacesSpaceEventsList 
    ::  Core.Text
       -- ^  Required. Resource name of the <https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces Google Chat space> where the events occurred. Format: @spaces\/{space}@. See 'parent'.
    -> ChatSpacesSpaceEventsList
newChatSpacesSpaceEventsList parent =
  ChatSpacesSpaceEventsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesSpaceEventsList
         where
        type Rs ChatSpacesSpaceEventsList =
             ListSpaceEventsResponse
        type Scopes ChatSpacesSpaceEventsList =
             '[Chat'Memberships, Chat'Memberships'Readonly,
               Chat'Messages, Chat'Messages'Reactions,
               Chat'Messages'Reactions'Readonly,
               Chat'Messages'Readonly, Chat'Spaces,
               Chat'Spaces'Readonly]
        requestClient ChatSpacesSpaceEventsList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesSpaceEventsListResource)
                      Core.mempty

