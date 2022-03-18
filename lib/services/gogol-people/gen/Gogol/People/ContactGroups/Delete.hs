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
-- Module      : Gogol.People.ContactGroups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an existing contact group owned by the authenticated user by specifying a contact group resource name. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.contactGroups.delete@.
module Gogol.People.ContactGroups.Delete
    (
    -- * Resource
      PeopleContactGroupsDeleteResource

    -- ** Constructing a Request
    , newPeopleContactGroupsDelete
    , PeopleContactGroupsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.People.Types

-- | A resource alias for @people.contactGroups.delete@ method which the
-- 'PeopleContactGroupsDelete' request conforms to.
type PeopleContactGroupsDeleteResource =
     "v1" Core.:>
       Core.Capture "resourceName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "deleteContacts" Core.Bool Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Delete an existing contact group owned by the authenticated user by specifying a contact group resource name. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeopleContactGroupsDelete' smart constructor.
data PeopleContactGroupsDelete = PeopleContactGroupsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Set to true to also delete the contacts in the specified group.
    , deleteContacts :: (Core.Maybe Core.Bool)
      -- | Required. The resource name of the contact group to delete.
    , resourceName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleContactGroupsDelete' with the minimum fields required to make a request.
newPeopleContactGroupsDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the contact group to delete. See 'resourceName'.
    -> PeopleContactGroupsDelete
newPeopleContactGroupsDelete resourceName =
  PeopleContactGroupsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , deleteContacts = Core.Nothing
    , resourceName = resourceName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeopleContactGroupsDelete
         where
        type Rs PeopleContactGroupsDelete = Empty
        type Scopes PeopleContactGroupsDelete =
             '["https://www.googleapis.com/auth/contacts"]
        requestClient PeopleContactGroupsDelete{..}
          = go resourceName xgafv accessToken callback
              deleteContacts
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              peopleService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PeopleContactGroupsDeleteResource)
                      Core.mempty

