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
-- Module      : Network.Google.Resource.IAM.Projects.Roles.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.roles.delete@.
module Network.Google.Resource.IAM.Projects.Roles.Delete
    (
    -- * REST Resource
      ProjectsRolesDeleteResource

    -- * Creating a Request
    , projectsRolesDelete
    , ProjectsRolesDelete

    -- * Request Lenses
    , prdXgafv
    , prdEtag
    , prdUploadProtocol
    , prdAccessToken
    , prdUploadType
    , prdName
    , prdCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.roles.delete@ method which the
-- 'ProjectsRolesDelete' request conforms to.
type ProjectsRolesDeleteResource =
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
-- /See:/ 'projectsRolesDelete' smart constructor.
data ProjectsRolesDelete =
  ProjectsRolesDelete'
    { _prdXgafv :: !(Maybe Xgafv)
    , _prdEtag :: !(Maybe Bytes)
    , _prdUploadProtocol :: !(Maybe Text)
    , _prdAccessToken :: !(Maybe Text)
    , _prdUploadType :: !(Maybe Text)
    , _prdName :: !Text
    , _prdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRolesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prdXgafv'
--
-- * 'prdEtag'
--
-- * 'prdUploadProtocol'
--
-- * 'prdAccessToken'
--
-- * 'prdUploadType'
--
-- * 'prdName'
--
-- * 'prdCallback'
projectsRolesDelete
    :: Text -- ^ 'prdName'
    -> ProjectsRolesDelete
projectsRolesDelete pPrdName_ =
  ProjectsRolesDelete'
    { _prdXgafv = Nothing
    , _prdEtag = Nothing
    , _prdUploadProtocol = Nothing
    , _prdAccessToken = Nothing
    , _prdUploadType = Nothing
    , _prdName = pPrdName_
    , _prdCallback = Nothing
    }


-- | V1 error format.
prdXgafv :: Lens' ProjectsRolesDelete (Maybe Xgafv)
prdXgafv = lens _prdXgafv (\ s a -> s{_prdXgafv = a})

-- | Used to perform a consistent read-modify-write.
prdEtag :: Lens' ProjectsRolesDelete (Maybe ByteString)
prdEtag
  = lens _prdEtag (\ s a -> s{_prdEtag = a}) .
      mapping _Bytes

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prdUploadProtocol :: Lens' ProjectsRolesDelete (Maybe Text)
prdUploadProtocol
  = lens _prdUploadProtocol
      (\ s a -> s{_prdUploadProtocol = a})

-- | OAuth access token.
prdAccessToken :: Lens' ProjectsRolesDelete (Maybe Text)
prdAccessToken
  = lens _prdAccessToken
      (\ s a -> s{_prdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prdUploadType :: Lens' ProjectsRolesDelete (Maybe Text)
prdUploadType
  = lens _prdUploadType
      (\ s a -> s{_prdUploadType = a})

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
prdName :: Lens' ProjectsRolesDelete Text
prdName = lens _prdName (\ s a -> s{_prdName = a})

-- | JSONP
prdCallback :: Lens' ProjectsRolesDelete (Maybe Text)
prdCallback
  = lens _prdCallback (\ s a -> s{_prdCallback = a})

instance GoogleRequest ProjectsRolesDelete where
        type Rs ProjectsRolesDelete = Role
        type Scopes ProjectsRolesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRolesDelete'{..}
          = go _prdName _prdXgafv _prdEtag _prdUploadProtocol
              _prdAccessToken
              _prdUploadType
              _prdCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRolesDeleteResource)
                      mempty
