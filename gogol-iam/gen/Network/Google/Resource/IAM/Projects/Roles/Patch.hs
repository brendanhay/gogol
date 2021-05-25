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
-- Module      : Network.Google.Resource.IAM.Projects.Roles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the definition of a custom Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.roles.patch@.
module Network.Google.Resource.IAM.Projects.Roles.Patch
    (
    -- * REST Resource
      ProjectsRolesPatchResource

    -- * Creating a Request
    , projectsRolesPatch
    , ProjectsRolesPatch

    -- * Request Lenses
    , prpXgafv
    , prpUploadProtocol
    , prpUpdateMask
    , prpAccessToken
    , prpUploadType
    , prpPayload
    , prpName
    , prpCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.roles.patch@ method which the
-- 'ProjectsRolesPatch' request conforms to.
type ProjectsRolesPatchResource =
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
-- /See:/ 'projectsRolesPatch' smart constructor.
data ProjectsRolesPatch =
  ProjectsRolesPatch'
    { _prpXgafv :: !(Maybe Xgafv)
    , _prpUploadProtocol :: !(Maybe Text)
    , _prpUpdateMask :: !(Maybe GFieldMask)
    , _prpAccessToken :: !(Maybe Text)
    , _prpUploadType :: !(Maybe Text)
    , _prpPayload :: !Role
    , _prpName :: !Text
    , _prpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prpXgafv'
--
-- * 'prpUploadProtocol'
--
-- * 'prpUpdateMask'
--
-- * 'prpAccessToken'
--
-- * 'prpUploadType'
--
-- * 'prpPayload'
--
-- * 'prpName'
--
-- * 'prpCallback'
projectsRolesPatch
    :: Role -- ^ 'prpPayload'
    -> Text -- ^ 'prpName'
    -> ProjectsRolesPatch
projectsRolesPatch pPrpPayload_ pPrpName_ =
  ProjectsRolesPatch'
    { _prpXgafv = Nothing
    , _prpUploadProtocol = Nothing
    , _prpUpdateMask = Nothing
    , _prpAccessToken = Nothing
    , _prpUploadType = Nothing
    , _prpPayload = pPrpPayload_
    , _prpName = pPrpName_
    , _prpCallback = Nothing
    }


-- | V1 error format.
prpXgafv :: Lens' ProjectsRolesPatch (Maybe Xgafv)
prpXgafv = lens _prpXgafv (\ s a -> s{_prpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prpUploadProtocol :: Lens' ProjectsRolesPatch (Maybe Text)
prpUploadProtocol
  = lens _prpUploadProtocol
      (\ s a -> s{_prpUploadProtocol = a})

-- | A mask describing which fields in the Role have changed.
prpUpdateMask :: Lens' ProjectsRolesPatch (Maybe GFieldMask)
prpUpdateMask
  = lens _prpUpdateMask
      (\ s a -> s{_prpUpdateMask = a})

-- | OAuth access token.
prpAccessToken :: Lens' ProjectsRolesPatch (Maybe Text)
prpAccessToken
  = lens _prpAccessToken
      (\ s a -> s{_prpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prpUploadType :: Lens' ProjectsRolesPatch (Maybe Text)
prpUploadType
  = lens _prpUploadType
      (\ s a -> s{_prpUploadType = a})

-- | Multipart request metadata.
prpPayload :: Lens' ProjectsRolesPatch Role
prpPayload
  = lens _prpPayload (\ s a -> s{_prpPayload = a})

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
prpName :: Lens' ProjectsRolesPatch Text
prpName = lens _prpName (\ s a -> s{_prpName = a})

-- | JSONP
prpCallback :: Lens' ProjectsRolesPatch (Maybe Text)
prpCallback
  = lens _prpCallback (\ s a -> s{_prpCallback = a})

instance GoogleRequest ProjectsRolesPatch where
        type Rs ProjectsRolesPatch = Role
        type Scopes ProjectsRolesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRolesPatch'{..}
          = go _prpName _prpXgafv _prpUploadProtocol
              _prpUpdateMask
              _prpAccessToken
              _prpUploadType
              _prpCallback
              (Just AltJSON)
              _prpPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRolesPatchResource)
                      mempty
