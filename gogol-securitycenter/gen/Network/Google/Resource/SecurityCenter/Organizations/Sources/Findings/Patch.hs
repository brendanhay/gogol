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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a finding. The corresponding source must exist for a
-- finding creation to succeed.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.sources.findings.patch@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Patch
    (
    -- * REST Resource
      OrganizationsSourcesFindingsPatchResource

    -- * Creating a Request
    , organizationsSourcesFindingsPatch
    , OrganizationsSourcesFindingsPatch

    -- * Request Lenses
    , osfpXgafv
    , osfpUploadProtocol
    , osfpUpdateMask
    , osfpAccessToken
    , osfpUploadType
    , osfpPayload
    , osfpName
    , osfpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.patch@ method which the
-- 'OrganizationsSourcesFindingsPatch' request conforms to.
type OrganizationsSourcesFindingsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Finding :> Patch '[JSON] Finding

-- | Creates or updates a finding. The corresponding source must exist for a
-- finding creation to succeed.
--
-- /See:/ 'organizationsSourcesFindingsPatch' smart constructor.
data OrganizationsSourcesFindingsPatch =
  OrganizationsSourcesFindingsPatch'
    { _osfpXgafv          :: !(Maybe Xgafv)
    , _osfpUploadProtocol :: !(Maybe Text)
    , _osfpUpdateMask     :: !(Maybe GFieldMask)
    , _osfpAccessToken    :: !(Maybe Text)
    , _osfpUploadType     :: !(Maybe Text)
    , _osfpPayload        :: !Finding
    , _osfpName           :: !Text
    , _osfpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osfpXgafv'
--
-- * 'osfpUploadProtocol'
--
-- * 'osfpUpdateMask'
--
-- * 'osfpAccessToken'
--
-- * 'osfpUploadType'
--
-- * 'osfpPayload'
--
-- * 'osfpName'
--
-- * 'osfpCallback'
organizationsSourcesFindingsPatch
    :: Finding -- ^ 'osfpPayload'
    -> Text -- ^ 'osfpName'
    -> OrganizationsSourcesFindingsPatch
organizationsSourcesFindingsPatch pOsfpPayload_ pOsfpName_ =
  OrganizationsSourcesFindingsPatch'
    { _osfpXgafv = Nothing
    , _osfpUploadProtocol = Nothing
    , _osfpUpdateMask = Nothing
    , _osfpAccessToken = Nothing
    , _osfpUploadType = Nothing
    , _osfpPayload = pOsfpPayload_
    , _osfpName = pOsfpName_
    , _osfpCallback = Nothing
    }


-- | V1 error format.
osfpXgafv :: Lens' OrganizationsSourcesFindingsPatch (Maybe Xgafv)
osfpXgafv
  = lens _osfpXgafv (\ s a -> s{_osfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osfpUploadProtocol :: Lens' OrganizationsSourcesFindingsPatch (Maybe Text)
osfpUploadProtocol
  = lens _osfpUploadProtocol
      (\ s a -> s{_osfpUploadProtocol = a})

-- | The FieldMask to use when updating the finding resource. This field
-- should not be specified when creating a finding. When updating a
-- finding, an empty mask is treated as updating all mutable fields and
-- replacing source_properties. Individual source_properties can be
-- added\/updated by using \"source_properties.\" in the field mask.
osfpUpdateMask :: Lens' OrganizationsSourcesFindingsPatch (Maybe GFieldMask)
osfpUpdateMask
  = lens _osfpUpdateMask
      (\ s a -> s{_osfpUpdateMask = a})

-- | OAuth access token.
osfpAccessToken :: Lens' OrganizationsSourcesFindingsPatch (Maybe Text)
osfpAccessToken
  = lens _osfpAccessToken
      (\ s a -> s{_osfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osfpUploadType :: Lens' OrganizationsSourcesFindingsPatch (Maybe Text)
osfpUploadType
  = lens _osfpUploadType
      (\ s a -> s{_osfpUploadType = a})

-- | Multipart request metadata.
osfpPayload :: Lens' OrganizationsSourcesFindingsPatch Finding
osfpPayload
  = lens _osfpPayload (\ s a -> s{_osfpPayload = a})

-- | The relative resource name of this finding. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/sources\/456\/findings\/789\"
osfpName :: Lens' OrganizationsSourcesFindingsPatch Text
osfpName = lens _osfpName (\ s a -> s{_osfpName = a})

-- | JSONP
osfpCallback :: Lens' OrganizationsSourcesFindingsPatch (Maybe Text)
osfpCallback
  = lens _osfpCallback (\ s a -> s{_osfpCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsPatch
         where
        type Rs OrganizationsSourcesFindingsPatch = Finding
        type Scopes OrganizationsSourcesFindingsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesFindingsPatch'{..}
          = go _osfpName _osfpXgafv _osfpUploadProtocol
              _osfpUpdateMask
              _osfpAccessToken
              _osfpUploadType
              _osfpCallback
              (Just AltJSON)
              _osfpPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesFindingsPatchResource)
                      mempty
