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
-- Module      : Gogol.FirebaseDynamicLinks.ManagedShortLinks.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a managed short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. This differs from CreateShortDynamicLink in the following ways: - The request will also contain a name for the link (non unique name for the front end). - The response must be authenticated with an auth token (generated with the admin service account). - The link will appear in the FDL list of links in the console front end. The Dynamic Link domain in the request must be owned by requester\'s Firebase project.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.managedShortLinks.create@.
module Gogol.FirebaseDynamicLinks.ManagedShortLinks.Create
    (
    -- * Resource
      FirebaseDynamicLinksManagedShortLinksCreateResource

    -- ** Constructing a Request
    , newFirebaseDynamicLinksManagedShortLinksCreate
    , FirebaseDynamicLinksManagedShortLinksCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseDynamicLinks.Types

-- | A resource alias for @firebasedynamiclinks.managedShortLinks.create@ method which the
-- 'FirebaseDynamicLinksManagedShortLinksCreate' request conforms to.
type FirebaseDynamicLinksManagedShortLinksCreateResource
     =
     "v1" Core.:>
       "managedShortLinks:create" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       CreateManagedShortLinkRequest
                       Core.:>
                       Core.Post '[Core.JSON] CreateManagedShortLinkResponse

-- | Creates a managed short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. This differs from CreateShortDynamicLink in the following ways: - The request will also contain a name for the link (non unique name for the front end). - The response must be authenticated with an auth token (generated with the admin service account). - The link will appear in the FDL list of links in the console front end. The Dynamic Link domain in the request must be owned by requester\'s Firebase project.
--
-- /See:/ 'newFirebaseDynamicLinksManagedShortLinksCreate' smart constructor.
data FirebaseDynamicLinksManagedShortLinksCreate = FirebaseDynamicLinksManagedShortLinksCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: CreateManagedShortLinkRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseDynamicLinksManagedShortLinksCreate' with the minimum fields required to make a request.
newFirebaseDynamicLinksManagedShortLinksCreate 
    ::  CreateManagedShortLinkRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FirebaseDynamicLinksManagedShortLinksCreate
newFirebaseDynamicLinksManagedShortLinksCreate payload =
  FirebaseDynamicLinksManagedShortLinksCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FirebaseDynamicLinksManagedShortLinksCreate
         where
        type Rs FirebaseDynamicLinksManagedShortLinksCreate =
             CreateManagedShortLinkResponse
        type Scopes
               FirebaseDynamicLinksManagedShortLinksCreate
             = '["https://www.googleapis.com/auth/firebase"]
        requestClient
          FirebaseDynamicLinksManagedShortLinksCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              firebaseDynamicLinksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FirebaseDynamicLinksManagedShortLinksCreateResource)
                      Core.mempty

