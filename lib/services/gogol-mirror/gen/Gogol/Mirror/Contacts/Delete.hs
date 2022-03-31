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
-- Module      : Gogol.Mirror.Contacts.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.delete@.
module Gogol.Mirror.Contacts.Delete
  ( -- * Resource
    MirrorContactsDeleteResource,

    -- ** Constructing a Request
    newMirrorContactsDelete,
    MirrorContactsDelete,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.contacts.delete@ method which the
-- 'MirrorContactsDelete' request conforms to.
type MirrorContactsDeleteResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a contact.
--
-- /See:/ 'newMirrorContactsDelete' smart constructor.
newtype MirrorContactsDelete = MirrorContactsDelete
  { -- | The ID of the contact.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsDelete' with the minimum fields required to make a request.
newMirrorContactsDelete ::
  -- |  The ID of the contact. See 'id'.
  Core.Text ->
  MirrorContactsDelete
newMirrorContactsDelete id = MirrorContactsDelete {id = id}

instance Core.GoogleRequest MirrorContactsDelete where
  type Rs MirrorContactsDelete = ()
  type Scopes MirrorContactsDelete = '[Glass'Timeline]
  requestClient MirrorContactsDelete {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorContactsDeleteResource
          )
          Core.mempty
