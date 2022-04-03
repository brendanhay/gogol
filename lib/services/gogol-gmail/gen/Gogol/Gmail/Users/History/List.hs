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
-- Module      : Gogol.Gmail.Users.History.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of all changes to the given mailbox. History results are returned in chronological order (increasing @historyId@).
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.history.list@.
module Gogol.Gmail.Users.History.List
  ( -- * Resource
    GmailUsersHistoryListResource,

    -- ** Constructing a Request
    GmailUsersHistoryList (..),
    newGmailUsersHistoryList,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.history.list@ method which the
-- 'GmailUsersHistoryList' request conforms to.
type GmailUsersHistoryListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "history"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "historyTypes"
              UsersHistoryListHistoryTypes
    Core.:> Core.QueryParam "labelId" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startHistoryId" Core.Word64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListHistoryResponse

-- | Lists the history of all changes to the given mailbox. History results are returned in chronological order (increasing @historyId@).
--
-- /See:/ 'newGmailUsersHistoryList' smart constructor.
data GmailUsersHistoryList = GmailUsersHistoryList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | History types to be returned by the function
    historyTypes :: (Core.Maybe [UsersHistoryListHistoryTypes]),
    -- | Only return messages with a label matching the ID.
    labelId :: (Core.Maybe Core.Text),
    -- | Maximum number of history records to return. This field defaults to 100. The maximum allowed value for this field is 500.
    maxResults :: Core.Word32,
    -- | Page token to retrieve a specific page of results in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Returns history records after the specified @startHistoryId@. The supplied @startHistoryId@ should be obtained from the @historyId@ of a message, thread, or previous @list@ response. History IDs increase chronologically but are not contiguous with random gaps in between valid IDs. Supplying an invalid or out of date @startHistoryId@ typically returns an @HTTP 404@ error code. A @historyId@ is typically valid for at least a week, but in some rare circumstances may be valid for only a few hours. If you receive an @HTTP 404@ error response, your application should perform a full sync. If you receive no @nextPageToken@ in the response, there are no updates to retrieve and you can store the returned @historyId@ for a future request.
    startHistoryId :: (Core.Maybe Core.Word64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersHistoryList' with the minimum fields required to make a request.
newGmailUsersHistoryList ::
  GmailUsersHistoryList
newGmailUsersHistoryList =
  GmailUsersHistoryList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      historyTypes = Core.Nothing,
      labelId = Core.Nothing,
      maxResults = 100,
      pageToken = Core.Nothing,
      startHistoryId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersHistoryList where
  type Rs GmailUsersHistoryList = ListHistoryResponse
  type
    Scopes GmailUsersHistoryList =
      '[ Gmail'FullControl,
         Gmail'Metadata,
         Gmail'Modify,
         Gmail'Readonly
       ]
  requestClient GmailUsersHistoryList {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (historyTypes Core.^. Core._Default)
      labelId
      (Core.Just maxResults)
      pageToken
      startHistoryId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersHistoryListResource
          )
          Core.mempty
