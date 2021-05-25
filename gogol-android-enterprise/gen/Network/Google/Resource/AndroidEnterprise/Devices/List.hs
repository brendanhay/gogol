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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.list@.
module Network.Google.Resource.AndroidEnterprise.Devices.List
    (
    -- * REST Resource
      DevicesListResource

    -- * Creating a Request
    , devicesList
    , DevicesList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlEnterpriseId
    , dlAccessToken
    , dlUploadType
    , dlUserId
    , dlCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.list@ method which the
-- 'DevicesList' request conforms to.
type DevicesListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DevicesListResponse

-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ 'devicesList' smart constructor.
data DevicesList =
  DevicesList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlEnterpriseId :: !Text
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlUserId :: !Text
    , _dlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlEnterpriseId'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlUserId'
--
-- * 'dlCallback'
devicesList
    :: Text -- ^ 'dlEnterpriseId'
    -> Text -- ^ 'dlUserId'
    -> DevicesList
devicesList pDlEnterpriseId_ pDlUserId_ =
  DevicesList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlEnterpriseId = pDlEnterpriseId_
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlUserId = pDlUserId_
    , _dlCallback = Nothing
    }


-- | V1 error format.
dlXgafv :: Lens' DevicesList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DevicesList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | The ID of the enterprise.
dlEnterpriseId :: Lens' DevicesList Text
dlEnterpriseId
  = lens _dlEnterpriseId
      (\ s a -> s{_dlEnterpriseId = a})

-- | OAuth access token.
dlAccessToken :: Lens' DevicesList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DevicesList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | The ID of the user.
dlUserId :: Lens' DevicesList Text
dlUserId = lens _dlUserId (\ s a -> s{_dlUserId = a})

-- | JSONP
dlCallback :: Lens' DevicesList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DevicesList where
        type Rs DevicesList = DevicesListResponse
        type Scopes DevicesList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesList'{..}
          = go _dlEnterpriseId _dlUserId _dlXgafv
              _dlUploadProtocol
              _dlAccessToken
              _dlUploadType
              _dlCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesListResource)
                      mempty
