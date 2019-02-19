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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undelete a Role, bringing it back in its previous state.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.undelete@.
module Network.Google.Resource.IAM.Organizations.Roles.Undelete
    (
    -- * REST Resource
      OrganizationsRolesUndeleteResource

    -- * Creating a Request
    , organizationsRolesUndelete
    , OrganizationsRolesUndelete

    -- * Request Lenses
    , oruXgafv
    , oruUploadProtocol
    , oruAccessToken
    , oruUploadType
    , oruPayload
    , oruName
    , oruCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.undelete@ method which the
-- 'OrganizationsRolesUndelete' request conforms to.
type OrganizationsRolesUndeleteResource =
     "v1" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteRoleRequest :>
                       Post '[JSON] Role

-- | Undelete a Role, bringing it back in its previous state.
--
-- /See:/ 'organizationsRolesUndelete' smart constructor.
data OrganizationsRolesUndelete =
  OrganizationsRolesUndelete'
    { _oruXgafv          :: !(Maybe Xgafv)
    , _oruUploadProtocol :: !(Maybe Text)
    , _oruAccessToken    :: !(Maybe Text)
    , _oruUploadType     :: !(Maybe Text)
    , _oruPayload        :: !UndeleteRoleRequest
    , _oruName           :: !Text
    , _oruCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsRolesUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oruXgafv'
--
-- * 'oruUploadProtocol'
--
-- * 'oruAccessToken'
--
-- * 'oruUploadType'
--
-- * 'oruPayload'
--
-- * 'oruName'
--
-- * 'oruCallback'
organizationsRolesUndelete
    :: UndeleteRoleRequest -- ^ 'oruPayload'
    -> Text -- ^ 'oruName'
    -> OrganizationsRolesUndelete
organizationsRolesUndelete pOruPayload_ pOruName_ =
  OrganizationsRolesUndelete'
    { _oruXgafv = Nothing
    , _oruUploadProtocol = Nothing
    , _oruAccessToken = Nothing
    , _oruUploadType = Nothing
    , _oruPayload = pOruPayload_
    , _oruName = pOruName_
    , _oruCallback = Nothing
    }

-- | V1 error format.
oruXgafv :: Lens' OrganizationsRolesUndelete (Maybe Xgafv)
oruXgafv = lens _oruXgafv (\ s a -> s{_oruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oruUploadProtocol :: Lens' OrganizationsRolesUndelete (Maybe Text)
oruUploadProtocol
  = lens _oruUploadProtocol
      (\ s a -> s{_oruUploadProtocol = a})

-- | OAuth access token.
oruAccessToken :: Lens' OrganizationsRolesUndelete (Maybe Text)
oruAccessToken
  = lens _oruAccessToken
      (\ s a -> s{_oruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oruUploadType :: Lens' OrganizationsRolesUndelete (Maybe Text)
oruUploadType
  = lens _oruUploadType
      (\ s a -> s{_oruUploadType = a})

-- | Multipart request metadata.
oruPayload :: Lens' OrganizationsRolesUndelete UndeleteRoleRequest
oruPayload
  = lens _oruPayload (\ s a -> s{_oruPayload = a})

-- | The resource name of the role in one of the following formats:
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{ROLE_NAME}\`
-- \`projects\/{PROJECT_ID}\/roles\/{ROLE_NAME}\`
oruName :: Lens' OrganizationsRolesUndelete Text
oruName = lens _oruName (\ s a -> s{_oruName = a})

-- | JSONP
oruCallback :: Lens' OrganizationsRolesUndelete (Maybe Text)
oruCallback
  = lens _oruCallback (\ s a -> s{_oruCallback = a})

instance GoogleRequest OrganizationsRolesUndelete
         where
        type Rs OrganizationsRolesUndelete = Role
        type Scopes OrganizationsRolesUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesUndelete'{..}
          = go _oruName _oruXgafv _oruUploadProtocol
              _oruAccessToken
              _oruUploadType
              _oruCallback
              (Just AltJSON)
              _oruPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesUndeleteResource)
                      mempty
