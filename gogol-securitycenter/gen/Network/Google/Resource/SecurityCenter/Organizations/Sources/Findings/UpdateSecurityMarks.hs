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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates security marks.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.sources.findings.updateSecurityMarks@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
    (
    -- * REST Resource
      OrganizationsSourcesFindingsUpdateSecurityMarksResource

    -- * Creating a Request
    , organizationsSourcesFindingsUpdateSecurityMarks
    , OrganizationsSourcesFindingsUpdateSecurityMarks

    -- * Request Lenses
    , osfusmXgafv
    , osfusmUploadProtocol
    , osfusmStartTime
    , osfusmUpdateMask
    , osfusmAccessToken
    , osfusmUploadType
    , osfusmPayload
    , osfusmName
    , osfusmCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.updateSecurityMarks@ method which the
-- 'OrganizationsSourcesFindingsUpdateSecurityMarks' request conforms to.
type OrganizationsSourcesFindingsUpdateSecurityMarksResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "startTime" DateTime' :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SecurityMarks :>
                           Patch '[JSON] SecurityMarks

-- | Updates security marks.
--
-- /See:/ 'organizationsSourcesFindingsUpdateSecurityMarks' smart constructor.
data OrganizationsSourcesFindingsUpdateSecurityMarks =
  OrganizationsSourcesFindingsUpdateSecurityMarks'
    { _osfusmXgafv          :: !(Maybe Xgafv)
    , _osfusmUploadProtocol :: !(Maybe Text)
    , _osfusmStartTime      :: !(Maybe DateTime')
    , _osfusmUpdateMask     :: !(Maybe GFieldMask)
    , _osfusmAccessToken    :: !(Maybe Text)
    , _osfusmUploadType     :: !(Maybe Text)
    , _osfusmPayload        :: !SecurityMarks
    , _osfusmName           :: !Text
    , _osfusmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesFindingsUpdateSecurityMarks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osfusmXgafv'
--
-- * 'osfusmUploadProtocol'
--
-- * 'osfusmStartTime'
--
-- * 'osfusmUpdateMask'
--
-- * 'osfusmAccessToken'
--
-- * 'osfusmUploadType'
--
-- * 'osfusmPayload'
--
-- * 'osfusmName'
--
-- * 'osfusmCallback'
organizationsSourcesFindingsUpdateSecurityMarks
    :: SecurityMarks -- ^ 'osfusmPayload'
    -> Text -- ^ 'osfusmName'
    -> OrganizationsSourcesFindingsUpdateSecurityMarks
organizationsSourcesFindingsUpdateSecurityMarks pOsfusmPayload_ pOsfusmName_ =
  OrganizationsSourcesFindingsUpdateSecurityMarks'
    { _osfusmXgafv = Nothing
    , _osfusmUploadProtocol = Nothing
    , _osfusmStartTime = Nothing
    , _osfusmUpdateMask = Nothing
    , _osfusmAccessToken = Nothing
    , _osfusmUploadType = Nothing
    , _osfusmPayload = pOsfusmPayload_
    , _osfusmName = pOsfusmName_
    , _osfusmCallback = Nothing
    }


-- | V1 error format.
osfusmXgafv :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe Xgafv)
osfusmXgafv
  = lens _osfusmXgafv (\ s a -> s{_osfusmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osfusmUploadProtocol :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe Text)
osfusmUploadProtocol
  = lens _osfusmUploadProtocol
      (\ s a -> s{_osfusmUploadProtocol = a})

-- | The time at which the updated SecurityMarks take effect. If not set uses
-- current server time. Updates will be applied to the SecurityMarks that
-- are active immediately preceding this time.
osfusmStartTime :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe UTCTime)
osfusmStartTime
  = lens _osfusmStartTime
      (\ s a -> s{_osfusmStartTime = a})
      . mapping _DateTime

-- | The FieldMask to use when updating the security marks resource. The
-- field mask must not contain duplicate fields. If empty or set to
-- \"marks\", all marks will be replaced. Individual marks can be updated
-- using \"marks.\".
osfusmUpdateMask :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe GFieldMask)
osfusmUpdateMask
  = lens _osfusmUpdateMask
      (\ s a -> s{_osfusmUpdateMask = a})

-- | OAuth access token.
osfusmAccessToken :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe Text)
osfusmAccessToken
  = lens _osfusmAccessToken
      (\ s a -> s{_osfusmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osfusmUploadType :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe Text)
osfusmUploadType
  = lens _osfusmUploadType
      (\ s a -> s{_osfusmUploadType = a})

-- | Multipart request metadata.
osfusmPayload :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks SecurityMarks
osfusmPayload
  = lens _osfusmPayload
      (\ s a -> s{_osfusmPayload = a})

-- | The relative resource name of the SecurityMarks. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Examples: \"organizations\/123\/assets\/456\/securityMarks\"
-- \"organizations\/123\/sources\/456\/findings\/789\/securityMarks\".
osfusmName :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks Text
osfusmName
  = lens _osfusmName (\ s a -> s{_osfusmName = a})

-- | JSONP
osfusmCallback :: Lens' OrganizationsSourcesFindingsUpdateSecurityMarks (Maybe Text)
osfusmCallback
  = lens _osfusmCallback
      (\ s a -> s{_osfusmCallback = a})

instance GoogleRequest
           OrganizationsSourcesFindingsUpdateSecurityMarks
         where
        type Rs
               OrganizationsSourcesFindingsUpdateSecurityMarks
             = SecurityMarks
        type Scopes
               OrganizationsSourcesFindingsUpdateSecurityMarks
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsSourcesFindingsUpdateSecurityMarks'{..}
          = go _osfusmName _osfusmXgafv _osfusmUploadProtocol
              _osfusmStartTime
              _osfusmUpdateMask
              _osfusmAccessToken
              _osfusmUploadType
              _osfusmCallback
              (Just AltJSON)
              _osfusmPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsSourcesFindingsUpdateSecurityMarksResource)
                      mempty
