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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a finding. The corresponding source must exist for finding
-- creation to succeed.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.create@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Create
    (
    -- * REST Resource
      OrganizationsSourcesFindingsCreateResource

    -- * Creating a Request
    , organizationsSourcesFindingsCreate
    , OrganizationsSourcesFindingsCreate

    -- * Request Lenses
    , osfcParent
    , osfcXgafv
    , osfcUploadProtocol
    , osfcAccessToken
    , osfcUploadType
    , osfcPayload
    , osfcFindingId
    , osfcCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.create@ method which the
-- 'OrganizationsSourcesFindingsCreate' request conforms to.
type OrganizationsSourcesFindingsCreateResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "findings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "findingId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GoogleCloudSecuritycenterV1p1beta1Finding
                           :>
                           Post '[JSON]
                             GoogleCloudSecuritycenterV1p1beta1Finding

-- | Creates a finding. The corresponding source must exist for finding
-- creation to succeed.
--
-- /See:/ 'organizationsSourcesFindingsCreate' smart constructor.
data OrganizationsSourcesFindingsCreate =
  OrganizationsSourcesFindingsCreate'
    { _osfcParent :: !Text
    , _osfcXgafv :: !(Maybe Xgafv)
    , _osfcUploadProtocol :: !(Maybe Text)
    , _osfcAccessToken :: !(Maybe Text)
    , _osfcUploadType :: !(Maybe Text)
    , _osfcPayload :: !GoogleCloudSecuritycenterV1p1beta1Finding
    , _osfcFindingId :: !(Maybe Text)
    , _osfcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osfcParent'
--
-- * 'osfcXgafv'
--
-- * 'osfcUploadProtocol'
--
-- * 'osfcAccessToken'
--
-- * 'osfcUploadType'
--
-- * 'osfcPayload'
--
-- * 'osfcFindingId'
--
-- * 'osfcCallback'
organizationsSourcesFindingsCreate
    :: Text -- ^ 'osfcParent'
    -> GoogleCloudSecuritycenterV1p1beta1Finding -- ^ 'osfcPayload'
    -> OrganizationsSourcesFindingsCreate
organizationsSourcesFindingsCreate pOsfcParent_ pOsfcPayload_ =
  OrganizationsSourcesFindingsCreate'
    { _osfcParent = pOsfcParent_
    , _osfcXgafv = Nothing
    , _osfcUploadProtocol = Nothing
    , _osfcAccessToken = Nothing
    , _osfcUploadType = Nothing
    , _osfcPayload = pOsfcPayload_
    , _osfcFindingId = Nothing
    , _osfcCallback = Nothing
    }


-- | Required. Resource name of the new finding\'s parent. Its format should
-- be \"organizations\/[organization_id]\/sources\/[source_id]\".
osfcParent :: Lens' OrganizationsSourcesFindingsCreate Text
osfcParent
  = lens _osfcParent (\ s a -> s{_osfcParent = a})

-- | V1 error format.
osfcXgafv :: Lens' OrganizationsSourcesFindingsCreate (Maybe Xgafv)
osfcXgafv
  = lens _osfcXgafv (\ s a -> s{_osfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osfcUploadProtocol :: Lens' OrganizationsSourcesFindingsCreate (Maybe Text)
osfcUploadProtocol
  = lens _osfcUploadProtocol
      (\ s a -> s{_osfcUploadProtocol = a})

-- | OAuth access token.
osfcAccessToken :: Lens' OrganizationsSourcesFindingsCreate (Maybe Text)
osfcAccessToken
  = lens _osfcAccessToken
      (\ s a -> s{_osfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osfcUploadType :: Lens' OrganizationsSourcesFindingsCreate (Maybe Text)
osfcUploadType
  = lens _osfcUploadType
      (\ s a -> s{_osfcUploadType = a})

-- | Multipart request metadata.
osfcPayload :: Lens' OrganizationsSourcesFindingsCreate GoogleCloudSecuritycenterV1p1beta1Finding
osfcPayload
  = lens _osfcPayload (\ s a -> s{_osfcPayload = a})

-- | Required. Unique identifier provided by the client within the parent
-- scope.
osfcFindingId :: Lens' OrganizationsSourcesFindingsCreate (Maybe Text)
osfcFindingId
  = lens _osfcFindingId
      (\ s a -> s{_osfcFindingId = a})

-- | JSONP
osfcCallback :: Lens' OrganizationsSourcesFindingsCreate (Maybe Text)
osfcCallback
  = lens _osfcCallback (\ s a -> s{_osfcCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsCreate
         where
        type Rs OrganizationsSourcesFindingsCreate =
             GoogleCloudSecuritycenterV1p1beta1Finding
        type Scopes OrganizationsSourcesFindingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesFindingsCreate'{..}
          = go _osfcParent _osfcXgafv _osfcUploadProtocol
              _osfcAccessToken
              _osfcUploadType
              _osfcFindingId
              _osfcCallback
              (Just AltJSON)
              _osfcPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesFindingsCreateResource)
                      mempty
