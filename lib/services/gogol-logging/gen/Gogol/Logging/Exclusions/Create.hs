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
-- Module      : Gogol.Logging.Exclusions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.exclusions.create@.
module Gogol.Logging.Exclusions.Create
    (
    -- * Resource
      LoggingExclusionsCreateResource

    -- ** Constructing a Request
    , newLoggingExclusionsCreate
    , LoggingExclusionsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.exclusions.create@ method which the
-- 'LoggingExclusionsCreate' request conforms to.
type LoggingExclusionsCreateResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "exclusions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] LogExclusion Core.:>
                         Core.Post '[Core.JSON] LogExclusion

-- | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
--
-- /See:/ 'newLoggingExclusionsCreate' smart constructor.
data LoggingExclusionsCreate = LoggingExclusionsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource in which to create the exclusion: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-logging-project\" \"organizations\/123456789\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogExclusion
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingExclusionsCreate' with the minimum fields required to make a request.
newLoggingExclusionsCreate 
    ::  Core.Text
       -- ^  Required. The parent resource in which to create the exclusion: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-logging-project\" \"organizations\/123456789\" See 'parent'.
    -> LogExclusion
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingExclusionsCreate
newLoggingExclusionsCreate parent payload =
  LoggingExclusionsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingExclusionsCreate
         where
        type Rs LoggingExclusionsCreate = LogExclusion
        type Scopes LoggingExclusionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LoggingExclusionsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingExclusionsCreateResource)
                      Core.mempty

