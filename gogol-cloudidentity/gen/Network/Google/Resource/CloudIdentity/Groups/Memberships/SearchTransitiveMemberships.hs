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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search transitive memberships of a group. **Note:** This feature is only
-- available to Google Workspace Enterprise Standard, Enterprise Plus, and
-- Enterprise for Education; and Cloud Identity Premium accounts. If the
-- account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP
-- status code will be returned. A transitive membership is any direct or
-- indirect membership of a group. Actor must have view permissions to all
-- transitive memberships.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.searchTransitiveMemberships@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
    (
    -- * REST Resource
      GroupsMembershipsSearchTransitiveMembershipsResource

    -- * Creating a Request
    , groupsMembershipsSearchTransitiveMemberships
    , GroupsMembershipsSearchTransitiveMemberships

    -- * Request Lenses
    , gmstmParent
    , gmstmXgafv
    , gmstmUploadProtocol
    , gmstmAccessToken
    , gmstmUploadType
    , gmstmPageToken
    , gmstmPageSize
    , gmstmCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.searchTransitiveMemberships@ method which the
-- 'GroupsMembershipsSearchTransitiveMemberships' request conforms to.
type GroupsMembershipsSearchTransitiveMembershipsResource
     =
     "v1" :>
       Capture "parent" Text :>
         "memberships:searchTransitiveMemberships" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchTransitiveMembershipsResponse

-- | Search transitive memberships of a group. **Note:** This feature is only
-- available to Google Workspace Enterprise Standard, Enterprise Plus, and
-- Enterprise for Education; and Cloud Identity Premium accounts. If the
-- account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP
-- status code will be returned. A transitive membership is any direct or
-- indirect membership of a group. Actor must have view permissions to all
-- transitive memberships.
--
-- /See:/ 'groupsMembershipsSearchTransitiveMemberships' smart constructor.
data GroupsMembershipsSearchTransitiveMemberships =
  GroupsMembershipsSearchTransitiveMemberships'
    { _gmstmParent :: !Text
    , _gmstmXgafv :: !(Maybe Xgafv)
    , _gmstmUploadProtocol :: !(Maybe Text)
    , _gmstmAccessToken :: !(Maybe Text)
    , _gmstmUploadType :: !(Maybe Text)
    , _gmstmPageToken :: !(Maybe Text)
    , _gmstmPageSize :: !(Maybe (Textual Int32))
    , _gmstmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsSearchTransitiveMemberships' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmstmParent'
--
-- * 'gmstmXgafv'
--
-- * 'gmstmUploadProtocol'
--
-- * 'gmstmAccessToken'
--
-- * 'gmstmUploadType'
--
-- * 'gmstmPageToken'
--
-- * 'gmstmPageSize'
--
-- * 'gmstmCallback'
groupsMembershipsSearchTransitiveMemberships
    :: Text -- ^ 'gmstmParent'
    -> GroupsMembershipsSearchTransitiveMemberships
groupsMembershipsSearchTransitiveMemberships pGmstmParent_ =
  GroupsMembershipsSearchTransitiveMemberships'
    { _gmstmParent = pGmstmParent_
    , _gmstmXgafv = Nothing
    , _gmstmUploadProtocol = Nothing
    , _gmstmAccessToken = Nothing
    , _gmstmUploadType = Nothing
    , _gmstmPageToken = Nothing
    , _gmstmPageSize = Nothing
    , _gmstmCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- group to search transitive memberships in. Format:
-- \`groups\/{group_id}\`, where \`group_id\` is the unique ID assigned to
-- the Group.
gmstmParent :: Lens' GroupsMembershipsSearchTransitiveMemberships Text
gmstmParent
  = lens _gmstmParent (\ s a -> s{_gmstmParent = a})

-- | V1 error format.
gmstmXgafv :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Xgafv)
gmstmXgafv
  = lens _gmstmXgafv (\ s a -> s{_gmstmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmstmUploadProtocol :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Text)
gmstmUploadProtocol
  = lens _gmstmUploadProtocol
      (\ s a -> s{_gmstmUploadProtocol = a})

-- | OAuth access token.
gmstmAccessToken :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Text)
gmstmAccessToken
  = lens _gmstmAccessToken
      (\ s a -> s{_gmstmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmstmUploadType :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Text)
gmstmUploadType
  = lens _gmstmUploadType
      (\ s a -> s{_gmstmUploadType = a})

-- | The next_page_token value returned from a previous list request, if any.
gmstmPageToken :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Text)
gmstmPageToken
  = lens _gmstmPageToken
      (\ s a -> s{_gmstmPageToken = a})

-- | The default page size is 200 (max 1000).
gmstmPageSize :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Int32)
gmstmPageSize
  = lens _gmstmPageSize
      (\ s a -> s{_gmstmPageSize = a})
      . mapping _Coerce

-- | JSONP
gmstmCallback :: Lens' GroupsMembershipsSearchTransitiveMemberships (Maybe Text)
gmstmCallback
  = lens _gmstmCallback
      (\ s a -> s{_gmstmCallback = a})

instance GoogleRequest
           GroupsMembershipsSearchTransitiveMemberships
         where
        type Rs GroupsMembershipsSearchTransitiveMemberships
             = SearchTransitiveMembershipsResponse
        type Scopes
               GroupsMembershipsSearchTransitiveMemberships
             =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          GroupsMembershipsSearchTransitiveMemberships'{..}
          = go _gmstmParent _gmstmXgafv _gmstmUploadProtocol
              _gmstmAccessToken
              _gmstmUploadType
              _gmstmPageToken
              _gmstmPageSize
              _gmstmCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GroupsMembershipsSearchTransitiveMembershipsResource)
                      mempty
