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
-- Module      : Network.Google.Resource.IAM.Roles.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists every predefined Role that IAM supports, or every custom role that
-- is defined for an organization or project.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.roles.list@.
module Network.Google.Resource.IAM.Roles.List
    (
    -- * REST Resource
      RolesListResource

    -- * Creating a Request
    , rolesList
    , RolesList

    -- * Request Lenses
    , rlParent
    , rlXgafv
    , rlUploadProtocol
    , rlAccessToken
    , rlUploadType
    , rlShowDeleted
    , rlView
    , rlPageToken
    , rlPageSize
    , rlCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.roles.list@ method which the
-- 'RolesList' request conforms to.
type RolesListResource =
     "v1" :>
       "roles" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "view" RolesListView :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListRolesResponse

-- | Lists every predefined Role that IAM supports, or every custom role that
-- is defined for an organization or project.
--
-- /See:/ 'rolesList' smart constructor.
data RolesList =
  RolesList'
    { _rlParent :: !(Maybe Text)
    , _rlXgafv :: !(Maybe Xgafv)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlShowDeleted :: !(Maybe Bool)
    , _rlView :: !(Maybe RolesListView)
    , _rlPageToken :: !(Maybe Text)
    , _rlPageSize :: !(Maybe (Textual Int32))
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlParent'
--
-- * 'rlXgafv'
--
-- * 'rlUploadProtocol'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlShowDeleted'
--
-- * 'rlView'
--
-- * 'rlPageToken'
--
-- * 'rlPageSize'
--
-- * 'rlCallback'
rolesList
    :: RolesList
rolesList =
  RolesList'
    { _rlParent = Nothing
    , _rlXgafv = Nothing
    , _rlUploadProtocol = Nothing
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlShowDeleted = Nothing
    , _rlView = Nothing
    , _rlPageToken = Nothing
    , _rlPageSize = Nothing
    , _rlCallback = Nothing
    }


-- | The \`parent\` parameter\'s value depends on the target resource for the
-- request, namely [\`roles\`](\/iam\/reference\/rest\/v1\/roles),
-- [\`projects\`](\/iam\/reference\/rest\/v1\/projects.roles), or
-- [\`organizations\`](\/iam\/reference\/rest\/v1\/organizations.roles).
-- Each resource type\'s \`parent\` value format is described below: *
-- [\`roles.list()\`](\/iam\/reference\/rest\/v1\/roles\/list): An empty
-- string. This method doesn\'t require a resource; it simply returns all
-- [predefined roles](\/iam\/docs\/understanding-roles#predefined_roles) in
-- Cloud IAM. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/roles\` *
-- [\`projects.roles.list()\`](\/iam\/reference\/rest\/v1\/projects.roles\/list):
-- \`projects\/{PROJECT_ID}\`. This method lists all project-level [custom
-- roles](\/iam\/docs\/understanding-custom-roles). Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\` *
-- [\`organizations.roles.list()\`](\/iam\/reference\/rest\/v1\/organizations.roles\/list):
-- \`organizations\/{ORGANIZATION_ID}\`. This method lists all
-- organization-level [custom
-- roles](\/iam\/docs\/understanding-custom-roles). Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\`
-- Note: Wildcard (*) values are invalid; you must specify a complete
-- project ID or organization ID.
rlParent :: Lens' RolesList (Maybe Text)
rlParent = lens _rlParent (\ s a -> s{_rlParent = a})

-- | V1 error format.
rlXgafv :: Lens' RolesList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' RolesList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | OAuth access token.
rlAccessToken :: Lens' RolesList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' RolesList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | Include Roles that have been deleted.
rlShowDeleted :: Lens' RolesList (Maybe Bool)
rlShowDeleted
  = lens _rlShowDeleted
      (\ s a -> s{_rlShowDeleted = a})

-- | Optional view for the returned Role objects. When \`FULL\` is specified,
-- the \`includedPermissions\` field is returned, which includes a list of
-- all permissions in the role. The default value is \`BASIC\`, which does
-- not return the \`includedPermissions\` field.
rlView :: Lens' RolesList (Maybe RolesListView)
rlView = lens _rlView (\ s a -> s{_rlView = a})

-- | Optional pagination token returned in an earlier ListRolesResponse.
rlPageToken :: Lens' RolesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Optional limit on the number of roles to include in the response. The
-- default is 300, and the maximum is 1,000.
rlPageSize :: Lens' RolesList (Maybe Int32)
rlPageSize
  = lens _rlPageSize (\ s a -> s{_rlPageSize = a}) .
      mapping _Coerce

-- | JSONP
rlCallback :: Lens' RolesList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest RolesList where
        type Rs RolesList = ListRolesResponse
        type Scopes RolesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RolesList'{..}
          = go _rlParent _rlXgafv _rlUploadProtocol
              _rlAccessToken
              _rlUploadType
              _rlShowDeleted
              _rlView
              _rlPageToken
              _rlPageSize
              _rlCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient (Proxy :: Proxy RolesListResource)
                      mempty
