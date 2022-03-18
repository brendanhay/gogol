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
-- Module      : Gogol.Billing.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Billing.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AggregationInfo_AggregationInterval
    AggregationInfo_AggregationInterval
      ( AggregationInfo_AggregationInterval_AGGREGATIONINTERVALUNSPECIFIED,
        AggregationInfo_AggregationInterval_Daily,
        AggregationInfo_AggregationInterval_Monthly,
        ..
      ),

    -- * AggregationInfo_AggregationLevel
    AggregationInfo_AggregationLevel
      ( AggregationInfo_AggregationLevel_AGGREGATIONLEVELUNSPECIFIED,
        AggregationInfo_AggregationLevel_Account,
        AggregationInfo_AggregationLevel_Project,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * GeoTaxonomy_Type
    GeoTaxonomy_Type
      ( GeoTaxonomy_Type_TYPEUNSPECIFIED,
        GeoTaxonomy_Type_Global,
        GeoTaxonomy_Type_Regional,
        GeoTaxonomy_Type_MULTIREGIONAL,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

newtype AggregationInfo_AggregationInterval = AggregationInfo_AggregationInterval {fromAggregationInfo_AggregationInterval :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AggregationInfo_AggregationInterval_AGGREGATIONINTERVALUNSPECIFIED :: AggregationInfo_AggregationInterval
pattern AggregationInfo_AggregationInterval_AGGREGATIONINTERVALUNSPECIFIED = AggregationInfo_AggregationInterval "AGGREGATION_INTERVAL_UNSPECIFIED"

-- |
pattern AggregationInfo_AggregationInterval_Daily :: AggregationInfo_AggregationInterval
pattern AggregationInfo_AggregationInterval_Daily = AggregationInfo_AggregationInterval "DAILY"

-- |
pattern AggregationInfo_AggregationInterval_Monthly :: AggregationInfo_AggregationInterval
pattern AggregationInfo_AggregationInterval_Monthly = AggregationInfo_AggregationInterval "MONTHLY"

{-# COMPLETE
  AggregationInfo_AggregationInterval_AGGREGATIONINTERVALUNSPECIFIED,
  AggregationInfo_AggregationInterval_Daily,
  AggregationInfo_AggregationInterval_Monthly,
  AggregationInfo_AggregationInterval
  #-}

newtype AggregationInfo_AggregationLevel = AggregationInfo_AggregationLevel {fromAggregationInfo_AggregationLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AggregationInfo_AggregationLevel_AGGREGATIONLEVELUNSPECIFIED :: AggregationInfo_AggregationLevel
pattern AggregationInfo_AggregationLevel_AGGREGATIONLEVELUNSPECIFIED = AggregationInfo_AggregationLevel "AGGREGATION_LEVEL_UNSPECIFIED"

-- |
pattern AggregationInfo_AggregationLevel_Account :: AggregationInfo_AggregationLevel
pattern AggregationInfo_AggregationLevel_Account = AggregationInfo_AggregationLevel "ACCOUNT"

-- |
pattern AggregationInfo_AggregationLevel_Project :: AggregationInfo_AggregationLevel
pattern AggregationInfo_AggregationLevel_Project = AggregationInfo_AggregationLevel "PROJECT"

{-# COMPLETE
  AggregationInfo_AggregationLevel_AGGREGATIONLEVELUNSPECIFIED,
  AggregationInfo_AggregationLevel_Account,
  AggregationInfo_AggregationLevel_Project,
  AggregationInfo_AggregationLevel
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.
newtype GeoTaxonomy_Type = GeoTaxonomy_Type {fromGeoTaxonomy_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type is not specified.
pattern GeoTaxonomy_Type_TYPEUNSPECIFIED :: GeoTaxonomy_Type
pattern GeoTaxonomy_Type_TYPEUNSPECIFIED = GeoTaxonomy_Type "TYPE_UNSPECIFIED"

-- | The sku is global in nature, e.g. a license sku. Global skus are available in all regions, and so have an empty region list.
pattern GeoTaxonomy_Type_Global :: GeoTaxonomy_Type
pattern GeoTaxonomy_Type_Global = GeoTaxonomy_Type "GLOBAL"

-- | The sku is available in a specific region, e.g. \"us-west2\".
pattern GeoTaxonomy_Type_Regional :: GeoTaxonomy_Type
pattern GeoTaxonomy_Type_Regional = GeoTaxonomy_Type "REGIONAL"

-- | The sku is associated with multiple regions, e.g. \"us-west2\" and \"us-east1\".
pattern GeoTaxonomy_Type_MULTIREGIONAL :: GeoTaxonomy_Type
pattern GeoTaxonomy_Type_MULTIREGIONAL = GeoTaxonomy_Type "MULTI_REGIONAL"

{-# COMPLETE
  GeoTaxonomy_Type_TYPEUNSPECIFIED,
  GeoTaxonomy_Type_Global,
  GeoTaxonomy_Type_Regional,
  GeoTaxonomy_Type_MULTIREGIONAL,
  GeoTaxonomy_Type
  #-}
