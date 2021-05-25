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
-- Module      : Network.Google.Resource.AccessApproval.Projects.DeleteAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the settings associated with a project, folder, or organization.
-- This will have the effect of disabling Access Approval for the project,
-- folder, or organization, but only if all ancestors also have Access
-- Approval disabled. If Access Approval is enabled at a higher level of
-- the hierarchy, then Access Approval will still be enabled at this level
-- as the settings are inherited.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.deleteAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Projects.DeleteAccessApprovalSettings
    (
    -- * REST Resource
      ProjectsDeleteAccessApprovalSettingsResource

    -- * Creating a Request
    , projectsDeleteAccessApprovalSettings
    , ProjectsDeleteAccessApprovalSettings

    -- * Request Lenses
    , pdaasXgafv
    , pdaasUploadProtocol
    , pdaasAccessToken
    , pdaasUploadType
    , pdaasName
    , pdaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.deleteAccessApprovalSettings@ method which the
-- 'ProjectsDeleteAccessApprovalSettings' request conforms to.
type ProjectsDeleteAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the settings associated with a project, folder, or organization.
-- This will have the effect of disabling Access Approval for the project,
-- folder, or organization, but only if all ancestors also have Access
-- Approval disabled. If Access Approval is enabled at a higher level of
-- the hierarchy, then Access Approval will still be enabled at this level
-- as the settings are inherited.
--
-- /See:/ 'projectsDeleteAccessApprovalSettings' smart constructor.
data ProjectsDeleteAccessApprovalSettings =
  ProjectsDeleteAccessApprovalSettings'
    { _pdaasXgafv :: !(Maybe Xgafv)
    , _pdaasUploadProtocol :: !(Maybe Text)
    , _pdaasAccessToken :: !(Maybe Text)
    , _pdaasUploadType :: !(Maybe Text)
    , _pdaasName :: !Text
    , _pdaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeleteAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdaasXgafv'
--
-- * 'pdaasUploadProtocol'
--
-- * 'pdaasAccessToken'
--
-- * 'pdaasUploadType'
--
-- * 'pdaasName'
--
-- * 'pdaasCallback'
projectsDeleteAccessApprovalSettings
    :: Text -- ^ 'pdaasName'
    -> ProjectsDeleteAccessApprovalSettings
projectsDeleteAccessApprovalSettings pPdaasName_ =
  ProjectsDeleteAccessApprovalSettings'
    { _pdaasXgafv = Nothing
    , _pdaasUploadProtocol = Nothing
    , _pdaasAccessToken = Nothing
    , _pdaasUploadType = Nothing
    , _pdaasName = pPdaasName_
    , _pdaasCallback = Nothing
    }


-- | V1 error format.
pdaasXgafv :: Lens' ProjectsDeleteAccessApprovalSettings (Maybe Xgafv)
pdaasXgafv
  = lens _pdaasXgafv (\ s a -> s{_pdaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdaasUploadProtocol :: Lens' ProjectsDeleteAccessApprovalSettings (Maybe Text)
pdaasUploadProtocol
  = lens _pdaasUploadProtocol
      (\ s a -> s{_pdaasUploadProtocol = a})

-- | OAuth access token.
pdaasAccessToken :: Lens' ProjectsDeleteAccessApprovalSettings (Maybe Text)
pdaasAccessToken
  = lens _pdaasAccessToken
      (\ s a -> s{_pdaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdaasUploadType :: Lens' ProjectsDeleteAccessApprovalSettings (Maybe Text)
pdaasUploadType
  = lens _pdaasUploadType
      (\ s a -> s{_pdaasUploadType = a})

-- | Name of the AccessApprovalSettings to delete.
pdaasName :: Lens' ProjectsDeleteAccessApprovalSettings Text
pdaasName
  = lens _pdaasName (\ s a -> s{_pdaasName = a})

-- | JSONP
pdaasCallback :: Lens' ProjectsDeleteAccessApprovalSettings (Maybe Text)
pdaasCallback
  = lens _pdaasCallback
      (\ s a -> s{_pdaasCallback = a})

instance GoogleRequest
           ProjectsDeleteAccessApprovalSettings
         where
        type Rs ProjectsDeleteAccessApprovalSettings = Empty
        type Scopes ProjectsDeleteAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsDeleteAccessApprovalSettings'{..}
          = go _pdaasName _pdaasXgafv _pdaasUploadProtocol
              _pdaasAccessToken
              _pdaasUploadType
              _pdaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeleteAccessApprovalSettingsResource)
                      mempty
