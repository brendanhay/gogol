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
-- Module      : Gogol.Mirror.Contacts.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.insert@.
module Gogol.Mirror.Contacts.Insert
  ( -- * Resource
    MirrorContactsInsertResource,

    -- ** Constructing a Request
    newMirrorContactsInsert,
    MirrorContactsInsert,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.contacts.insert@ method which the
-- 'MirrorContactsInsert' request conforms to.
type MirrorContactsInsertResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Contact
    Core.:> Core.Post '[Core.JSON] Contact

-- | Inserts a new contact.
--
-- /See:/ 'newMirrorContactsInsert' smart constructor.
newtype MirrorContactsInsert = MirrorContactsInsert
  { -- | Multipart request metadata.
    payload :: Contact
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsInsert' with the minimum fields required to make a request.
newMirrorContactsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Contact ->
  MirrorContactsInsert
newMirrorContactsInsert payload = MirrorContactsInsert {payload = payload}

instance Core.GoogleRequest MirrorContactsInsert where
  type Rs MirrorContactsInsert = Contact
  type Scopes MirrorContactsInsert = '[Glass'Timeline]
  requestClient MirrorContactsInsert {..} =
    go (Core.Just Core.AltJSON) payload mirrorService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MirrorContactsInsertResource
          )
          Core.mempty
