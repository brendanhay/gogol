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
-- Module      : Network.Google.SQLAdmin.Sql.SslCerts.CreateEphemeral
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.sslCerts.createEphemeral@.
module Network.Google.SQLAdmin.Sql.SslCerts.CreateEphemeral
  ( -- * Resource
    SqlSslCertsCreateEphemeralResource,

    -- ** Constructing a Request
    newSqlSslCertsCreateEphemeral,
    SqlSslCertsCreateEphemeral,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.createEphemeral@ method which the
-- 'SqlSslCertsCreateEphemeral' request conforms to.
type SqlSslCertsCreateEphemeralResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "createEphemeral"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SslCertsCreateEphemeralRequest
    Core.:> Core.Post '[Core.JSON] SslCert

-- | Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.
--
-- /See:/ 'newSqlSslCertsCreateEphemeral' smart constructor.
data SqlSslCertsCreateEphemeral = SqlSslCertsCreateEphemeral
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: SslCertsCreateEphemeralRequest,
    -- | Project ID of the Cloud SQL project.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlSslCertsCreateEphemeral' with the minimum fields required to make a request.
newSqlSslCertsCreateEphemeral ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SslCertsCreateEphemeralRequest ->
  -- |  Project ID of the Cloud SQL project. See 'project'.
  Core.Text ->
  SqlSslCertsCreateEphemeral
newSqlSslCertsCreateEphemeral instance' payload project =
  SqlSslCertsCreateEphemeral
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SqlSslCertsCreateEphemeral
  where
  type Rs SqlSslCertsCreateEphemeral = SslCert
  type
    Scopes SqlSslCertsCreateEphemeral =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/sqlservice.admin"
       ]
  requestClient SqlSslCertsCreateEphemeral {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sQLAdminService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SqlSslCertsCreateEphemeralResource
          )
          Core.mempty
