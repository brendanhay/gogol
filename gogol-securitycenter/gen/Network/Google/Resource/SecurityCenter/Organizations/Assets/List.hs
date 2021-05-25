{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Assets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists an organization\'s assets.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.list@.
module Network.Google.Resource.SecurityCenter.Organizations.Assets.List
    (
    -- * REST Resource
      OrganizationsAssetsListResource

    -- * Creating a Request
    , organizationsAssetsList
    , OrganizationsAssetsList

    -- * Request Lenses
    , oalParent
    , oalXgafv
    , oalReadTime
    , oalUploadProtocol
    , oalOrderBy
    , oalAccessToken
    , oalUploadType
    , oalFieldMask
    , oalFilter
    , oalPageToken
    , oalPageSize
    , oalCompareDuration
    , oalCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.list@ method which the
-- 'OrganizationsAssetsList' request conforms to.
type OrganizationsAssetsListResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "assets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "readTime" DateTime' :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "fieldMask" GFieldMask :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "compareDuration" GDuration :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListAssetsResponse

-- | Lists an organization\'s assets.
--
-- /See:/ 'organizationsAssetsList' smart constructor.
data OrganizationsAssetsList =
  OrganizationsAssetsList'
    { _oalParent :: !Text
    , _oalXgafv :: !(Maybe Xgafv)
    , _oalReadTime :: !(Maybe DateTime')
    , _oalUploadProtocol :: !(Maybe Text)
    , _oalOrderBy :: !(Maybe Text)
    , _oalAccessToken :: !(Maybe Text)
    , _oalUploadType :: !(Maybe Text)
    , _oalFieldMask :: !(Maybe GFieldMask)
    , _oalFilter :: !(Maybe Text)
    , _oalPageToken :: !(Maybe Text)
    , _oalPageSize :: !(Maybe (Textual Int32))
    , _oalCompareDuration :: !(Maybe GDuration)
    , _oalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsAssetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oalParent'
--
-- * 'oalXgafv'
--
-- * 'oalReadTime'
--
-- * 'oalUploadProtocol'
--
-- * 'oalOrderBy'
--
-- * 'oalAccessToken'
--
-- * 'oalUploadType'
--
-- * 'oalFieldMask'
--
-- * 'oalFilter'
--
-- * 'oalPageToken'
--
-- * 'oalPageSize'
--
-- * 'oalCompareDuration'
--
-- * 'oalCallback'
organizationsAssetsList
    :: Text -- ^ 'oalParent'
    -> OrganizationsAssetsList
organizationsAssetsList pOalParent_ =
  OrganizationsAssetsList'
    { _oalParent = pOalParent_
    , _oalXgafv = Nothing
    , _oalReadTime = Nothing
    , _oalUploadProtocol = Nothing
    , _oalOrderBy = Nothing
    , _oalAccessToken = Nothing
    , _oalUploadType = Nothing
    , _oalFieldMask = Nothing
    , _oalFilter = Nothing
    , _oalPageToken = Nothing
    , _oalPageSize = Nothing
    , _oalCompareDuration = Nothing
    , _oalCallback = Nothing
    }


-- | Required. Name of the organization assets should belong to. Its format
-- is \"organizations\/[organization_id]\".
oalParent :: Lens' OrganizationsAssetsList Text
oalParent
  = lens _oalParent (\ s a -> s{_oalParent = a})

-- | V1 error format.
oalXgafv :: Lens' OrganizationsAssetsList (Maybe Xgafv)
oalXgafv = lens _oalXgafv (\ s a -> s{_oalXgafv = a})

-- | Time used as a reference point when filtering assets. The filter is
-- limited to assets existing at the supplied time and their values are
-- those at that specific time. Absence of this field will default to the
-- API\'s version of NOW.
oalReadTime :: Lens' OrganizationsAssetsList (Maybe UTCTime)
oalReadTime
  = lens _oalReadTime (\ s a -> s{_oalReadTime = a}) .
      mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oalUploadProtocol :: Lens' OrganizationsAssetsList (Maybe Text)
oalUploadProtocol
  = lens _oalUploadProtocol
      (\ s a -> s{_oalUploadProtocol = a})

-- | Expression that defines what fields and order to use for sorting. The
-- string value should follow SQL syntax: comma separated list of fields.
-- For example: \"name,resource_properties.a_property\". The default
-- sorting order is ascending. To specify descending order for a field, a
-- suffix \" desc\" should be appended to the field name. For example:
-- \"name desc,resource_properties.a_property\". Redundant space characters
-- in the syntax are insignificant. \"name
-- desc,resource_properties.a_property\" and \" name desc ,
-- resource_properties.a_property \" are equivalent. The following fields
-- are supported: name update_time resource_properties security_marks.marks
-- security_center_properties.resource_name
-- security_center_properties.resource_display_name
-- security_center_properties.resource_parent
-- security_center_properties.resource_parent_display_name
-- security_center_properties.resource_project
-- security_center_properties.resource_project_display_name
-- security_center_properties.resource_type
oalOrderBy :: Lens' OrganizationsAssetsList (Maybe Text)
oalOrderBy
  = lens _oalOrderBy (\ s a -> s{_oalOrderBy = a})

-- | OAuth access token.
oalAccessToken :: Lens' OrganizationsAssetsList (Maybe Text)
oalAccessToken
  = lens _oalAccessToken
      (\ s a -> s{_oalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oalUploadType :: Lens' OrganizationsAssetsList (Maybe Text)
oalUploadType
  = lens _oalUploadType
      (\ s a -> s{_oalUploadType = a})

-- | A field mask to specify the ListAssetsResult fields to be listed in the
-- response. An empty field mask will list all fields.
oalFieldMask :: Lens' OrganizationsAssetsList (Maybe GFieldMask)
oalFieldMask
  = lens _oalFieldMask (\ s a -> s{_oalFieldMask = a})

-- | Expression that defines the filter to apply across assets. The
-- expression is a list of zero or more restrictions combined via logical
-- operators \`AND\` and \`OR\`. Parentheses are supported, and \`OR\` has
-- higher precedence than \`AND\`. Restrictions have the form \` \` and may
-- have a \`-\` character in front of them to indicate negation. The fields
-- map to those defined in the Asset resource. Examples include: * name *
-- security_center_properties.resource_name *
-- resource_properties.a_property * security_marks.marks.marka The
-- supported operators are: * \`=\` for all value types. * \`>\`, \`\<\`,
-- \`>=\`, \`\<=\` for integer values. * \`:\`, meaning substring matching,
-- for strings. The supported value types are: * string literals in quotes.
-- * integer literals without quotes. * boolean literals \`true\` and
-- \`false\` without quotes. The following are the allowed field and
-- operator combinations: * name: \`=\` * update_time: \`=\`, \`>\`,
-- \`\<\`, \`>=\`, \`\<=\` Usage: This should be milliseconds since epoch
-- or an RFC3339 string. Examples: \`update_time =
-- \"2019-06-10T16:07:18-07:00\"\` \`update_time = 1560208038000\` *
-- create_time: \`=\`, \`>\`, \`\<\`, \`>=\`, \`\<=\` Usage: This should be
-- milliseconds since epoch or an RFC3339 string. Examples: \`create_time =
-- \"2019-06-10T16:07:18-07:00\"\` \`create_time = 1560208038000\` *
-- iam_policy.policy_blob: \`=\`, \`:\` * resource_properties: \`=\`,
-- \`:\`, \`>\`, \`\<\`, \`>=\`, \`\<=\` * security_marks.marks: \`=\`,
-- \`:\` * security_center_properties.resource_name: \`=\`, \`:\` *
-- security_center_properties.resource_display_name: \`=\`, \`:\` *
-- security_center_properties.resource_type: \`=\`, \`:\` *
-- security_center_properties.resource_parent: \`=\`, \`:\` *
-- security_center_properties.resource_parent_display_name: \`=\`, \`:\` *
-- security_center_properties.resource_project: \`=\`, \`:\` *
-- security_center_properties.resource_project_display_name: \`=\`, \`:\` *
-- security_center_properties.resource_owners: \`=\`, \`:\` For example,
-- \`resource_properties.size = 100\` is a valid filter string. Use a
-- partial match on the empty string to filter based on a property
-- existing: \`resource_properties.my_property : \"\"\` Use a negated
-- partial match on the empty string to filter based on a property not
-- existing: \`-resource_properties.my_property : \"\"\`
oalFilter :: Lens' OrganizationsAssetsList (Maybe Text)
oalFilter
  = lens _oalFilter (\ s a -> s{_oalFilter = a})

-- | The value returned by the last \`ListAssetsResponse\`; indicates that
-- this is a continuation of a prior \`ListAssets\` call, and that the
-- system should return the next page of data.
oalPageToken :: Lens' OrganizationsAssetsList (Maybe Text)
oalPageToken
  = lens _oalPageToken (\ s a -> s{_oalPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
oalPageSize :: Lens' OrganizationsAssetsList (Maybe Int32)
oalPageSize
  = lens _oalPageSize (\ s a -> s{_oalPageSize = a}) .
      mapping _Coerce

-- | When compare_duration is set, the ListAssetsResult\'s \"state_change\"
-- attribute is updated to indicate whether the asset was added, removed,
-- or remained present during the compare_duration period of time that
-- precedes the read_time. This is the time between (read_time -
-- compare_duration) and read_time. The state_change value is derived based
-- on the presence of the asset at the two points in time. Intermediate
-- state changes between the two times don\'t affect the result. For
-- example, the results aren\'t affected if the asset is removed and
-- re-created again. Possible \"state_change\" values when compare_duration
-- is specified: * \"ADDED\": indicates that the asset was not present at
-- the start of compare_duration, but present at read_time. * \"REMOVED\":
-- indicates that the asset was present at the start of compare_duration,
-- but not present at read_time. * \"ACTIVE\": indicates that the asset was
-- present at both the start and the end of the time period defined by
-- compare_duration and read_time. If compare_duration is not specified,
-- then the only possible state_change is \"UNUSED\", which will be the
-- state_change set for all assets present at read_time.
oalCompareDuration :: Lens' OrganizationsAssetsList (Maybe Scientific)
oalCompareDuration
  = lens _oalCompareDuration
      (\ s a -> s{_oalCompareDuration = a})
      . mapping _GDuration

-- | JSONP
oalCallback :: Lens' OrganizationsAssetsList (Maybe Text)
oalCallback
  = lens _oalCallback (\ s a -> s{_oalCallback = a})

instance GoogleRequest OrganizationsAssetsList where
        type Rs OrganizationsAssetsList = ListAssetsResponse
        type Scopes OrganizationsAssetsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsAssetsList'{..}
          = go _oalParent _oalXgafv _oalReadTime
              _oalUploadProtocol
              _oalOrderBy
              _oalAccessToken
              _oalUploadType
              _oalFieldMask
              _oalFilter
              _oalPageToken
              _oalPageSize
              _oalCompareDuration
              _oalCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsAssetsListResource)
                      mempty
