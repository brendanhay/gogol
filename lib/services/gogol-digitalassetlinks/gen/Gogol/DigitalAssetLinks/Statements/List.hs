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
-- Module      : Gogol.DigitalAssetLinks.Statements.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all statements from a given source that match the specified target and statement string. The API guarantees that all statements with secure source assets, such as HTTPS websites or Android apps, have been made in a secure way by the owner of those assets, as described in the <https://github.com/google/digitalassetlinks/blob/master/well-known/details.md Digital Asset Links technical design specification>. Specifically, you should consider that for insecure websites (that is, where the URL starts with @http:\/\/@ instead of @https:\/\/@), this guarantee cannot be made. The @List@ command is most useful in cases where the API client wants to know all the ways in which two assets are related, or enumerate all the relationships from a particular source asset. Example: a feature that helps users navigate to related items. When a mobile app is running on a device, the feature would make it easy to navigate to the corresponding web site or Google+ profile.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference> for @digitalassetlinks.statements.list@.
module Gogol.DigitalAssetLinks.Statements.List
    (
    -- * Resource
      DigitalAssetLinksStatementsListResource

    -- ** Constructing a Request
    , DigitalAssetLinksStatementsList (..)
    , newDigitalAssetLinksStatementsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DigitalAssetLinks.Types

-- | A resource alias for @digitalassetlinks.statements.list@ method which the
-- 'DigitalAssetLinksStatementsList' request conforms to.
type DigitalAssetLinksStatementsListResource =
     "v1" Core.:>
       "statements:list" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "relation" Core.Text Core.:>
                 Core.QueryParam
                   "source.androidApp.certificate.sha256Fingerprint"
                   Core.Text
                   Core.:>
                   Core.QueryParam "source.androidApp.packageName"
                     Core.Text
                     Core.:>
                     Core.QueryParam "source.web.site" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListResponse

-- | Retrieves a list of all statements from a given source that match the specified target and statement string. The API guarantees that all statements with secure source assets, such as HTTPS websites or Android apps, have been made in a secure way by the owner of those assets, as described in the <https://github.com/google/digitalassetlinks/blob/master/well-known/details.md Digital Asset Links technical design specification>. Specifically, you should consider that for insecure websites (that is, where the URL starts with @http:\/\/@ instead of @https:\/\/@), this guarantee cannot be made. The @List@ command is most useful in cases where the API client wants to know all the ways in which two assets are related, or enumerate all the relationships from a particular source asset. Example: a feature that helps users navigate to related items. When a mobile app is running on a device, the feature would make it easy to navigate to the corresponding web site or Google+ profile.
--
-- /See:/ 'newDigitalAssetLinksStatementsList' smart constructor.
data DigitalAssetLinksStatementsList = DigitalAssetLinksStatementsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Use only associations that match the specified relation. See the <#Statement Statement> message for a detailed definition of relation strings. For a query to match a statement, one of the following must be true: * both the query\'s and the statement\'s relation strings match exactly, or * the query\'s relation string is empty or missing. Example: A query with relation @delegate_permission\/common.handle_all_urls@ matches an asset link with relation @delegate_permission\/common.handle_all_urls@.
    , relation :: (Core.Maybe Core.Text)
      -- | The uppercase SHA-265 fingerprint of the certificate. From the PEM certificate, it can be acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256: SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\ 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256 SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\ 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the contents of this field would be @14:6D:E9:83:C5:73: 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF: 44:E5@. If these tools are not available to you, you can convert the PEM certificate into the DER format, compute the SHA-256 hash of that string and represent the result as a hexstring (that is, uppercase hexadecimal representations of each octet, separated by colons).
    , sourceAndroidAppCertificateSha256Fingerprint :: (Core.Maybe Core.Text)
      -- | Android App assets are naturally identified by their Java package name. For example, the Google Maps app uses the package name @com.google.android.apps.maps@. REQUIRED
    , sourceAndroidAppPackageName :: (Core.Maybe Core.Text)
      -- | Web assets are identified by a URL that contains only the scheme, hostname and port parts. The format is http[s]:\/\/[:] Hostnames must be fully qualified: they must end in a single period (\"@.@\"). Only the schemes \"http\" and \"https\" are currently allowed. Port numbers are given as a decimal number, and they must be omitted if the standard port numbers are used: 80 for http and 443 for https. We call this limited URL the \"site\". All URLs that share the same scheme, hostname and port are considered to be a part of the site and thus belong to the web asset. Example: the asset with the site @https:\/\/www.google.com@ contains all these URLs: * @https:\/\/www.google.com\/@ * @https:\/\/www.google.com:443\/@ * @https:\/\/www.google.com\/foo@ * @https:\/\/www.google.com\/foo?bar@ * @https:\/\/www.google.com\/foo#bar@ * @https:\/\/user\@password:www.google.com\/@ But it does not contain these URLs: * @http:\/\/www.google.com\/@ (wrong scheme) * @https:\/\/google.com\/@ (hostname does not match) *
      -- @https:\/\/www.google.com:444\/@ (port does not match) REQUIRED
    , sourceWebSite :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DigitalAssetLinksStatementsList' with the minimum fields required to make a request.
newDigitalAssetLinksStatementsList 
    ::  DigitalAssetLinksStatementsList
newDigitalAssetLinksStatementsList =
  DigitalAssetLinksStatementsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , relation = Core.Nothing
    , sourceAndroidAppCertificateSha256Fingerprint = Core.Nothing
    , sourceAndroidAppPackageName = Core.Nothing
    , sourceWebSite = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DigitalAssetLinksStatementsList
         where
        type Rs DigitalAssetLinksStatementsList =
             ListResponse
        type Scopes DigitalAssetLinksStatementsList = '[]
        requestClient DigitalAssetLinksStatementsList{..}
          = go xgafv accessToken callback relation
              sourceAndroidAppCertificateSha256Fingerprint
              sourceAndroidAppPackageName
              sourceWebSite
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              digitalAssetLinksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DigitalAssetLinksStatementsListResource)
                      Core.mempty

