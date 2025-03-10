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
-- Module      : Gogol.People.SearchContacts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of contacts in the authenticated user\'s grouped contacts that matches the search query. The query matches on a contact\'s @names@, @nickNames@, @emailAddresses@, @phoneNumbers@, and @organizations@ fields that are from the CONTACT source. __IMPORTANT__: Before searching, clients should send a warmup request with an empty query to update the cache. See https:\/\/developers.google.com\/people\/v1\/contacts#search/the/users_contacts
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.searchContacts@.
module Gogol.People.SearchContacts
  ( -- * Resource
    PeoplePeopleSearchContactsResource,

    -- ** Constructing a Request
    PeoplePeopleSearchContacts (..),
    newPeoplePeopleSearchContacts,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.searchContacts@ method which the
-- 'PeoplePeopleSearchContacts' request conforms to.
type PeoplePeopleSearchContactsResource =
  "v1"
    Core.:> "people:searchContacts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "readMask" Core.FieldMask
    Core.:> Core.QueryParams "sources" PeopleSearchContactsSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchResponse

-- | Provides a list of contacts in the authenticated user\'s grouped contacts that matches the search query. The query matches on a contact\'s @names@, @nickNames@, @emailAddresses@, @phoneNumbers@, and @organizations@ fields that are from the CONTACT source. __IMPORTANT__: Before searching, clients should send a warmup request with an empty query to update the cache. See https:\/\/developers.google.com\/people\/v1\/contacts#search/the/users_contacts
--
-- /See:/ 'newPeoplePeopleSearchContacts' smart constructor.
data PeoplePeopleSearchContacts = PeoplePeopleSearchContacts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The number of results to return. Defaults to 10 if field is not set, or set to 0. Values greater than 30 will be capped to 30.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Required. The plain-text query for the request. The query is used to match prefix phrases of the fields on a person. For example, a person with name \"foo name\" matches queries such as \"f\", \"fo\", \"foo\", \"foo n\", \"nam\", etc., but not \"oo n\".
    query :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE_CONTACT if not set.
    sources :: (Core.Maybe [PeopleSearchContactsSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleSearchContacts' with the minimum fields required to make a request.
newPeoplePeopleSearchContacts ::
  PeoplePeopleSearchContacts
newPeoplePeopleSearchContacts =
  PeoplePeopleSearchContacts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      query = Core.Nothing,
      readMask = Core.Nothing,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleSearchContacts where
  type Rs PeoplePeopleSearchContacts = SearchResponse
  type
    Scopes PeoplePeopleSearchContacts =
      '[Contacts'FullControl, Contacts'Readonly]
  requestClient PeoplePeopleSearchContacts {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
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
          (Core.Proxy :: Core.Proxy PeoplePeopleSearchContactsResource)
          Core.mempty
