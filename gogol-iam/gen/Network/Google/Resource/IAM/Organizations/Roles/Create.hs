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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.create@.
module Network.Google.Resource.IAM.Organizations.Roles.Create
    (
    -- * REST Resource
      OrganizationsRolesCreateResource

    -- * Creating a Request
    , organizationsRolesCreate
    , OrganizationsRolesCreate

    -- * Request Lenses
    , orcParent
    , orcXgafv
    , orcUploadProtocol
    , orcAccessToken
    , orcUploadType
    , orcPayload
    , orcCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.create@ method which the
-- 'OrganizationsRolesCreate' request conforms to.
type OrganizationsRolesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "roles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateRoleRequest :>
                         Post '[JSON] Role

-- | Creates a new Role.
--
-- /See:/ 'organizationsRolesCreate' smart constructor.
data OrganizationsRolesCreate =
  OrganizationsRolesCreate'
    { _orcParent         :: !Text
    , _orcXgafv          :: !(Maybe Xgafv)
    , _orcUploadProtocol :: !(Maybe Text)
    , _orcAccessToken    :: !(Maybe Text)
    , _orcUploadType     :: !(Maybe Text)
    , _orcPayload        :: !CreateRoleRequest
    , _orcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsRolesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orcParent'
--
-- * 'orcXgafv'
--
-- * 'orcUploadProtocol'
--
-- * 'orcAccessToken'
--
-- * 'orcUploadType'
--
-- * 'orcPayload'
--
-- * 'orcCallback'
organizationsRolesCreate
    :: Text -- ^ 'orcParent'
    -> CreateRoleRequest -- ^ 'orcPayload'
    -> OrganizationsRolesCreate
organizationsRolesCreate pOrcParent_ pOrcPayload_ =
  OrganizationsRolesCreate'
    { _orcParent = pOrcParent_
    , _orcXgafv = Nothing
    , _orcUploadProtocol = Nothing
    , _orcAccessToken = Nothing
    , _orcUploadType = Nothing
    , _orcPayload = pOrcPayload_
    , _orcCallback = Nothing
    }


-- | The resource name of the parent resource in one of the following
-- formats: \`organizations\/{ORGANIZATION_ID}\` \`projects\/{PROJECT_ID}\`
orcParent :: Lens' OrganizationsRolesCreate Text
orcParent
  = lens _orcParent (\ s a -> s{_orcParent = a})

-- | V1 error format.
orcXgafv :: Lens' OrganizationsRolesCreate (Maybe Xgafv)
orcXgafv = lens _orcXgafv (\ s a -> s{_orcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orcUploadProtocol :: Lens' OrganizationsRolesCreate (Maybe Text)
orcUploadProtocol
  = lens _orcUploadProtocol
      (\ s a -> s{_orcUploadProtocol = a})

-- | OAuth access token.
orcAccessToken :: Lens' OrganizationsRolesCreate (Maybe Text)
orcAccessToken
  = lens _orcAccessToken
      (\ s a -> s{_orcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orcUploadType :: Lens' OrganizationsRolesCreate (Maybe Text)
orcUploadType
  = lens _orcUploadType
      (\ s a -> s{_orcUploadType = a})

-- | Multipart request metadata.
orcPayload :: Lens' OrganizationsRolesCreate CreateRoleRequest
orcPayload
  = lens _orcPayload (\ s a -> s{_orcPayload = a})

-- | JSONP
orcCallback :: Lens' OrganizationsRolesCreate (Maybe Text)
orcCallback
  = lens _orcCallback (\ s a -> s{_orcCallback = a})

instance GoogleRequest OrganizationsRolesCreate where
        type Rs OrganizationsRolesCreate = Role
        type Scopes OrganizationsRolesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesCreate'{..}
          = go _orcParent _orcXgafv _orcUploadProtocol
              _orcAccessToken
              _orcUploadType
              _orcCallback
              (Just AltJSON)
              _orcPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesCreateResource)
                      mempty
