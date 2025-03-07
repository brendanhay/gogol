{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.People.ContactGroups.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the name of an existing contact group owned by the authenticated user. Updated contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.update@.
module Gogol.People.ContactGroups.Update
  ( -- * Resource
    PeopleContactGroupsUpdateResource,

    -- ** Constructing a Request
    PeopleContactGroupsUpdate (..),
    newPeopleContactGroupsUpdate,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.contactGroups.update@ method which the
-- 'PeopleContactGroupsUpdate' request conforms to.
type PeopleContactGroupsUpdateResource =
  "v1"
    Core.:> Core.Capture "resourceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateContactGroupRequest
    Core.:> Core.Put '[Core.JSON] ContactGroup

-- | Update the name of an existing contact group owned by the authenticated user. Updated contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeopleContactGroupsUpdate' smart constructor.
data PeopleContactGroupsUpdate = PeopleContactGroupsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UpdateContactGroupRequest,
    -- | The resource name for the contact group, assigned by the server. An ASCII string, in the form of @contactGroups\/{contact_group_id}@.
    resourceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsUpdate' with the minimum fields required to make a request.
newPeopleContactGroupsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  UpdateContactGroupRequest ->
  -- |  The resource name for the contact group, assigned by the server. An ASCII string, in the form of @contactGroups\/{contact_group_id}@. See 'resourceName'.
  Core.Text ->
  PeopleContactGroupsUpdate
newPeopleContactGroupsUpdate payload resourceName =
  PeopleContactGroupsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resourceName = resourceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeopleContactGroupsUpdate where
  type Rs PeopleContactGroupsUpdate = ContactGroup
  type Scopes PeopleContactGroupsUpdate = '[Contacts'FullControl]
  requestClient PeopleContactGroupsUpdate {..} =
    go
      resourceName
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
          (Core.Proxy :: Core.Proxy PeopleContactGroupsUpdateResource)
          Core.mempty
