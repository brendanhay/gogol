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
-- Module      : Gogol.People.DeleteContact
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a contact person. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.deleteContact@.
module Gogol.People.DeleteContact
  ( -- * Resource
    PeoplePeopleDeleteContactResource,

    -- ** Constructing a Request
    PeoplePeopleDeleteContact (..),
    newPeoplePeopleDeleteContact,
  )
where

import Gogol.People.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @people.people.deleteContact@ method which the
-- 'PeoplePeopleDeleteContact' request conforms to.
type PeoplePeopleDeleteContactResource =
  "v1"
    Core.:> Core.CaptureMode
              "resourceName"
              "deleteContact"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Delete a contact person. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.
--
-- /See:/ 'newPeoplePeopleDeleteContact' smart constructor.
data PeoplePeopleDeleteContact = PeoplePeopleDeleteContact
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the contact to delete.
    resourceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeoplePeopleDeleteContact' with the minimum fields required to make a request.
newPeoplePeopleDeleteContact ::
  -- |  Required. The resource name of the contact to delete. See 'resourceName'.
  Core.Text ->
  PeoplePeopleDeleteContact
newPeoplePeopleDeleteContact resourceName =
  PeoplePeopleDeleteContact
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      resourceName = resourceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PeoplePeopleDeleteContact where
  type Rs PeoplePeopleDeleteContact = Empty
  type
    Scopes PeoplePeopleDeleteContact =
      '[Contacts'FullControl]
  requestClient PeoplePeopleDeleteContact {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      peopleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PeoplePeopleDeleteContactResource
          )
          Core.mempty
