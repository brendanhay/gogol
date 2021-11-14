{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.OSLogin
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use OS Login to manage access to your VM instances using IAM
-- roles.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference>
module Network.Google.OSLogin
    (
    -- * Service Configuration
      oSLoginService

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformScope

    -- * API Declaration
    , OSLoginAPI

    -- * Resources

    -- ** oslogin.users.getLoginProfile
    , module Network.Google.Resource.OSLogin.Users.GetLoginProFile

    -- ** oslogin.users.importSshPublicKey
    , module Network.Google.Resource.OSLogin.Users.ImportSSHPublicKey

    -- ** oslogin.users.projects.delete
    , module Network.Google.Resource.OSLogin.Users.Projects.Delete

    -- ** oslogin.users.sshPublicKeys.delete
    , module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Delete

    -- ** oslogin.users.sshPublicKeys.get
    , module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Get

    -- ** oslogin.users.sshPublicKeys.patch
    , module Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Patch

    -- * Types

    -- ** PosixAccountOperatingSystemType
    , PosixAccountOperatingSystemType (..)

    -- ** LoginProFileSSHPublicKeys
    , LoginProFileSSHPublicKeys
    , loginProFileSSHPublicKeys
    , lpfspkAddtional

    -- ** Empty
    , Empty
    , empty

    -- ** LoginProFile
    , LoginProFile
    , loginProFile
    , lpfPosixAccounts
    , lpfSSHPublicKeys
    , lpfName

    -- ** ImportSSHPublicKeyResponse
    , ImportSSHPublicKeyResponse
    , importSSHPublicKeyResponse
    , ispkrLoginProFile
    , ispkrDetails

    -- ** SSHPublicKey
    , SSHPublicKey
    , sshPublicKey
    , spkFingerprint
    , spkKey
    , spkName
    , spkExpirationTimeUsec

    -- ** PosixAccount
    , PosixAccount
    , posixAccount
    , paGecos
    , paUid
    , paUsername
    , paShell
    , paPrimary
    , paAccountId
    , paName
    , paGid
    , paOperatingSystemType
    , paSystemId
    , paHomeDirectory

    -- ** Xgafv
    , Xgafv (..)
    ) where

import Network.Google.Prelude
import Network.Google.OSLogin.Types
import Network.Google.Resource.OSLogin.Users.GetLoginProFile
import Network.Google.Resource.OSLogin.Users.ImportSSHPublicKey
import Network.Google.Resource.OSLogin.Users.Projects.Delete
import Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Delete
import Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Get
import Network.Google.Resource.OSLogin.Users.SSHPublicKeys.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud OS Login API service.
type OSLoginAPI =
     UsersSSHPublicKeysPatchResource :<|>
       UsersSSHPublicKeysGetResource
       :<|> UsersSSHPublicKeysDeleteResource
       :<|> UsersProjectsDeleteResource
       :<|> UsersImportSSHPublicKeyResource
       :<|> UsersGetLoginProFileResource
