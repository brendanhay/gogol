{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OSLogin.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OSLogin.Types
    (
    -- * Service Configuration
      oSLoginService

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformScope

    -- * PosixAccountOperatingSystemType
    , PosixAccountOperatingSystemType (..)

    -- * LoginProFileSSHPublicKeys
    , LoginProFileSSHPublicKeys
    , loginProFileSSHPublicKeys
    , lpfspkAddtional

    -- * Empty
    , Empty
    , empty

    -- * LoginProFile
    , LoginProFile
    , loginProFile
    , lpfPosixAccounts
    , lpfSSHPublicKeys
    , lpfName

    -- * ImportSSHPublicKeyResponse
    , ImportSSHPublicKeyResponse
    , importSSHPublicKeyResponse
    , ispkrLoginProFile
    , ispkrDetails

    -- * SSHPublicKey
    , SSHPublicKey
    , sshPublicKey
    , spkFingerprint
    , spkKey
    , spkName
    , spkExpirationTimeUsec

    -- * PosixAccount
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

    -- * Xgafv
    , Xgafv (..)
    ) where

import Network.Google.OSLogin.Types.Product
import Network.Google.OSLogin.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud OS Login API. This contains the host and root path used as a starting point for constructing service requests.
oSLoginService :: ServiceConfig
oSLoginService
  = defaultService (ServiceId "oslogin:v1")
      "oslogin.googleapis.com"

-- | View and manage your Google Compute Engine resources
computeScope :: Proxy '["https://www.googleapis.com/auth/compute"]
computeScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
