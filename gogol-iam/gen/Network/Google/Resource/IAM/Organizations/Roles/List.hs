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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Roles defined on a resource.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.list@.
module Network.Google.Resource.IAM.Organizations.Roles.List
    (
    -- * REST Resource
      OrganizationsRolesListResource

    -- * Creating a Request
    , organizationsRolesList
    , OrganizationsRolesList

    -- * Request Lenses
    , orlParent
    , orlXgafv
    , orlUploadProtocol
    , orlAccessToken
    , orlUploadType
    , orlShowDeleted
    , orlView
    , orlPageToken
    , orlPageSize
    , orlCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.list@ method which the
-- 'OrganizationsRolesList' request conforms to.
type OrganizationsRolesListResource =
     "v1" :>
       Capture "parent" Text :>
         "roles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "view" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListRolesResponse

-- | Lists the Roles defined on a resource.
--
-- /See:/ 'organizationsRolesList' smart constructor.
data OrganizationsRolesList =
  OrganizationsRolesList'
    { _orlParent         :: !Text
    , _orlXgafv          :: !(Maybe Xgafv)
    , _orlUploadProtocol :: !(Maybe Text)
    , _orlAccessToken    :: !(Maybe Text)
    , _orlUploadType     :: !(Maybe Text)
    , _orlShowDeleted    :: !(Maybe Bool)
    , _orlView           :: !(Maybe Text)
    , _orlPageToken      :: !(Maybe Text)
    , _orlPageSize       :: !(Maybe (Textual Int32))
    , _orlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsRolesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orlParent'
--
-- * 'orlXgafv'
--
-- * 'orlUploadProtocol'
--
-- * 'orlAccessToken'
--
-- * 'orlUploadType'
--
-- * 'orlShowDeleted'
--
-- * 'orlView'
--
-- * 'orlPageToken'
--
-- * 'orlPageSize'
--
-- * 'orlCallback'
organizationsRolesList
    :: Text -- ^ 'orlParent'
    -> OrganizationsRolesList
organizationsRolesList pOrlParent_ =
  OrganizationsRolesList'
    { _orlParent = pOrlParent_
    , _orlXgafv = Nothing
    , _orlUploadProtocol = Nothing
    , _orlAccessToken = Nothing
    , _orlUploadType = Nothing
    , _orlShowDeleted = Nothing
    , _orlView = Nothing
    , _orlPageToken = Nothing
    , _orlPageSize = Nothing
    , _orlCallback = Nothing
    }


-- | The resource name of the parent resource in one of the following
-- formats: \`\` (empty string) -- this refers to curated roles.
-- \`organizations\/{ORGANIZATION_ID}\` \`projects\/{PROJECT_ID}\`
orlParent :: Lens' OrganizationsRolesList Text
orlParent
  = lens _orlParent (\ s a -> s{_orlParent = a})

-- | V1 error format.
orlXgafv :: Lens' OrganizationsRolesList (Maybe Xgafv)
orlXgafv = lens _orlXgafv (\ s a -> s{_orlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orlUploadProtocol :: Lens' OrganizationsRolesList (Maybe Text)
orlUploadProtocol
  = lens _orlUploadProtocol
      (\ s a -> s{_orlUploadProtocol = a})

-- | OAuth access token.
orlAccessToken :: Lens' OrganizationsRolesList (Maybe Text)
orlAccessToken
  = lens _orlAccessToken
      (\ s a -> s{_orlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orlUploadType :: Lens' OrganizationsRolesList (Maybe Text)
orlUploadType
  = lens _orlUploadType
      (\ s a -> s{_orlUploadType = a})

-- | Include Roles that have been deleted.
orlShowDeleted :: Lens' OrganizationsRolesList (Maybe Bool)
orlShowDeleted
  = lens _orlShowDeleted
      (\ s a -> s{_orlShowDeleted = a})

-- | Optional view for the returned Role objects. When \`FULL\` is specified,
-- the \`includedPermissions\` field is returned, which includes a list of
-- all permissions in the role. The default value is \`BASIC\`, which does
-- not return the \`includedPermissions\` field.
orlView :: Lens' OrganizationsRolesList (Maybe Text)
orlView = lens _orlView (\ s a -> s{_orlView = a})

-- | Optional pagination token returned in an earlier ListRolesResponse.
orlPageToken :: Lens' OrganizationsRolesList (Maybe Text)
orlPageToken
  = lens _orlPageToken (\ s a -> s{_orlPageToken = a})

-- | Optional limit on the number of roles to include in the response.
orlPageSize :: Lens' OrganizationsRolesList (Maybe Int32)
orlPageSize
  = lens _orlPageSize (\ s a -> s{_orlPageSize = a}) .
      mapping _Coerce

-- | JSONP
orlCallback :: Lens' OrganizationsRolesList (Maybe Text)
orlCallback
  = lens _orlCallback (\ s a -> s{_orlCallback = a})

instance GoogleRequest OrganizationsRolesList where
        type Rs OrganizationsRolesList = ListRolesResponse
        type Scopes OrganizationsRolesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesList'{..}
          = go _orlParent _orlXgafv _orlUploadProtocol
              _orlAccessToken
              _orlUploadType
              _orlShowDeleted
              _orlView
              _orlPageToken
              _orlPageSize
              _orlCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesListResource)
                      mempty
