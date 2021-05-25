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
-- Settings to update are determined by the value of field_mask.
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
    , puaasUpdateMask
    , puaasAccessToken
    , puaasUploadType
    , puaasPayload
    , puaasName
    , puaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.updateAccessApprovalSettings@ method which the
-- 'ProjectsUpdateAccessApprovalSettings' request conforms to.
type ProjectsUpdateAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccessApprovalSettings :>
                         Patch '[JSON] AccessApprovalSettings

-- | Updates the settings associated with a project, folder, or organization.
-- Settings to update are determined by the value of field_mask.
--
-- /See:/ 'projectsUpdateAccessApprovalSettings' smart constructor.
data ProjectsUpdateAccessApprovalSettings =
  ProjectsUpdateAccessApprovalSettings'
    { _puaasXgafv :: !(Maybe Xgafv)
    , _puaasUploadProtocol :: !(Maybe Text)
    , _puaasUpdateMask :: !(Maybe GFieldMask)
    , _puaasAccessToken :: !(Maybe Text)
    , _puaasUploadType :: !(Maybe Text)
    , _puaasPayload :: !AccessApprovalSettings
    , _puaasName :: !Text
    , _puaasCallback :: !(Maybe Text)
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
-- * 'puaasUpdateMask'
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
    , _puaasUpdateMask = Nothing
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

-- | The update mask applies to the settings. Only the top level fields of
-- AccessApprovalSettings (notification_emails & enrolled_services) are
-- supported. For each field, if it is included, the currently stored value
-- will be entirely overwritten with the value of the field passed in this
-- request. For the \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
-- If this field is left unset, only the notification_emails field will be
-- updated.
puaasUpdateMask :: Lens' ProjectsUpdateAccessApprovalSettings (Maybe GFieldMask)
puaasUpdateMask
  = lens _puaasUpdateMask
      (\ s a -> s{_puaasUpdateMask = a})

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

-- | The resource name of the settings. Format is one of: *
-- \"projects\/{project}\/accessApprovalSettings\" *
-- \"folders\/{folder}\/accessApprovalSettings\" *
-- \"organizations\/{organization}\/accessApprovalSettings\"
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
              _puaasUpdateMask
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
