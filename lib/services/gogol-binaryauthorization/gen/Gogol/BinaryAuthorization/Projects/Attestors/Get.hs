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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an attestor. Returns @NOT_FOUND@ if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.get@.
module Gogol.BinaryAuthorization.Projects.Attestors.Get
    (
    -- * Resource
      BinaryAuthorizationProjectsAttestorsGetResource

    -- ** Constructing a Request
    , BinaryAuthorizationProjectsAttestorsGet (..)
    , newBinaryAuthorizationProjectsAttestorsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Types

-- | A resource alias for @binaryauthorization.projects.attestors.get@ method which the
-- 'BinaryAuthorizationProjectsAttestorsGet' request conforms to.
type BinaryAuthorizationProjectsAttestorsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Attestor

-- | Gets an attestor. Returns @NOT_FOUND@ if the attestor does not exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsGet' smart constructor.
data BinaryAuthorizationProjectsAttestorsGet = BinaryAuthorizationProjectsAttestorsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the attestor to retrieve, in the format @projects\/*\/attestors\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsGet' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsGet 
    ::  Core.Text
       -- ^  Required. The name of the attestor to retrieve, in the format @projects\/*\/attestors\/*@. See 'name'.
    -> BinaryAuthorizationProjectsAttestorsGet
newBinaryAuthorizationProjectsAttestorsGet name =
  BinaryAuthorizationProjectsAttestorsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BinaryAuthorizationProjectsAttestorsGet
         where
        type Rs BinaryAuthorizationProjectsAttestorsGet =
             Attestor
        type Scopes BinaryAuthorizationProjectsAttestorsGet =
             '[CloudPlatform'FullControl]
        requestClient
          BinaryAuthorizationProjectsAttestorsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              binaryAuthorizationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BinaryAuthorizationProjectsAttestorsGetResource)
                      Core.mempty

