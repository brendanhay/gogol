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
-- Module      : Gogol.People.ContactGroups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all contact groups owned by the authenticated user. Members of the contact groups are not populated.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.list@.
module Gogol.People.ContactGroups.List
  ( -- * Resource
    PeopleContactGroupsListResource,

    -- ** Constructing a Request
    PeopleContactGroupsList (..),
    newPeopleContactGroupsList,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.contactGroups.list@ method which the
-- 'PeopleContactGroupsList' request conforms to.
type PeopleContactGroupsListResource =
  "v1"
    Core.:> "contactGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "groupFields" Core.FieldMask
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListContactGroupsResponse

-- | List all contact groups owned by the authenticated user. Members of the contact groups are not populated.
--
-- /See:/ 'newPeopleContactGroupsList' smart constructor.
data PeopleContactGroupsList = PeopleContactGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A field mask to restrict which fields on the group are returned. Defaults to @metadata@, @groupType@, @memberCount@, and @name@ if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name
    groupFields :: (Core.Maybe Core.FieldMask),
    -- | Optional. The maximum number of resources to return. Valid values are between 1 and 1000, inclusive. Defaults to 30 if not set or set to 0.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The next/page/token value returned from a previous call to </people/api/rest/v1/contactgroups/list ListContactGroups>. Requests the next page of resources.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. A sync token, returned by a previous call to @contactgroups.list@. Only resources changed since the sync token was created will be returned.
    syncToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsList' with the minimum fields required to make a request.
newPeopleContactGroupsList ::
  PeopleContactGroupsList
newPeopleContactGroupsList =
  PeopleContactGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupFields = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      syncToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeopleContactGroupsList where
  type
    Rs PeopleContactGroupsList =
      ListContactGroupsResponse
  type
    Scopes PeopleContactGroupsList =
      '[Contacts'FullControl, Contacts'Readonly]
  requestClient PeopleContactGroupsList {..} =
    go
      xgafv
      accessToken
      callback
      groupFields
      pageSize
      pageToken
      syncToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PeopleContactGroupsListResource
          )
          Core.mempty
