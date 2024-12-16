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
-- Module      : Gogol.PubSub.Projects.Schemas.ValidateMessage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a message against a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.validateMessage@.
module Gogol.PubSub.Projects.Schemas.ValidateMessage
    (
    -- * Resource
      PubSubProjectsSchemasValidateMessageResource

    -- ** Constructing a Request
    , PubSubProjectsSchemasValidateMessage (..)
    , newPubSubProjectsSchemasValidateMessage
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.validateMessage@ method which the
-- 'PubSubProjectsSchemasValidateMessage' request conforms to.
type PubSubProjectsSchemasValidateMessageResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "schemas:validateMessage" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ValidateMessageRequest
                         Core.:>
                         Core.Post '[Core.JSON] ValidateMessageResponse

-- | Validates a message against a schema.
--
-- /See:/ 'newPubSubProjectsSchemasValidateMessage' smart constructor.
data PubSubProjectsSchemasValidateMessage = PubSubProjectsSchemasValidateMessage
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the project in which to validate schemas. Format is @projects\/{project-id}@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ValidateMessageRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasValidateMessage' with the minimum fields required to make a request.
newPubSubProjectsSchemasValidateMessage 
    ::  Core.Text
       -- ^  Required. The name of the project in which to validate schemas. Format is @projects\/{project-id}@. See 'parent'.
    -> ValidateMessageRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> PubSubProjectsSchemasValidateMessage
newPubSubProjectsSchemasValidateMessage parent payload =
  PubSubProjectsSchemasValidateMessage
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PubSubProjectsSchemasValidateMessage
         where
        type Rs PubSubProjectsSchemasValidateMessage =
             ValidateMessageResponse
        type Scopes PubSubProjectsSchemasValidateMessage =
             '[CloudPlatform'FullControl, Pubsub'FullControl]
        requestClient
          PubSubProjectsSchemasValidateMessage{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              pubSubService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           PubSubProjectsSchemasValidateMessageResource)
                      Core.mempty

