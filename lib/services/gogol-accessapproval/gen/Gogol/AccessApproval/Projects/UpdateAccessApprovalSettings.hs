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
-- Module      : Gogol.AccessApproval.Projects.UpdateAccessApprovalSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.projects.updateAccessApprovalSettings@.
module Gogol.AccessApproval.Projects.UpdateAccessApprovalSettings
    (
    -- * Resource
      AccessApprovalProjectsUpdateAccessApprovalSettingsResource

    -- ** Constructing a Request
    , AccessApprovalProjectsUpdateAccessApprovalSettings (..)
    , newAccessApprovalProjectsUpdateAccessApprovalSettings
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessApproval.Types

-- | A resource alias for @accessapproval.projects.updateAccessApprovalSettings@ method which the
-- 'AccessApprovalProjectsUpdateAccessApprovalSettings' request conforms to.
type AccessApprovalProjectsUpdateAccessApprovalSettingsResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AccessApprovalSettings
                         Core.:>
                         Core.Patch '[Core.JSON] AccessApprovalSettings

-- | Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.
--
-- /See:/ 'newAccessApprovalProjectsUpdateAccessApprovalSettings' smart constructor.
data AccessApprovalProjectsUpdateAccessApprovalSettings = AccessApprovalProjectsUpdateAccessApprovalSettings
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the settings. Format is one of: * \"projects\/{project}\/accessApprovalSettings\" * \"folders\/{folder}\/accessApprovalSettings\" * \"organizations\/{organization}\/accessApprovalSettings\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AccessApprovalSettings
      -- | The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification/emails & enrolled/services) are supported. For each field, if it is included, the currently stored value will be entirely overwritten with the value of the field passed in this request. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask If this field is left unset, only the notification_emails field will be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalProjectsUpdateAccessApprovalSettings' with the minimum fields required to make a request.
newAccessApprovalProjectsUpdateAccessApprovalSettings 
    ::  Core.Text
       -- ^  The resource name of the settings. Format is one of: * \"projects\/{project}\/accessApprovalSettings\" * \"folders\/{folder}\/accessApprovalSettings\" * \"organizations\/{organization}\/accessApprovalSettings\" See 'name'.
    -> AccessApprovalSettings
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessApprovalProjectsUpdateAccessApprovalSettings
newAccessApprovalProjectsUpdateAccessApprovalSettings name payload =
  AccessApprovalProjectsUpdateAccessApprovalSettings
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessApprovalProjectsUpdateAccessApprovalSettings
         where
        type Rs
               AccessApprovalProjectsUpdateAccessApprovalSettings
             = AccessApprovalSettings
        type Scopes
               AccessApprovalProjectsUpdateAccessApprovalSettings
             = '[CloudPlatform'FullControl]
        requestClient
          AccessApprovalProjectsUpdateAccessApprovalSettings{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessApprovalService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessApprovalProjectsUpdateAccessApprovalSettingsResource)
                      Core.mempty

