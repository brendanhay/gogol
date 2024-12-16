{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.OSLogin.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.OSLogin.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * PosixAccount_OperatingSystemType
    PosixAccount_OperatingSystemType
      (
        PosixAccount_OperatingSystemType_OPERATINGSYSTEMTYPEUNSPECIFIED,
        PosixAccount_OperatingSystemType_Linux,
        PosixAccount_OperatingSystemType_Windows,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The operating system type where this account applies.
newtype PosixAccount_OperatingSystemType = PosixAccount_OperatingSystemType { fromPosixAccount_OperatingSystemType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The operating system type associated with the user account information is unspecified.
pattern PosixAccount_OperatingSystemType_OPERATINGSYSTEMTYPEUNSPECIFIED :: PosixAccount_OperatingSystemType
pattern PosixAccount_OperatingSystemType_OPERATINGSYSTEMTYPEUNSPECIFIED = PosixAccount_OperatingSystemType "OPERATING_SYSTEM_TYPE_UNSPECIFIED"

-- | Linux user account information.
pattern PosixAccount_OperatingSystemType_Linux :: PosixAccount_OperatingSystemType
pattern PosixAccount_OperatingSystemType_Linux = PosixAccount_OperatingSystemType "LINUX"

-- | Windows user account information.
pattern PosixAccount_OperatingSystemType_Windows :: PosixAccount_OperatingSystemType
pattern PosixAccount_OperatingSystemType_Windows = PosixAccount_OperatingSystemType "WINDOWS"

{-# COMPLETE
  PosixAccount_OperatingSystemType_OPERATINGSYSTEMTYPEUNSPECIFIED,
  PosixAccount_OperatingSystemType_Linux,
  PosixAccount_OperatingSystemType_Windows,
  PosixAccount_OperatingSystemType #-}
