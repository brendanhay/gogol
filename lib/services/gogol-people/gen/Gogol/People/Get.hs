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
-- Module      : Gogol.People.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a person by specifying a resource name. Use @people\/me@ to indicate the authenticated user. The request returns a 400 error if \'personFields\' is not specified.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.get@.
module Gogol.People.Get
  ( -- * Resource
    PeoplePeopleGetResource,

    -- ** Constructing a Request
    newPeoplePeopleGet,
    PeoplePeopleGet,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.people.get@ method which the
-- 'PeoplePeopleGet' request conforms to.
type PeoplePeopleGetResource =
  "v1"
    Core.:> Core.Capture "resourceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "personFields" Core.GFieldMask
    Core.:> Core.QueryParam
              "requestMask.includeField"
              Core.GFieldMask
    Core.:> Core.QueryParams "sources" PeopleGetSources
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Person

-- | Provides information about a person by specifying a resource name. Use @people\/me@ to indicate the authenticated user. The request returns a 400 error if \'personFields\' is not specified.
--
-- /See:/ 'newPeoplePeopleGet' smart constructor.
data PeoplePeopleGet = PeoplePeopleGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
    personFields :: (Core.Maybe Core.GFieldMask),
    -- | Required. Comma-separated list of person fields to be included in the response. Each path should start with @person.@: for example, @person.names@ or @person.photos@.
    requestMaskIncludeField :: (Core.Maybe Core.GFieldMask),
    -- | Required. The resource name of the person to provide information about. - To get information about the authenticated user, specify @people\/me@. - To get information about a google account, specify @people\/{account_id}@. - To get information about a contact, specify the resource name that identifies the contact as returned by @people.connections.list@.
    resourceName :: Core.Text,
    -- | Optional. A mask of what source types to return. Defaults to READ/SOURCE/TYPE/PROFILE and READ/SOURCE/TYPE/CONTACT if not set.
    sources :: (Core.Maybe [PeopleGetSources]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleGet' with the minimum fields required to make a request.
newPeoplePeopleGet ::
  -- |  Required. The resource name of the person to provide information about. - To get information about the authenticated user, specify @people\/me@. - To get information about a google account, specify @people\/{account_id}@. - To get information about a contact, specify the resource name that identifies the contact as returned by @people.connections.list@. See 'resourceName'.
  Core.Text ->
  PeoplePeopleGet
newPeoplePeopleGet resourceName =
  PeoplePeopleGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      personFields = Core.Nothing,
      requestMaskIncludeField = Core.Nothing,
      resourceName = resourceName,
      sources = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleGet where
  type Rs PeoplePeopleGet = Person
  type
    Scopes PeoplePeopleGet =
      '[ Contacts'FullControl,
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
  requestClient PeoplePeopleGet {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      personFields
      requestMaskIncludeField
      (sources Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PeoplePeopleGetResource)
          Core.mempty
