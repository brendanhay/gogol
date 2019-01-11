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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Role definition.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.get@.
module Network.Google.Resource.IAM.Organizations.Roles.Get
    (
    -- * REST Resource
      OrganizationsRolesGetResource

    -- * Creating a Request
    , organizationsRolesGet
    , OrganizationsRolesGet

    -- * Request Lenses
    , orgXgafv
    , orgUploadProtocol
    , orgAccessToken
    , orgUploadType
    , orgName
    , orgCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.get@ method which the
-- 'OrganizationsRolesGet' request conforms to.
type OrganizationsRolesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Role

-- | Gets a Role definition.
--
-- /See:/ 'organizationsRolesGet' smart constructor.
data OrganizationsRolesGet = OrganizationsRolesGet'
    { _orgXgafv          :: !(Maybe Xgafv)
    , _orgUploadProtocol :: !(Maybe Text)
    , _orgAccessToken    :: !(Maybe Text)
    , _orgUploadType     :: !(Maybe Text)
    , _orgName           :: !Text
    , _orgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsRolesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgXgafv'
--
-- * 'orgUploadProtocol'
--
-- * 'orgAccessToken'
--
-- * 'orgUploadType'
--
-- * 'orgName'
--
-- * 'orgCallback'
organizationsRolesGet
    :: Text -- ^ 'orgName'
    -> OrganizationsRolesGet
organizationsRolesGet pOrgName_ =
    OrganizationsRolesGet'
    { _orgXgafv = Nothing
    , _orgUploadProtocol = Nothing
    , _orgAccessToken = Nothing
    , _orgUploadType = Nothing
    , _orgName = pOrgName_
    , _orgCallback = Nothing
    }

-- | V1 error format.
orgXgafv :: Lens' OrganizationsRolesGet (Maybe Xgafv)
orgXgafv = lens _orgXgafv (\ s a -> s{_orgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orgUploadProtocol :: Lens' OrganizationsRolesGet (Maybe Text)
orgUploadProtocol
  = lens _orgUploadProtocol
      (\ s a -> s{_orgUploadProtocol = a})

-- | OAuth access token.
orgAccessToken :: Lens' OrganizationsRolesGet (Maybe Text)
orgAccessToken
  = lens _orgAccessToken
      (\ s a -> s{_orgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orgUploadType :: Lens' OrganizationsRolesGet (Maybe Text)
orgUploadType
  = lens _orgUploadType
      (\ s a -> s{_orgUploadType = a})

-- | The resource name of the role in one of the following formats:
-- \`roles\/{ROLE_NAME}\`
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{ROLE_NAME}\`
-- \`projects\/{PROJECT_ID}\/roles\/{ROLE_NAME}\`
orgName :: Lens' OrganizationsRolesGet Text
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | JSONP
orgCallback :: Lens' OrganizationsRolesGet (Maybe Text)
orgCallback
  = lens _orgCallback (\ s a -> s{_orgCallback = a})

instance GoogleRequest OrganizationsRolesGet where
        type Rs OrganizationsRolesGet = Role
        type Scopes OrganizationsRolesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesGet'{..}
          = go _orgName _orgXgafv _orgUploadProtocol
              _orgAccessToken
              _orgUploadType
              _orgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesGetResource)
                      mempty
