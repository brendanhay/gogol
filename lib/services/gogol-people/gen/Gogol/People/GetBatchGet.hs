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
-- Module      : Gogol.People.GetBatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a list of specific people by specifying a list of requested resource names. Use @people\/me@ to indicate the authenticated user. The request returns a 400 error if \'personFields\' is not specified.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.getBatchGet@.
module Gogol.People.GetBatchGet
  ( -- * Resource
    PeoplePeopleGetBatchGetResource,

    -- ** Constructing a Request
    PeoplePeopleGetBatchGet (..),
    newPeoplePeopleGetBatchGet,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.people.getBatchGet@ method which the
-- 'PeoplePeopleGetBatchGet' request conforms to.
type PeoplePeopleGetBatchGetResource =
  "v1"
    Core.:> "people:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "personFields" Core.FieldMask
    Core.:> Core.QueryParam "requestMask.includeField" Core.FieldMask
    Core.:> Core.QueryParams "resourceNames" Core.Text
    Core.:> Core.QueryParams "sources" PeopleGetBatchGetSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetPeopleResponse

-- | Provides information about a list of specific people by specifying a list of requested resource names. Use @people\/me@ to indicate the authenticated user. The request returns a 400 error if \'personFields\' is not specified.
--
-- /See:/ 'newPeoplePeopleGetBatchGet' smart constructor.
data PeoplePeopleGetBatchGet = PeoplePeopleGetBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.FieldMask),
    -- | Required. Comma-separated list of person fields to be included in the response. Each path should start with @person.@: for example, @person.names@ or @person.photos@.
    requestMaskIncludeField :: (Core.Maybe Core.FieldMask),
    -- | Required. The resource names of the people to provide information about. It\'s repeatable. The URL query parameter should be resourceNames=\<name1>&resourceNames=\<name2>&... - To get information about the authenticated user, specify @people\/me@. - To get information about a google account, specify @people\/{account_id}@. - To get information about a contact, specify the resource name that identifies the contact as returned by @people.connections.list@. There is a maximum of 200 resource names.
    resourceNames :: (Core.Maybe [Core.Text]),
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/CONTACT and READ/SOURCE/TYPE/PROFILE if not set.
    sources :: (Core.Maybe [PeopleGetBatchGetSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleGetBatchGet' with the minimum fields required to make a request.
newPeoplePeopleGetBatchGet ::
  PeoplePeopleGetBatchGet
newPeoplePeopleGetBatchGet =
  PeoplePeopleGetBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      personFields = Core.Nothing,
      requestMaskIncludeField = Core.Nothing,
      resourceNames = Core.Nothing,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleGetBatchGet where
  type Rs PeoplePeopleGetBatchGet = GetPeopleResponse
  type
    Scopes PeoplePeopleGetBatchGet =
      '[ Contacts'FullControl,
         Contacts'Other'Readonly,
         Contacts'Readonly,
         Directory'Readonly,
         User'Addresses'Read,
         User'Birthday'Read,
         User'Emails'Read,
         User'Gender'Read,
         User'Organization'Read,
         User'Phonenumbers'Read,
         Userinfo'Email,
         Userinfo'Profile
       ]
  requestClient PeoplePeopleGetBatchGet {..} =
    go
      xgafv
      accessToken
      callback
      personFields
      requestMaskIncludeField
      (resourceNames Core.^. Core._Default)
      (sources Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleGetBatchGetResource)
          Core.mempty
