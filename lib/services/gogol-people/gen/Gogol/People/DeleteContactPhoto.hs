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
-- Module      : Gogol.People.DeleteContactPhoto
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a contact\'s photo. Mutate requests for the same user should be done sequentially to avoid \/\/ lock contention.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.deleteContactPhoto@.
module Gogol.People.DeleteContactPhoto
  ( -- * Resource
    PeoplePeopleDeleteContactPhotoResource,

    -- ** Constructing a Request
    PeoplePeopleDeleteContactPhoto (..),
    newPeoplePeopleDeleteContactPhoto,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.deleteContactPhoto@ method which the
-- 'PeoplePeopleDeleteContactPhoto' request conforms to.
type PeoplePeopleDeleteContactPhotoResource =
  "v1"
    Core.:> Core.CaptureMode "resourceName" "deleteContactPhoto" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "personFields" Core.FieldMask
    Core.:> Core.QueryParams "sources" PeopleDeleteContactPhotoSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] DeleteContactPhotoResponse

-- | Delete a contact\'s photo. Mutate requests for the same user should be done sequentially to avoid \/\/ lock contention.
--
-- /See:/ 'newPeoplePeopleDeleteContactPhoto' smart constructor.
data PeoplePeopleDeleteContactPhoto = PeoplePeopleDeleteContactPhoto
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to empty if not set, which will skip the post mutate get. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.FieldMask),
    -- | Required. The resource name of the contact whose photo will be deleted.
    resourceName :: Core.Text,
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [PeopleDeleteContactPhotoSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleDeleteContactPhoto' with the minimum fields required to make a request.
newPeoplePeopleDeleteContactPhoto ::
  -- |  Required. The resource name of the contact whose photo will be deleted. See 'resourceName'.
  Core.Text ->
  PeoplePeopleDeleteContactPhoto
newPeoplePeopleDeleteContactPhoto resourceName =
  PeoplePeopleDeleteContactPhoto
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      personFields = Core.Nothing,
      resourceName = resourceName,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleDeleteContactPhoto where
  type Rs PeoplePeopleDeleteContactPhoto = DeleteContactPhotoResponse
  type
    Scopes PeoplePeopleDeleteContactPhoto =
      '[Contacts'FullControl]
  requestClient PeoplePeopleDeleteContactPhoto {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      personFields
      (sources Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleDeleteContactPhotoResource)
          Core.mempty
