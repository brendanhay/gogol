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
-- Module      : Network.Google.Resource.IAM.Projects.Roles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the definition of a Role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.roles.get@.
module Network.Google.Resource.IAM.Projects.Roles.Get
    (
    -- * REST Resource
      ProjectsRolesGetResource

    -- * Creating a Request
    , projectsRolesGet
    , ProjectsRolesGet

    -- * Request Lenses
    , prgXgafv
    , prgUploadProtocol
    , prgAccessToken
    , prgUploadType
    , prgName
    , prgCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.roles.get@ method which the
-- 'ProjectsRolesGet' request conforms to.
type ProjectsRolesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Role

-- | Gets the definition of a Role.
--
-- /See:/ 'projectsRolesGet' smart constructor.
data ProjectsRolesGet =
  ProjectsRolesGet'
    { _prgXgafv :: !(Maybe Xgafv)
    , _prgUploadProtocol :: !(Maybe Text)
    , _prgAccessToken :: !(Maybe Text)
    , _prgUploadType :: !(Maybe Text)
    , _prgName :: !Text
    , _prgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRolesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prgXgafv'
--
-- * 'prgUploadProtocol'
--
-- * 'prgAccessToken'
--
-- * 'prgUploadType'
--
-- * 'prgName'
--
-- * 'prgCallback'
projectsRolesGet
    :: Text -- ^ 'prgName'
    -> ProjectsRolesGet
projectsRolesGet pPrgName_ =
  ProjectsRolesGet'
    { _prgXgafv = Nothing
    , _prgUploadProtocol = Nothing
    , _prgAccessToken = Nothing
    , _prgUploadType = Nothing
    , _prgName = pPrgName_
    , _prgCallback = Nothing
    }


-- | V1 error format.
prgXgafv :: Lens' ProjectsRolesGet (Maybe Xgafv)
prgXgafv = lens _prgXgafv (\ s a -> s{_prgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prgUploadProtocol :: Lens' ProjectsRolesGet (Maybe Text)
prgUploadProtocol
  = lens _prgUploadProtocol
      (\ s a -> s{_prgUploadProtocol = a})

-- | OAuth access token.
prgAccessToken :: Lens' ProjectsRolesGet (Maybe Text)
prgAccessToken
  = lens _prgAccessToken
      (\ s a -> s{_prgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prgUploadType :: Lens' ProjectsRolesGet (Maybe Text)
prgUploadType
  = lens _prgUploadType
      (\ s a -> s{_prgUploadType = a})

-- | The \`name\` parameter\'s value depends on the target resource for the
-- request, namely [\`roles\`](\/iam\/reference\/rest\/v1\/roles),
-- [\`projects\`](\/iam\/reference\/rest\/v1\/projects.roles), or
-- [\`organizations\`](\/iam\/reference\/rest\/v1\/organizations.roles).
-- Each resource type\'s \`name\` value format is described below: *
-- [\`roles.get()\`](\/iam\/reference\/rest\/v1\/roles\/get):
-- \`roles\/{ROLE_NAME}\`. This method returns results from all [predefined
-- roles](\/iam\/docs\/understanding-roles#predefined_roles) in Cloud IAM.
-- Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/roles\/{ROLE_NAME}\` *
-- [\`projects.roles.get()\`](\/iam\/reference\/rest\/v1\/projects.roles\/get):
-- \`projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This method returns
-- only [custom roles](\/iam\/docs\/understanding-custom-roles) that have
-- been created at the project level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/projects\/{PROJECT_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- *
-- [\`organizations.roles.get()\`](\/iam\/reference\/rest\/v1\/organizations.roles\/get):
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`. This
-- method returns only [custom
-- roles](\/iam\/docs\/understanding-custom-roles) that have been created
-- at the organization level. Example request URL:
-- \`https:\/\/iam.googleapis.com\/v1\/organizations\/{ORGANIZATION_ID}\/roles\/{CUSTOM_ROLE_ID}\`
-- Note: Wildcard (*) values are invalid; you must specify a complete
-- project ID or organization ID.
prgName :: Lens' ProjectsRolesGet Text
prgName = lens _prgName (\ s a -> s{_prgName = a})

-- | JSONP
prgCallback :: Lens' ProjectsRolesGet (Maybe Text)
prgCallback
  = lens _prgCallback (\ s a -> s{_prgCallback = a})

instance GoogleRequest ProjectsRolesGet where
        type Rs ProjectsRolesGet = Role
        type Scopes ProjectsRolesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRolesGet'{..}
          = go _prgName _prgXgafv _prgUploadProtocol
              _prgAccessToken
              _prgUploadType
              _prgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRolesGetResource)
                      mempty
