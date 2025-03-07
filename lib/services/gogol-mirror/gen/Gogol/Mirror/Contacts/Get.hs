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
-- Module      : Gogol.Mirror.Contacts.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single contact by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.get@.
module Gogol.Mirror.Contacts.Get
  ( -- * Resource
    MirrorContactsGetResource,

    -- ** Constructing a Request
    MirrorContactsGet (..),
    newMirrorContactsGet,
  )
where

import Gogol.Mirror.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @mirror.contacts.get@ method which the
-- 'MirrorContactsGet' request conforms to.
type MirrorContactsGetResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Contact

-- | Gets a single contact by ID.
--
-- /See:/ 'newMirrorContactsGet' smart constructor.
newtype MirrorContactsGet = MirrorContactsGet
  { -- | The ID of the contact.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsGet' with the minimum fields required to make a request.
newMirrorContactsGet ::
  -- |  The ID of the contact. See 'id'.
  Core.Text ->
  MirrorContactsGet
newMirrorContactsGet id = MirrorContactsGet {id = id}

instance Core.GoogleRequest MirrorContactsGet where
  type Rs MirrorContactsGet = Contact
  type Scopes MirrorContactsGet = '[Glass'Timeline]
  requestClient MirrorContactsGet {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorContactsGetResource)
          Core.mempty
