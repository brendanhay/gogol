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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists devices for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.list@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.List
    (
    -- * REST Resource
      EnterprisesDevicesListResource

    -- * Creating a Request
    , enterprisesDevicesList
    , EnterprisesDevicesList

    -- * Request Lenses
    , edlParent
    , edlXgafv
    , edlUploadProtocol
    , edlAccessToken
    , edlUploadType
    , edlPageToken
    , edlPageSize
    , edlCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.list@ method which the
-- 'EnterprisesDevicesList' request conforms to.
type EnterprisesDevicesListResource =
     "v1" :>
       Capture "parent" Text :>
         "devices" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDevicesResponse

-- | Lists devices for a given enterprise.
--
-- /See:/ 'enterprisesDevicesList' smart constructor.
data EnterprisesDevicesList =
  EnterprisesDevicesList'
    { _edlParent :: !Text
    , _edlXgafv :: !(Maybe Xgafv)
    , _edlUploadProtocol :: !(Maybe Text)
    , _edlAccessToken :: !(Maybe Text)
    , _edlUploadType :: !(Maybe Text)
    , _edlPageToken :: !(Maybe Text)
    , _edlPageSize :: !(Maybe (Textual Int32))
    , _edlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edlParent'
--
-- * 'edlXgafv'
--
-- * 'edlUploadProtocol'
--
-- * 'edlAccessToken'
--
-- * 'edlUploadType'
--
-- * 'edlPageToken'
--
-- * 'edlPageSize'
--
-- * 'edlCallback'
enterprisesDevicesList
    :: Text -- ^ 'edlParent'
    -> EnterprisesDevicesList
enterprisesDevicesList pEdlParent_ =
  EnterprisesDevicesList'
    { _edlParent = pEdlParent_
    , _edlXgafv = Nothing
    , _edlUploadProtocol = Nothing
    , _edlAccessToken = Nothing
    , _edlUploadType = Nothing
    , _edlPageToken = Nothing
    , _edlPageSize = Nothing
    , _edlCallback = Nothing
    }


-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
edlParent :: Lens' EnterprisesDevicesList Text
edlParent
  = lens _edlParent (\ s a -> s{_edlParent = a})

-- | V1 error format.
edlXgafv :: Lens' EnterprisesDevicesList (Maybe Xgafv)
edlXgafv = lens _edlXgafv (\ s a -> s{_edlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edlUploadProtocol :: Lens' EnterprisesDevicesList (Maybe Text)
edlUploadProtocol
  = lens _edlUploadProtocol
      (\ s a -> s{_edlUploadProtocol = a})

-- | OAuth access token.
edlAccessToken :: Lens' EnterprisesDevicesList (Maybe Text)
edlAccessToken
  = lens _edlAccessToken
      (\ s a -> s{_edlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edlUploadType :: Lens' EnterprisesDevicesList (Maybe Text)
edlUploadType
  = lens _edlUploadType
      (\ s a -> s{_edlUploadType = a})

-- | A token identifying a page of results returned by the server.
edlPageToken :: Lens' EnterprisesDevicesList (Maybe Text)
edlPageToken
  = lens _edlPageToken (\ s a -> s{_edlPageToken = a})

-- | The requested page size. The actual page size may be fixed to a min or
-- max value.
edlPageSize :: Lens' EnterprisesDevicesList (Maybe Int32)
edlPageSize
  = lens _edlPageSize (\ s a -> s{_edlPageSize = a}) .
      mapping _Coerce

-- | JSONP
edlCallback :: Lens' EnterprisesDevicesList (Maybe Text)
edlCallback
  = lens _edlCallback (\ s a -> s{_edlCallback = a})

instance GoogleRequest EnterprisesDevicesList where
        type Rs EnterprisesDevicesList = ListDevicesResponse
        type Scopes EnterprisesDevicesList =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesList'{..}
          = go _edlParent _edlXgafv _edlUploadProtocol
              _edlAccessToken
              _edlUploadType
              _edlPageToken
              _edlPageSize
              _edlCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDevicesListResource)
                      mempty
