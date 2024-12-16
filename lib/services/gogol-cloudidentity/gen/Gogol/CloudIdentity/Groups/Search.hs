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
-- Module      : Gogol.CloudIdentity.Groups.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for @Group@ resources matching a specified query.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.search@.
module Gogol.CloudIdentity.Groups.Search
    (
    -- * Resource
      CloudIdentityGroupsSearchResource

    -- ** Constructing a Request
    , CloudIdentityGroupsSearch (..)
    , newCloudIdentityGroupsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.search@ method which the
-- 'CloudIdentityGroupsSearch' request conforms to.
type CloudIdentityGroupsSearchResource =
     "v1" Core.:>
       "groups:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "query" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "view" GroupsSearchView Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] SearchGroupsResponse

-- | Searches for @Group@ resources matching a specified query.
--
-- /See:/ 'newCloudIdentityGroupsSearch' smart constructor.
data CloudIdentityGroupsSearch = CloudIdentityGroupsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of results to return. Note that the number of results returned may be less than this value even if there are more available results. To fetch all results, clients must continue calling this method repeatedly until the response no longer contains a @next_page_token@. If unspecified, defaults to 200 for @GroupView.BASIC@ and 50 for @GroupView.FULL@. Must not be greater than 1000 for @GroupView.BASIC@ or 500 for @GroupView.FULL@.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The @next_page_token@ value returned from a previous search request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The search query. * Must be specified in <https://opensource.google/projects/cel Common Expression Language>. * Must contain equality operators on the parent, e.g. @parent == \'customers\/{customer_id}\'@. The @customer_id@ must begin with \"C\" (for example, \'C046psxkn\'). [Find your customer ID.] (https:\/\/support.google.com\/cloudidentity\/answer\/10070793) * Can contain optional inclusion operators on @labels@ such as @\'cloudidentity.googleapis.com\/groups.discussion_forum\' in labels@). * Can contain an optional equality operator on @domain_name@. e.g. @domain_name == \'examplepetstore.com\'@ * Can contain optional @startsWith\/contains\/equality@ operators on @group_key@, e.g. @group_key.startsWith(\'dev\')@, @group_key.contains(\'dev\'), group_key == \'dev\@examplepetstore.com\'@ * Can contain optional @startsWith\/contains\/equality@ operators on @display_name@, such as @display_name.startsWith(\'dev\')@ , @display_name.contains(\'dev\')@, @display_name == \'dev\'@
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The level of detail to be returned. If unspecified, defaults to @View.BASIC@.
    , view :: (Core.Maybe GroupsSearchView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsSearch' with the minimum fields required to make a request.
newCloudIdentityGroupsSearch 
    ::  CloudIdentityGroupsSearch
newCloudIdentityGroupsSearch =
  CloudIdentityGroupsSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsSearch
         where
        type Rs CloudIdentityGroupsSearch =
             SearchGroupsResponse
        type Scopes CloudIdentityGroupsSearch =
             '[CloudIdentity'Groups,
               CloudIdentity'Groups'Readonly,
               CloudPlatform'FullControl]
        requestClient CloudIdentityGroupsSearch{..}
          = go xgafv accessToken callback pageSize pageToken
              query
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityGroupsSearchResource)
                      Core.mempty

