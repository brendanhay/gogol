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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Check a potential member for membership in a group. **Note:** This
-- feature is only available to Google Workspace Enterprise Standard,
-- Enterprise Plus, and Enterprise for Education; and Cloud Identity
-- Premium accounts. If the account of the member is not one of these, a
-- 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has
-- membership to a group as long as there is a single viewable transitive
-- membership between the group and the member. The actor must have view
-- permissions to at least one transitive membership between the member and
-- group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.checkTransitiveMembership@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
    (
    -- * REST Resource
      GroupsMembershipsCheckTransitiveMembershipResource

    -- * Creating a Request
    , groupsMembershipsCheckTransitiveMembership
    , GroupsMembershipsCheckTransitiveMembership

    -- * Request Lenses
    , gmctmParent
    , gmctmXgafv
    , gmctmUploadProtocol
    , gmctmAccessToken
    , gmctmUploadType
    , gmctmQuery
    , gmctmCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.checkTransitiveMembership@ method which the
-- 'GroupsMembershipsCheckTransitiveMembership' request conforms to.
type GroupsMembershipsCheckTransitiveMembershipResource
     =
     "v1" :>
       Capture "parent" Text :>
         "memberships:checkTransitiveMembership" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CheckTransitiveMembershipResponse

-- | Check a potential member for membership in a group. **Note:** This
-- feature is only available to Google Workspace Enterprise Standard,
-- Enterprise Plus, and Enterprise for Education; and Cloud Identity
-- Premium accounts. If the account of the member is not one of these, a
-- 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has
-- membership to a group as long as there is a single viewable transitive
-- membership between the group and the member. The actor must have view
-- permissions to at least one transitive membership between the member and
-- group.
--
-- /See:/ 'groupsMembershipsCheckTransitiveMembership' smart constructor.
data GroupsMembershipsCheckTransitiveMembership =
  GroupsMembershipsCheckTransitiveMembership'
    { _gmctmParent :: !Text
    , _gmctmXgafv :: !(Maybe Xgafv)
    , _gmctmUploadProtocol :: !(Maybe Text)
    , _gmctmAccessToken :: !(Maybe Text)
    , _gmctmUploadType :: !(Maybe Text)
    , _gmctmQuery :: !(Maybe Text)
    , _gmctmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsCheckTransitiveMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmctmParent'
--
-- * 'gmctmXgafv'
--
-- * 'gmctmUploadProtocol'
--
-- * 'gmctmAccessToken'
--
-- * 'gmctmUploadType'
--
-- * 'gmctmQuery'
--
-- * 'gmctmCallback'
groupsMembershipsCheckTransitiveMembership
    :: Text -- ^ 'gmctmParent'
    -> GroupsMembershipsCheckTransitiveMembership
groupsMembershipsCheckTransitiveMembership pGmctmParent_ =
  GroupsMembershipsCheckTransitiveMembership'
    { _gmctmParent = pGmctmParent_
    , _gmctmXgafv = Nothing
    , _gmctmUploadProtocol = Nothing
    , _gmctmAccessToken = Nothing
    , _gmctmUploadType = Nothing
    , _gmctmQuery = Nothing
    , _gmctmCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- group to check the transitive membership in. Format:
-- \`groups\/{group_id}\`, where \`group_id\` is the unique id assigned to
-- the Group to which the Membership belongs to.
gmctmParent :: Lens' GroupsMembershipsCheckTransitiveMembership Text
gmctmParent
  = lens _gmctmParent (\ s a -> s{_gmctmParent = a})

-- | V1 error format.
gmctmXgafv :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Xgafv)
gmctmXgafv
  = lens _gmctmXgafv (\ s a -> s{_gmctmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmctmUploadProtocol :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Text)
gmctmUploadProtocol
  = lens _gmctmUploadProtocol
      (\ s a -> s{_gmctmUploadProtocol = a})

-- | OAuth access token.
gmctmAccessToken :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Text)
gmctmAccessToken
  = lens _gmctmAccessToken
      (\ s a -> s{_gmctmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmctmUploadType :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Text)
gmctmUploadType
  = lens _gmctmUploadType
      (\ s a -> s{_gmctmUploadType = a})

-- | Required. A CEL expression that MUST include member specification. This
-- is a \`required\` field. Certain groups are uniquely identified by both
-- a \'member_key_id\' and a \'member_key_namespace\', which requires an
-- additional query input: \'member_key_namespace\'. Example query:
-- \`member_key_id == \'member_key_id_value\'\`
gmctmQuery :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Text)
gmctmQuery
  = lens _gmctmQuery (\ s a -> s{_gmctmQuery = a})

-- | JSONP
gmctmCallback :: Lens' GroupsMembershipsCheckTransitiveMembership (Maybe Text)
gmctmCallback
  = lens _gmctmCallback
      (\ s a -> s{_gmctmCallback = a})

instance GoogleRequest
           GroupsMembershipsCheckTransitiveMembership
         where
        type Rs GroupsMembershipsCheckTransitiveMembership =
             CheckTransitiveMembershipResponse
        type Scopes
               GroupsMembershipsCheckTransitiveMembership
             =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          GroupsMembershipsCheckTransitiveMembership'{..}
          = go _gmctmParent _gmctmXgafv _gmctmUploadProtocol
              _gmctmAccessToken
              _gmctmUploadType
              _gmctmQuery
              _gmctmCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GroupsMembershipsCheckTransitiveMembershipResource)
                      mempty
