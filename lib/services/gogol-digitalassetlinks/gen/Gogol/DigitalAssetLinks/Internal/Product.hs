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
-- Module      : Gogol.DigitalAssetLinks.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DigitalAssetLinks.Internal.Product
  (

    -- * AndroidAppAsset
    AndroidAppAsset (..),
    newAndroidAppAsset,

    -- * Asset
    Asset (..),
    newAsset,

    -- * BulkCheckRequest
    BulkCheckRequest (..),
    newBulkCheckRequest,

    -- * BulkCheckResponse
    BulkCheckResponse (..),
    newBulkCheckResponse,

    -- * CertificateInfo
    CertificateInfo (..),
    newCertificateInfo,

    -- * CheckResponse
    CheckResponse (..),
    newCheckResponse,

    -- * ListResponse
    ListResponse (..),
    newListResponse,

    -- * Statement
    Statement (..),
    newStatement,

    -- * StatementTemplate
    StatementTemplate (..),
    newStatementTemplate,

    -- * WebAsset
    WebAsset (..),
    newWebAsset,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.DigitalAssetLinks.Internal.Sum

-- | Describes an android app asset.
--
-- /See:/ 'newAndroidAppAsset' smart constructor.
data AndroidAppAsset = AndroidAppAsset
    {
      -- | Because there is no global enforcement of package name uniqueness, we also require a signing certificate, which in combination with the package name uniquely identifies an app. Some apps\' signing keys are rotated, so they may be signed by different keys over time. We treat these as distinct assets, since we use (package name, cert) as the unique ID. This should not normally pose any problems as both versions of the app will make the same or similar statements. Other assets making statements about the app will have to be updated when a key is rotated, however. (Note that the syntaxes for publishing and querying for statements contain syntactic sugar to easily let you specify apps that are known by multiple certificates.) REQUIRED
      certificate :: (Core.Maybe CertificateInfo)
      -- | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name @com.google.android.apps.maps@. REQUIRED
    , packageName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidAppAsset' with the minimum fields required to make a request.
newAndroidAppAsset 
    ::  AndroidAppAsset
newAndroidAppAsset =
  AndroidAppAsset {certificate = Core.Nothing, packageName = Core.Nothing}

instance Core.FromJSON AndroidAppAsset where
        parseJSON
          = Core.withObject "AndroidAppAsset"
              (\ o ->
                 AndroidAppAsset Core.<$>
                   (o Core..:? "certificate") Core.<*>
                     (o Core..:? "packageName"))

instance Core.ToJSON AndroidAppAsset where
        toJSON AndroidAppAsset{..}
          = Core.object
              (Core.catMaybes
                 [("certificate" Core..=) Core.<$> certificate,
                  ("packageName" Core..=) Core.<$> packageName])


-- | Uniquely identifies an asset. A digital asset is an identifiable and addressable online entity that typically provides some service or content. Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.
--
-- /See:/ 'newAsset' smart constructor.
data Asset = Asset
    {
      -- | Set if this is an Android App asset.
      androidApp :: (Core.Maybe AndroidAppAsset)
      -- | Set if this is a web asset.
    , web :: (Core.Maybe WebAsset)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Asset' with the minimum fields required to make a request.
newAsset 
    ::  Asset
newAsset = Asset {androidApp = Core.Nothing, web = Core.Nothing}

instance Core.FromJSON Asset where
        parseJSON
          = Core.withObject "Asset"
              (\ o ->
                 Asset Core.<$>
                   (o Core..:? "androidApp") Core.<*>
                     (o Core..:? "web"))

instance Core.ToJSON Asset where
        toJSON Asset{..}
          = Core.object
              (Core.catMaybes
                 [("androidApp" Core..=) Core.<$> androidApp,
                  ("web" Core..=) Core.<$> web])


-- | Message used to check for the existence of multiple digital asset links within a single RPC.
--
-- /See:/ 'newBulkCheckRequest' smart constructor.
data BulkCheckRequest = BulkCheckRequest
    {
      -- | Same configuration as in Check request, all statements checks will use same configurations.
      allowGoogleInternalDataSources :: (Core.Maybe Core.Bool)
      -- | If specified, will be used in any given template statement that doesn’t specify a relation.
    , defaultRelation :: (Core.Maybe Core.Text)
      -- | If specified, will be used in any given template statement that doesn’t specify a source.
    , defaultSource :: (Core.Maybe Asset)
      -- | If specified, will be used in any given template statement that doesn’t specify a target.
    , defaultTarget :: (Core.Maybe Asset)
      -- | Same configuration as in Check request, all statements checks will use same configurations.
    , skipCacheLookup :: (Core.Maybe Core.Bool)
      -- | List of statements to check. For each statement, you can omit a field if the corresponding default_* field below was supplied. Minimum 1 statement; maximum 1,000 statements. Any additional statements will be ignored.
    , statements :: (Core.Maybe [StatementTemplate])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BulkCheckRequest' with the minimum fields required to make a request.
newBulkCheckRequest 
    ::  BulkCheckRequest
newBulkCheckRequest =
  BulkCheckRequest
    { allowGoogleInternalDataSources = Core.Nothing
    , defaultRelation = Core.Nothing
    , defaultSource = Core.Nothing
    , defaultTarget = Core.Nothing
    , skipCacheLookup = Core.Nothing
    , statements = Core.Nothing
    }

instance Core.FromJSON BulkCheckRequest where
        parseJSON
          = Core.withObject "BulkCheckRequest"
              (\ o ->
                 BulkCheckRequest Core.<$>
                   (o Core..:? "allowGoogleInternalDataSources")
                     Core.<*> (o Core..:? "defaultRelation")
                     Core.<*> (o Core..:? "defaultSource")
                     Core.<*> (o Core..:? "defaultTarget")
                     Core.<*> (o Core..:? "skipCacheLookup")
                     Core.<*>
                     (o Core..:? "statements" Core..!= Core.mempty))

instance Core.ToJSON BulkCheckRequest where
        toJSON BulkCheckRequest{..}
          = Core.object
              (Core.catMaybes
                 [("allowGoogleInternalDataSources" Core..=) Core.<$>
                    allowGoogleInternalDataSources,
                  ("defaultRelation" Core..=) Core.<$> defaultRelation,
                  ("defaultSource" Core..=) Core.<$> defaultSource,
                  ("defaultTarget" Core..=) Core.<$> defaultTarget,
                  ("skipCacheLookup" Core..=) Core.<$> skipCacheLookup,
                  ("statements" Core..=) Core.<$> statements])


-- | Response for BulkCheck call. Results are sent in a list in the same order in which they were sent. Individual check errors are described in the appropriate check/results entry. If the entire call fails, the response will include a bulk/error_code field describing the error.
--
-- /See:/ 'newBulkCheckResponse' smart constructor.
data BulkCheckResponse = BulkCheckResponse
    {
      -- | Error code for the entire request. Present only if the entire request failed. Individual check errors will not trigger the presence of this field.
      bulkErrorCode :: (Core.Maybe BulkCheckResponse_BulkErrorCode)
      -- | List of results for each check request. Results are returned in the same order in which they were sent in the request.
    , checkResults :: (Core.Maybe [CheckResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BulkCheckResponse' with the minimum fields required to make a request.
newBulkCheckResponse 
    ::  BulkCheckResponse
newBulkCheckResponse =
  BulkCheckResponse {bulkErrorCode = Core.Nothing, checkResults = Core.Nothing}

instance Core.FromJSON BulkCheckResponse where
        parseJSON
          = Core.withObject "BulkCheckResponse"
              (\ o ->
                 BulkCheckResponse Core.<$>
                   (o Core..:? "bulkErrorCode") Core.<*>
                     (o Core..:? "checkResults" Core..!= Core.mempty))

instance Core.ToJSON BulkCheckResponse where
        toJSON BulkCheckResponse{..}
          = Core.object
              (Core.catMaybes
                 [("bulkErrorCode" Core..=) Core.<$> bulkErrorCode,
                  ("checkResults" Core..=) Core.<$> checkResults])


-- | Describes an X509 certificate.
--
-- /See:/ 'newCertificateInfo' smart constructor.
newtype CertificateInfo = CertificateInfo
    {
      -- | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be @14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5@. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).
      sha256Fingerprint :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificateInfo' with the minimum fields required to make a request.
newCertificateInfo 
    ::  CertificateInfo
newCertificateInfo = CertificateInfo {sha256Fingerprint = Core.Nothing}

instance Core.FromJSON CertificateInfo where
        parseJSON
          = Core.withObject "CertificateInfo"
              (\ o ->
                 CertificateInfo Core.<$>
                   (o Core..:? "sha256Fingerprint"))

instance Core.ToJSON CertificateInfo where
        toJSON CertificateInfo{..}
          = Core.object
              (Core.catMaybes
                 [("sha256Fingerprint" Core..=) Core.<$>
                    sha256Fingerprint])


-- | Response message for the CheckAssetLinks call.
--
-- /See:/ 'newCheckResponse' smart constructor.
data CheckResponse = CheckResponse
    {
      -- | Human-readable message containing information intended to help end users understand, reproduce and debug the result. The message will be in English and we are currently not planning to offer any translations. Please note that no guarantees are made about the contents or format of this string. Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data. For programmatic access, use the error_code field below.
      debugString :: (Core.Maybe Core.Text)
      -- | Error codes that describe the result of the Check operation.
    , errorCode :: (Core.Maybe [CheckResponse_ErrorCodeItem])
      -- | Set to true if the assets specified in the request are linked by the relation specified in the request.
    , linked :: (Core.Maybe Core.Bool)
      -- | From serving time, how much longer the response should be considered valid barring further updates. REQUIRED
    , maxAge :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckResponse' with the minimum fields required to make a request.
newCheckResponse 
    ::  CheckResponse
newCheckResponse =
  CheckResponse
    { debugString = Core.Nothing
    , errorCode = Core.Nothing
    , linked = Core.Nothing
    , maxAge = Core.Nothing
    }

instance Core.FromJSON CheckResponse where
        parseJSON
          = Core.withObject "CheckResponse"
              (\ o ->
                 CheckResponse Core.<$>
                   (o Core..:? "debugString") Core.<*>
                     (o Core..:? "errorCode" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "linked")
                     Core.<*> (o Core..:? "maxAge"))

instance Core.ToJSON CheckResponse where
        toJSON CheckResponse{..}
          = Core.object
              (Core.catMaybes
                 [("debugString" Core..=) Core.<$> debugString,
                  ("errorCode" Core..=) Core.<$> errorCode,
                  ("linked" Core..=) Core.<$> linked,
                  ("maxAge" Core..=) Core.<$> maxAge])


-- | Response message for the List call.
--
-- /See:/ 'newListResponse' smart constructor.
data ListResponse = ListResponse
    {
      -- | Human-readable message containing information intended to help end users understand, reproduce and debug the result. The message will be in English and we are currently not planning to offer any translations. Please note that no guarantees are made about the contents or format of this string. Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data. For programmatic access, use the error_code field below.
      debugString :: (Core.Maybe Core.Text)
      -- | Error codes that describe the result of the List operation.
    , errorCode :: (Core.Maybe [ListResponse_ErrorCodeItem])
      -- | From serving time, how much longer the response should be considered valid barring further updates. REQUIRED
    , maxAge :: (Core.Maybe Core.GDuration)
      -- | A list of all the matching statements that have been found.
    , statements :: (Core.Maybe [Statement])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListResponse' with the minimum fields required to make a request.
newListResponse 
    ::  ListResponse
newListResponse =
  ListResponse
    { debugString = Core.Nothing
    , errorCode = Core.Nothing
    , maxAge = Core.Nothing
    , statements = Core.Nothing
    }

instance Core.FromJSON ListResponse where
        parseJSON
          = Core.withObject "ListResponse"
              (\ o ->
                 ListResponse Core.<$>
                   (o Core..:? "debugString") Core.<*>
                     (o Core..:? "errorCode" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "maxAge")
                     Core.<*>
                     (o Core..:? "statements" Core..!= Core.mempty))

instance Core.ToJSON ListResponse where
        toJSON ListResponse{..}
          = Core.object
              (Core.catMaybes
                 [("debugString" Core..=) Core.<$> debugString,
                  ("errorCode" Core..=) Core.<$> errorCode,
                  ("maxAge" Core..=) Core.<$> maxAge,
                  ("statements" Core..=) Core.<$> statements])


-- | Describes a reliable statement that has been made about the relationship between a source asset and a target asset. Statements are always made by the source asset, either directly or by delegating to a statement list that is stored elsewhere. For more detailed definitions of statements and assets, please refer to our </digital-asset-links/v1/getting-started API documentation landing page>.
--
-- /See:/ 'newStatement' smart constructor.
data Statement = Statement
    {
      -- | The relation identifies the use of the statement as intended by the source asset\'s owner (that is, the person or entity who issued the statement). Every complete statement has a relation. We identify relations with strings of the format @\/@, where @must be one of a set of pre-defined purpose categories, and@ is a free-form lowercase alphanumeric string that describes the specific use case of the statement. Refer to </digital-asset-links/v1/relation-strings our API documentation> for the current list of supported relations. Example: @delegate_permission\/common.handle_all_urls@ REQUIRED
      relation :: (Core.Maybe Core.Text)
      -- | Every statement has a source asset. REQUIRED
    , source :: (Core.Maybe Asset)
      -- | Every statement has a target asset. REQUIRED
    , target :: (Core.Maybe Asset)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Statement' with the minimum fields required to make a request.
newStatement 
    ::  Statement
newStatement =
  Statement
    {relation = Core.Nothing, source = Core.Nothing, target = Core.Nothing}

instance Core.FromJSON Statement where
        parseJSON
          = Core.withObject "Statement"
              (\ o ->
                 Statement Core.<$>
                   (o Core..:? "relation") Core.<*>
                     (o Core..:? "source")
                     Core.<*> (o Core..:? "target"))

instance Core.ToJSON Statement where
        toJSON Statement{..}
          = Core.object
              (Core.catMaybes
                 [("relation" Core..=) Core.<$> relation,
                  ("source" Core..=) Core.<$> source,
                  ("target" Core..=) Core.<$> target])


-- | A single statement to check in a bulk call using BulkCheck. See CheckRequest for details about each field.
--
-- /See:/ 'newStatementTemplate' smart constructor.
data StatementTemplate = StatementTemplate
    {
      -- | The relationship being asserted between the source and target. If omitted, you must specify a BulkCheckRequest.default_relation value to use here.
      relation :: (Core.Maybe Core.Text)
      -- | The source asset that is asserting the statement. If omitted, you must specify a BulkCheckRequest.default_source value to use here.
    , source :: (Core.Maybe Asset)
      -- | The target that the source is declaring the relationship with. If omitted, you must specify a BulkCheckRequest.default_target to use here.
    , target :: (Core.Maybe Asset)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatementTemplate' with the minimum fields required to make a request.
newStatementTemplate 
    ::  StatementTemplate
newStatementTemplate =
  StatementTemplate
    {relation = Core.Nothing, source = Core.Nothing, target = Core.Nothing}

instance Core.FromJSON StatementTemplate where
        parseJSON
          = Core.withObject "StatementTemplate"
              (\ o ->
                 StatementTemplate Core.<$>
                   (o Core..:? "relation") Core.<*>
                     (o Core..:? "source")
                     Core.<*> (o Core..:? "target"))

instance Core.ToJSON StatementTemplate where
        toJSON StatementTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("relation" Core..=) Core.<$> relation,
                  ("source" Core..=) Core.<$> source,
                  ("target" Core..=) Core.<$> target])


-- | Describes a web asset.
--
-- /See:/ 'newWebAsset' smart constructor.
newtype WebAsset = WebAsset
    {
      -- | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]:\/\/[:] Hostnames must be fully qualified: they must end in a single period (\"@.@\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site @https:\/\/www.google.com@ contains all these URLs: * @https:\/\/www.google.com\/@ * @https:\/\/www.google.com:443\/@ * @https:\/\/www.google.com\/foo@ * @https:\/\/www.google.com\/foo?bar@ * @https:\/\/www.google.com\/foo#bar@ * @https:\/\/user\@password:www.google.com\/@ But it does not contain these URLs: * @http:\/\/www.google.com\/@ (wrong scheme) * @https:\/\/google.com\/@ (hostname does not match) *
      -- @https:\/\/www.google.com:444\/@ (port does not match) REQUIRED
      site :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebAsset' with the minimum fields required to make a request.
newWebAsset 
    ::  WebAsset
newWebAsset = WebAsset {site = Core.Nothing}

instance Core.FromJSON WebAsset where
        parseJSON
          = Core.withObject "WebAsset"
              (\ o -> WebAsset Core.<$> (o Core..:? "site"))

instance Core.ToJSON WebAsset where
        toJSON WebAsset{..}
          = Core.object
              (Core.catMaybes [("site" Core..=) Core.<$> site])

