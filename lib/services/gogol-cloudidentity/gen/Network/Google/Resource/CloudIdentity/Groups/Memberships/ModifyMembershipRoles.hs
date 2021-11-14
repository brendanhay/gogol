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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the \`MembershipRole\`s of a \`Membership\`.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.modifyMembershipRoles@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
    (
    -- * REST Resource
      GroupsMembershipsModifyMembershipRolesResource

    -- * Creating a Request
    , groupsMembershipsModifyMembershipRoles
    , GroupsMembershipsModifyMembershipRoles

    -- * Request Lenses
    , gmmmrXgafv
    , gmmmrUploadProtocol
    , gmmmrAccessToken
    , gmmmrUploadType
    , gmmmrPayload
    , gmmmrName
    , gmmmrCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.modifyMembershipRoles@ method which the
-- 'GroupsMembershipsModifyMembershipRoles' request conforms to.
type GroupsMembershipsModifyMembershipRolesResource =
     "v1" :>
       CaptureMode "name" "modifyMembershipRoles" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyMembershipRolesRequest :>
                       Post '[JSON] ModifyMembershipRolesResponse

-- | Modifies the \`MembershipRole\`s of a \`Membership\`.
--
-- /See:/ 'groupsMembershipsModifyMembershipRoles' smart constructor.
data GroupsMembershipsModifyMembershipRoles =
  GroupsMembershipsModifyMembershipRoles'
    { _gmmmrXgafv :: !(Maybe Xgafv)
    , _gmmmrUploadProtocol :: !(Maybe Text)
    , _gmmmrAccessToken :: !(Maybe Text)
    , _gmmmrUploadType :: !(Maybe Text)
    , _gmmmrPayload :: !ModifyMembershipRolesRequest
    , _gmmmrName :: !Text
    , _gmmmrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsModifyMembershipRoles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmmmrXgafv'
--
-- * 'gmmmrUploadProtocol'
--
-- * 'gmmmrAccessToken'
--
-- * 'gmmmrUploadType'
--
-- * 'gmmmrPayload'
--
-- * 'gmmmrName'
--
-- * 'gmmmrCallback'
groupsMembershipsModifyMembershipRoles
    :: ModifyMembershipRolesRequest -- ^ 'gmmmrPayload'
    -> Text -- ^ 'gmmmrName'
    -> GroupsMembershipsModifyMembershipRoles
groupsMembershipsModifyMembershipRoles pGmmmrPayload_ pGmmmrName_ =
  GroupsMembershipsModifyMembershipRoles'
    { _gmmmrXgafv = Nothing
    , _gmmmrUploadProtocol = Nothing
    , _gmmmrAccessToken = Nothing
    , _gmmmrUploadType = Nothing
    , _gmmmrPayload = pGmmmrPayload_
    , _gmmmrName = pGmmmrName_
    , _gmmmrCallback = Nothing
    }


-- | V1 error format.
gmmmrXgafv :: Lens' GroupsMembershipsModifyMembershipRoles (Maybe Xgafv)
gmmmrXgafv
  = lens _gmmmrXgafv (\ s a -> s{_gmmmrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmmmrUploadProtocol :: Lens' GroupsMembershipsModifyMembershipRoles (Maybe Text)
gmmmrUploadProtocol
  = lens _gmmmrUploadProtocol
      (\ s a -> s{_gmmmrUploadProtocol = a})

-- | OAuth access token.
gmmmrAccessToken :: Lens' GroupsMembershipsModifyMembershipRoles (Maybe Text)
gmmmrAccessToken
  = lens _gmmmrAccessToken
      (\ s a -> s{_gmmmrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmmmrUploadType :: Lens' GroupsMembershipsModifyMembershipRoles (Maybe Text)
gmmmrUploadType
  = lens _gmmmrUploadType
      (\ s a -> s{_gmmmrUploadType = a})

-- | Multipart request metadata.
gmmmrPayload :: Lens' GroupsMembershipsModifyMembershipRoles ModifyMembershipRolesRequest
gmmmrPayload
  = lens _gmmmrPayload (\ s a -> s{_gmmmrPayload = a})

-- | Required. The [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- \`Membership\` whose roles are to be modified. Must be of the form
-- \`groups\/{group_id}\/memberships\/{membership_id}\`.
gmmmrName :: Lens' GroupsMembershipsModifyMembershipRoles Text
gmmmrName
  = lens _gmmmrName (\ s a -> s{_gmmmrName = a})

-- | JSONP
gmmmrCallback :: Lens' GroupsMembershipsModifyMembershipRoles (Maybe Text)
gmmmrCallback
  = lens _gmmmrCallback
      (\ s a -> s{_gmmmrCallback = a})

instance GoogleRequest
           GroupsMembershipsModifyMembershipRoles
         where
        type Rs GroupsMembershipsModifyMembershipRoles =
             ModifyMembershipRolesResponse
        type Scopes GroupsMembershipsModifyMembershipRoles =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          GroupsMembershipsModifyMembershipRoles'{..}
          = go _gmmmrName _gmmmrXgafv _gmmmrUploadProtocol
              _gmmmrAccessToken
              _gmmmrUploadType
              _gmmmrCallback
              (Just AltJSON)
              _gmmmrPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GroupsMembershipsModifyMembershipRolesResource)
                      mempty
