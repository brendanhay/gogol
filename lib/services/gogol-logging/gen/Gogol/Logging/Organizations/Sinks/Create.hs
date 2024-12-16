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
-- Module      : Gogol.Logging.Organizations.Sinks.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink\'s writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.sinks.create@.
module Gogol.Logging.Organizations.Sinks.Create
    (
    -- * Resource
      LoggingOrganizationsSinksCreateResource

    -- ** Constructing a Request
    , LoggingOrganizationsSinksCreate (..)
    , newLoggingOrganizationsSinksCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.organizations.sinks.create@ method which the
-- 'LoggingOrganizationsSinksCreate' request conforms to.
type LoggingOrganizationsSinksCreateResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "sinks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "customWriterIdentity" Core.Text
                   Core.:>
                   Core.QueryParam "uniqueWriterIdentity" Core.Bool
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] LogSink Core.:>
                             Core.Post '[Core.JSON] LogSink

-- | Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink\'s writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.
--
-- /See:/ 'newLoggingOrganizationsSinksCreate' smart constructor.
data LoggingOrganizationsSinksCreate = LoggingOrganizationsSinksCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some\@email. This field can only be specified when you are routing logs to a log bucket that is in a different project than the sink. When not specified, a Logging service account will automatically be generated.
    , customWriterIdentity :: (Core.Maybe Core.Text)
      -- | Required. The resource in which to create the sink: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-project\" \"organizations\/123456789\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogSink
      -- | Optional. Determines the kind of IAM identity returned as writer/identity in the new sink. If this value is omitted or set to false, and if the sink\'s parent is a project, then the value returned as writer/identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink\'s destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer/identity will be a service agent (https:\/\/cloud.google.com\/iam\/docs\/service-account-types#service-agents) used by the sinks with the same parent. For more information, see writer/identity in LogSink.
    , uniqueWriterIdentity :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsSinksCreate' with the minimum fields required to make a request.
newLoggingOrganizationsSinksCreate 
    ::  Core.Text
       -- ^  Required. The resource in which to create the sink: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-project\" \"organizations\/123456789\" See 'parent'.
    -> LogSink
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingOrganizationsSinksCreate
newLoggingOrganizationsSinksCreate parent payload =
  LoggingOrganizationsSinksCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customWriterIdentity = Core.Nothing
    , parent = parent
    , payload = payload
    , uniqueWriterIdentity = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingOrganizationsSinksCreate
         where
        type Rs LoggingOrganizationsSinksCreate = LogSink
        type Scopes LoggingOrganizationsSinksCreate =
             '[CloudPlatform'FullControl, Logging'Admin]
        requestClient LoggingOrganizationsSinksCreate{..}
          = go parent xgafv accessToken callback
              customWriterIdentity
              uniqueWriterIdentity
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingOrganizationsSinksCreateResource)
                      Core.mempty

