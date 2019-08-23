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
-- Module      : Network.Google.Resource.AccessApproval.Projects.UpdateAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings associated with a project, folder, or organization.
-- Completely replaces the existing settings.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.updateAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Projects.UpdateAccessApprovalSettings
    (
    -- * REST Resource
      ProjectsUpdateAccessApprovalSettingsResource

    -- * Creating a Request
    , projectsUpdateAccessApprovalSettings
    , ProjectsUpdateAccessApprovalSettings

    -- * Request Lenses
    , puaasXgafv
    , puaasUploadProtocol
    , puaasAccessToken
    , puaasUploadType
    , puaasPayload
    , puaasName
    , puaasCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.updateAccessApprovalSettings@ method which the
-- 'ProjectsUpdateAccessApprovalSettings' request conforms to.
type ProjectsUpdateAccessApprovalSettingsResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AccessApprovalSettings :>
                       Patch '[JSON] AccessApprovalSettings

-- | Updates the settings associated with a project, folder, or organization.
-- Completely replaces the existing settings.
--
-- /See:/ 'projectsUpdateAccessApprovalSettings' smart constructor.
data ProjectsUpdateAccessApprovalSettings =
  ProjectsUpdateAccessApprovalSettings'
    { _puaasXgafv          :: !(Maybe Xgafv)
    , _puaasUploadProtocol :: !(Maybe Text)
    , _puaasAccessToken    :: !(Maybe Text)
    , _puaasUploadType     :: !(Maybe Text)
    , _puaasPayload        :: !AccessApprovalSettings
    , _puaasName           :: !Text
    , _puaasCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUpdateAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puaasXgafv'
--
-- * 'puaasUploadProtocol'
--
-- * 'puaasAccessToken'
--
-- * 'puaasUploadType'
--
-- * 'puaasPayload'
--
-- * 'puaasName'
--
-- * 'puaasCallback'
projectsUpdateAccessApprovalSettings
    :: AccessApprovalSettings -- ^ 'puaasPayload'
    -> Text -- ^ 'puaasName'
    -> ProjectsUpdateAccessApprovalSettings
projectsUpdateAccessApprovalSettings pPuaasPayload_ pPuaasName_ =
  ProjectsUpdateAccessApprovalSettings'
    { _puaasXgafv = Nothing
    , _puaasUploadProtocol = Nothing
    , _puaasAccessToken = Nothing
    , _puaasUploadType = Nothing
    , _puaasPayload = pPuaasPayload_
    , _puaasName = pPuaasName_
    , _puaasCallback = Nothing
    }


-- | V1 error format.
puaasXgafv :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe Xgafv)
puaasXgafv
  = lens _puaasXgafv (\ s a -> s{_puaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puaasUploadProtocol :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe Text)
puaasUploadProtocol
  = lens _puaasUploadProtocol
      (\ s a -> s{_puaasUploadProtocol = a})

-- | OAuth access token.
puaasAccessToken :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe Text)
puaasAccessToken
  = lens _puaasAccessToken
      (\ s a -> s{_puaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puaasUploadType :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe Text)
puaasUploadType
  = lens _puaasUploadType
      (\ s a -> s{_puaasUploadType = a})

-- | Multipart request metadata.
puaasPayload :: Lens' ProjectsUpdateAccessApprovalSettings AccessApprovalSettings
puaasPayload
  = lens _puaasPayload (\ s a -> s{_puaasPayload = a})

-- | The resource name of the settings. Format is one of:
-- \"projects\/{project_id}\/accessApprovalSettings\"
-- \"folders\/{folder_id}\/accessApprovalSettings\"
-- \"organizations\/{organization_id}\/accessApprovalSettings\"
puaasName :: Lens' ProjectsUpdateAccessApprovalSettings Text
puaasName
  = lens _puaasName (\ s a -> s{_puaasName = a})

-- | JSONP
puaasCallback :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe Text)
puaasCallback
  = lens _puaasCallback
      (\ s a -> s{_puaasCallback = a})

instance GoogleRequest
           ProjectsUpdateAccessApprovalSettings
         where
        type Rs ProjectsUpdateAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes ProjectsUpdateAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsUpdateAccessApprovalSettings'{..}
          = go _puaasName _puaasXgafv _puaasUploadProtocol
              _puaasAccessToken
              _puaasUploadType
              _puaasCallback
              (Just AltJSON)
              _puaasPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsUpdateAccessApprovalSettingsResource)
                      mempty
