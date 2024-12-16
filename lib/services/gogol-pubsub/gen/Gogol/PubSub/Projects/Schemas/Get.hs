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
-- Module      : Gogol.PubSub.Projects.Schemas.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.get@.
module Gogol.PubSub.Projects.Schemas.Get
    (
    -- * Resource
      PubSubProjectsSchemasGetResource

    -- ** Constructing a Request
    , PubSubProjectsSchemasGet (..)
    , newPubSubProjectsSchemasGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.get@ method which the
-- 'PubSubProjectsSchemasGet' request conforms to.
type PubSubProjectsSchemasGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "view" ProjectsSchemasGetView Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Schema

-- | Gets a schema.
--
-- /See:/ 'newPubSubProjectsSchemasGet' smart constructor.
data PubSubProjectsSchemasGet = PubSubProjectsSchemasGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the schema to get. Format is @projects\/{project}\/schemas\/{schema}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The set of fields to return in the response. If not set, returns a Schema with all fields filled out. Set to @BASIC@ to omit the @definition@.
    , view :: (Core.Maybe ProjectsSchemasGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSchemasGet' with the minimum fields required to make a request.
newPubSubProjectsSchemasGet 
    ::  Core.Text
       -- ^  Required. The name of the schema to get. Format is @projects\/{project}\/schemas\/{schema}@. See 'name'.
    -> PubSubProjectsSchemasGet
newPubSubProjectsSchemasGet name =
  PubSubProjectsSchemasGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSchemasGet
         where
        type Rs PubSubProjectsSchemasGet = Schema
        type Scopes PubSubProjectsSchemasGet =
             '[CloudPlatform'FullControl, Pubsub'FullControl]
        requestClient PubSubProjectsSchemasGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              pubSubService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PubSubProjectsSchemasGetResource)
                      Core.mempty

