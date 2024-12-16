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
-- Module      : Gogol.Logging.BillingAccounts.Sinks.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer/identity; see the unique/writer_identity field.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.sinks.patch@.
module Gogol.Logging.BillingAccounts.Sinks.Patch
    (
    -- * Resource
      LoggingBillingAccountsSinksPatchResource

    -- ** Constructing a Request
    , LoggingBillingAccountsSinksPatch (..)
    , newLoggingBillingAccountsSinksPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.billingAccounts.sinks.patch@ method which the
-- 'LoggingBillingAccountsSinksPatch' request conforms to.
type LoggingBillingAccountsSinksPatchResource =
     "v2" Core.:>
       Core.Capture "sinkName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "customWriterIdentity" Core.Text
                 Core.:>
                 Core.QueryParam "uniqueWriterIdentity" Core.Bool
                   Core.:>
                   Core.QueryParam "updateMask" Core.FieldMask Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] LogSink Core.:>
                             Core.Patch '[Core.JSON] LogSink

-- | Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer/identity; see the unique/writer_identity field.
--
-- /See:/ 'newLoggingBillingAccountsSinksPatch' smart constructor.
data LoggingBillingAccountsSinksPatch = LoggingBillingAccountsSinksPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some\@email. This field can only be specified when you are routing logs to a log bucket that is in a different project than the sink. When not specified, a Logging service account will automatically be generated.
    , customWriterIdentity :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: LogSink
      -- | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\"
    , sinkName :: Core.Text
      -- | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer/identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink\'s writer/identity. If the old value is false and the new value is true, then writer_identity is changed to a service agent (https:\/\/cloud.google.com\/iam\/docs\/service-account-types#service-agents) owned by Cloud Logging. It is an error if the old value is true and the new value is set to false or defaulted to false.
    , uniqueWriterIdentity :: (Core.Maybe Core.Bool)
      -- | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:destination,filter,includeChildrenAt some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=filter
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsSinksPatch' with the minimum fields required to make a request.
newLoggingBillingAccountsSinksPatch 
    ::  LogSink
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \"projects\/[PROJECT/ID]\/sinks\/[SINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/sinks\/[SINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/sinks\/[SINK/ID]\" \"folders\/[FOLDER/ID]\/sinks\/[SINK_ID]\" For example:\"projects\/my-project\/sinks\/my-sink\" See 'sinkName'.
    -> LoggingBillingAccountsSinksPatch
newLoggingBillingAccountsSinksPatch payload sinkName =
  LoggingBillingAccountsSinksPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customWriterIdentity = Core.Nothing
    , payload = payload
    , sinkName = sinkName
    , uniqueWriterIdentity = Core.Nothing
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingBillingAccountsSinksPatch
         where
        type Rs LoggingBillingAccountsSinksPatch = LogSink
        type Scopes LoggingBillingAccountsSinksPatch =
             '[CloudPlatform'FullControl, Logging'Admin]
        requestClient LoggingBillingAccountsSinksPatch{..}
          = go sinkName xgafv accessToken callback
              customWriterIdentity
              uniqueWriterIdentity
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingBillingAccountsSinksPatchResource)
                      Core.mempty

