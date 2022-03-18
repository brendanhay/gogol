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
-- Module      : Network.Google.Plus.People.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a person\'s profile. If your app uses scope https:\/\/www.googleapis.com\/auth\/plus.login, this method is guaranteed to return ageRange and language.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.get@.
module Network.Google.Plus.People.Get
  ( -- * Resource
    PlusPeopleGetResource,

    -- ** Constructing a Request
    newPlusPeopleGet,
    PlusPeopleGet,
  )
where

import Network.Google.Plus.Types
import qualified Network.Google.Prelude as Core

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
      '[ "https://www.googleapis.com/auth/plus.login",
         "https://www.googleapis.com/auth/plus.me",
         "https://www.googleapis.com/auth/userinfo.email",
         "https://www.googleapis.com/auth/userinfo.profile"
       ]
  requestClient PlusPeopleGet {..} =
    go userId (Core.Just Core.AltJSON) plusService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusPeopleGetResource)
          Core.mempty
