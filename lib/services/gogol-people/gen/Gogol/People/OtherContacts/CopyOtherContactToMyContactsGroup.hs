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
-- Module      : Gogol.People.OtherContacts.CopyOtherContactToMyContactsGroup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies an \"Other contact\" to a new contact in the user\'s \"myContacts\" group Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.otherContacts.copyOtherContactToMyContactsGroup@.
module Gogol.People.OtherContacts.CopyOtherContactToMyContactsGroup
  ( -- * Resource
    PeopleOtherContactsCopyOtherContactToMyContactsGroupResource,

    -- ** Constructing a Request
    PeopleOtherContactsCopyOtherContactToMyContactsGroup (..),
    newPeopleOtherContactsCopyOtherContactToMyContactsGroup,
  )
where

import Gogol.People.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @people.otherContacts.copyOtherContactToMyContactsGroup@ method which the
-- 'PeopleOtherContactsCopyOtherContactToMyContactsGroup' request conforms to.
type PeopleOtherContactsCopyOtherContactToMyContactsGroupResource =
  "v1"
    Core.:> Core.CaptureMode
              "resourceName"
              "copyOtherContactToMyContactsGroup"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CopyOtherContactToMyContactsGroupRequest
    Core.:> Core.Post '[Core.JSON] Person

-- | Copies an \"Other contact\" to a new contact in the user\'s \"myContacts\" group Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeopleOtherContactsCopyOtherContactToMyContactsGroup' smart constructor.
data PeopleOtherContactsCopyOtherContactToMyContactsGroup = PeopleOtherContactsCopyOtherContactToMyContactsGroup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CopyOtherContactToMyContactsGroupRequest,
    -- | Required. The resource name of the \"Other contact\" to copy.
    resourceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleOtherContactsCopyOtherContactToMyContactsGroup' with the minimum fields required to make a request.
newPeopleOtherContactsCopyOtherContactToMyContactsGroup ::
  -- |  Multipart request metadata. See 'payload'.
  CopyOtherContactToMyContactsGroupRequest ->
  -- |  Required. The resource name of the \"Other contact\" to copy. See 'resourceName'.
  Core.Text ->
  PeopleOtherContactsCopyOtherContactToMyContactsGroup
newPeopleOtherContactsCopyOtherContactToMyContactsGroup
  payload
  resourceName =
    PeopleOtherContactsCopyOtherContactToMyContactsGroup
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resourceName = resourceName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    PeopleOtherContactsCopyOtherContactToMyContactsGroup
  where
  type
    Rs PeopleOtherContactsCopyOtherContactToMyContactsGroup =
      Person
  type
    Scopes PeopleOtherContactsCopyOtherContactToMyContactsGroup =
      '[Contacts'FullControl, Contacts'Other'Readonly]
  requestClient
    PeopleOtherContactsCopyOtherContactToMyContactsGroup {..} =
      go
        resourceName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        peopleService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  PeopleOtherContactsCopyOtherContactToMyContactsGroupResource
            )
            Core.mempty
