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
-- Module      : Gogol.Mirror.Contacts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of contacts for the authenticated user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.list@.
module Gogol.Mirror.Contacts.List
  ( -- * Resource
    MirrorContactsListResource,

    -- ** Constructing a Request
    MirrorContactsList (..),
    newMirrorContactsList,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.contacts.list@ method which the
-- 'MirrorContactsList' request conforms to.
type MirrorContactsListResource =
  "mirror"
    Core.:> "v1"
    Core.:> "contacts"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ContactsListResponse

-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ 'newMirrorContactsList' smart constructor.
data MirrorContactsList = MirrorContactsList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorContactsList' with the minimum fields required to make a request.
newMirrorContactsList ::
  MirrorContactsList
newMirrorContactsList = MirrorContactsList

instance Core.GoogleRequest MirrorContactsList where
  type Rs MirrorContactsList = ContactsListResponse
  type Scopes MirrorContactsList = '[Glass'Timeline]
  requestClient MirrorContactsList {} =
    go (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorContactsListResource)
          Core.mempty
