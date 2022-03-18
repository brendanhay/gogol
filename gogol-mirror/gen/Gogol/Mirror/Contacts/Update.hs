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
-- Module      : Gogol.Mirror.Contacts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a contact in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.update@.
module Gogol.Mirror.Contacts.Update
  ( -- * Resource
    MirrorContactsUpdateResource,

    -- ** Constructing a Request
    newMirrorContactsUpdate,
    MirrorContactsUpdate,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.contacts.update@ method which the
-- 'MirrorContactsUpdate' request conforms to.
type MirrorContactsUpdateResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Contact
    Core.:> Core.Put '[Core.JSON] Contact

-- | Updates a contact in place.
--
-- /See:/ 'newMirrorContactsUpdate' smart constructor.
data MirrorContactsUpdate = MirrorContactsUpdate
  { -- | The ID of the contact.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Contact
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsUpdate' with the minimum fields required to make a request.
newMirrorContactsUpdate ::
  -- |  The ID of the contact. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Contact ->
  MirrorContactsUpdate
newMirrorContactsUpdate id payload =
  MirrorContactsUpdate {id = id, payload = payload}

instance Core.GoogleRequest MirrorContactsUpdate where
  type Rs MirrorContactsUpdate = Contact
  type
    Scopes MirrorContactsUpdate =
      '["https://www.googleapis.com/auth/glass.timeline"]
  requestClient MirrorContactsUpdate {..} =
    go
      id
      (Core.Just Core.AltJSON)
      payload
      mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorContactsUpdateResource
          )
          Core.mempty
