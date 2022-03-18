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
-- Module      : Network.Google.OAuth2.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.OAuth2.Internal.Product
  ( -- * Tokeninfo
    Tokeninfo (..),
    newTokeninfo,

    -- * Userinfo
    Userinfo (..),
    newUserinfo,
  )
where

import Network.Google.OAuth2.Internal.Sum
import qualified Network.Google.Prelude as Core

--
-- /See:/ 'newTokeninfo' smart constructor.
data Tokeninfo = Tokeninfo
  { -- | Who is the intended audience for this token. In general the same as issued_to.
    audience :: (Core.Maybe Core.Text),
    -- | The email address of the user. Present only if the email scope is present in the request.
    email :: (Core.Maybe Core.Text),
    -- | The expiry time of the token, as number of seconds left until expiry.
    expiresIn :: (Core.Maybe Core.Int32),
    -- | To whom was the token issued to. In general the same as audience.
    issuedTo :: (Core.Maybe Core.Text),
    -- | The space separated list of scopes granted to this token.
    scope :: (Core.Maybe Core.Text),
    -- | The obfuscated user id.
    userId :: (Core.Maybe Core.Text),
    -- | Boolean flag which is true if the email address is verified. Present only if the email scope is present in the request.
    verifiedEmail :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tokeninfo' with the minimum fields required to make a request.
newTokeninfo ::
  Tokeninfo
newTokeninfo =
  Tokeninfo
    { audience = Core.Nothing,
      email = Core.Nothing,
      expiresIn = Core.Nothing,
      issuedTo = Core.Nothing,
      scope = Core.Nothing,
      userId = Core.Nothing,
      verifiedEmail = Core.Nothing
    }

instance Core.FromJSON Tokeninfo where
  parseJSON =
    Core.withObject
      "Tokeninfo"
      ( \o ->
          Tokeninfo
            Core.<$> (o Core..:? "audience")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "expires_in")
            Core.<*> (o Core..:? "issued_to")
            Core.<*> (o Core..:? "scope")
            Core.<*> (o Core..:? "user_id")
            Core.<*> (o Core..:? "verified_email")
      )

instance Core.ToJSON Tokeninfo where
  toJSON Tokeninfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("audience" Core..=) Core.<$> audience,
            ("email" Core..=) Core.<$> email,
            ("expires_in" Core..=) Core.<$> expiresIn,
            ("issued_to" Core..=) Core.<$> issuedTo,
            ("scope" Core..=) Core.<$> scope,
            ("user_id" Core..=) Core.<$> userId,
            ("verified_email" Core..=) Core.<$> verifiedEmail
          ]
      )

--
-- /See:/ 'newUserinfo' smart constructor.
data Userinfo = Userinfo
  { -- | The user\'s email address.
    email :: (Core.Maybe Core.Text),
    -- | The user\'s last name.
    familyName :: (Core.Maybe Core.Text),
    -- | The user\'s gender.
    gender :: (Core.Maybe Core.Text),
    -- | The user\'s first name.
    givenName :: (Core.Maybe Core.Text),
    -- | The hosted domain e.g. example.com if the user is Google apps user.
    hd :: (Core.Maybe Core.Text),
    -- | The obfuscated ID of the user.
    id :: (Core.Maybe Core.Text),
    -- | URL of the profile page.
    link :: (Core.Maybe Core.Text),
    -- | The user\'s preferred locale.
    locale :: (Core.Maybe Core.Text),
    -- | The user\'s full name.
    name :: (Core.Maybe Core.Text),
    -- | URL of the user\'s picture image.
    picture :: (Core.Maybe Core.Text),
    -- | Boolean flag which is true if the email address is verified. Always verified because we only return the user\'s primary email address.
    verifiedEmail :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Userinfo' with the minimum fields required to make a request.
newUserinfo ::
  Userinfo
newUserinfo =
  Userinfo
    { email = Core.Nothing,
      familyName = Core.Nothing,
      gender = Core.Nothing,
      givenName = Core.Nothing,
      hd = Core.Nothing,
      id = Core.Nothing,
      link = Core.Nothing,
      locale = Core.Nothing,
      name = Core.Nothing,
      picture = Core.Nothing,
      verifiedEmail = Core.True
    }

instance Core.FromJSON Userinfo where
  parseJSON =
    Core.withObject
      "Userinfo"
      ( \o ->
          Userinfo
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "family_name")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "given_name")
            Core.<*> (o Core..:? "hd")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "picture")
            Core.<*> (o Core..:? "verified_email" Core..!= Core.True)
      )

instance Core.ToJSON Userinfo where
  toJSON Userinfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("family_name" Core..=) Core.<$> familyName,
            ("gender" Core..=) Core.<$> gender,
            ("given_name" Core..=) Core.<$> givenName,
            ("hd" Core..=) Core.<$> hd,
            ("id" Core..=) Core.<$> id,
            ("link" Core..=) Core.<$> link,
            ("locale" Core..=) Core.<$> locale,
            ("name" Core..=) Core.<$> name,
            ("picture" Core..=) Core.<$> picture,
            Core.Just ("verified_email" Core..= verifiedEmail)
          ]
      )
