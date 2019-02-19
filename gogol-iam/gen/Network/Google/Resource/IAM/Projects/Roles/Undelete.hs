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
-- Module      : Network.Google.Resource.IAM.Projects.Roles.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undelete a Role, bringing it back in its previous state.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.roles.undelete@.
module Network.Google.Resource.IAM.Projects.Roles.Undelete
    (
    -- * REST Resource
      ProjectsRolesUndeleteResource

    -- * Creating a Request
    , projectsRolesUndelete
    , ProjectsRolesUndelete

    -- * Request Lenses
    , pruXgafv
    , pruUploadProtocol
    , pruAccessToken
    , pruUploadType
    , pruPayload
    , pruName
    , pruCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.roles.undelete@ method which the
-- 'ProjectsRolesUndelete' request conforms to.
type ProjectsRolesUndeleteResource =
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
-- /See:/ 'projectsRolesUndelete' smart constructor.
data ProjectsRolesUndelete =
  ProjectsRolesUndelete'
    { _pruXgafv          :: !(Maybe Xgafv)
    , _pruUploadProtocol :: !(Maybe Text)
    , _pruAccessToken    :: !(Maybe Text)
    , _pruUploadType     :: !(Maybe Text)
    , _pruPayload        :: !UndeleteRoleRequest
    , _pruName           :: !Text
    , _pruCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRolesUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pruXgafv'
--
-- * 'pruUploadProtocol'
--
-- * 'pruAccessToken'
--
-- * 'pruUploadType'
--
-- * 'pruPayload'
--
-- * 'pruName'
--
-- * 'pruCallback'
projectsRolesUndelete
    :: UndeleteRoleRequest -- ^ 'pruPayload'
    -> Text -- ^ 'pruName'
    -> ProjectsRolesUndelete
projectsRolesUndelete pPruPayload_ pPruName_ =
  ProjectsRolesUndelete'
    { _pruXgafv = Nothing
    , _pruUploadProtocol = Nothing
    , _pruAccessToken = Nothing
    , _pruUploadType = Nothing
    , _pruPayload = pPruPayload_
    , _pruName = pPruName_
    , _pruCallback = Nothing
    }

-- | V1 error format.
pruXgafv :: Lens' ProjectsRolesUndelete (Maybe Xgafv)
pruXgafv = lens _pruXgafv (\ s a -> s{_pruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pruUploadProtocol :: Lens' ProjectsRolesUndelete (Maybe Text)
pruUploadProtocol
  = lens _pruUploadProtocol
      (\ s a -> s{_pruUploadProtocol = a})

-- | OAuth access token.
pruAccessToken :: Lens' ProjectsRolesUndelete (Maybe Text)
pruAccessToken
  = lens _pruAccessToken
      (\ s a -> s{_pruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pruUploadType :: Lens' ProjectsRolesUndelete (Maybe Text)
pruUploadType
  = lens _pruUploadType
      (\ s a -> s{_pruUploadType = a})

-- | Multipart request metadata.
pruPayload :: Lens' ProjectsRolesUndelete UndeleteRoleRequest
pruPayload
  = lens _pruPayload (\ s a -> s{_pruPayload = a})

-- | The resource name of the role in one of the following formats:
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{ROLE_NAME}\`
-- \`projects\/{PROJECT_ID}\/roles\/{ROLE_NAME}\`
pruName :: Lens' ProjectsRolesUndelete Text
pruName = lens _pruName (\ s a -> s{_pruName = a})

-- | JSONP
pruCallback :: Lens' ProjectsRolesUndelete (Maybe Text)
pruCallback
  = lens _pruCallback (\ s a -> s{_pruCallback = a})

instance GoogleRequest ProjectsRolesUndelete where
        type Rs ProjectsRolesUndelete = Role
        type Scopes ProjectsRolesUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRolesUndelete'{..}
          = go _pruName _pruXgafv _pruUploadProtocol
              _pruAccessToken
              _pruUploadType
              _pruCallback
              (Just AltJSON)
              _pruPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRolesUndeleteResource)
                      mempty
