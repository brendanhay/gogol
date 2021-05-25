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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom Role. When you delete a custom role, the following
-- changes occur immediately: * You cannot bind a member to the custom role
-- in an IAM Policy. * Existing bindings to the custom role are not
-- changed, but they have no effect. * By default, the response from
-- ListRoles does not include the custom role. You have 7 days to undelete
-- the custom role. After 7 days, the following changes occur: * The custom
-- role is permanently deleted and cannot be recovered. * If an IAM policy
-- contains a binding to the custom role, the binding is permanently
-- removed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.delete@.
module Network.Google.Resource.IAM.Organizations.Roles.Delete
    (
    -- * REST Resource
      OrganizationsRolesDeleteResource

    -- * Creating a Request
    , organizationsRolesDelete
    , OrganizationsRolesDelete

    -- * Request Lenses
    , ordXgafv
    , ordEtag
    , ordUploadProtocol
    , ordAccessToken
    , ordUploadType
    , ordName
    , ordCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.delete@ method which the
-- 'OrganizationsRolesDelete' request conforms to.
type OrganizationsRolesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "etag" Bytes :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Role

-- | Deletes a custom Role. When you delete a custom role, the following
-- changes occur immediately: * You cannot bind a member to the custom role
-- in an IAM Policy. * Existing bindings to the custom role are not
-- changed, but they have no effect. * By default, the response from
-- ListRoles does not include the custom role. You have 7 days to undelete
-- the custom role. After 7 days, the following changes occur: * The custom
-- role is permanently deleted and cannot be recovered. * If an IAM policy
-- contains a binding to the custom role, the binding is permanently
-- removed.
--
-- /See:/ 'organizationsRolesDelete' smart constructor.
data OrganizationsRolesDelete =
  OrganizationsRolesDelete'
    { _ordXgafv :: !(Maybe Xgafv)
    , _ordEtag :: !(Maybe Bytes)
    , _ordUploadProtocol :: !(Maybe Text)
    , _ordAccessToken :: !(Maybe Text)
    , _ordUploadType :: !(Maybe Text)
    , _ordName :: !Text
    , _ordCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsRolesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordXgafv'
--
-- * 'ordEtag'
--
-- * 'ordUploadProtocol'
--
-- * 'ordAccessToken'
--
-- * 'ordUploadType'
--
-- * 'ordName'
--
-- * 'ordCallback'
organizationsRolesDelete
    :: Text -- ^ 'ordName'
    -> OrganizationsRolesDelete
organizationsRolesDelete pOrdName_ =
  OrganizationsRolesDelete'
    { _ordXgafv = Nothing
    , _ordEtag = Nothing
    , _ordUploadProtocol = Nothing
    , _ordAccessToken = Nothing
    , _ordUploadType = Nothing
    , _ordName = pOrdName_
    , _ordCallback = Nothing
    }


-- | V1 error format.
ordXgafv :: Lens' OrganizationsRolesDelete (Maybe Xgafv)
ordXgafv = lens _ordXgafv (\ s a -> s{_ordXgafv = a})

-- | Used to perform a consistent read-modify-write.
ordEtag :: Lens' OrganizationsRolesDelete (Maybe ByteString)
ordEtag
  = lens _ordEtag (\ s a -> s{_ordEtag = a}) .
      mapping _Bytes

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ordUploadProtocol :: Lens' OrganizationsRolesDelete (Maybe Text)
ordUploadProtocol
  = lens _ordUploadProtocol
      (\ s a -> s{_ordUploadProtocol = a})

-- | OAuth access token.
ordAccessToken :: Lens' OrganizationsRolesDelete (Maybe Text)
ordAccessToken
  = lens _ordAccessToken
      (\ s a -> s{_ordAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ordUploadType :: Lens' OrganizationsRolesDelete (Maybe Text)
ordUploadType
  = lens _ordUploadType
      (\ s a -> s{_ordUploadType = a})

-- | The \`name\` parameter\'s value depends on the target resource for the
-- request, namely
-- [\`projects\`](\/iam\/reference\/rest\/v1\/projects.roles) or
-- [\`organizations\`](\/iam\/reference\/rest\/v1\/organizations.roles).
-- Each resource type\'s \`name\` value format is described below: *
-- [\`projects.roles.delete()\`](\/iam\/reference\/rest\/v1\/projects.roles\/delete):
-- \`projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This method deletes
-- only [custom roles](\/iam\/docs\/understanding-custom-roles) that have
-- been created at the project level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- *
-- [\`organizations.roles.delete()\`](\/iam\/reference\/rest\/v1\/organizations.roles\/delete):
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This
-- method deletes only [custom
-- roles](\/iam\/docs\/understanding-custom-roles) that have been created
-- at the organization level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- Note: Wildcard (*) values are invalid; you must specify a complete
-- project ID or organization ID.
ordName :: Lens' OrganizationsRolesDelete Text
ordName = lens _ordName (\ s a -> s{_ordName = a})

-- | JSONP
ordCallback :: Lens' OrganizationsRolesDelete (Maybe Text)
ordCallback
  = lens _ordCallback (\ s a -> s{_ordCallback = a})

instance GoogleRequest OrganizationsRolesDelete where
        type Rs OrganizationsRolesDelete = Role
        type Scopes OrganizationsRolesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesDelete'{..}
          = go _ordName _ordXgafv _ordEtag _ordUploadProtocol
              _ordAccessToken
              _ordUploadType
              _ordCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesDeleteResource)
                      mempty
