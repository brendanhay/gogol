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
-- Module      : Gogol.People.UpdateContact
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update contact data for an existing contact person. Any non-contact data will not be modified. Any non-contact data in the person to update will be ignored. All fields specified in the @update_mask@ will be replaced. The server returns a 400 error if @person.metadata.sources@ is not specified for the contact to be updated or if there is no contact source. The server returns a 400 error with reason @\"failedPrecondition\"@ if @person.metadata.sources.etag@ is different than the contact\'s etag, which indicates the contact has changed since its data was read. Clients should get the latest person and merge their updates into the latest person. The server returns a 400 error if @memberships@ are being updated and there are no contact group memberships specified on the person. The server returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid
-- increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.updateContact@.
module Gogol.People.UpdateContact
  ( -- * Resource
    PeoplePeopleUpdateContactResource,

    -- ** Constructing a Request
    PeoplePeopleUpdateContact (..),
    newPeoplePeopleUpdateContact,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.updateContact@ method which the
-- 'PeoplePeopleUpdateContact' request conforms to.
type PeoplePeopleUpdateContactResource =
  "v1"
    Core.:> Core.CaptureMode "resourceName" "updateContact" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "personFields" Core.FieldMask
    Core.:> Core.QueryParams "sources" PeopleUpdateContactSources
    Core.:> Core.QueryParam "updatePersonFields" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Person
    Core.:> Core.Patch '[Core.JSON] Person

-- | Update contact data for an existing contact person. Any non-contact data will not be modified. Any non-contact data in the person to update will be ignored. All fields specified in the @update_mask@ will be replaced. The server returns a 400 error if @person.metadata.sources@ is not specified for the contact to be updated or if there is no contact source. The server returns a 400 error with reason @\"failedPrecondition\"@ if @person.metadata.sources.etag@ is different than the contact\'s etag, which indicates the contact has changed since its data was read. Clients should get the latest person and merge their updates into the latest person. The server returns a 400 error if @memberships@ are being updated and there are no contact group memberships specified on the person. The server returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid
-- increased latency and failures.
--
-- /See:/ 'newPeoplePeopleUpdateContact' smart constructor.
data PeoplePeopleUpdateContact = PeoplePeopleUpdateContact
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Person,
    -- | Optional. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Defaults to all fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.FieldMask),
    -- | The resource name for the person, assigned by the server. An ASCII string in the form of @people\/{person_id}@.
    resourceName :: Core.Text,
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [PeopleUpdateContactSources]),
    -- | Required. A field mask to restrict which fields on the person are updated. Multiple fields can be specified by separating them with commas. All updated fields will be replaced. Valid values are: * addresses * biographies * birthdays * calendarUrls * clientData * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * relations * sipAddresses * urls * userDefined
    updatePersonFields :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleUpdateContact' with the minimum fields required to make a request.
newPeoplePeopleUpdateContact ::
  -- |  Multipart request metadata. See 'payload'.
  Person ->
  -- |  The resource name for the person, assigned by the server. An ASCII string in the form of @people\/{person_id}@. See 'resourceName'.
  Core.Text ->
  PeoplePeopleUpdateContact
newPeoplePeopleUpdateContact payload resourceName =
  PeoplePeopleUpdateContact
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      personFields = Core.Nothing,
      resourceName = resourceName,
      sources = Core.Nothing,
      updatePersonFields = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleUpdateContact where
  type Rs PeoplePeopleUpdateContact = Person
  type Scopes PeoplePeopleUpdateContact = '[Contacts'FullControl]
  requestClient PeoplePeopleUpdateContact {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      personFields
      (sources Core.^. Core._Default)
      updatePersonFields
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleUpdateContactResource)
          Core.mempty
