{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAP.ValidateAttributeExpression
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates that a given CEL expression conforms to IAP restrictions.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.validateAttributeExpression@.
module Gogol.IAP.ValidateAttributeExpression
  ( -- * Resource
    IAPValidateAttributeExpressionResource,

    -- ** Constructing a Request
    IAPValidateAttributeExpression (..),
    newIAPValidateAttributeExpression,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.validateAttributeExpression@ method which the
-- 'IAPValidateAttributeExpression' request conforms to.
type IAPValidateAttributeExpressionResource =
  "v1"
    Core.:> Core.CaptureMode "name" "validateAttributeExpression" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "expression" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ValidateIapAttributeExpressionResponse

-- | Validates that a given CEL expression conforms to IAP restrictions.
--
-- /See:/ 'newIAPValidateAttributeExpression' smart constructor.
data IAPValidateAttributeExpression = IAPValidateAttributeExpression
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. User input string expression. Should be of the form @attributes.saml_attributes.filter(attribute, attribute.name in [\'{attribute_name}\', \'{attribute_name}\'])@
    expression :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the IAP protected resource.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPValidateAttributeExpression' with the minimum fields required to make a request.
newIAPValidateAttributeExpression ::
  -- |  Required. The resource name of the IAP protected resource. See 'name'.
  Core.Text ->
  IAPValidateAttributeExpression
newIAPValidateAttributeExpression name =
  IAPValidateAttributeExpression
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      expression = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPValidateAttributeExpression where
  type
    Rs IAPValidateAttributeExpression =
      ValidateIapAttributeExpressionResponse
  type
    Scopes IAPValidateAttributeExpression =
      '[CloudPlatform'FullControl]
  requestClient IAPValidateAttributeExpression {..} =
    go
      name
      xgafv
      accessToken
      callback
      expression
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAPService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAPValidateAttributeExpressionResource)
          Core.mempty
