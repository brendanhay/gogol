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
-- Module      : Gogol.SecurityCenter.Organizations.Assets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists an organization\'s assets.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.list@.
module Gogol.SecurityCenter.Organizations.Assets.List
    (
    -- * Resource
      SecurityCenterOrganizationsAssetsListResource

    -- ** Constructing a Request
    , SecurityCenterOrganizationsAssetsList (..)
    , newSecurityCenterOrganizationsAssetsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.list@ method which the
-- 'SecurityCenterOrganizationsAssetsList' request conforms to.
type SecurityCenterOrganizationsAssetsListResource =
     "v1p1beta1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "assets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "compareDuration" Core.Duration
                   Core.:>
                   Core.QueryParam "fieldMask" Core.FieldMask Core.:>
                     Core.QueryParam "filter" Core.Text Core.:>
                       Core.QueryParam "orderBy" Core.Text Core.:>
                         Core.QueryParam "pageSize" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "readTime" Core.DateTime Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] ListAssetsResponse

-- | Lists an organization\'s assets.
--
-- /See:/ 'newSecurityCenterOrganizationsAssetsList' smart constructor.
data SecurityCenterOrganizationsAssetsList = SecurityCenterOrganizationsAssetsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | When compare/duration is set, the ListAssetsResult\'s \"state/change\" attribute is updated to indicate whether the asset was added, removed, or remained present during the compare/duration period of time that precedes the read/time. This is the time between (read/time - compare/duration) and read/time. The state/change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don\'t affect the result. For example, the results aren\'t affected if the asset is removed and re-created again. Possible \"state/change\" values when compare/duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare/duration, but present at read/time. * \"REMOVED\": indicates that the asset was present at the start of compare/duration, but not present at read/time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare/duration and read/time. If
      -- compare/duration is not specified, then the only possible state/change is \"UNUSED\", which will be the state/change set for all assets present at read/time.
    , compareDuration :: (Core.Maybe Core.Duration)
      -- | A field mask to specify the ListAssetsResult fields to be listed in the response. An empty field mask will list all fields.
    , fieldMask :: (Core.Maybe Core.FieldMask)
      -- | Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators @AND@ and @OR@. Parentheses are supported, and @OR@ has higher precedence than @AND@. Restrictions have the form @@ and may have a @-@ character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security/center/properties.resource/name * resource/properties.a/property * security/marks.marks.marka The supported operators are: * @=@ for all value types. * @>@, @\<@, @>=@, @\<=@ for integer values. * @:@, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals @true@ and @false@ without quotes. The following are the allowed field and operator combinations: * name: @=@ * update/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples:
      -- @update_time = \"2019-06-10T16:07:18-07:00\"@ @update_time = 1560208038000@ * create/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: @create_time = \"2019-06-10T16:07:18-07:00\"@ @create_time = 1560208038000@ * iam/policy.policy/blob: @=@, @:@ * resource/properties: @=@, @:@, @>@, @\<@, @>=@, @\<=@ * security/marks.marks: @=@, @:@ * security/center/properties.resource/name: @=@, @:@ * security/center/properties.resource/display/name: @=@, @:@ * security/center/properties.resource/type: @=@, @:@ * security/center/properties.resource/parent: @=@, @:@ * security/center/properties.resource/parent/display/name: @=@, @:@ * security/center/properties.resource/project: @=@, @:@ * security/center/properties.resource/project/display/name: @=@, @:@ * security/center/properties.resource_owners: @=@, @:@ For example, @resource_properties.size = 100@ is a valid filter string. Use a partial match on the empty string to filter based on a property existing:
      -- @resource_properties.my_property : \"\"@ Use a negated partial match on the empty string to filter based on a property not existing: @-resource_properties.my_property : \"\"@
    , filter :: (Core.Maybe Core.Text)
      -- | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource/properties.a/property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,resource/properties.a/property\". Redundant space characters in the syntax are insignificant. \"name desc,resource/properties.a/property\" and \" name desc , resource/properties.a/property \" are equivalent. The following fields are supported: name update/time resource/properties security/marks.marks security/center/properties.resource/name security/center/properties.resource/display/name security/center/properties.resource/parent security/center/properties.resource/parent/display/name security/center/properties.resource/project security/center/properties.resource/project/display/name security/center/properties.resource_type
    , orderBy :: (Core.Maybe Core.Text)
      -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The value returned by the last @ListAssetsResponse@; indicates that this is a continuation of a prior @ListAssets@ call, and that the system should return the next page of data.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Name of the organization assets should belong to. Its format is \"organizations\/[organization_id]\".
    , parent :: Core.Text
      -- | Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API\'s version of NOW.
    , readTime :: (Core.Maybe Core.DateTime)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsAssetsList' with the minimum fields required to make a request.
newSecurityCenterOrganizationsAssetsList 
    ::  Core.Text
       -- ^  Required. Name of the organization assets should belong to. Its format is \"organizations\/[organization_id]\". See 'parent'.
    -> SecurityCenterOrganizationsAssetsList
newSecurityCenterOrganizationsAssetsList parent =
  SecurityCenterOrganizationsAssetsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , compareDuration = Core.Nothing
    , fieldMask = Core.Nothing
    , filter = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , readTime = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecurityCenterOrganizationsAssetsList
         where
        type Rs SecurityCenterOrganizationsAssetsList =
             ListAssetsResponse
        type Scopes SecurityCenterOrganizationsAssetsList =
             '[CloudPlatform'FullControl]
        requestClient
          SecurityCenterOrganizationsAssetsList{..}
          = go parent xgafv accessToken callback
              compareDuration
              fieldMask
              filter
              orderBy
              pageSize
              pageToken
              readTime
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsAssetsListResource)
                      Core.mempty

