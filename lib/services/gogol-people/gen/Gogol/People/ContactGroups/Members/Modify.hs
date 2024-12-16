{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.People.ContactGroups.Members.Modify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the members of a contact group owned by the authenticated user. The only system contact groups that can have members added are @contactGroups\/myContacts@ and @contactGroups\/starred@. Other system contact groups are deprecated and can only have contacts removed.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.members.modify@.
module Gogol.People.ContactGroups.Members.Modify
    (
    -- * Resource
      PeopleContactGroupsMembersModifyResource

    -- ** Constructing a Request
    , PeopleContactGroupsMembersModify (..)
    , newPeopleContactGroupsMembersModify
    ) where

import qualified Gogol.Prelude as Core
import Gogol.People.Types

-- | A resource alias for @people.contactGroups.members.modify@ method which the
-- 'PeopleContactGroupsMembersModify' request conforms to.
type PeopleContactGroupsMembersModifyResource =
     "v1" Core.:>
       Core.Capture "resourceName" Core.Text Core.:>
         "members:modify" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         ModifyContactGroupMembersRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           ModifyContactGroupMembersResponse

-- | Modify the members of a contact group owned by the authenticated user. The only system contact groups that can have members added are @contactGroups\/myContacts@ and @contactGroups\/starred@. Other system contact groups are deprecated and can only have contacts removed.
--
-- /See:/ 'newPeopleContactGroupsMembersModify' smart constructor.
data PeopleContactGroupsMembersModify = PeopleContactGroupsMembersModify
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ModifyContactGroupMembersRequest
      -- | Required. The resource name of the contact group to modify.
    , resourceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsMembersModify' with the minimum fields required to make a request.
newPeopleContactGroupsMembersModify 
    ::  ModifyContactGroupMembersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The resource name of the contact group to modify. See 'resourceName'.
    -> PeopleContactGroupsMembersModify
newPeopleContactGroupsMembersModify payload resourceName =
  PeopleContactGroupsMembersModify
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resourceName = resourceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PeopleContactGroupsMembersModify
         where
        type Rs PeopleContactGroupsMembersModify =
             ModifyContactGroupMembersResponse
        type Scopes PeopleContactGroupsMembersModify =
             '[Contacts'FullControl]
        requestClient PeopleContactGroupsMembersModify{..}
          = go resourceName xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              peopleService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PeopleContactGroupsMembersModifyResource)
                      Core.mempty

