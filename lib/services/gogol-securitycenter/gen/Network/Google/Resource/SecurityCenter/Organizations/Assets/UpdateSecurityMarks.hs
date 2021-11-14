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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Assets.UpdateSecurityMarks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates security marks.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.updateSecurityMarks@.
module Network.Google.Resource.SecurityCenter.Organizations.Assets.UpdateSecurityMarks
    (
    -- * REST Resource
      OrganizationsAssetsUpdateSecurityMarksResource

    -- * Creating a Request
    , organizationsAssetsUpdateSecurityMarks
    , OrganizationsAssetsUpdateSecurityMarks

    -- * Request Lenses
    , oausmXgafv
    , oausmUploadProtocol
    , oausmStartTime
    , oausmUpdateMask
    , oausmAccessToken
    , oausmUploadType
    , oausmPayload
    , oausmName
    , oausmCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.updateSecurityMarks@ method which the
-- 'OrganizationsAssetsUpdateSecurityMarks' request conforms to.
type OrganizationsAssetsUpdateSecurityMarksResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "startTime" DateTime' :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GoogleCloudSecuritycenterV1p1beta1SecurityMarks
                           :>
                           Patch '[JSON]
                             GoogleCloudSecuritycenterV1p1beta1SecurityMarks

-- | Updates security marks.
--
-- /See:/ 'organizationsAssetsUpdateSecurityMarks' smart constructor.
data OrganizationsAssetsUpdateSecurityMarks =
  OrganizationsAssetsUpdateSecurityMarks'
    { _oausmXgafv :: !(Maybe Xgafv)
    , _oausmUploadProtocol :: !(Maybe Text)
    , _oausmStartTime :: !(Maybe DateTime')
    , _oausmUpdateMask :: !(Maybe GFieldMask)
    , _oausmAccessToken :: !(Maybe Text)
    , _oausmUploadType :: !(Maybe Text)
    , _oausmPayload :: !GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    , _oausmName :: !Text
    , _oausmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsAssetsUpdateSecurityMarks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oausmXgafv'
--
-- * 'oausmUploadProtocol'
--
-- * 'oausmStartTime'
--
-- * 'oausmUpdateMask'
--
-- * 'oausmAccessToken'
--
-- * 'oausmUploadType'
--
-- * 'oausmPayload'
--
-- * 'oausmName'
--
-- * 'oausmCallback'
organizationsAssetsUpdateSecurityMarks
    :: GoogleCloudSecuritycenterV1p1beta1SecurityMarks -- ^ 'oausmPayload'
    -> Text -- ^ 'oausmName'
    -> OrganizationsAssetsUpdateSecurityMarks
organizationsAssetsUpdateSecurityMarks pOausmPayload_ pOausmName_ =
  OrganizationsAssetsUpdateSecurityMarks'
    { _oausmXgafv = Nothing
    , _oausmUploadProtocol = Nothing
    , _oausmStartTime = Nothing
    , _oausmUpdateMask = Nothing
    , _oausmAccessToken = Nothing
    , _oausmUploadType = Nothing
    , _oausmPayload = pOausmPayload_
    , _oausmName = pOausmName_
    , _oausmCallback = Nothing
    }


-- | V1 error format.
oausmXgafv :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe Xgafv)
oausmXgafv
  = lens _oausmXgafv (\ s a -> s{_oausmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oausmUploadProtocol :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe Text)
oausmUploadProtocol
  = lens _oausmUploadProtocol
      (\ s a -> s{_oausmUploadProtocol = a})

-- | The time at which the updated SecurityMarks take effect. If not set uses
-- current server time. Updates will be applied to the SecurityMarks that
-- are active immediately preceding this time.
oausmStartTime :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe UTCTime)
oausmStartTime
  = lens _oausmStartTime
      (\ s a -> s{_oausmStartTime = a})
      . mapping _DateTime

-- | The FieldMask to use when updating the security marks resource. The
-- field mask must not contain duplicate fields. If empty or set to
-- \"marks\", all marks will be replaced. Individual marks can be updated
-- using \"marks.\".
oausmUpdateMask :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe GFieldMask)
oausmUpdateMask
  = lens _oausmUpdateMask
      (\ s a -> s{_oausmUpdateMask = a})

-- | OAuth access token.
oausmAccessToken :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe Text)
oausmAccessToken
  = lens _oausmAccessToken
      (\ s a -> s{_oausmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oausmUploadType :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe Text)
oausmUploadType
  = lens _oausmUploadType
      (\ s a -> s{_oausmUploadType = a})

-- | Multipart request metadata.
oausmPayload :: Lens' OrganizationsAssetsUpdateSecurityMarks GoogleCloudSecuritycenterV1p1beta1SecurityMarks
oausmPayload
  = lens _oausmPayload (\ s a -> s{_oausmPayload = a})

-- | The relative resource name of the SecurityMarks. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Examples:
-- \"organizations\/{organization_id}\/assets\/{asset_id}\/securityMarks\"
-- \"organizations\/{organization_id}\/sources\/{source_id}\/findings\/{finding_id}\/securityMarks\".
oausmName :: Lens' OrganizationsAssetsUpdateSecurityMarks Text
oausmName
  = lens _oausmName (\ s a -> s{_oausmName = a})

-- | JSONP
oausmCallback :: Lens' OrganizationsAssetsUpdateSecurityMarks (Maybe Text)
oausmCallback
  = lens _oausmCallback
      (\ s a -> s{_oausmCallback = a})

instance GoogleRequest
           OrganizationsAssetsUpdateSecurityMarks
         where
        type Rs OrganizationsAssetsUpdateSecurityMarks =
             GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        type Scopes OrganizationsAssetsUpdateSecurityMarks =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsAssetsUpdateSecurityMarks'{..}
          = go _oausmName _oausmXgafv _oausmUploadProtocol
              _oausmStartTime
              _oausmUpdateMask
              _oausmAccessToken
              _oausmUploadType
              _oausmCallback
              (Just AltJSON)
              _oausmPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsAssetsUpdateSecurityMarksResource)
                      mempty
