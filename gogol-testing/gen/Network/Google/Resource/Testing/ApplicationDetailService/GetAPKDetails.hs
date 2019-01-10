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
-- Module      : Network.Google.Resource.Testing.ApplicationDetailService.GetAPKDetails
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of an Android application APK.
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.applicationDetailService.getApkDetails@.
module Network.Google.Resource.Testing.ApplicationDetailService.GetAPKDetails
    (
    -- * REST Resource
      ApplicationDetailServiceGetAPKDetailsResource

    -- * Creating a Request
    , applicationDetailServiceGetAPKDetails
    , ApplicationDetailServiceGetAPKDetails

    -- * Request Lenses
    , adsgapkdXgafv
    , adsgapkdUploadProtocol
    , adsgapkdAccessToken
    , adsgapkdUploadType
    , adsgapkdPayload
    , adsgapkdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Testing.Types

-- | A resource alias for @testing.applicationDetailService.getApkDetails@ method which the
-- 'ApplicationDetailServiceGetAPKDetails' request conforms to.
type ApplicationDetailServiceGetAPKDetailsResource =
     "v1" :>
       "applicationDetailService" :>
         "getApkDetails" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] FileReference :>
                         Post '[JSON] GetAPKDetailsResponse

-- | Gets the details of an Android application APK.
--
-- /See:/ 'applicationDetailServiceGetAPKDetails' smart constructor.
data ApplicationDetailServiceGetAPKDetails = ApplicationDetailServiceGetAPKDetails'
    { _adsgapkdXgafv          :: !(Maybe Xgafv)
    , _adsgapkdUploadProtocol :: !(Maybe Text)
    , _adsgapkdAccessToken    :: !(Maybe Text)
    , _adsgapkdUploadType     :: !(Maybe Text)
    , _adsgapkdPayload        :: !FileReference
    , _adsgapkdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationDetailServiceGetAPKDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsgapkdXgafv'
--
-- * 'adsgapkdUploadProtocol'
--
-- * 'adsgapkdAccessToken'
--
-- * 'adsgapkdUploadType'
--
-- * 'adsgapkdPayload'
--
-- * 'adsgapkdCallback'
applicationDetailServiceGetAPKDetails
    :: FileReference -- ^ 'adsgapkdPayload'
    -> ApplicationDetailServiceGetAPKDetails
applicationDetailServiceGetAPKDetails pAdsgapkdPayload_ =
    ApplicationDetailServiceGetAPKDetails'
    { _adsgapkdXgafv = Nothing
    , _adsgapkdUploadProtocol = Nothing
    , _adsgapkdAccessToken = Nothing
    , _adsgapkdUploadType = Nothing
    , _adsgapkdPayload = pAdsgapkdPayload_
    , _adsgapkdCallback = Nothing
    }

-- | V1 error format.
adsgapkdXgafv :: Lens' ApplicationDetailServiceGetAPKDetails (Maybe Xgafv)
adsgapkdXgafv
  = lens _adsgapkdXgafv
      (\ s a -> s{_adsgapkdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adsgapkdUploadProtocol :: Lens' ApplicationDetailServiceGetAPKDetails (Maybe Text)
adsgapkdUploadProtocol
  = lens _adsgapkdUploadProtocol
      (\ s a -> s{_adsgapkdUploadProtocol = a})

-- | OAuth access token.
adsgapkdAccessToken :: Lens' ApplicationDetailServiceGetAPKDetails (Maybe Text)
adsgapkdAccessToken
  = lens _adsgapkdAccessToken
      (\ s a -> s{_adsgapkdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adsgapkdUploadType :: Lens' ApplicationDetailServiceGetAPKDetails (Maybe Text)
adsgapkdUploadType
  = lens _adsgapkdUploadType
      (\ s a -> s{_adsgapkdUploadType = a})

-- | Multipart request metadata.
adsgapkdPayload :: Lens' ApplicationDetailServiceGetAPKDetails FileReference
adsgapkdPayload
  = lens _adsgapkdPayload
      (\ s a -> s{_adsgapkdPayload = a})

-- | JSONP
adsgapkdCallback :: Lens' ApplicationDetailServiceGetAPKDetails (Maybe Text)
adsgapkdCallback
  = lens _adsgapkdCallback
      (\ s a -> s{_adsgapkdCallback = a})

instance GoogleRequest
         ApplicationDetailServiceGetAPKDetails where
        type Rs ApplicationDetailServiceGetAPKDetails =
             GetAPKDetailsResponse
        type Scopes ApplicationDetailServiceGetAPKDetails =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ApplicationDetailServiceGetAPKDetails'{..}
          = go _adsgapkdXgafv _adsgapkdUploadProtocol
              _adsgapkdAccessToken
              _adsgapkdUploadType
              _adsgapkdCallback
              (Just AltJSON)
              _adsgapkdPayload
              testingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ApplicationDetailServiceGetAPKDetailsResource)
                      mempty
