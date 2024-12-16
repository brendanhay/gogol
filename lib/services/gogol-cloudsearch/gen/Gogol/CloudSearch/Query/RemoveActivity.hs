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
-- Module      : Gogol.CloudSearch.Query.RemoveActivity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides functionality to remove logged activity for a user. Currently to be used only for Chat 1p clients __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Remove Activity requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.removeActivity@.
module Gogol.CloudSearch.Query.RemoveActivity
    (
    -- * Resource
      CloudSearchQueryRemoveActivityResource

    -- ** Constructing a Request
    , CloudSearchQueryRemoveActivity (..)
    , newCloudSearchQueryRemoveActivity
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudSearch.Types

-- | A resource alias for @cloudsearch.query.removeActivity@ method which the
-- 'CloudSearchQueryRemoveActivity' request conforms to.
type CloudSearchQueryRemoveActivityResource =
     "v1" Core.:>
       "query:removeActivity" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RemoveActivityRequest
                       Core.:> Core.Post '[Core.JSON] RemoveActivityResponse

-- | Provides functionality to remove logged activity for a user. Currently to be used only for Chat 1p clients __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Remove Activity requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ 'newCloudSearchQueryRemoveActivity' smart constructor.
data CloudSearchQueryRemoveActivity = CloudSearchQueryRemoveActivity
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RemoveActivityRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchQueryRemoveActivity' with the minimum fields required to make a request.
newCloudSearchQueryRemoveActivity 
    ::  RemoveActivityRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSearchQueryRemoveActivity
newCloudSearchQueryRemoveActivity payload =
  CloudSearchQueryRemoveActivity
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSearchQueryRemoveActivity
         where
        type Rs CloudSearchQueryRemoveActivity =
             RemoveActivityResponse
        type Scopes CloudSearchQueryRemoveActivity =
             '[CloudSearch'FullControl, CloudSearch'Query]
        requestClient CloudSearchQueryRemoveActivity{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudSearchQueryRemoveActivityResource)
                      Core.mempty

