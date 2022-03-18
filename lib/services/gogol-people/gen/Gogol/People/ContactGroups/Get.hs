{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.People.ContactGroups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific contact group owned by the authenticated user by specifying a contact group resource name.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.get@.
module Gogol.People.ContactGroups.Get
    (
    -- * Resource
      PeopleContactGroupsGetResource

    -- ** Constructing a Request
    , newPeopleContactGroupsGet
    , PeopleContactGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.People.Types

-- | A resource alias for @people.contactGroups.get@ method which the
-- 'PeopleContactGroupsGet' request conforms to.
type PeopleContactGroupsGetResource =
     "v1" Core.:>
       Core.Capture "resourceName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "groupFields" Core.GFieldMask Core.:>
                 Core.QueryParam "maxMembers" Core.Int32 Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ContactGroup

-- | Get a specific contact group owned by the authenticated user by specifying a contact group resource name.
--
-- /See:/ 'newPeopleContactGroupsGet' smart constructor.
data PeopleContactGroupsGet = PeopleContactGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A field mask to restrict which fields on the group are returned. Defaults to @metadata@, @groupType@, @memberCount@, and @name@ if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name
    , groupFields :: (Core.Maybe Core.GFieldMask)
      -- | Optional. Specifies the maximum number of members to return. Defaults to 0 if not set, which will return zero members.
    , maxMembers :: (Core.Maybe Core.Int32)
      -- | Required. The resource name of the contact group to get.
    , resourceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsGet' with the minimum fields required to make a request.
newPeopleContactGroupsGet 
    ::  Core.Text
       -- ^  Required. The resource name of the contact group to get. See 'resourceName'.
    -> PeopleContactGroupsGet
newPeopleContactGroupsGet resourceName =
  PeopleContactGroupsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , groupFields = Core.Nothing
    , maxMembers = Core.Nothing
    , resourceName = resourceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeopleContactGroupsGet
         where
        type Rs PeopleContactGroupsGet = ContactGroup
        type Scopes PeopleContactGroupsGet =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly"]
        requestClient PeopleContactGroupsGet{..}
          = go resourceName xgafv accessToken callback
              groupFields
              maxMembers
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              peopleService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PeopleContactGroupsGetResource)
                      Core.mempty

