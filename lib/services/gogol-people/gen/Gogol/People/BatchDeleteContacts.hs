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
-- Module      : Gogol.People.BatchDeleteContacts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a batch of contacts. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.batchDeleteContacts@.
module Gogol.People.BatchDeleteContacts
  ( -- * Resource
    PeoplePeopleBatchDeleteContactsResource,

    -- ** Constructing a Request
    PeoplePeopleBatchDeleteContacts (..),
    newPeoplePeopleBatchDeleteContacts,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.batchDeleteContacts@ method which the
-- 'PeoplePeopleBatchDeleteContacts' request conforms to.
type PeoplePeopleBatchDeleteContactsResource =
  "v1"
    Core.:> "people:batchDeleteContacts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchDeleteContactsRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Delete a batch of contacts. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeoplePeopleBatchDeleteContacts' smart constructor.
data PeoplePeopleBatchDeleteContacts = PeoplePeopleBatchDeleteContacts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchDeleteContactsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleBatchDeleteContacts' with the minimum fields required to make a request.
newPeoplePeopleBatchDeleteContacts ::
  -- |  Multipart request metadata. See 'payload'.
  BatchDeleteContactsRequest ->
  PeoplePeopleBatchDeleteContacts
newPeoplePeopleBatchDeleteContacts payload =
  PeoplePeopleBatchDeleteContacts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleBatchDeleteContacts where
  type Rs PeoplePeopleBatchDeleteContacts = Empty
  type
    Scopes PeoplePeopleBatchDeleteContacts =
      '[Contacts'FullControl]
  requestClient PeoplePeopleBatchDeleteContacts {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleBatchDeleteContactsResource)
          Core.mempty
