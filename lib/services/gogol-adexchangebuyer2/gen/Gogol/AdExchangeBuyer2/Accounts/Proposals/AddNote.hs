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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.AddNote
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new note and attach it to the proposal. The note is assigned a unique ID by the server. The proposal revision number will not increase when associated with a new note.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.addNote@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.AddNote
  ( -- * Resource
    AdExchangeBuyer2AccountsProposalsAddNoteResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsProposalsAddNote (..),
    newAdExchangeBuyer2AccountsProposalsAddNote,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.proposals.addNote@ method which the
-- 'AdExchangeBuyer2AccountsProposalsAddNote' request conforms to.
type AdExchangeBuyer2AccountsProposalsAddNoteResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "proposals"
    Core.:> Core.CaptureMode "proposalId" "addNote" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddNoteRequest
    Core.:> Core.Post '[Core.JSON] Note

-- | Create a new note and attach it to the proposal. The note is assigned a unique ID by the server. The proposal revision number will not increase when associated with a new note.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsAddNote' smart constructor.
data AdExchangeBuyer2AccountsProposalsAddNote = AdExchangeBuyer2AccountsProposalsAddNote
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AddNoteRequest,
    -- | The ID of the proposal to attach the note to.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsAddNote' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsAddNote ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddNoteRequest ->
  -- |  The ID of the proposal to attach the note to. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProposalsAddNote
newAdExchangeBuyer2AccountsProposalsAddNote accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsAddNote
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      payload = payload,
      proposalId = proposalId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsProposalsAddNote
  where
  type
    Rs AdExchangeBuyer2AccountsProposalsAddNote =
      Note
  type
    Scopes AdExchangeBuyer2AccountsProposalsAddNote =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsProposalsAddNote {..} =
      go
        accountId
        proposalId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsProposalsAddNoteResource
            )
            Core.mempty
