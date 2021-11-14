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
-- Module      : Network.Google.Resource.IAM.Organizations.Roles.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the definition of a custom Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.organizations.roles.patch@.
module Network.Google.Resource.IAM.Organizations.Roles.Patch
    (
    -- * REST Resource
      OrganizationsRolesPatchResource

    -- * Creating a Request
    , organizationsRolesPatch
    , OrganizationsRolesPatch

    -- * Request Lenses
    , orpXgafv
    , orpUploadProtocol
    , orpUpdateMask
    , orpAccessToken
    , orpUploadType
    , orpPayload
    , orpName
    , orpCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.organizations.roles.patch@ method which the
-- 'OrganizationsRolesPatch' request conforms to.
type OrganizationsRolesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Role :> Patch '[JSON] Role

-- | Updates the definition of a custom Role.
--
-- /See:/ 'organizationsRolesPatch' smart constructor.
data OrganizationsRolesPatch =
  OrganizationsRolesPatch'
    { _orpXgafv :: !(Maybe Xgafv)
    , _orpUploadProtocol :: !(Maybe Text)
    , _orpUpdateMask :: !(Maybe GFieldMask)
    , _orpAccessToken :: !(Maybe Text)
    , _orpUploadType :: !(Maybe Text)
    , _orpPayload :: !Role
    , _orpName :: !Text
    , _orpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsRolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orpXgafv'
--
-- * 'orpUploadProtocol'
--
-- * 'orpUpdateMask'
--
-- * 'orpAccessToken'
--
-- * 'orpUploadType'
--
-- * 'orpPayload'
--
-- * 'orpName'
--
-- * 'orpCallback'
organizationsRolesPatch
    :: Role -- ^ 'orpPayload'
    -> Text -- ^ 'orpName'
    -> OrganizationsRolesPatch
organizationsRolesPatch pOrpPayload_ pOrpName_ =
  OrganizationsRolesPatch'
    { _orpXgafv = Nothing
    , _orpUploadProtocol = Nothing
    , _orpUpdateMask = Nothing
    , _orpAccessToken = Nothing
    , _orpUploadType = Nothing
    , _orpPayload = pOrpPayload_
    , _orpName = pOrpName_
    , _orpCallback = Nothing
    }


-- | V1 error format.
orpXgafv :: Lens' OrganizationsRolesPatch (Maybe Xgafv)
orpXgafv = lens _orpXgafv (\ s a -> s{_orpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orpUploadProtocol :: Lens' OrganizationsRolesPatch (Maybe Text)
orpUploadProtocol
  = lens _orpUploadProtocol
      (\ s a -> s{_orpUploadProtocol = a})

-- | A mask describing which fields in the Role have changed.
orpUpdateMask :: Lens' OrganizationsRolesPatch (Maybe GFieldMask)
orpUpdateMask
  = lens _orpUpdateMask
      (\ s a -> s{_orpUpdateMask = a})

-- | OAuth access token.
orpAccessToken :: Lens' OrganizationsRolesPatch (Maybe Text)
orpAccessToken
  = lens _orpAccessToken
      (\ s a -> s{_orpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orpUploadType :: Lens' OrganizationsRolesPatch (Maybe Text)
orpUploadType
  = lens _orpUploadType
      (\ s a -> s{_orpUploadType = a})

-- | Multipart request metadata.
orpPayload :: Lens' OrganizationsRolesPatch Role
orpPayload
  = lens _orpPayload (\ s a -> s{_orpPayload = a})

-- | The \`name\` parameter\'s value depends on the target resource for the
-- request, namely
-- [\`projects\`](\/iam\/reference\/rest\/v1\/projects.roles) or
-- [\`organizations\`](\/iam\/reference\/rest\/v1\/organizations.roles).
-- Each resource type\'s \`name\` value format is described below: *
-- [\`projects.roles.patch()\`](\/iam\/reference\/rest\/v1\/projects.roles\/patch):
-- \`projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This method updates
-- only [custom roles](\/iam\/docs\/understanding-custom-roles) that have
-- been created at the project level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- *
-- [\`organizations.roles.patch()\`](\/iam\/reference\/rest\/v1\/organizations.roles\/patch):
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This
-- method updates only [custom
-- roles](\/iam\/docs\/understanding-custom-roles) that have been created
-- at the organization level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- Note: Wildcard (*) values are invalid; you must specify a complete
-- project ID or organization ID.
orpName :: Lens' OrganizationsRolesPatch Text
orpName = lens _orpName (\ s a -> s{_orpName = a})

-- | JSONP
orpCallback :: Lens' OrganizationsRolesPatch (Maybe Text)
orpCallback
  = lens _orpCallback (\ s a -> s{_orpCallback = a})

instance GoogleRequest OrganizationsRolesPatch where
        type Rs OrganizationsRolesPatch = Role
        type Scopes OrganizationsRolesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsRolesPatch'{..}
          = go _orpName _orpXgafv _orpUploadProtocol
              _orpUpdateMask
              _orpAccessToken
              _orpUploadType
              _orpCallback
              (Just AltJSON)
              _orpPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsRolesPatchResource)
                      mempty
