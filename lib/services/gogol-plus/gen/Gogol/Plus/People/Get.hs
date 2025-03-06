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
-- Module      : Gogol.Plus.People.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a person\'s profile. If your app uses scope https:\/\/www.googleapis.com\/auth\/plus.login, this method is guaranteed to return ageRange and language.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.get@.
module Gogol.Plus.People.Get
  ( -- * Resource
    PlusPeopleGetResource,

    -- ** Constructing a Request
    PlusPeopleGet (..),
    newPlusPeopleGet,
  )
where

import Gogol.Plus.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plus.people.get@ method which the
-- 'PlusPeopleGet' request conforms to.
type PlusPeopleGetResource =
  "plus"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Person

-- | Get a person\'s profile. If your app uses scope https:\/\/www.googleapis.com\/auth\/plus.login, this method is guaranteed to return ageRange and language.
--
-- /See:/ 'newPlusPeopleGet' smart constructor.
newtype PlusPeopleGet = PlusPeopleGet
  { -- | The ID of the person to get the profile for. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusPeopleGet' with the minimum fields required to make a request.
newPlusPeopleGet ::
  -- |  The ID of the person to get the profile for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
  Core.Text ->
  PlusPeopleGet
newPlusPeopleGet userId = PlusPeopleGet {userId = userId}

instance Core.GoogleRequest PlusPeopleGet where
  type Rs PlusPeopleGet = Person
  type
    Scopes PlusPeopleGet =
      '[Plus'Login, Plus'Me, Userinfo'Email, Userinfo'Profile]
  requestClient PlusPeopleGet {..} =
    go userId (Core.Just Core.AltJSON) plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusPeopleGetResource)
          Core.mempty
