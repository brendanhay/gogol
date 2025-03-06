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
-- Module      : Gogol.People.CreateContact
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new contact and return the person resource for that contact. The request returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.createContact@.
module Gogol.People.CreateContact
  ( -- * Resource
    PeoplePeopleCreateContactResource,

    -- ** Constructing a Request
    PeoplePeopleCreateContact (..),
    newPeoplePeopleCreateContact,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.createContact@ method which the
-- 'PeoplePeopleCreateContact' request conforms to.
type PeoplePeopleCreateContactResource =
  "v1"
    Core.:> "people:createContact"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "personFields" Core.FieldMask
    Core.:> Core.QueryParams "sources" PeopleCreateContactSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Person
    Core.:> Core.Post '[Core.JSON] Person

-- | Create a new contact and return the person resource for that contact. The request returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeoplePeopleCreateContact' smart constructor.
data PeoplePeopleCreateContact = PeoplePeopleCreateContact
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Person,
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Defaults to all fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.FieldMask),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [PeopleCreateContactSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleCreateContact' with the minimum fields required to make a request.
newPeoplePeopleCreateContact ::
  -- |  Multipart request metadata. See 'payload'.
  Person ->
  PeoplePeopleCreateContact
newPeoplePeopleCreateContact payload =
  PeoplePeopleCreateContact
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      personFields = Core.Nothing,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleCreateContact where
  type Rs PeoplePeopleCreateContact = Person
  type Scopes PeoplePeopleCreateContact = '[Contacts'FullControl]
  requestClient PeoplePeopleCreateContact {..} =
    go
      xgafv
      accessToken
      callback
      personFields
      (sources Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleCreateContactResource)
          Core.mempty
