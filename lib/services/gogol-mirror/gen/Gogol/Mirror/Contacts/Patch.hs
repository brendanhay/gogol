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
-- Module      : Gogol.Mirror.Contacts.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a contact in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.patch@.
module Gogol.Mirror.Contacts.Patch
  ( -- * Resource
    MirrorContactsPatchResource,

    -- ** Constructing a Request
    newMirrorContactsPatch,
    MirrorContactsPatch,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.contacts.patch@ method which the
-- 'MirrorContactsPatch' request conforms to.
type MirrorContactsPatchResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Contact
    Core.:> Core.Patch '[Core.JSON] Contact

-- | Updates a contact in place. This method supports patch semantics.
--
-- /See:/ 'newMirrorContactsPatch' smart constructor.
data MirrorContactsPatch = MirrorContactsPatch
  { -- | The ID of the contact.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Contact
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsPatch' with the minimum fields required to make a request.
newMirrorContactsPatch ::
  -- |  The ID of the contact. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Contact ->
  MirrorContactsPatch
newMirrorContactsPatch id payload =
  MirrorContactsPatch {id = id, payload = payload}

instance Core.GoogleRequest MirrorContactsPatch where
  type Rs MirrorContactsPatch = Contact
  type
    Scopes MirrorContactsPatch =
      '["https://www.googleapis.com/auth/glass.timeline"]
  requestClient MirrorContactsPatch {..} =
    go
      id
      (Core.Just Core.AltJSON)
      payload
      mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorContactsPatchResource
          )
          Core.mempty
