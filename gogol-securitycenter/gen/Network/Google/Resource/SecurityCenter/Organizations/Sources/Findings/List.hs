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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists an organization or source\'s findings. To list across all sources
-- provide a \`-\` as the source id. Example:
-- \/v1\/organizations\/123\/sources\/-\/findings
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.sources.findings.list@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.List
    (
    -- * REST Resource
      OrganizationsSourcesFindingsListResource

    -- * Creating a Request
    , organizationsSourcesFindingsList
    , OrganizationsSourcesFindingsList

    -- * Request Lenses
    , osflParent
    , osflXgafv
    , osflReadTime
    , osflUploadProtocol
    , osflOrderBy
    , osflAccessToken
    , osflUploadType
    , osflFieldMask
    , osflFilter
    , osflPageToken
    , osflPageSize
    , osflCompareDuration
    , osflCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.list@ method which the
-- 'OrganizationsSourcesFindingsList' request conforms to.
type OrganizationsSourcesFindingsListResource =
     "v1" :>
       Capture "parent" Text :>
         "findings" :>
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
                                     Get '[JSON] ListFindingsResponse

-- | Lists an organization or source\'s findings. To list across all sources
-- provide a \`-\` as the source id. Example:
-- \/v1\/organizations\/123\/sources\/-\/findings
--
-- /See:/ 'organizationsSourcesFindingsList' smart constructor.
data OrganizationsSourcesFindingsList =
  OrganizationsSourcesFindingsList'
    { _osflParent          :: !Text
    , _osflXgafv           :: !(Maybe Xgafv)
    , _osflReadTime        :: !(Maybe DateTime')
    , _osflUploadProtocol  :: !(Maybe Text)
    , _osflOrderBy         :: !(Maybe Text)
    , _osflAccessToken     :: !(Maybe Text)
    , _osflUploadType      :: !(Maybe Text)
    , _osflFieldMask       :: !(Maybe GFieldMask)
    , _osflFilter          :: !(Maybe Text)
    , _osflPageToken       :: !(Maybe Text)
    , _osflPageSize        :: !(Maybe (Textual Int32))
    , _osflCompareDuration :: !(Maybe GDuration)
    , _osflCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osflParent'
--
-- * 'osflXgafv'
--
-- * 'osflReadTime'
--
-- * 'osflUploadProtocol'
--
-- * 'osflOrderBy'
--
-- * 'osflAccessToken'
--
-- * 'osflUploadType'
--
-- * 'osflFieldMask'
--
-- * 'osflFilter'
--
-- * 'osflPageToken'
--
-- * 'osflPageSize'
--
-- * 'osflCompareDuration'
--
-- * 'osflCallback'
organizationsSourcesFindingsList
    :: Text -- ^ 'osflParent'
    -> OrganizationsSourcesFindingsList
organizationsSourcesFindingsList pOsflParent_ =
  OrganizationsSourcesFindingsList'
    { _osflParent = pOsflParent_
    , _osflXgafv = Nothing
    , _osflReadTime = Nothing
    , _osflUploadProtocol = Nothing
    , _osflOrderBy = Nothing
    , _osflAccessToken = Nothing
    , _osflUploadType = Nothing
    , _osflFieldMask = Nothing
    , _osflFilter = Nothing
    , _osflPageToken = Nothing
    , _osflPageSize = Nothing
    , _osflCompareDuration = Nothing
    , _osflCallback = Nothing
    }


-- | Name of the source the findings belong to. Its format is
-- \"organizations\/[organization_id]\/sources\/[source_id]\". To list
-- across all sources provide a source_id of \`-\`. For example:
-- organizations\/123\/sources\/-
osflParent :: Lens' OrganizationsSourcesFindingsList Text
osflParent
  = lens _osflParent (\ s a -> s{_osflParent = a})

-- | V1 error format.
osflXgafv :: Lens' OrganizationsSourcesFindingsList (Maybe Xgafv)
osflXgafv
  = lens _osflXgafv (\ s a -> s{_osflXgafv = a})

-- | Time used as a reference point when filtering findings. The filter is
-- limited to findings existing at the supplied time and their values are
-- those at that specific time. Absence of this field will default to the
-- API\'s version of NOW.
osflReadTime :: Lens' OrganizationsSourcesFindingsList (Maybe UTCTime)
osflReadTime
  = lens _osflReadTime (\ s a -> s{_osflReadTime = a})
      . mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osflUploadProtocol :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflUploadProtocol
  = lens _osflUploadProtocol
      (\ s a -> s{_osflUploadProtocol = a})

-- | Expression that defines what fields and order to use for sorting. The
-- string value should follow SQL syntax: comma separated list of fields.
-- For example: \"name,resource_properties.a_property\". The default
-- sorting order is ascending. To specify descending order for a field, a
-- suffix \" desc\" should be appended to the field name. For example:
-- \"name desc,source_properties.a_property\". Redundant space characters
-- in the syntax are insignificant. \"name
-- desc,source_properties.a_property\" and \" name desc ,
-- source_properties.a_property \" are equivalent. The following fields are
-- supported: name parent state category resource_name event_time
-- source_properties security_marks
osflOrderBy :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflOrderBy
  = lens _osflOrderBy (\ s a -> s{_osflOrderBy = a})

-- | OAuth access token.
osflAccessToken :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflAccessToken
  = lens _osflAccessToken
      (\ s a -> s{_osflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osflUploadType :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflUploadType
  = lens _osflUploadType
      (\ s a -> s{_osflUploadType = a})

-- | Optional. A field mask to specify the Finding fields to be listed in the
-- response. An empty field mask will list all fields.
osflFieldMask :: Lens' OrganizationsSourcesFindingsList (Maybe GFieldMask)
osflFieldMask
  = lens _osflFieldMask
      (\ s a -> s{_osflFieldMask = a})

-- | Expression that defines the filter to apply across findings. The
-- expression is a list of one or more restrictions combined via logical
-- operators \`AND\` and \`OR\`. Parentheses are supported, and \`OR\` has
-- higher precedence than \`AND\`. Restrictions have the form \` \` and may
-- have a \`-\` character in front of them to indicate negation. Examples
-- include: * name * source_properties.a_property *
-- security_marks.marks.marka The supported operators are: * \`=\` for all
-- value types. * \`>\`, \`\<\`, \`>=\`, \`\<=\` for integer values. *
-- \`:\`, meaning substring matching, for strings. The supported value
-- types are: * string literals in quotes. * integer literals without
-- quotes. * boolean literals \`true\` and \`false\` without quotes. The
-- following field and operator combinations are supported: name | \`=\`
-- parent | \'=\', \':\' resource_name | \'=\', \':\' state | \'=\', \':\'
-- category | \'=\', \':\' external_uri | \'=\', \':\' event_time | \`>\`,
-- \`\<\`, \`>=\`, \`\<=\` security_marks | \'=\', \':\' source_properties
-- | \'=\', \':\', \`>\`, \`\<\`, \`>=\`, \`\<=\` For example,
-- \`source_properties.size = 100\` is a valid filter string.
osflFilter :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflFilter
  = lens _osflFilter (\ s a -> s{_osflFilter = a})

-- | The value returned by the last \`ListFindingsResponse\`; indicates that
-- this is a continuation of a prior \`ListFindings\` call, and that the
-- system should return the next page of data.
osflPageToken :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflPageToken
  = lens _osflPageToken
      (\ s a -> s{_osflPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
osflPageSize :: Lens' OrganizationsSourcesFindingsList (Maybe Int32)
osflPageSize
  = lens _osflPageSize (\ s a -> s{_osflPageSize = a})
      . mapping _Coerce

-- | When compare_duration is set, the ListFindingsResult\'s \"state_change\"
-- attribute is updated to indicate whether the finding had its state
-- changed, the finding\'s state remained unchanged, or if the finding was
-- added in any state during the compare_duration period of time that
-- precedes the read_time. This is the time between (read_time -
-- compare_duration) and read_time. The state_change value is derived based
-- on the presence and state of the finding at the two points in time.
-- Intermediate state changes between the two times don\'t affect the
-- result. For example, the results aren\'t affected if the finding is made
-- inactive and then active again. Possible \"state_change\" values when
-- compare_duration is specified: * \"CHANGED\": indicates that the finding
-- was present at the start of compare_duration, but changed its state at
-- read_time. * \"UNCHANGED\": indicates that the finding was present at
-- the start of compare_duration and did not change state at read_time. *
-- \"ADDED\": indicates that the finding was not present at the start of
-- compare_duration, but was present at read_time. If compare_duration is
-- not specified, then the only possible state_change is \"UNUSED\", which
-- will be the state_change set for all findings present at read_time.
osflCompareDuration :: Lens' OrganizationsSourcesFindingsList (Maybe Scientific)
osflCompareDuration
  = lens _osflCompareDuration
      (\ s a -> s{_osflCompareDuration = a})
      . mapping _GDuration

-- | JSONP
osflCallback :: Lens' OrganizationsSourcesFindingsList (Maybe Text)
osflCallback
  = lens _osflCallback (\ s a -> s{_osflCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsList
         where
        type Rs OrganizationsSourcesFindingsList =
             ListFindingsResponse
        type Scopes OrganizationsSourcesFindingsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesFindingsList'{..}
          = go _osflParent _osflXgafv _osflReadTime
              _osflUploadProtocol
              _osflOrderBy
              _osflAccessToken
              _osflUploadType
              _osflFieldMask
              _osflFilter
              _osflPageToken
              _osflPageSize
              _osflCompareDuration
              _osflCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesFindingsListResource)
                      mempty
