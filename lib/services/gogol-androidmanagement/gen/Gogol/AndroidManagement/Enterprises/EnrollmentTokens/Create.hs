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
-- Module      : Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enrollment token for a given enterprise. It\'s up to the caller\'s responsibility to manage the lifecycle of newly created tokens and deleting them when they\'re not intended to be used anymore.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.create@.
module Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Create
    (
    -- * Resource
      AndroidManagementEnterprisesEnrollmentTokensCreateResource

    -- ** Constructing a Request
    , AndroidManagementEnterprisesEnrollmentTokensCreate (..)
    , newAndroidManagementEnterprisesEnrollmentTokensCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.create@ method which the
-- 'AndroidManagementEnterprisesEnrollmentTokensCreate' request conforms to.
type AndroidManagementEnterprisesEnrollmentTokensCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "enrollmentTokens" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] EnrollmentToken Core.:>
                         Core.Post '[Core.JSON] EnrollmentToken

-- | Creates an enrollment token for a given enterprise. It\'s up to the caller\'s responsibility to manage the lifecycle of newly created tokens and deleting them when they\'re not intended to be used anymore.
--
-- /See:/ 'newAndroidManagementEnterprisesEnrollmentTokensCreate' smart constructor.
data AndroidManagementEnterprisesEnrollmentTokensCreate = AndroidManagementEnterprisesEnrollmentTokensCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: EnrollmentToken
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesEnrollmentTokensCreate' with the minimum fields required to make a request.
newAndroidManagementEnterprisesEnrollmentTokensCreate 
    ::  Core.Text
       -- ^  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'parent'.
    -> EnrollmentToken
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidManagementEnterprisesEnrollmentTokensCreate
newAndroidManagementEnterprisesEnrollmentTokensCreate parent payload =
  AndroidManagementEnterprisesEnrollmentTokensCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementEnterprisesEnrollmentTokensCreate
         where
        type Rs
               AndroidManagementEnterprisesEnrollmentTokensCreate
             = EnrollmentToken
        type Scopes
               AndroidManagementEnterprisesEnrollmentTokensCreate
             = '[Androidmanagement'FullControl]
        requestClient
          AndroidManagementEnterprisesEnrollmentTokensCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidManagementEnterprisesEnrollmentTokensCreateResource)
                      Core.mempty

