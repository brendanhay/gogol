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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.GetMembershipGraph
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a membership graph of just a member or both a member and a group.
-- **Note:** This feature is only available to Google Workspace Enterprise
-- Standard, Enterprise Plus, and Enterprise for Education; and Cloud
-- Identity Premium accounts. If the account of the member is not one of
-- these, a 403 (PERMISSION_DENIED) HTTP status code will be returned.
-- Given a member, the response will contain all membership paths from the
-- member. Given both a group and a member, the response will contain all
-- membership paths between the group and the member.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.getMembershipGraph@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.GetMembershipGraph
    (
    -- * REST Resource
      GroupsMembershipsGetMembershipGraphResource

    -- * Creating a Request
    , groupsMembershipsGetMembershipGraph
    , GroupsMembershipsGetMembershipGraph

    -- * Request Lenses
    , gmgmgParent
    , gmgmgXgafv
    , gmgmgUploadProtocol
    , gmgmgAccessToken
    , gmgmgUploadType
    , gmgmgQuery
    , gmgmgCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.getMembershipGraph@ method which the
-- 'GroupsMembershipsGetMembershipGraph' request conforms to.
type GroupsMembershipsGetMembershipGraphResource =
     "v1" :>
       Capture "parent" Text :>
         "memberships:getMembershipGraph" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Get a membership graph of just a member or both a member and a group.
-- **Note:** This feature is only available to Google Workspace Enterprise
-- Standard, Enterprise Plus, and Enterprise for Education; and Cloud
-- Identity Premium accounts. If the account of the member is not one of
-- these, a 403 (PERMISSION_DENIED) HTTP status code will be returned.
-- Given a member, the response will contain all membership paths from the
-- member. Given both a group and a member, the response will contain all
-- membership paths between the group and the member.
--
-- /See:/ 'groupsMembershipsGetMembershipGraph' smart constructor.
data GroupsMembershipsGetMembershipGraph =
  GroupsMembershipsGetMembershipGraph'
    { _gmgmgParent :: !Text
    , _gmgmgXgafv :: !(Maybe Xgafv)
    , _gmgmgUploadProtocol :: !(Maybe Text)
    , _gmgmgAccessToken :: !(Maybe Text)
    , _gmgmgUploadType :: !(Maybe Text)
    , _gmgmgQuery :: !(Maybe Text)
    , _gmgmgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsGetMembershipGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmgmgParent'
--
-- * 'gmgmgXgafv'
--
-- * 'gmgmgUploadProtocol'
--
-- * 'gmgmgAccessToken'
--
-- * 'gmgmgUploadType'
--
-- * 'gmgmgQuery'
--
-- * 'gmgmgCallback'
groupsMembershipsGetMembershipGraph
    :: Text -- ^ 'gmgmgParent'
    -> GroupsMembershipsGetMembershipGraph
groupsMembershipsGetMembershipGraph pGmgmgParent_ =
  GroupsMembershipsGetMembershipGraph'
    { _gmgmgParent = pGmgmgParent_
    , _gmgmgXgafv = Nothing
    , _gmgmgUploadProtocol = Nothing
    , _gmgmgAccessToken = Nothing
    , _gmgmgUploadType = Nothing
    , _gmgmgQuery = Nothing
    , _gmgmgCallback = Nothing
    }


-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- group to search transitive memberships in. Format:
-- \`groups\/{group_id}\`, where \`group_id\` is the unique ID assigned to
-- the Group to which the Membership belongs to. group_id can be a wildcard
-- collection id \"-\". When a group_id is specified, the membership graph
-- will be constrained to paths between the member (defined in the query)
-- and the parent. If a wildcard collection is provided, all membership
-- paths connected to the member will be returned.
gmgmgParent :: Lens' GroupsMembershipsGetMembershipGraph Text
gmgmgParent
  = lens _gmgmgParent (\ s a -> s{_gmgmgParent = a})

-- | V1 error format.
gmgmgXgafv :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Xgafv)
gmgmgXgafv
  = lens _gmgmgXgafv (\ s a -> s{_gmgmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmgmgUploadProtocol :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Text)
gmgmgUploadProtocol
  = lens _gmgmgUploadProtocol
      (\ s a -> s{_gmgmgUploadProtocol = a})

-- | OAuth access token.
gmgmgAccessToken :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Text)
gmgmgAccessToken
  = lens _gmgmgAccessToken
      (\ s a -> s{_gmgmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmgmgUploadType :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Text)
gmgmgUploadType
  = lens _gmgmgUploadType
      (\ s a -> s{_gmgmgUploadType = a})

-- | Required. A CEL expression that MUST include member specification AND
-- label(s). Certain groups are uniquely identified by both a
-- \'member_key_id\' and a \'member_key_namespace\', which requires an
-- additional query input: \'member_key_namespace\'. Example query:
-- \`member_key_id == \'member_key_id_value\' && in labels\`
gmgmgQuery :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Text)
gmgmgQuery
  = lens _gmgmgQuery (\ s a -> s{_gmgmgQuery = a})

-- | JSONP
gmgmgCallback :: Lens' GroupsMembershipsGetMembershipGraph (Maybe Text)
gmgmgCallback
  = lens _gmgmgCallback
      (\ s a -> s{_gmgmgCallback = a})

instance GoogleRequest
           GroupsMembershipsGetMembershipGraph
         where
        type Rs GroupsMembershipsGetMembershipGraph =
             Operation
        type Scopes GroupsMembershipsGetMembershipGraph =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          GroupsMembershipsGetMembershipGraph'{..}
          = go _gmgmgParent _gmgmgXgafv _gmgmgUploadProtocol
              _gmgmgAccessToken
              _gmgmgUploadType
              _gmgmgQuery
              _gmgmgCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GroupsMembershipsGetMembershipGraphResource)
                      mempty
