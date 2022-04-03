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
-- Module      : Gogol.DigitalAssetLinks.Assetlinks.Check
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines whether the specified (directional) relationship exists between the specified source and target assets. The relation describes the intent of the link between the two assets as claimed by the source asset. An example for such relationships is the delegation of privileges or permissions. This command is most often used by infrastructure systems to check preconditions for an action. For example, a client may want to know if it is OK to send a web URL to a particular mobile app instead. The client can check for the relevant asset link from the website to the mobile app to decide if the operation should be allowed. A note about security: if you specify a secure asset as the source, such as an HTTPS website or an Android app, the API will ensure that any statements used to generate the response have been made in a secure way by the owner of that asset. Conversely, if the source asset is an insecure HTTP website (that is, the URL starts with @http:\/\/@ instead of @https:\/\/@), the API cannot verify its
-- statements securely, and it is not possible to ensure that the website\'s statements have not been altered by a third party. For more information, see the <https://github.com/google/digitalassetlinks/blob/master/well-known/details.md Digital Asset Links technical design specification>.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference> for @digitalassetlinks.assetlinks.check@.
module Gogol.DigitalAssetLinks.Assetlinks.Check
  ( -- * Resource
    DigitalAssetLinksAssetlinksCheckResource,

    -- ** Constructing a Request
    DigitalAssetLinksAssetlinksCheck (..),
    newDigitalAssetLinksAssetlinksCheck,
  )
where

import Gogol.DigitalAssetLinks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @digitalassetlinks.assetlinks.check@ method which the
-- 'DigitalAssetLinksAssetlinksCheck' request conforms to.
type DigitalAssetLinksAssetlinksCheckResource =
  "v1"
    Core.:> "assetlinks:check"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "relation" Core.Text
    Core.:> Core.QueryParam
              "source.androidApp.certificate.sha256Fingerprint"
              Core.Text
    Core.:> Core.QueryParam
              "source.androidApp.packageName"
              Core.Text
    Core.:> Core.QueryParam "source.web.site" Core.Text
    Core.:> Core.QueryParam
              "target.androidApp.certificate.sha256Fingerprint"
              Core.Text
    Core.:> Core.QueryParam
              "target.androidApp.packageName"
              Core.Text
    Core.:> Core.QueryParam "target.web.site" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CheckResponse

-- | Determines whether the specified (directional) relationship exists between the specified source and target assets. The relation describes the intent of the link between the two assets as claimed by the source asset. An example for such relationships is the delegation of privileges or permissions. This command is most often used by infrastructure systems to check preconditions for an action. For example, a client may want to know if it is OK to send a web URL to a particular mobile app instead. The client can check for the relevant asset link from the website to the mobile app to decide if the operation should be allowed. A note about security: if you specify a secure asset as the source, such as an HTTPS website or an Android app, the API will ensure that any statements used to generate the response have been made in a secure way by the owner of that asset. Conversely, if the source asset is an insecure HTTP website (that is, the URL starts with @http:\/\/@ instead of @https:\/\/@), the API cannot verify its
-- statements securely, and it is not possible to ensure that the website\'s statements have not been altered by a third party. For more information, see the <https://github.com/google/digitalassetlinks/blob/master/well-known/details.md Digital Asset Links technical design specification>.
--
-- /See:/ 'newDigitalAssetLinksAssetlinksCheck' smart constructor.
data DigitalAssetLinksAssetlinksCheck = DigitalAssetLinksAssetlinksCheck
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Query string for the relation. We identify relations with strings of the format @\/@, where @must be one of a set of pre-defined purpose categories, and@ is a free-form lowercase alphanumeric string that describes the specific use case of the statement. Refer to </digital-asset-links/v1/relation-strings our API documentation> for the current list of supported relations. For a query to match an asset link, both the query\'s and the asset link\'s relation strings must match exactly. Example: A query with relation @delegate_permission\/common.handle_all_urls@ matches an asset link with relation @delegate_permission\/common.handle_all_urls@.
    relation :: (Core.Maybe Core.Text),
    -- | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be @14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5@. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).
    sourceAndroidAppCertificateSha256Fingerprint :: (Core.Maybe Core.Text),
    -- | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name @com.google.android.apps.maps@. REQUIRED
    sourceAndroidAppPackageName :: (Core.Maybe Core.Text),
    -- | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]:\/\/[:] Hostnames must be fully qualified: they must end in a single period (\"@.@\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site @https:\/\/www.google.com@ contains all these URLs: * @https:\/\/www.google.com\/@ * @https:\/\/www.google.com:443\/@ * @https:\/\/www.google.com\/foo@ * @https:\/\/www.google.com\/foo?bar@ * @https:\/\/www.google.com\/foo#bar@ * @https:\/\/user\@password:www.google.com\/@ But it does not contain these URLs: * @http:\/\/www.google.com\/@ (wrong scheme) * @https:\/\/google.com\/@ (hostname does not match) *
    -- @https:\/\/www.google.com:444\/@ (port does not match) REQUIRED
    sourceWebSite :: (Core.Maybe Core.Text),
    -- | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be @14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5@. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).
    targetAndroidAppCertificateSha256Fingerprint :: (Core.Maybe Core.Text),
    -- | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name @com.google.android.apps.maps@. REQUIRED
    targetAndroidAppPackageName :: (Core.Maybe Core.Text),
    -- | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]:\/\/[:] Hostnames must be fully qualified: they must end in a single period (\"@.@\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site @https:\/\/www.google.com@ contains all these URLs: * @https:\/\/www.google.com\/@ * @https:\/\/www.google.com:443\/@ * @https:\/\/www.google.com\/foo@ * @https:\/\/www.google.com\/foo?bar@ * @https:\/\/www.google.com\/foo#bar@ * @https:\/\/user\@password:www.google.com\/@ But it does not contain these URLs: * @http:\/\/www.google.com\/@ (wrong scheme) * @https:\/\/google.com\/@ (hostname does not match) *
    -- @https:\/\/www.google.com:444\/@ (port does not match) REQUIRED
    targetWebSite :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DigitalAssetLinksAssetlinksCheck' with the minimum fields required to make a request.
newDigitalAssetLinksAssetlinksCheck ::
  DigitalAssetLinksAssetlinksCheck
newDigitalAssetLinksAssetlinksCheck =
  DigitalAssetLinksAssetlinksCheck
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      relation = Core.Nothing,
      sourceAndroidAppCertificateSha256Fingerprint = Core.Nothing,
      sourceAndroidAppPackageName = Core.Nothing,
      sourceWebSite = Core.Nothing,
      targetAndroidAppCertificateSha256Fingerprint = Core.Nothing,
      targetAndroidAppPackageName = Core.Nothing,
      targetWebSite = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DigitalAssetLinksAssetlinksCheck
  where
  type
    Rs DigitalAssetLinksAssetlinksCheck =
      CheckResponse
  type Scopes DigitalAssetLinksAssetlinksCheck = '[]
  requestClient DigitalAssetLinksAssetlinksCheck {..} =
    go
      xgafv
      accessToken
      callback
      relation
      sourceAndroidAppCertificateSha256Fingerprint
      sourceAndroidAppPackageName
      sourceWebSite
      targetAndroidAppCertificateSha256Fingerprint
      targetAndroidAppPackageName
      targetWebSite
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      digitalAssetLinksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DigitalAssetLinksAssetlinksCheckResource
          )
          Core.mempty
