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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.operations.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Get
    (
    -- * REST Resource
      EnterprisesDevicesOperationsGetResource

    -- * Creating a Request
    , enterprisesDevicesOperationsGet
    , EnterprisesDevicesOperationsGet

    -- * Request Lenses
    , edogXgafv
    , edogUploadProtocol
    , edogAccessToken
    , edogUploadType
    , edogName
    , edogCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.operations.get@ method which the
-- 'EnterprisesDevicesOperationsGet' request conforms to.
type EnterprisesDevicesOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'enterprisesDevicesOperationsGet' smart constructor.
data EnterprisesDevicesOperationsGet =
  EnterprisesDevicesOperationsGet'
    { _edogXgafv :: !(Maybe Xgafv)
    , _edogUploadProtocol :: !(Maybe Text)
    , _edogAccessToken :: !(Maybe Text)
    , _edogUploadType :: !(Maybe Text)
    , _edogName :: !Text
    , _edogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edogXgafv'
--
-- * 'edogUploadProtocol'
--
-- * 'edogAccessToken'
--
-- * 'edogUploadType'
--
-- * 'edogName'
--
-- * 'edogCallback'
enterprisesDevicesOperationsGet
    :: Text -- ^ 'edogName'
    -> EnterprisesDevicesOperationsGet
enterprisesDevicesOperationsGet pEdogName_ =
  EnterprisesDevicesOperationsGet'
    { _edogXgafv = Nothing
    , _edogUploadProtocol = Nothing
    , _edogAccessToken = Nothing
    , _edogUploadType = Nothing
    , _edogName = pEdogName_
    , _edogCallback = Nothing
    }


-- | V1 error format.
edogXgafv :: Lens' EnterprisesDevicesOperationsGet (Maybe Xgafv)
edogXgafv
  = lens _edogXgafv (\ s a -> s{_edogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edogUploadProtocol :: Lens' EnterprisesDevicesOperationsGet (Maybe Text)
edogUploadProtocol
  = lens _edogUploadProtocol
      (\ s a -> s{_edogUploadProtocol = a})

-- | OAuth access token.
edogAccessToken :: Lens' EnterprisesDevicesOperationsGet (Maybe Text)
edogAccessToken
  = lens _edogAccessToken
      (\ s a -> s{_edogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edogUploadType :: Lens' EnterprisesDevicesOperationsGet (Maybe Text)
edogUploadType
  = lens _edogUploadType
      (\ s a -> s{_edogUploadType = a})

-- | The name of the operation resource.
edogName :: Lens' EnterprisesDevicesOperationsGet Text
edogName = lens _edogName (\ s a -> s{_edogName = a})

-- | JSONP
edogCallback :: Lens' EnterprisesDevicesOperationsGet (Maybe Text)
edogCallback
  = lens _edogCallback (\ s a -> s{_edogCallback = a})

instance GoogleRequest
           EnterprisesDevicesOperationsGet
         where
        type Rs EnterprisesDevicesOperationsGet = Operation
        type Scopes EnterprisesDevicesOperationsGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesOperationsGet'{..}
          = go _edogName _edogXgafv _edogUploadProtocol
              _edogAccessToken
              _edogUploadType
              _edogCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesDevicesOperationsGetResource)
                      mempty
