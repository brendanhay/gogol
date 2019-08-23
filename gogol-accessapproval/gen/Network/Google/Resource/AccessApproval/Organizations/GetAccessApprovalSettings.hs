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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.GetAccessApprovalSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings associated with a project, folder, or organization.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.getAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Organizations.GetAccessApprovalSettings
    (
    -- * REST Resource
      OrganizationsGetAccessApprovalSettingsResource

    -- * Creating a Request
    , organizationsGetAccessApprovalSettings
    , OrganizationsGetAccessApprovalSettings

    -- * Request Lenses
    , ogaasXgafv
    , ogaasUploadProtocol
    , ogaasAccessToken
    , ogaasUploadType
    , ogaasName
    , ogaasCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.getAccessApprovalSettings@ method which the
-- 'OrganizationsGetAccessApprovalSettings' request conforms to.
type OrganizationsGetAccessApprovalSettingsResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccessApprovalSettings

-- | Gets the settings associated with a project, folder, or organization.
--
-- /See:/ 'organizationsGetAccessApprovalSettings' smart constructor.
data OrganizationsGetAccessApprovalSettings =
  OrganizationsGetAccessApprovalSettings'
    { _ogaasXgafv          :: !(Maybe Xgafv)
    , _ogaasUploadProtocol :: !(Maybe Text)
    , _ogaasAccessToken    :: !(Maybe Text)
    , _ogaasUploadType     :: !(Maybe Text)
    , _ogaasName           :: !Text
    , _ogaasCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGetAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogaasXgafv'
--
-- * 'ogaasUploadProtocol'
--
-- * 'ogaasAccessToken'
--
-- * 'ogaasUploadType'
--
-- * 'ogaasName'
--
-- * 'ogaasCallback'
organizationsGetAccessApprovalSettings
    :: Text -- ^ 'ogaasName'
    -> OrganizationsGetAccessApprovalSettings
organizationsGetAccessApprovalSettings pOgaasName_ =
  OrganizationsGetAccessApprovalSettings'
    { _ogaasXgafv = Nothing
    , _ogaasUploadProtocol = Nothing
    , _ogaasAccessToken = Nothing
    , _ogaasUploadType = Nothing
    , _ogaasName = pOgaasName_
    , _ogaasCallback = Nothing
    }


-- | V1 error format.
ogaasXgafv :: Lens' OrganizationsGetAccessApprovalSettings (Maybe Xgafv)
ogaasXgafv
  = lens _ogaasXgafv (\ s a -> s{_ogaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogaasUploadProtocol :: Lens' OrganizationsGetAccessApprovalSettings (Maybe Text)
ogaasUploadProtocol
  = lens _ogaasUploadProtocol
      (\ s a -> s{_ogaasUploadProtocol = a})

-- | OAuth access token.
ogaasAccessToken :: Lens' OrganizationsGetAccessApprovalSettings (Maybe Text)
ogaasAccessToken
  = lens _ogaasAccessToken
      (\ s a -> s{_ogaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogaasUploadType :: Lens' OrganizationsGetAccessApprovalSettings (Maybe Text)
ogaasUploadType
  = lens _ogaasUploadType
      (\ s a -> s{_ogaasUploadType = a})

-- | Name of the AccessApprovalSettings to retrieve.
ogaasName :: Lens' OrganizationsGetAccessApprovalSettings Text
ogaasName
  = lens _ogaasName (\ s a -> s{_ogaasName = a})

-- | JSONP
ogaasCallback :: Lens' OrganizationsGetAccessApprovalSettings (Maybe Text)
ogaasCallback
  = lens _ogaasCallback
      (\ s a -> s{_ogaasCallback = a})

instance GoogleRequest
           OrganizationsGetAccessApprovalSettings
         where
        type Rs OrganizationsGetAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes OrganizationsGetAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGetAccessApprovalSettings'{..}
          = go _ogaasName _ogaasXgafv _ogaasUploadProtocol
              _ogaasAccessToken
              _ogaasUploadType
              _ogaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsGetAccessApprovalSettingsResource)
                      mempty
