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
-- Module      : Gogol.CloudPrivateCatalogProducer.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudPrivateCatalogProducer.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleIamV1AuditLogConfig_LogType
    GoogleIamV1AuditLogConfig_LogType
      (
        GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        GoogleIamV1AuditLogConfig_LogType_ADMINREAD,
        GoogleIamV1AuditLogConfig_LogType_DATAWRITE,
        GoogleIamV1AuditLogConfig_LogType_DATAREAD,
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

-- | The log type that this config enables.
newtype GoogleIamV1AuditLogConfig_LogType = GoogleIamV1AuditLogConfig_LogType { fromGoogleIamV1AuditLogConfig_LogType :: Core.Text }
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

-- | Default case. Should never be this.
pattern GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = GoogleIamV1AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern GoogleIamV1AuditLogConfig_LogType_ADMINREAD :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_ADMINREAD = GoogleIamV1AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern GoogleIamV1AuditLogConfig_LogType_DATAWRITE :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_DATAWRITE = GoogleIamV1AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern GoogleIamV1AuditLogConfig_LogType_DATAREAD :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_DATAREAD = GoogleIamV1AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  GoogleIamV1AuditLogConfig_LogType_ADMINREAD,
  GoogleIamV1AuditLogConfig_LogType_DATAWRITE,
  GoogleIamV1AuditLogConfig_LogType_DATAREAD,
  GoogleIamV1AuditLogConfig_LogType #-}
