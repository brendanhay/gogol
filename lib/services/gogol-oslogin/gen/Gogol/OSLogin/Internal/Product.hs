{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.OSLogin.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.OSLogin.Internal.Product
  ( -- * Empty
    Empty (..),
    newEmpty,

    -- * ImportSshPublicKeyResponse
    ImportSshPublicKeyResponse (..),
    newImportSshPublicKeyResponse,

    -- * LoginProfile
    LoginProfile (..),
    newLoginProfile,

    -- * LoginProfile_SshPublicKeys
    LoginProfile_SshPublicKeys (..),
    newLoginProfile_SshPublicKeys,

    -- * PosixAccount
    PosixAccount (..),
    newPosixAccount,

    -- * SshPublicKey
    SshPublicKey (..),
    newSshPublicKey,
  )
where

import Gogol.OSLogin.Internal.Sum
import Gogol.Prelude qualified as Core

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A response message for importing an SSH public key.
--
-- /See:/ 'newImportSshPublicKeyResponse' smart constructor.
data ImportSshPublicKeyResponse = ImportSshPublicKeyResponse
  { -- | Detailed information about import results.
    details :: (Core.Maybe Core.Text),
    -- | The login profile information for the user.
    loginProfile :: (Core.Maybe LoginProfile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportSshPublicKeyResponse' with the minimum fields required to make a request.
newImportSshPublicKeyResponse ::
  ImportSshPublicKeyResponse
newImportSshPublicKeyResponse =
  ImportSshPublicKeyResponse
    { details = Core.Nothing,
      loginProfile = Core.Nothing
    }

instance Core.FromJSON ImportSshPublicKeyResponse where
  parseJSON =
    Core.withObject
      "ImportSshPublicKeyResponse"
      ( \o ->
          ImportSshPublicKeyResponse
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "loginProfile")
      )

instance Core.ToJSON ImportSshPublicKeyResponse where
  toJSON ImportSshPublicKeyResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("loginProfile" Core..=) Core.<$> loginProfile
          ]
      )

-- | The user profile information used for logging in to a virtual machine on Google Compute Engine.
--
-- /See:/ 'newLoginProfile' smart constructor.
data LoginProfile = LoginProfile
  { -- | Required. A unique user ID.
    name :: (Core.Maybe Core.Text),
    -- | The list of POSIX accounts associated with the user.
    posixAccounts :: (Core.Maybe [PosixAccount]),
    -- | A map from SSH public key fingerprint to the associated key object.
    sshPublicKeys :: (Core.Maybe LoginProfile_SshPublicKeys)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoginProfile' with the minimum fields required to make a request.
newLoginProfile ::
  LoginProfile
newLoginProfile =
  LoginProfile
    { name = Core.Nothing,
      posixAccounts = Core.Nothing,
      sshPublicKeys = Core.Nothing
    }

instance Core.FromJSON LoginProfile where
  parseJSON =
    Core.withObject
      "LoginProfile"
      ( \o ->
          LoginProfile
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "posixAccounts")
            Core.<*> (o Core..:? "sshPublicKeys")
      )

instance Core.ToJSON LoginProfile where
  toJSON LoginProfile {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("posixAccounts" Core..=) Core.<$> posixAccounts,
            ("sshPublicKeys" Core..=) Core.<$> sshPublicKeys
          ]
      )

