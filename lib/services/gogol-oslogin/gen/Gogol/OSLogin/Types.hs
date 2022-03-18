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
-- Module      : Gogol.OSLogin.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.OSLogin.Types
    (
    -- * Configuration
      oSLoginService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudPlatformReadOnlyScope
    , computeScope
    , computeReadOnlyScope

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

import qualified Gogol.Prelude as Core
import Gogol.OSLogin.Internal.Product
import Gogol.OSLogin.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud OS Login API. This contains the host and root path used as a starting point for constructing service requests.
oSLoginService :: Core.ServiceConfig
oSLoginService
  = Core.defaultService (Core.ServiceId "oslogin:v1")
      "oslogin.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View your data across Google Cloud services and see the email address of your Google Account
cloudPlatformReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Core.Proxy

-- | View and manage your Google Compute Engine resources
computeScope :: Core.Proxy '["https://www.googleapis.com/auth/compute"]
computeScope = Core.Proxy

-- | View your Google Compute Engine resources
computeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/compute.readonly"]
computeReadOnlyScope = Core.Proxy
