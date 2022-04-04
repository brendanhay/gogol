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
-- Module      : Gogol.People.OtherContacts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all \"Other contacts\", that is contacts that are not in a contact group. \"Other contacts\" are typically auto created contacts from interactions. Sync tokens expire 7 days after the full sync. A request with an expired sync token will result in a 410 error. In the case of such an error clients should make a full sync request without a @sync_token@. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at
-- </people/v1/other-contacts#list_the_users_other_contacts_that_have_changed List the user\'s other contacts that have changed>.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.list@.
module Gogol.People.OtherContacts.List
  ( -- * Resource
    PeopleOtherContactsListResource,

    -- ** Constructing a Request
    PeopleOtherContactsList (..),
    newPeopleOtherContactsList,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.otherContacts.list@ method which the
-- 'PeopleOtherContactsList' request conforms to.
type PeopleOtherContactsListResource =
  "v1"
    Core.:> "otherContacts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "readMask" Core.FieldMask
    Core.:> Core.QueryParam "requestSyncToken" Core.Bool
    Core.:> Core.QueryParams "sources" OtherContactsListSources
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOtherContactsResponse

-- | List all \"Other contacts\", that is contacts that are not in a contact group. \"Other contacts\" are typically auto created contacts from interactions. Sync tokens expire 7 days after the full sync. A request with an expired sync token will result in a 410 error. In the case of such an error clients should make a full sync request without a @sync_token@. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at
-- </people/v1/other-contacts#list_the_users_other_contacts_that_have_changed List the user\'s other contacts that have changed>.
--
-- /See:/ 'newPeopleOtherContactsList' smart constructor.
data PeopleOtherContactsList = PeopleOtherContactsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The number of \"Other contacts\" to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous response @next_page_token@. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @otherContacts.list@ must match the first call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. What values are valid depend on what ReadSourceType is used. If READ/SOURCE/TYPE/CONTACT is used, valid values are: * emailAddresses * metadata * names * phoneNumbers * photos If READ/SOURCE/TYPE/PROFILE is used, valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. Whether the response should return @next_sync_token@ on the last page of results. It can be used to get incremental changes since the last request by setting it on the request @sync_token@. More details about sync behavior at @otherContacts.list@.
    requestSyncToken :: (Core.Maybe Core.Bool),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE_CONTACT if not set.
    sources :: (Core.Maybe [OtherContactsListSources]),
    -- | Optional. A sync token, received from a previous response @next_sync_token@ Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to @otherContacts.list@ must match the first call that provided the sync token. More details about sync behavior at @otherContacts.list@.
    syncToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleOtherContactsList' with the minimum fields required to make a request.
newPeopleOtherContactsList ::
  PeopleOtherContactsList
newPeopleOtherContactsList =
  PeopleOtherContactsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      readMask = Core.Nothing,
      requestSyncToken = Core.Nothing,
      sources = Core.Nothing,
      syncToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeopleOtherContactsList where
  type
    Rs PeopleOtherContactsList =
      ListOtherContactsResponse
  type
    Scopes PeopleOtherContactsList =
      '[Contacts'Other'Readonly]
  requestClient PeopleOtherContactsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      readMask
      requestSyncToken
      (sources Core.^. Core._Default)
      syncToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PeopleOtherContactsListResource
          )
          Core.mempty
