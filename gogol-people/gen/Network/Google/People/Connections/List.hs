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
-- Module      : Network.Google.People.Connections.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of the authenticated user\'s contacts. Sync tokens expire 7 days after the full sync. A request with an expired sync token will result in a 410 error. In the case of such an error clients should make a full sync request without a @sync_token@. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at </people/v1/contacts#list_the_users_contacts_that_have_changed List the user\'s contacts that have changed>.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.connections.list@.
module Network.Google.People.Connections.List
  ( -- * Resource
    PeoplePeopleConnectionsListResource,

    -- ** Constructing a Request
    newPeoplePeopleConnectionsList,
    PeoplePeopleConnectionsList,
  )
where

import Network.Google.People.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @people.people.connections.list@ method which the
-- 'PeoplePeopleConnectionsList' request conforms to.
type PeoplePeopleConnectionsListResource =
  "v1"
    Core.:> Core.Capture "resourceName" Core.Text
    Core.:> "connections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "personFields" Core.GFieldMask
    Core.:> Core.QueryParam
              "requestMask.includeField"
              Core.GFieldMask
    Core.:> Core.QueryParam "requestSyncToken" Core.Bool
    Core.:> Core.QueryParam
              "sortOrder"
              PeopleConnectionsListSortOrder
    Core.:> Core.QueryParams
              "sources"
              PeopleConnectionsListSources
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListConnectionsResponse

-- | Provides a list of the authenticated user\'s contacts. Sync tokens expire 7 days after the full sync. A request with an expired sync token will result in a 410 error. In the case of such an error clients should make a full sync request without a @sync_token@. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at </people/v1/contacts#list_the_users_contacts_that_have_changed List the user\'s contacts that have changed>.
--
-- /See:/ 'newPeoplePeopleConnectionsList' smart constructor.
data PeoplePeopleConnectionsList = PeoplePeopleConnectionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The number of connections to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous response @next_page_token@. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @people.connections.list@ must match the first call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.GFieldMask),
    -- | Required. Comma-separated list of person fields to be included in the response. Each path should start with @person.@: for example, @person.names@ or @person.photos@.
    requestMaskIncludeField :: (Core.Maybe Core.GFieldMask),
    -- | Optional. Whether the response should return @next_sync_token@ on the last page of results. It can be used to get incremental changes since the last request by setting it on the request @sync_token@. More details about sync behavior at @people.connections.list@.
    requestSyncToken :: (Core.Maybe Core.Bool),
    -- | Required. The resource name to return connections for. Only @people\/me@ is valid.
    resourceName :: Core.Text,
    -- | Optional. The order in which the connections should be sorted. Defaults to @LAST_MODIFIED_ASCENDING@.
    sortOrder :: (Core.Maybe PeopleConnectionsListSortOrder),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [PeopleConnectionsListSources]),
    -- | Optional. A sync token, received from a previous response @next_sync_token@ Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to @people.connections.list@ must match the first call that provided the sync token. More details about sync behavior at @people.connections.list@.
    syncToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleConnectionsList' with the minimum fields required to make a request.
newPeoplePeopleConnectionsList ::
  -- |  Required. The resource name to return connections for. Only @people\/me@ is valid. See 'resourceName'.
  Core.Text ->
  PeoplePeopleConnectionsList
newPeoplePeopleConnectionsList resourceName =
  PeoplePeopleConnectionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      personFields = Core.Nothing,
      requestMaskIncludeField = Core.Nothing,
      requestSyncToken = Core.Nothing,
      resourceName = resourceName,
      sortOrder = Core.Nothing,
      sources = Core.Nothing,
      syncToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PeoplePeopleConnectionsList
  where
  type
    Rs PeoplePeopleConnectionsList =
      ListConnectionsResponse
  type
    Scopes PeoplePeopleConnectionsList =
      '[ "https://www.googleapis.com/auth/contacts",
         "https://www.googleapis.com/auth/contacts.readonly"
       ]
  requestClient PeoplePeopleConnectionsList {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      personFields
      requestMaskIncludeField
      requestSyncToken
      sortOrder
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
              Core.Proxy PeoplePeopleConnectionsListResource
          )
          Core.mempty
