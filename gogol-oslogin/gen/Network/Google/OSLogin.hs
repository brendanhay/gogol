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
-- Module      : Network.Google.OSLogin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use OS Login to manage access to your VM instances using IAM roles.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference>
module Network.Google.OSLogin
  ( -- * Configuration
    oSLoginService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    computeScope,
    computeReadOnlyScope,

    -- * Resources

    -- ** oslogin.users.getLoginProfile
    OSLoginUsersGetLoginProfileResource,
    newOSLoginUsersGetLoginProfile,
    OSLoginUsersGetLoginProfile,

    -- ** oslogin.users.importSshPublicKey
    OSLoginUsersImportSshPublicKeyResource,
    newOSLoginUsersImportSshPublicKey,
    OSLoginUsersImportSshPublicKey,

    -- ** oslogin.users.projects.delete
    OSLoginUsersProjectsDeleteResource,
    newOSLoginUsersProjectsDelete,
    OSLoginUsersProjectsDelete,

    -- ** oslogin.users.sshPublicKeys.create
    OSLoginUsersSshPublicKeysCreateResource,
    newOSLoginUsersSshPublicKeysCreate,
    OSLoginUsersSshPublicKeysCreate,

    -- ** oslogin.users.sshPublicKeys.delete
    OSLoginUsersSshPublicKeysDeleteResource,
    newOSLoginUsersSshPublicKeysDelete,
    OSLoginUsersSshPublicKeysDelete,

    -- ** oslogin.users.sshPublicKeys.get
    OSLoginUsersSshPublicKeysGetResource,
    newOSLoginUsersSshPublicKeysGet,
    OSLoginUsersSshPublicKeysGet,

    -- ** oslogin.users.sshPublicKeys.patch
    OSLoginUsersSshPublicKeysPatchResource,
    newOSLoginUsersSshPublicKeysPatch,
    OSLoginUsersSshPublicKeysPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ImportSshPublicKeyResponse
    ImportSshPublicKeyResponse (..),
    newImportSshPublicKeyResponse,

    -- ** LoginProfile
    LoginProfile (..),
    newLoginProfile,

    -- ** LoginProfile_SshPublicKeys
    LoginProfile_SshPublicKeys (..),
    newLoginProfile_SshPublicKeys,

    -- ** PosixAccount
    PosixAccount (..),
    newPosixAccount,

    -- ** PosixAccount_OperatingSystemType
    PosixAccount_OperatingSystemType (..),

    -- ** SshPublicKey
    SshPublicKey (..),
    newSshPublicKey,
  )
where

import Network.Google.OSLogin.Types
import Network.Google.OSLogin.Users.GetLoginProfile
import Network.Google.OSLogin.Users.ImportSshPublicKey
import Network.Google.OSLogin.Users.Projects.Delete
import Network.Google.OSLogin.Users.SshPublicKeys.Create
import Network.Google.OSLogin.Users.SshPublicKeys.Delete
import Network.Google.OSLogin.Users.SshPublicKeys.Get
import Network.Google.OSLogin.Users.SshPublicKeys.Patch
