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
-- Module      : Gogol.People.ListDirectoryPeople
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of domain profiles and domain contacts in the authenticated user\'s domain directory. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at </people/v1/directory#list_the_directory_people_that_have_changed List the directory people that have changed>.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.listDirectoryPeople@.
module Gogol.People.ListDirectoryPeople
  ( -- * Resource
    PeoplePeopleListDirectoryPeopleResource,

    -- ** Constructing a Request
    PeoplePeopleListDirectoryPeople (..),
    newPeoplePeopleListDirectoryPeople,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.people.listDirectoryPeople@ method which the
-- 'PeoplePeopleListDirectoryPeople' request conforms to.
type PeoplePeopleListDirectoryPeopleResource =
  "v1"
    Core.:> "people:listDirectoryPeople"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "mergeSources"
              PeopleListDirectoryPeopleMergeSources
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "readMask" Core.GFieldMask
    Core.:> Core.QueryParam "requestSyncToken" Core.Bool
    Core.:> Core.QueryParams
              "sources"
              PeopleListDirectoryPeopleSources
    Core.:> Core.QueryParam "syncToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListDirectoryPeopleResponse

-- | Provides a list of domain profiles and domain contacts in the authenticated user\'s domain directory. When the @sync_token@ is specified, resources deleted since the last sync will be returned as a person with @PersonMetadata.deleted@ set to true. When the @page_token@ or @sync_token@ is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at </people/v1/directory#list_the_directory_people_that_have_changed List the directory people that have changed>.
--
-- /See:/ 'newPeoplePeopleListDirectoryPeople' smart constructor.
data PeoplePeopleListDirectoryPeople = PeoplePeopleListDirectoryPeople
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.
    mergeSources :: (Core.Maybe [PeopleListDirectoryPeopleMergeSources]),
    -- | Optional. The number of people to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous response @next_page_token@. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @people.listDirectoryPeople@ must match the first call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.GFieldMask),
    -- | Optional. Whether the response should return @next_sync_token@. It can be used to get incremental changes since the last request by setting it on the request @sync_token@. More details about sync behavior at @people.listDirectoryPeople@.
    requestSyncToken :: (Core.Maybe Core.Bool),
    -- | Required. Directory sources to return.
    sources :: (Core.Maybe [PeopleListDirectoryPeopleSources]),
    -- | Optional. A sync token, received from a previous response @next_sync_token@ Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to @people.listDirectoryPeople@ must match the first call that provided the sync token. More details about sync behavior at @people.listDirectoryPeople@.
    syncToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleListDirectoryPeople' with the minimum fields required to make a request.
newPeoplePeopleListDirectoryPeople ::
  PeoplePeopleListDirectoryPeople
newPeoplePeopleListDirectoryPeople =
  PeoplePeopleListDirectoryPeople
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      mergeSources = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      readMask = Core.Nothing,
      requestSyncToken = Core.Nothing,
      sources = Core.Nothing,
      syncToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PeoplePeopleListDirectoryPeople
  where
  type
    Rs PeoplePeopleListDirectoryPeople =
      ListDirectoryPeopleResponse
  type
    Scopes PeoplePeopleListDirectoryPeople =
      '[Directory'Readonly]
  requestClient PeoplePeopleListDirectoryPeople {..} =
    go
      xgafv
      accessToken
      callback
      (mergeSources Core.^. Core._Default)
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
              Core.Proxy PeoplePeopleListDirectoryPeopleResource
          )
          Core.mempty
