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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.SetState
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of a finding.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.setState@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.SetState
    (
    -- * REST Resource
      OrganizationsSourcesFindingsSetStateResource

    -- * Creating a Request
    , organizationsSourcesFindingsSetState
    , OrganizationsSourcesFindingsSetState

    -- * Request Lenses
    , osfssXgafv
    , osfssUploadProtocol
    , osfssAccessToken
    , osfssUploadType
    , osfssPayload
    , osfssName
    , osfssCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.setState@ method which the
-- 'OrganizationsSourcesFindingsSetState' request conforms to.
type OrganizationsSourcesFindingsSetStateResource =
     "v1p1beta1" :>
       CaptureMode "name" "setState" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetFindingStateRequest :>
                       Post '[JSON]
                         GoogleCloudSecuritycenterV1p1beta1Finding

-- | Updates the state of a finding.
--
-- /See:/ 'organizationsSourcesFindingsSetState' smart constructor.
data OrganizationsSourcesFindingsSetState =
  OrganizationsSourcesFindingsSetState'
    { _osfssXgafv :: !(Maybe Xgafv)
    , _osfssUploadProtocol :: !(Maybe Text)
    , _osfssAccessToken :: !(Maybe Text)
    , _osfssUploadType :: !(Maybe Text)
    , _osfssPayload :: !SetFindingStateRequest
    , _osfssName :: !Text
    , _osfssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsSetState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osfssXgafv'
--
-- * 'osfssUploadProtocol'
--
-- * 'osfssAccessToken'
--
-- * 'osfssUploadType'
--
-- * 'osfssPayload'
--
-- * 'osfssName'
--
-- * 'osfssCallback'
organizationsSourcesFindingsSetState
    :: SetFindingStateRequest -- ^ 'osfssPayload'
    -> Text -- ^ 'osfssName'
    -> OrganizationsSourcesFindingsSetState
organizationsSourcesFindingsSetState pOsfssPayload_ pOsfssName_ =
  OrganizationsSourcesFindingsSetState'
    { _osfssXgafv = Nothing
    , _osfssUploadProtocol = Nothing
    , _osfssAccessToken = Nothing
    , _osfssUploadType = Nothing
    , _osfssPayload = pOsfssPayload_
    , _osfssName = pOsfssName_
    , _osfssCallback = Nothing
    }


-- | V1 error format.
osfssXgafv :: Lens' OrganizationsSourcesFindingsSetState (Maybe Xgafv)
osfssXgafv
  = lens _osfssXgafv (\ s a -> s{_osfssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osfssUploadProtocol :: Lens' OrganizationsSourcesFindingsSetState (Maybe Text)
osfssUploadProtocol
  = lens _osfssUploadProtocol
      (\ s a -> s{_osfssUploadProtocol = a})

-- | OAuth access token.
osfssAccessToken :: Lens' OrganizationsSourcesFindingsSetState (Maybe Text)
osfssAccessToken
  = lens _osfssAccessToken
      (\ s a -> s{_osfssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osfssUploadType :: Lens' OrganizationsSourcesFindingsSetState (Maybe Text)
osfssUploadType
  = lens _osfssUploadType
      (\ s a -> s{_osfssUploadType = a})

-- | Multipart request metadata.
osfssPayload :: Lens' OrganizationsSourcesFindingsSetState SetFindingStateRequest
osfssPayload
  = lens _osfssPayload (\ s a -> s{_osfssPayload = a})

-- | Required. The relative resource name of the finding. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example:
-- \"organizations\/{organization_id}\/sources\/{source_id}\/finding\/{finding_id}\".
osfssName :: Lens' OrganizationsSourcesFindingsSetState Text
osfssName
  = lens _osfssName (\ s a -> s{_osfssName = a})

-- | JSONP
osfssCallback :: Lens' OrganizationsSourcesFindingsSetState (Maybe Text)
osfssCallback
  = lens _osfssCallback
      (\ s a -> s{_osfssCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsSetState
         where
        type Rs OrganizationsSourcesFindingsSetState =
             GoogleCloudSecuritycenterV1p1beta1Finding
        type Scopes OrganizationsSourcesFindingsSetState =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsSourcesFindingsSetState'{..}
          = go _osfssName _osfssXgafv _osfssUploadProtocol
              _osfssAccessToken
              _osfssUploadType
              _osfssCallback
              (Just AltJSON)
              _osfssPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesFindingsSetStateResource)
                      mempty
