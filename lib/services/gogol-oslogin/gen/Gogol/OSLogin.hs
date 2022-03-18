{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.OSLogin
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use OS Login to manage access to your VM instances using IAM roles.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference>
module Gogol.OSLogin
    (
    -- * Configuration
      oSLoginService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudPlatformReadOnlyScope
    , computeScope
    , computeReadOnlyScope

    -- * Resources

    -- ** oslogin.users.getLoginProfile
    , OSLoginUsersGetLoginProfileResource
    , newOSLoginUsersGetLoginProfile
    , OSLoginUsersGetLoginProfile

    -- ** oslogin.users.importSshPublicKey
    , OSLoginUsersImportSshPublicKeyResource
    , newOSLoginUsersImportSshPublicKey
    , OSLoginUsersImportSshPublicKey

    -- ** oslogin.users.projects.delete
    , OSLoginUsersProjectsDeleteResource
    , newOSLoginUsersProjectsDelete
    , OSLoginUsersProjectsDelete

    -- ** oslogin.users.sshPublicKeys.create
    , OSLoginUsersSshPublicKeysCreateResource
    , newOSLoginUsersSshPublicKeysCreate
    , OSLoginUsersSshPublicKeysCreate

    -- ** oslogin.users.sshPublicKeys.delete
    , OSLoginUsersSshPublicKeysDeleteResource
    , newOSLoginUsersSshPublicKeysDelete
    , OSLoginUsersSshPublicKeysDelete

    -- ** oslogin.users.sshPublicKeys.get
    , OSLoginUsersSshPublicKeysGetResource
    , newOSLoginUsersSshPublicKeysGet
    , OSLoginUsersSshPublicKeysGet

    -- ** oslogin.users.sshPublicKeys.patch
    , OSLoginUsersSshPublicKeysPatchResource
    , newOSLoginUsersSshPublicKeysPatch
    , OSLoginUsersSshPublicKeysPatch

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ImportSshPublicKeyResponse
    , ImportSshPublicKeyResponse (..)
    , newImportSshPublicKeyResponse

    -- ** LoginProfile
    , LoginProfile (..)
    , newLoginProfile

    -- ** LoginProfile_SshPublicKeys
    , LoginProfile_SshPublicKeys (..)
    , newLoginProfile_SshPublicKeys

    -- ** PosixAccount
    , PosixAccount (..)
    , newPosixAccount

    -- ** PosixAccount_OperatingSystemType
    , PosixAccount_OperatingSystemType (..)

    -- ** SshPublicKey
    , SshPublicKey (..)
    , newSshPublicKey
    ) where

import Gogol.OSLogin.Types
import Gogol.OSLogin.Users.GetLoginProfile
import Gogol.OSLogin.Users.ImportSshPublicKey
import Gogol.OSLogin.Users.Projects.Delete
import Gogol.OSLogin.Users.SshPublicKeys.Create
import Gogol.OSLogin.Users.SshPublicKeys.Delete
import Gogol.OSLogin.Users.SshPublicKeys.Get
import Gogol.OSLogin.Users.SshPublicKeys.Patch
