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
-- Module      : Gogol.People.SearchDirectoryPeople
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of domain profiles and domain contacts in the authenticated user\'s domain directory that match the search query.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.searchDirectoryPeople@.
module Gogol.People.SearchDirectoryPeople
  ( -- * Resource
    PeoplePeopleSearchDirectoryPeopleResource,

    -- ** Constructing a Request
    PeoplePeopleSearchDirectoryPeople (..),
    newPeoplePeopleSearchDirectoryPeople,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.searchDirectoryPeople@ method which the
-- 'PeoplePeopleSearchDirectoryPeople' request conforms to.
type PeoplePeopleSearchDirectoryPeopleResource =
  "v1"
    Core.:> "people:searchDirectoryPeople"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "mergeSources"
              PeopleSearchDirectoryPeopleMergeSources
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "readMask" Core.FieldMask
    Core.:> Core.QueryParams "sources" PeopleSearchDirectoryPeopleSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchDirectoryPeopleResponse

-- | Provides a list of domain profiles and domain contacts in the authenticated user\'s domain directory that match the search query.
--
-- /See:/ 'newPeoplePeopleSearchDirectoryPeople' smart constructor.
data PeoplePeopleSearchDirectoryPeople = PeoplePeopleSearchDirectoryPeople
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.
    mergeSources :: (Core.Maybe [PeopleSearchDirectoryPeopleMergeSources]),
    -- | Optional. The number of people to include in the response. Valid values are between 1 and 500, inclusive. Defaults to 100 if not set or set to 0.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous response @next_page_token@. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @SearchDirectoryPeople@ must match the first call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Prefix query that matches fields in the person. Does NOT use the read_mask for determining what fields to match.
    query :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Required. Directory sources to return.
    sources :: (Core.Maybe [PeopleSearchDirectoryPeopleSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleSearchDirectoryPeople' with the minimum fields required to make a request.
newPeoplePeopleSearchDirectoryPeople ::
  PeoplePeopleSearchDirectoryPeople
newPeoplePeopleSearchDirectoryPeople =
  PeoplePeopleSearchDirectoryPeople
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      mergeSources = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      readMask = Core.Nothing,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleSearchDirectoryPeople where
  type
    Rs PeoplePeopleSearchDirectoryPeople =
      SearchDirectoryPeopleResponse
  type
    Scopes PeoplePeopleSearchDirectoryPeople =
      '[Directory'Readonly]
  requestClient PeoplePeopleSearchDirectoryPeople {..} =
    go
      xgafv
      accessToken
      callback
      (mergeSources Core.^. Core._Default)
      pageSize
      pageToken
      query
      readMask
      (sources Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PeoplePeopleSearchDirectoryPeopleResource
          )
          Core.mempty