-- | A map from SSH public key fingerprint to the associated key object.
--
-- /See:/ 'newLoginProfile_SshPublicKeys' smart constructor.
newtype LoginProfile_SshPublicKeys = LoginProfile_SshPublicKeys
  { additional :: (Core.HashMap Core.Text SshPublicKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoginProfile_SshPublicKeys' with the minimum fields required to make a request.
newLoginProfile_SshPublicKeys ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SshPublicKey ->
  LoginProfile_SshPublicKeys
newLoginProfile_SshPublicKeys additional =
  LoginProfile_SshPublicKeys {additional = additional}

instance Core.FromJSON LoginProfile_SshPublicKeys where
  parseJSON =
    Core.withObject
      "LoginProfile_SshPublicKeys"
      ( \o ->
          LoginProfile_SshPublicKeys Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LoginProfile_SshPublicKeys where
  toJSON LoginProfile_SshPublicKeys {..} = Core.toJSON additional

-- | The POSIX account information associated with a Google account.
--
-- /See:/ 'newPosixAccount' smart constructor.
data PosixAccount = PosixAccount
  { -- | Output only. A POSIX account identifier.
    accountId :: (Core.Maybe Core.Text),
    -- | The GECOS (user information) entry for this account.
    gecos :: (Core.Maybe Core.Text),
    -- | The default group ID.
    gid :: (Core.Maybe Core.Int64),
    -- | The path to the home directory for this account.
    homeDirectory :: (Core.Maybe Core.Text),
    -- | Output only. The canonical resource name.
    name :: (Core.Maybe Core.Text),
    -- | The operating system type where this account applies.
    operatingSystemType :: (Core.Maybe PosixAccount_OperatingSystemType),
    -- | Only one POSIX account can be marked as primary.
    primary :: (Core.Maybe Core.Bool),
    -- | The path to the logic shell for this account.
    shell :: (Core.Maybe Core.Text),
    -- | System identifier for which account the username or uid applies to. By default, the empty value is used.
    systemId :: (Core.Maybe Core.Text),
    -- | The user ID.
    uid :: (Core.Maybe Core.Int64),
    -- | The username of the POSIX account.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PosixAccount' with the minimum fields required to make a request.
newPosixAccount ::
  PosixAccount
newPosixAccount =
  PosixAccount
    { accountId = Core.Nothing,
      gecos = Core.Nothing,
      gid = Core.Nothing,
      homeDirectory = Core.Nothing,
      name = Core.Nothing,
      operatingSystemType = Core.Nothing,
      primary = Core.Nothing,
      shell = Core.Nothing,
      systemId = Core.Nothing,
      uid = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON PosixAccount where
  parseJSON =
    Core.withObject
      "PosixAccount"
      ( \o ->
          PosixAccount
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "gecos")
            Core.<*> (o Core..:? "gid" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "homeDirectory")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operatingSystemType")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "shell")
            Core.<*> (o Core..:? "systemId")
            Core.<*> (o Core..:? "uid" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON PosixAccount where
  toJSON PosixAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("gecos" Core..=) Core.<$> gecos,
            ("gid" Core..=) Core.. Core.AsText Core.<$> gid,
            ("homeDirectory" Core..=) Core.<$> homeDirectory,
            ("name" Core..=) Core.<$> name,
            ("operatingSystemType" Core..=) Core.<$> operatingSystemType,
            ("primary" Core..=) Core.<$> primary,
            ("shell" Core..=) Core.<$> shell,
            ("systemId" Core..=) Core.<$> systemId,
            ("uid" Core..=) Core.. Core.AsText Core.<$> uid,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | The SSH public key information associated with a Google account.
--
-- /See:/ 'newSshPublicKey' smart constructor.
data SshPublicKey = SshPublicKey
  { -- | An expiration time in microseconds since epoch.
    expirationTimeUsec :: (Core.Maybe Core.Int64),
    -- | Output only. The SHA-256 fingerprint of the SSH public key.
    fingerprint :: (Core.Maybe Core.Text),
    -- | Public key text in SSH format, defined by RFC4253 section 6.6.
    key :: (Core.Maybe Core.Text),
    -- | Output only. The canonical resource name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SshPublicKey' with the minimum fields required to make a request.
newSshPublicKey ::
  SshPublicKey
newSshPublicKey =
  SshPublicKey
    { expirationTimeUsec = Core.Nothing,
      fingerprint = Core.Nothing,
      key = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON SshPublicKey where
  parseJSON =
    Core.withObject
      "SshPublicKey"
      ( \o ->
          SshPublicKey
            Core.<$> ( o
                         Core..:? "expirationTimeUsec"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "fingerprint")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SshPublicKey where
  toJSON SshPublicKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationTimeUsec" Core..=)
              Core.. Core.AsText
              Core.<$> expirationTimeUsec,
            ("fingerprint" Core..=) Core.<$> fingerprint,
            ("key" Core..=) Core.<$> key,
            ("name" Core..=) Core.<$> name
          ]
      )
