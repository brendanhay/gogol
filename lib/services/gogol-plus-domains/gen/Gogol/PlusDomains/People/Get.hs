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
-- Module      : Gogol.PlusDomains.People.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a person\'s profile.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.people.get@.
module Gogol.PlusDomains.People.Get
  ( -- * Resource
    PlusDomainsPeopleGetResource,

    -- ** Constructing a Request
    newPlusDomainsPeopleGet,
    PlusDomainsPeopleGet,
  )
where

import Gogol.PlusDomains.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plusDomains.people.get@ method which the
-- 'PlusDomainsPeopleGet' request conforms to.
type PlusDomainsPeopleGetResource =
  "plusDomains"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Person

-- | Get a person\'s profile.
--
-- /See:/ 'newPlusDomainsPeopleGet' smart constructor.
newtype PlusDomainsPeopleGet = PlusDomainsPeopleGet
  { -- | The ID of the person to get the profile for. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsPeopleGet' with the minimum fields required to make a request.
newPlusDomainsPeopleGet ::
  -- |  The ID of the person to get the profile for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
  Core.Text ->
  PlusDomainsPeopleGet
newPlusDomainsPeopleGet userId = PlusDomainsPeopleGet {userId = userId}

instance Core.GoogleRequest PlusDomainsPeopleGet where
  type Rs PlusDomainsPeopleGet = Person
  type
    Scopes PlusDomainsPeopleGet =
      '[ Plus'Login,
         Plus'Me,
         Plus'Profiles'Read,
         Userinfo'Email,
         Userinfo'Profile
       ]
  requestClient PlusDomainsPeopleGet {..} =
    go
      userId
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusDomainsPeopleGetResource
          )
          Core.mempty
