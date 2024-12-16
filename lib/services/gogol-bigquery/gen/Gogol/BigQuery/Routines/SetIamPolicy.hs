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
-- Module      : Gogol.BigQuery.Routines.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.setIamPolicy@.
module Gogol.BigQuery.Routines.SetIamPolicy
    (
    -- * Resource
      BigQueryRoutinesSetIamPolicyResource

    -- ** Constructing a Request
    , BigQueryRoutinesSetIamPolicy (..)
    , newBigQueryRoutinesSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.routines.setIamPolicy@ method which the
-- 'BigQueryRoutinesSetIamPolicy' request conforms to.
type BigQueryRoutinesSetIamPolicyResource =
     "bigquery" Core.:>
       "v2" Core.:>
         Core.CaptureMode "resource" "setIamPolicy" Core.Text
           Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] SetIamPolicyRequest Core.:>
                         Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ 'newBigQueryRoutinesSetIamPolicy' smart constructor.
data BigQueryRoutinesSetIamPolicy = BigQueryRoutinesSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRoutinesSetIamPolicy' with the minimum fields required to make a request.
newBigQueryRoutinesSetIamPolicy 
    ::  SetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> BigQueryRoutinesSetIamPolicy
newBigQueryRoutinesSetIamPolicy payload resource =
  BigQueryRoutinesSetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigQueryRoutinesSetIamPolicy
         where
        type Rs BigQueryRoutinesSetIamPolicy = Policy
        type Scopes BigQueryRoutinesSetIamPolicy =
             '[Bigquery'FullControl, CloudPlatform'FullControl]
        requestClient BigQueryRoutinesSetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryRoutinesSetIamPolicyResource)
                      Core.mempty
