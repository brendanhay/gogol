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
-- Module      : Gogol.Discovery.Apis.GetRest
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the description of a particular version of an api.
--
-- /See:/ <https://developers.google.com/discovery/ API Discovery Service Reference> for @discovery.apis.getRest@.
module Gogol.Discovery.Apis.GetRest
    (
    -- * Resource
      DiscoveryApisGetRestResource

    -- ** Constructing a Request
    , newDiscoveryApisGetRest
    , DiscoveryApisGetRest
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Discovery.Types

-- | A resource alias for @discovery.apis.getRest@ method which the
-- 'DiscoveryApisGetRest' request conforms to.
type DiscoveryApisGetRestResource =
     "discovery" Core.:>
       "v1" Core.:>
         "apis" Core.:>
           Core.Capture "api" Core.Text Core.:>
             Core.Capture "version" Core.Text Core.:>
               "rest" Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] RestDescription

-- | Retrieve the description of a particular version of an api.
--
-- /See:/ 'newDiscoveryApisGetRest' smart constructor.
data DiscoveryApisGetRest = DiscoveryApisGetRest
    {
      -- | The name of the API.
      api :: Core.Text
      -- | The version of the API.
    , version :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiscoveryApisGetRest' with the minimum fields required to make a request.
newDiscoveryApisGetRest 
    ::  Core.Text
       -- ^  The name of the API. See 'api'.
    -> Core.Text
       -- ^  The version of the API. See 'version'.
    -> DiscoveryApisGetRest
newDiscoveryApisGetRest api version =
  DiscoveryApisGetRest {api = api, version = version}

instance Core.GoogleRequest DiscoveryApisGetRest
         where
        type Rs DiscoveryApisGetRest = RestDescription
        type Scopes DiscoveryApisGetRest = '[]
        requestClient DiscoveryApisGetRest{..}
          = go api version (Core.Just Core.AltJSON)
              discoveryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DiscoveryApisGetRestResource)
                      Core.mempty

