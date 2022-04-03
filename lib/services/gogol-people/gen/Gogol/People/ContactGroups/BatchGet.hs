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
-- Module      : Gogol.People.ContactGroups.BatchGet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a list of contact groups owned by the authenticated user by specifying a list of contact group resource names.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.batchGet@.
module Gogol.People.ContactGroups.BatchGet
  ( -- * Resource
    PeopleContactGroupsBatchGetResource,

    -- ** Constructing a Request
    PeopleContactGroupsBatchGet (..),
    newPeopleContactGroupsBatchGet,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.contactGroups.batchGet@ method which the
-- 'PeopleContactGroupsBatchGet' request conforms to.
type PeopleContactGroupsBatchGetResource =
  "v1"
    Core.:> "contactGroups:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "groupFields" Core.GFieldMask
    Core.:> Core.QueryParam "maxMembers" Core.Int32
    Core.:> Core.QueryParams "resourceNames" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BatchGetContactGroupsResponse

-- | Get a list of contact groups owned by the authenticated user by specifying a list of contact group resource names.
--
-- /See:/ 'newPeopleContactGroupsBatchGet' smart constructor.
data PeopleContactGroupsBatchGet = PeopleContactGroupsBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A field mask to restrict which fields on the group are returned. Defaults to @metadata@, @groupType@, @memberCount@, and @name@ if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name
    groupFields :: (Core.Maybe Core.GFieldMask),
    -- | Optional. Specifies the maximum number of members to return for each group. Defaults to 0 if not set, which will return zero members.
    maxMembers :: (Core.Maybe Core.Int32),
    -- | Required. The resource names of the contact groups to get. There is a maximum of 200 resource names.
    resourceNames :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsBatchGet' with the minimum fields required to make a request.
newPeopleContactGroupsBatchGet ::
  PeopleContactGroupsBatchGet
newPeopleContactGroupsBatchGet =
  PeopleContactGroupsBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupFields = Core.Nothing,
      maxMembers = Core.Nothing,
      resourceNames = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PeopleContactGroupsBatchGet
  where
  type
    Rs PeopleContactGroupsBatchGet =
      BatchGetContactGroupsResponse
  type
    Scopes PeopleContactGroupsBatchGet =
      '[Contacts'FullControl, Contacts'Readonly]
  requestClient PeopleContactGroupsBatchGet {..} =
    go
      xgafv
      accessToken
      callback
      groupFields
      maxMembers
      (resourceNames Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PeopleContactGroupsBatchGetResource
          )
          Core.mempty
