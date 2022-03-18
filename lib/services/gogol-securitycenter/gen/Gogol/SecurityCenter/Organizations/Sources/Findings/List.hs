{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Findings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists an organization or source\'s findings. To list across all sources provide a @-@ as the source id. Example: \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.list@.
module Gogol.SecurityCenter.Organizations.Sources.Findings.List
  ( -- * Resource
    SecurityCenterOrganizationsSourcesFindingsListResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsSourcesFindingsList,
    SecurityCenterOrganizationsSourcesFindingsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.list@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsList' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsListResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "findings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "compareDuration" Core.GDuration
    Core.:> Core.QueryParam "fieldMask" Core.GFieldMask
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "readTime" Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFindingsResponse

-- | Lists an organization or source\'s findings. To list across all sources provide a @-@ as the source id. Example: \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsList' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsList = SecurityCenterOrganizationsSourcesFindingsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When compare/duration is set, the ListFindingsResult\'s \"state/change\" attribute is updated to indicate whether the finding had its state changed, the finding\'s state remained unchanged, or if the finding was added in any state during the compare/duration period of time that precedes the read/time. This is the time between (read/time - compare/duration) and read/time. The state/change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don\'t affect the result. For example, the results aren\'t affected if the finding is made inactive and then active again. Possible \"state/change\" values when compare/duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare/duration, but changed its state at read/time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare/duration and did not change state at
    -- read/time. * \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare/duration, but was present at read/time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare/duration, but did not match the filter at read/time. If compare/duration is not specified, then the only possible state/change is \"UNUSED\", which will be the state/change set for all findings present at read/time.
    compareDuration :: (Core.Maybe Core.GDuration),
    -- | A field mask to specify the Finding fields to be listed in the response. An empty field mask will list all fields.
    fieldMask :: (Core.Maybe Core.GFieldMask),
    -- | Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators @AND@ and @OR@. Parentheses are supported, and @OR@ has higher precedence than @AND@. Restrictions have the form @@ and may have a @-@ character in front of them to indicate negation. Examples include: * name * source/properties.a/property * security/marks.marks.marka The supported operators are: * @=@ for all value types. * @>@, @\<@, @>=@, @\<=@ for integer values. * @:@, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals @true@ and @false@ without quotes. The following field and operator combinations are supported: name: @=@ parent: @=@, @:@ resource/name: @=@, @:@ state: @=@, @:@ category: @=@, @:@ external/uri: @=@, @:@ event/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples:
    -- @event_time = \"2019-06-10T16:07:18-07:00\"@ @event_time = 1560208038000@ security/marks.marks: @=@, @:@ source/properties: @=@, @:@, @>@, @\<@, @>=@, @\<=@ For example, @source_properties.size = 100@ is a valid filter string. Use a partial match on the empty string to filter based on a property existing: @source_properties.my_property : \"\"@ Use a negated partial match on the empty string to filter based on a property not existing: @-source_properties.my_property : \"\"@
    filter :: (Core.Maybe Core.Text),
    -- | Expression that defines what fields and order to use for sorting. The string value should follow SQL syntax: comma separated list of fields. For example: \"name,resource/properties.a/property\". The default sorting order is ascending. To specify descending order for a field, a suffix \" desc\" should be appended to the field name. For example: \"name desc,source/properties.a/property\". Redundant space characters in the syntax are insignificant. \"name desc,source/properties.a/property\" and \" name desc , source/properties.a/property \" are equivalent. The following fields are supported: name parent state category resource/name event/time source/properties security/marks.marks
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListFindingsResponse@; indicates that this is a continuation of a prior @ListFindings@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the source the findings belong to. Its format is \"organizations\/[organization/id]\/sources\/[source/id]\". To list across all sources provide a source/id of @-@. For example: organizations\/{organization/id}\/sources\/-
    parent :: Core.Text,
    -- | Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API\'s version of NOW.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsList' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsList ::
  -- |  Required. Name of the source the findings belong to. Its format is \"organizations\/[organization/id]\/sources\/[source/id]\". To list across all sources provide a source/id of @-@. For example: organizations\/{organization/id}\/sources\/- See 'parent'.
  Core.Text ->
  SecurityCenterOrganizationsSourcesFindingsList
newSecurityCenterOrganizationsSourcesFindingsList parent =
  SecurityCenterOrganizationsSourcesFindingsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      compareDuration = Core.Nothing,
      fieldMask = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      readTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesFindingsList
  where
  type
    Rs
      SecurityCenterOrganizationsSourcesFindingsList =
      ListFindingsResponse
  type
    Scopes
      SecurityCenterOrganizationsSourcesFindingsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsSourcesFindingsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsSourcesFindingsListResource
            )
            Core.mempty
