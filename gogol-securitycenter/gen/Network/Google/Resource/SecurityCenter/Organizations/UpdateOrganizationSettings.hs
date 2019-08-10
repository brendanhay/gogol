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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.UpdateOrganizationSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organization\'s settings.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.updateOrganizationSettings@.
module Network.Google.Resource.SecurityCenter.Organizations.UpdateOrganizationSettings
    (
    -- * REST Resource
      OrganizationsUpdateOrganizationSettingsResource

    -- * Creating a Request
    , organizationsUpdateOrganizationSettings
    , OrganizationsUpdateOrganizationSettings

    -- * Request Lenses
    , ouosXgafv
    , ouosUploadProtocol
    , ouosUpdateMask
    , ouosAccessToken
    , ouosUploadType
    , ouosPayload
    , ouosName
    , ouosCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.updateOrganizationSettings@ method which the
-- 'OrganizationsUpdateOrganizationSettings' request conforms to.
type OrganizationsUpdateOrganizationSettingsResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] OrganizationSettings :>
                         Patch '[JSON] OrganizationSettings

-- | Updates an organization\'s settings.
--
-- /See:/ 'organizationsUpdateOrganizationSettings' smart constructor.
data OrganizationsUpdateOrganizationSettings =
  OrganizationsUpdateOrganizationSettings'
    { _ouosXgafv          :: !(Maybe Xgafv)
    , _ouosUploadProtocol :: !(Maybe Text)
    , _ouosUpdateMask     :: !(Maybe GFieldMask)
    , _ouosAccessToken    :: !(Maybe Text)
    , _ouosUploadType     :: !(Maybe Text)
    , _ouosPayload        :: !OrganizationSettings
    , _ouosName           :: !Text
    , _ouosCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsUpdateOrganizationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouosXgafv'
--
-- * 'ouosUploadProtocol'
--
-- * 'ouosUpdateMask'
--
-- * 'ouosAccessToken'
--
-- * 'ouosUploadType'
--
-- * 'ouosPayload'
--
-- * 'ouosName'
--
-- * 'ouosCallback'
organizationsUpdateOrganizationSettings
    :: OrganizationSettings -- ^ 'ouosPayload'
    -> Text -- ^ 'ouosName'
    -> OrganizationsUpdateOrganizationSettings
organizationsUpdateOrganizationSettings pOuosPayload_ pOuosName_ =
  OrganizationsUpdateOrganizationSettings'
    { _ouosXgafv = Nothing
    , _ouosUploadProtocol = Nothing
    , _ouosUpdateMask = Nothing
    , _ouosAccessToken = Nothing
    , _ouosUploadType = Nothing
    , _ouosPayload = pOuosPayload_
    , _ouosName = pOuosName_
    , _ouosCallback = Nothing
    }


-- | V1 error format.
ouosXgafv :: Lens' OrganizationsUpdateOrganizationSettings (Maybe Xgafv)
ouosXgafv
  = lens _ouosXgafv (\ s a -> s{_ouosXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouosUploadProtocol :: Lens' OrganizationsUpdateOrganizationSettings (Maybe Text)
ouosUploadProtocol
  = lens _ouosUploadProtocol
      (\ s a -> s{_ouosUploadProtocol = a})

-- | The FieldMask to use when updating the settings resource. If empty all
-- mutable fields will be updated.
ouosUpdateMask :: Lens' OrganizationsUpdateOrganizationSettings (Maybe GFieldMask)
ouosUpdateMask
  = lens _ouosUpdateMask
      (\ s a -> s{_ouosUpdateMask = a})

-- | OAuth access token.
ouosAccessToken :: Lens' OrganizationsUpdateOrganizationSettings (Maybe Text)
ouosAccessToken
  = lens _ouosAccessToken
      (\ s a -> s{_ouosAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouosUploadType :: Lens' OrganizationsUpdateOrganizationSettings (Maybe Text)
ouosUploadType
  = lens _ouosUploadType
      (\ s a -> s{_ouosUploadType = a})

-- | Multipart request metadata.
ouosPayload :: Lens' OrganizationsUpdateOrganizationSettings OrganizationSettings
ouosPayload
  = lens _ouosPayload (\ s a -> s{_ouosPayload = a})

-- | The relative resource name of the settings. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/organizationSettings\".
ouosName :: Lens' OrganizationsUpdateOrganizationSettings Text
ouosName = lens _ouosName (\ s a -> s{_ouosName = a})

-- | JSONP
ouosCallback :: Lens' OrganizationsUpdateOrganizationSettings (Maybe Text)
ouosCallback
  = lens _ouosCallback (\ s a -> s{_ouosCallback = a})

instance GoogleRequest
           OrganizationsUpdateOrganizationSettings
         where
        type Rs OrganizationsUpdateOrganizationSettings =
             OrganizationSettings
        type Scopes OrganizationsUpdateOrganizationSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsUpdateOrganizationSettings'{..}
          = go _ouosName _ouosXgafv _ouosUploadProtocol
              _ouosUpdateMask
              _ouosAccessToken
              _ouosUploadType
              _ouosCallback
              (Just AltJSON)
              _ouosPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsUpdateOrganizationSettingsResource)
                      mempty
