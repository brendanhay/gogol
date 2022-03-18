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
-- Module      : Gogol.SafeBrowsing.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SafeBrowsing.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Windows,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Linux,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Android,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Osx,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Ios,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Url,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Executable,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_IPRANGE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_CHROMEEXTENSION,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Filename,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Cert,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Malware,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APIABUSE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Suspicious,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_ACCURACYTIPS,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_COMPRESSIONTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Raw,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Rice,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Windows,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Linux,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Android,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Osx,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Ios,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_RESPONSETYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_PARTIALUPDATE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_FULLUPDATE,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Url,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Executable,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_IPRANGE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_CHROMEEXTENSION,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Filename,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Cert,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
      (
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Malware,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APIABUSE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Suspicious,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_ACCURACYTIPS,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
    GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
      (
        GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_COMPRESSIONTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Raw,
        GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Rice,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
    GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
      (
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Windows,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Linux,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Android,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Osx,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Ios,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
    GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
      (
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Malware,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APIABUSE,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Suspicious,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_ACCURACYTIPS,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
    GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
      (
        GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_THREATSOURCETYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_MATCHINGURL,
        GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABURL,
        GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABREDIRECT,
        GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABRESOURCE,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
      (
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Windows,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Linux,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Android,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Osx,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Ios,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
      (
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_THREATENTRYTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Url,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Executable,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_IPRANGE,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_CHROMEEXTENSION,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Filename,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Cert,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
      (
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Malware,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APIABUSE,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Suspicious,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_ACCURACYTIPS,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
      (
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Windows,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Linux,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Android,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Osx,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Ios,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
      (
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Url,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Executable,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_IPRANGE,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_CHROMEEXTENSION,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Filename,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Cert,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
      (
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Malware,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APIABUSE,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Suspicious,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_ACCURACYTIPS,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
    GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
      (
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_PLATFORMTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Windows,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Linux,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Android,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Osx,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Ios,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ANYPLATFORM,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ALLPLATFORMS,
        GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Chrome,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
    GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
      (
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Url,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Executable,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_IPRANGE,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_CHROMEEXTENSION,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Filename,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Cert,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
    GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
      (
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Malware,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERINGINTERNAL,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APIABUSE,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_MALICIOUSBINARY,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDDOWNLOADWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENT,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENTWHITELIST,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APKMALWAREOFFLINE,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SUBRESOURCEFILTER,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Suspicious,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_TRICKTOBILL,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_HIGHCONFIDENCEALLOWLIST,
        GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_ACCURACYTIPS,
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

-- | The type of platform at risk by entries present in the list.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Windows :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Windows = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Linux :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Linux = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Android :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Android = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Osx :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Osx = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Ios :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Ios = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ANYPLATFORM :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ANYPLATFORM = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ALLPLATFORMS = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Chrome :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Chrome = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Windows,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Linux,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Android,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Osx,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Ios,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType_Chrome,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType #-}

-- | The types of entries present in the list.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType :: Core.Text }
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

-- | Unspecified.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "THREAT_ENTRY_TYPE_UNSPECIFIED"

-- | A URL.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Url :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Url = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "URL"

-- | An executable program.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Executable :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Executable = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "EXECUTABLE"

-- | An IP range.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_IPRANGE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_IPRANGE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "IP_RANGE"

-- | Chrome extension.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_CHROMEEXTENSION :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_CHROMEEXTENSION = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "CHROME_EXTENSION"

-- | Filename.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Filename :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Filename = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "FILENAME"

-- | CERT
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Cert :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Cert = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType "CERT"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Url,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Executable,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_IPRANGE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_CHROMEEXTENSION,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Filename,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType_Cert,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType #-}

-- | The type of threat posed by entries present in the list.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Malware :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Malware = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APIABUSE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APIABUSE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Suspicious :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Suspicious = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_TRICKTOBILL :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_TRICKTOBILL = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_ACCURACYTIPS = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Malware,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APIABUSE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_Suspicious,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType #-}

newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_COMPRESSIONTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_COMPRESSIONTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem "COMPRESSION_TYPE_UNSPECIFIED"

-- | Raw, uncompressed data.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Raw :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Raw = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem "RAW"

-- | Rice-Golomb encoded data.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Rice :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Rice = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem "RICE"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_COMPRESSIONTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Raw,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem_Rice,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem #-}

-- | The platform type for which data is returned.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Windows :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Windows = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Linux :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Linux = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Android :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Android = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Osx :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Osx = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Ios :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Ios = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ANYPLATFORM :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ANYPLATFORM = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ALLPLATFORMS = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Chrome :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Chrome = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Windows,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Linux,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Android,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Osx,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Ios,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType_Chrome,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType #-}

-- | The type of response. This may indicate that an action is required by the client when the response is received.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_RESPONSETYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_RESPONSETYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType "RESPONSE_TYPE_UNSPECIFIED"

-- | Partial updates are applied to the client\'s existing local database.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_PARTIALUPDATE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_PARTIALUPDATE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType "PARTIAL_UPDATE"

-- | Full updates replace the client\'s entire local database. This means that either the client was seriously out-of-date or the client is believed to be corrupt.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_FULLUPDATE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_FULLUPDATE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType "FULL_UPDATE"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_RESPONSETYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_PARTIALUPDATE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType_FULLUPDATE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType #-}

-- | The format of the threats.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType :: Core.Text }
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

-- | Unspecified.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "THREAT_ENTRY_TYPE_UNSPECIFIED"

-- | A URL.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Url :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Url = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "URL"

-- | An executable program.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Executable :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Executable = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "EXECUTABLE"

-- | An IP range.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_IPRANGE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_IPRANGE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "IP_RANGE"

-- | Chrome extension.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_CHROMEEXTENSION :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_CHROMEEXTENSION = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "CHROME_EXTENSION"

-- | Filename.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Filename :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Filename = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "FILENAME"

-- | CERT
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Cert :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Cert = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType "CERT"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Url,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Executable,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_IPRANGE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_CHROMEEXTENSION,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Filename,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType_Cert,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType #-}

-- | The threat type for which data is returned.
newtype GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType { fromGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Malware :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Malware = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APIABUSE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APIABUSE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Suspicious :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Suspicious = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_TRICKTOBILL :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_TRICKTOBILL = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
pattern GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_ACCURACYTIPS = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Malware,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APIABUSE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_Suspicious,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType #-}

-- | The compression type for the entries in this set.
newtype GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType = GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType { fromGoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_COMPRESSIONTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_COMPRESSIONTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType "COMPRESSION_TYPE_UNSPECIFIED"

-- | Raw, uncompressed data.
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Raw :: GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Raw = GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType "RAW"

-- | Rice-Golomb encoded data.
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Rice :: GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
pattern GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Rice = GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType "RICE"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_COMPRESSIONTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Raw,
  GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType_Rice,
  GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType #-}

-- | The platform type reported.
newtype GoogleSecuritySafebrowsingV4ThreatHit_PlatformType = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType { fromGoogleSecuritySafebrowsingV4ThreatHit_PlatformType :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Windows :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Windows = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Linux :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Linux = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Android :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Android = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Osx :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Osx = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Ios :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Ios = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ANYPLATFORM :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ANYPLATFORM = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ALLPLATFORMS = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Chrome :: GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Chrome = GoogleSecuritySafebrowsingV4ThreatHit_PlatformType "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Windows,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Linux,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Android,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Osx,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Ios,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType_Chrome,
  GoogleSecuritySafebrowsingV4ThreatHit_PlatformType #-}

-- | The threat type reported.
newtype GoogleSecuritySafebrowsingV4ThreatHit_ThreatType = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType { fromGoogleSecuritySafebrowsingV4ThreatHit_ThreatType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Malware :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Malware = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APIABUSE :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APIABUSE = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDWHITELIST :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDWHITELIST = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Suspicious :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Suspicious = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_TRICKTOBILL :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_TRICKTOBILL = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_ACCURACYTIPS = GoogleSecuritySafebrowsingV4ThreatHit_ThreatType "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Malware,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APIABUSE,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_Suspicious,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4ThreatHit_ThreatType #-}

-- | The type of source reported.
newtype GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type { fromGoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_THREATSOURCETYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_THREATSOURCETYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type "THREAT_SOURCE_TYPE_UNSPECIFIED"

-- | The URL that matched the threat list (for which GetFullHash returned a valid hash).
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_MATCHINGURL :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_MATCHINGURL = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type "MATCHING_URL"

-- | The final top-level URL of the tab that the client was browsing when the match occurred.
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABURL :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABURL = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type "TAB_URL"

-- | A redirect URL that was fetched before hitting the final TAB_URL.
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABREDIRECT :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABREDIRECT = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type "TAB_REDIRECT"

-- | A resource loaded within the final TAB_URL.
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABRESOURCE :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
pattern GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABRESOURCE = GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type "TAB_RESOURCE"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_THREATSOURCETYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_MATCHINGURL,
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABURL,
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABREDIRECT,
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type_TABRESOURCE,
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type #-}

newtype GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem { fromGoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Windows :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Windows = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Linux :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Linux = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Android :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Android = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Osx :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Osx = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Ios :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Ios = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ANYPLATFORM :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ANYPLATFORM = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ALLPLATFORMS = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Chrome :: GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Chrome = GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Windows,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Linux,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Android,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Osx,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Ios,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem_Chrome,
  GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem #-}

newtype GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem { fromGoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem :: Core.Text }
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

-- | Unspecified.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_THREATENTRYTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_THREATENTRYTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "THREAT_ENTRY_TYPE_UNSPECIFIED"

-- | A URL.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Url :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Url = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "URL"

-- | An executable program.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Executable :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Executable = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "EXECUTABLE"

-- | An IP range.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_IPRANGE :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_IPRANGE = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "IP_RANGE"

-- | Chrome extension.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_CHROMEEXTENSION :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_CHROMEEXTENSION = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "CHROME_EXTENSION"

-- | Filename.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Filename :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Filename = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "FILENAME"

-- | CERT
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Cert :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Cert = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem "CERT"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_THREATENTRYTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Url,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Executable,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_IPRANGE,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_CHROMEEXTENSION,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Filename,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem_Cert,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem #-}

newtype GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem { fromGoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Malware :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Malware = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APIABUSE :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APIABUSE = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDWHITELIST :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDWHITELIST = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Suspicious :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Suspicious = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_TRICKTOBILL :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_TRICKTOBILL = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
pattern GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_ACCURACYTIPS = GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Malware,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APIABUSE,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_Suspicious,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem #-}

-- | The platform type targeted by the list\'s entries.
newtype GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType { fromGoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Windows :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Windows = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Linux :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Linux = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Android :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Android = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Osx :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Osx = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Ios :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Ios = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ANYPLATFORM :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ANYPLATFORM = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ALLPLATFORMS = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Chrome :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Chrome = GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Windows,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Linux,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Android,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Osx,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Ios,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType_Chrome,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType #-}

-- | The entry types contained in the list.
newtype GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType { fromGoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType :: Core.Text }
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

-- | Unspecified.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "THREAT_ENTRY_TYPE_UNSPECIFIED"

-- | A URL.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Url :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Url = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "URL"

-- | An executable program.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Executable :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Executable = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "EXECUTABLE"

-- | An IP range.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_IPRANGE :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_IPRANGE = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "IP_RANGE"

-- | Chrome extension.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_CHROMEEXTENSION :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_CHROMEEXTENSION = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "CHROME_EXTENSION"

-- | Filename.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Filename :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Filename = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "FILENAME"

-- | CERT
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Cert :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Cert = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType "CERT"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Url,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Executable,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_IPRANGE,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_CHROMEEXTENSION,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Filename,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType_Cert,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType #-}

-- | The threat type posed by the list\'s entries.
newtype GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType { fromGoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Malware :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Malware = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APIABUSE :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APIABUSE = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDWHITELIST :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDWHITELIST = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Suspicious :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Suspicious = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_TRICKTOBILL :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_TRICKTOBILL = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_ACCURACYTIPS = GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Malware,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APIABUSE,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_Suspicious,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType #-}

-- | The platform type matching this threat.
newtype GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType { fromGoogleSecuritySafebrowsingV4ThreatMatch_PlatformType :: Core.Text }
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

-- | Unknown platform.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_PLATFORMTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_PLATFORMTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Threat posed to Windows.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Windows :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Windows = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "WINDOWS"

-- | Threat posed to Linux.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Linux :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Linux = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "LINUX"

-- | Threat posed to Android.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Android :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Android = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "ANDROID"

-- | Threat posed to OS X.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Osx :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Osx = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "OSX"

-- | Threat posed to iOS.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Ios :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Ios = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "IOS"

-- | Threat posed to at least one of the defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ANYPLATFORM :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ANYPLATFORM = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "ANY_PLATFORM"

-- | Threat posed to all defined platforms.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ALLPLATFORMS :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ALLPLATFORMS = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "ALL_PLATFORMS"

-- | Threat posed to Chrome.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Chrome :: GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Chrome = GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType "CHROME"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_PLATFORMTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Windows,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Linux,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Android,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Osx,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Ios,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ANYPLATFORM,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_ALLPLATFORMS,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType_Chrome,
  GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType #-}

-- | The threat entry type matching this threat.
newtype GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType { fromGoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType :: Core.Text }
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

-- | Unspecified.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "THREAT_ENTRY_TYPE_UNSPECIFIED"

-- | A URL.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Url :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Url = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "URL"

-- | An executable program.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Executable :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Executable = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "EXECUTABLE"

-- | An IP range.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_IPRANGE :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_IPRANGE = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "IP_RANGE"

-- | Chrome extension.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_CHROMEEXTENSION :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_CHROMEEXTENSION = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "CHROME_EXTENSION"

-- | Filename.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Filename :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Filename = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "FILENAME"

-- | CERT
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Cert :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Cert = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType "CERT"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_THREATENTRYTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Url,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Executable,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_IPRANGE,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_CHROMEEXTENSION,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Filename,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType_Cert,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType #-}

-- | The threat type matching this threat.
newtype GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType { fromGoogleSecuritySafebrowsingV4ThreatMatch_ThreatType :: Core.Text }
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

-- | Unknown.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Malware :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Malware = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "MALWARE"

-- | Social engineering threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

-- | Social engineering threat type for internal use.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERINGINTERNAL :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERINGINTERNAL = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "SOCIAL_ENGINEERING_INTERNAL"

-- | API abuse threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APIABUSE :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APIABUSE = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "API_ABUSE"

-- | Malicious binary threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_MALICIOUSBINARY :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_MALICIOUSBINARY = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "MALICIOUS_BINARY"

-- | Client side detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDWHITELIST :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDWHITELIST = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "CSD_WHITELIST"

-- | Client side download detection whitelist threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDDOWNLOADWHITELIST :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDDOWNLOADWHITELIST = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "CSD_DOWNLOAD_WHITELIST"

-- | Client incident threat type.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENT :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENT = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "CLIENT_INCIDENT"

-- | Whitelist used when detecting client incident threats. This enum was never launched and should be re-used for the next list.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENTWHITELIST :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENTWHITELIST = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "CLIENT_INCIDENT_WHITELIST"

-- | List used for offline APK checks in PAM.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APKMALWAREOFFLINE :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APKMALWAREOFFLINE = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "APK_MALWARE_OFFLINE"

-- | Patterns to be used for activating the subresource filter. Interstitial will not be shown for patterns from this list.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SUBRESOURCEFILTER :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SUBRESOURCEFILTER = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "SUBRESOURCE_FILTER"

-- | Entities that are suspected to present a threat.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Suspicious :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Suspicious = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "SUSPICIOUS"

-- | Trick-to-bill threat list.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_TRICKTOBILL :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_TRICKTOBILL = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "TRICK_TO_BILL"

-- | Safe list to ship hashes of known safe URL expressions.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_HIGHCONFIDENCEALLOWLIST :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_HIGHCONFIDENCEALLOWLIST = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "HIGH_CONFIDENCE_ALLOWLIST"

-- | List from the Jigsaw team to show accuracy tips in Chrome. See go\/sb-accuracytips.
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_ACCURACYTIPS :: GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
pattern GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_ACCURACYTIPS = GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType "ACCURACY_TIPS"

{-# COMPLETE
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Malware,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SOCIALENGINEERINGINTERNAL,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APIABUSE,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_MALICIOUSBINARY,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CSDDOWNLOADWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENT,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_CLIENTINCIDENTWHITELIST,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_APKMALWAREOFFLINE,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_SUBRESOURCEFILTER,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_Suspicious,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_TRICKTOBILL,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_HIGHCONFIDENCEALLOWLIST,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType_ACCURACYTIPS,
  GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType #-}
