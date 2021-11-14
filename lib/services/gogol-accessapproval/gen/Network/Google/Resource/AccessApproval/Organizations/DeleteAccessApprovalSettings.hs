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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.DeleteAccessApprovalSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.deleteAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Organizations.DeleteAccessApprovalSettings
    (
    -- * REST Resource
      OrganizationsDeleteAccessApprovalSettingsResource

    -- * Creating a Request
    , organizationsDeleteAccessApprovalSettings
    , OrganizationsDeleteAccessApprovalSettings

    -- * Request Lenses
    , odaasXgafv
    , odaasUploadProtocol
    , odaasAccessToken
    , odaasUploadType
    , odaasName
    , odaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.deleteAccessApprovalSettings@ method which the
-- 'OrganizationsDeleteAccessApprovalSettings' request conforms to.
type OrganizationsDeleteAccessApprovalSettingsResource
     =
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
-- /See:/ 'organizationsDeleteAccessApprovalSettings' smart constructor.
data OrganizationsDeleteAccessApprovalSettings =
  OrganizationsDeleteAccessApprovalSettings'
    { _odaasXgafv :: !(Maybe Xgafv)
    , _odaasUploadProtocol :: !(Maybe Text)
    , _odaasAccessToken :: !(Maybe Text)
    , _odaasUploadType :: !(Maybe Text)
    , _odaasName :: !Text
    , _odaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsDeleteAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odaasXgafv'
--
-- * 'odaasUploadProtocol'
--
-- * 'odaasAccessToken'
--
-- * 'odaasUploadType'
--
-- * 'odaasName'
--
-- * 'odaasCallback'
organizationsDeleteAccessApprovalSettings
    :: Text -- ^ 'odaasName'
    -> OrganizationsDeleteAccessApprovalSettings
organizationsDeleteAccessApprovalSettings pOdaasName_ =
  OrganizationsDeleteAccessApprovalSettings'
    { _odaasXgafv = Nothing
    , _odaasUploadProtocol = Nothing
    , _odaasAccessToken = Nothing
    , _odaasUploadType = Nothing
    , _odaasName = pOdaasName_
    , _odaasCallback = Nothing
    }


-- | V1 error format.
odaasXgafv :: Lens' OrganizationsDeleteAccessApprovalSettings (Maybe Xgafv)
odaasXgafv
  = lens _odaasXgafv (\ s a -> s{_odaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odaasUploadProtocol :: Lens' OrganizationsDeleteAccessApprovalSettings (Maybe Text)
odaasUploadProtocol
  = lens _odaasUploadProtocol
      (\ s a -> s{_odaasUploadProtocol = a})

-- | OAuth access token.
odaasAccessToken :: Lens' OrganizationsDeleteAccessApprovalSettings (Maybe Text)
odaasAccessToken
  = lens _odaasAccessToken
      (\ s a -> s{_odaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odaasUploadType :: Lens' OrganizationsDeleteAccessApprovalSettings (Maybe Text)
odaasUploadType
  = lens _odaasUploadType
      (\ s a -> s{_odaasUploadType = a})

-- | Name of the AccessApprovalSettings to delete.
odaasName :: Lens' OrganizationsDeleteAccessApprovalSettings Text
odaasName
  = lens _odaasName (\ s a -> s{_odaasName = a})

-- | JSONP
odaasCallback :: Lens' OrganizationsDeleteAccessApprovalSettings (Maybe Text)
odaasCallback
  = lens _odaasCallback
      (\ s a -> s{_odaasCallback = a})

instance GoogleRequest
           OrganizationsDeleteAccessApprovalSettings
         where
        type Rs OrganizationsDeleteAccessApprovalSettings =
             Empty
        type Scopes OrganizationsDeleteAccessApprovalSettings
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeleteAccessApprovalSettings'{..}
          = go _odaasName _odaasXgafv _odaasUploadProtocol
              _odaasAccessToken
              _odaasUploadType
              _odaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsDeleteAccessApprovalSettingsResource)
                      mempty
