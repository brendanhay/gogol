{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Drafts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the drafts in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.list@.
module Gogol.Gmail.Users.Drafts.List
  ( -- * Resource
    GmailUsersDraftsListResource,

    -- ** Constructing a Request
    GmailUsersDraftsList (..),
    newGmailUsersDraftsList,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.drafts.list@ method which the
-- 'GmailUsersDraftsList' request conforms to.
type GmailUsersDraftsListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "drafts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeSpamTrash" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDraftsResponse

-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ 'newGmailUsersDraftsList' smart constructor.
data GmailUsersDraftsList = GmailUsersDraftsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Include drafts from @SPAM@ and @TRASH@ in the results.
    includeSpamTrash :: Core.Bool,
    -- | Maximum number of drafts to return. This field defaults to 100. The maximum allowed value for this field is 500.
    maxResults :: Core.Word32,
    -- | Page token to retrieve a specific page of results in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Only return draft messages matching the specified query. Supports the same query format as the Gmail search box. For example, @\"from:someuser\@example.com rfc822msgid: is:unread\"@.
    q :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersDraftsList' with the minimum fields required to make a request.
newGmailUsersDraftsList ::
  GmailUsersDraftsList
newGmailUsersDraftsList =
  GmailUsersDraftsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeSpamTrash = Core.False,
      maxResults = 100,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersDraftsList where
  type Rs GmailUsersDraftsList = ListDraftsResponse
  type
    Scopes GmailUsersDraftsList =
      '[Gmail'FullControl, Gmail'Compose, Gmail'Modify, Gmail'Readonly]
  requestClient GmailUsersDraftsList {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just includeSpamTrash)
      (Core.Just maxResults)
      pageToken
      q
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersDraftsListResource)
          Core.mempty
