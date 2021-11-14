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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search transitive groups of a member. **Note:** This feature is only
-- available to Google Workspace Enterprise Standard, Enterprise Plus, and
-- Enterprise for Education; and Cloud Identity Premium accounts. If the
-- account of the member is not one of these, a 403 (PERMISSION_DENIED)
-- HTTP status code will be returned. A transitive group is any group that
-- has a direct or indirect membership to the member. Actor must have view
-- permissions all transitive groups.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.searchTransitiveGroups@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
    (
    -- * REST Resource
      GroupsMembershipsSearchTransitiveGroupsResource

    -- * Creating a Request
    , groupsMembershipsSearchTransitiveGroups
    , GroupsMembershipsSearchTransitiveGroups

    -- * Request Lenses
    , gmstgParent
    , gmstgXgafv
    , gmstgUploadProtocol
    , gmstgAccessToken
    , gmstgUploadType
    , gmstgQuery
    , gmstgPageToken
    , gmstgPageSize
    , gmstgCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.searchTransitiveGroups@ method which the
-- 'GroupsMembershipsSearchTransitiveGroups' request conforms to.
type GroupsMembershipsSearchTransitiveGroupsResource
     =
     "v1" :>
       Capture "parent" Text :>
         "memberships:searchTransitiveGroups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SearchTransitiveGroupsResponse

-- | Search transitive groups of a member. **Note:** This feature is only
-- available to Google Workspace Enterprise Standard, Enterprise Plus, and
-- Enterprise for Education; and Cloud Identity Premium accounts. If the
-- account of the member is not one of these, a 403 (PERMISSION_DENIED)
-- HTTP status code will be returned. A transitive group is any group that
-- has a direct or indirect membership to the member. Actor must have view
-- permissions all transitive groups.
--
-- /See:/ 'groupsMembershipsSearchTransitiveGroups' smart constructor.
data GroupsMembershipsSearchTransitiveGroups =
  GroupsMembershipsSearchTransitiveGroups'
    { _gmstgParent :: !Text
    , _gmstgXgafv :: !(Maybe Xgafv)
    , _gmstgUploadProtocol :: !(Maybe Text)
    , _gmstgAccessToken :: !(Maybe Text)
    , _gmstgUploadType :: !(Maybe Text)
    , _gmstgQuery :: !(Maybe Text)
    , _gmstgPageToken :: !(Maybe Text)
    , _gmstgPageSize :: !(Maybe (Textual Int32))
    , _gmstgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsSearchTransitiveGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmstgParent'
--
-- * 'gmstgXgafv'
--
-- * 'gmstgUploadProtocol'
--
-- * 'gmstgAccessToken'
--
-- * 'gmstgUploadType'
--
-- * 'gmstgQuery'
--
-- * 'gmstgPageToken'
--
-- * 'gmstgPageSize'
--
-- * 'gmstgCallback'
groupsMembershipsSearchTransitiveGroups
    :: Text -- ^ 'gmstgParent'
    -> GroupsMembershipsSearchTransitiveGroups
groupsMembershipsSearchTransitiveGroups pGmstgParent_ =
  GroupsMembershipsSearchTransitiveGroups'
    { _gmstgParent = pGmstgParent_
    , _gmstgXgafv = Nothing
    , _gmstgUploadProtocol = Nothing
    , _gmstgAccessToken = Nothing
    , _gmstgUploadType = Nothing
    , _gmstgQuery = Nothing
    , _gmstgPageToken = Nothing
    , _gmstgPageSize = Nothing
    , _gmstgCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- group to search transitive memberships in. Format:
-- \`groups\/{group_id}\`, where \`group_id\` is always \'-\' as this API
-- will search across all groups for a given member.
gmstgParent :: Lens' GroupsMembershipsSearchTransitiveGroups Text
gmstgParent
  = lens _gmstgParent (\ s a -> s{_gmstgParent = a})

-- | V1 error format.
gmstgXgafv :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Xgafv)
gmstgXgafv
  = lens _gmstgXgafv (\ s a -> s{_gmstgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmstgUploadProtocol :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgUploadProtocol
  = lens _gmstgUploadProtocol
      (\ s a -> s{_gmstgUploadProtocol = a})

-- | OAuth access token.
gmstgAccessToken :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgAccessToken
  = lens _gmstgAccessToken
      (\ s a -> s{_gmstgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmstgUploadType :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgUploadType
  = lens _gmstgUploadType
      (\ s a -> s{_gmstgUploadType = a})

-- | Required. A CEL expression that MUST include member specification AND
-- label(s). This is a \`required\` field. Users can search on label
-- attributes of groups. CONTAINS match (\'in\') is supported on labels.
-- Identity-mapped groups are uniquely identified by both a
-- \`member_key_id\` and a \`member_key_namespace\`, which requires an
-- additional query input: \`member_key_namespace\`. Example query:
-- \`member_key_id == \'member_key_id_value\' && in labels\`
gmstgQuery :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgQuery
  = lens _gmstgQuery (\ s a -> s{_gmstgQuery = a})

-- | The next_page_token value returned from a previous list request, if any.
gmstgPageToken :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgPageToken
  = lens _gmstgPageToken
      (\ s a -> s{_gmstgPageToken = a})

-- | The default page size is 200 (max 1000).
gmstgPageSize :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Int32)
gmstgPageSize
  = lens _gmstgPageSize
      (\ s a -> s{_gmstgPageSize = a})
      . mapping _Coerce

-- | JSONP
gmstgCallback :: Lens' GroupsMembershipsSearchTransitiveGroups (Maybe Text)
gmstgCallback
  = lens _gmstgCallback
      (\ s a -> s{_gmstgCallback = a})

instance GoogleRequest
           GroupsMembershipsSearchTransitiveGroups
         where
        type Rs GroupsMembershipsSearchTransitiveGroups =
             SearchTransitiveGroupsResponse
        type Scopes GroupsMembershipsSearchTransitiveGroups =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          GroupsMembershipsSearchTransitiveGroups'{..}
          = go _gmstgParent _gmstgXgafv _gmstgUploadProtocol
              _gmstgAccessToken
              _gmstgUploadType
              _gmstgQuery
              _gmstgPageToken
              _gmstgPageSize
              _gmstgCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GroupsMembershipsSearchTransitiveGroupsResource)
                      mempty
