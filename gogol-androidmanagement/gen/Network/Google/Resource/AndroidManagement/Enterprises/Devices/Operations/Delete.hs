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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.operations.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.Delete
    (
    -- * REST Resource
      EnterprisesDevicesOperationsDeleteResource

    -- * Creating a Request
    , enterprisesDevicesOperationsDelete
    , EnterprisesDevicesOperationsDelete

    -- * Request Lenses
    , edodXgafv
    , edodUploadProtocol
    , edodAccessToken
    , edodUploadType
    , edodName
    , edodCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.operations.delete@ method which the
-- 'EnterprisesDevicesOperationsDelete' request conforms to.
type EnterprisesDevicesOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED.
--
-- /See:/ 'enterprisesDevicesOperationsDelete' smart constructor.
data EnterprisesDevicesOperationsDelete =
  EnterprisesDevicesOperationsDelete'
    { _edodXgafv          :: !(Maybe Xgafv)
    , _edodUploadProtocol :: !(Maybe Text)
    , _edodAccessToken    :: !(Maybe Text)
    , _edodUploadType     :: !(Maybe Text)
    , _edodName           :: !Text
    , _edodCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edodXgafv'
--
-- * 'edodUploadProtocol'
--
-- * 'edodAccessToken'
--
-- * 'edodUploadType'
--
-- * 'edodName'
--
-- * 'edodCallback'
enterprisesDevicesOperationsDelete
    :: Text -- ^ 'edodName'
    -> EnterprisesDevicesOperationsDelete
enterprisesDevicesOperationsDelete pEdodName_ =
  EnterprisesDevicesOperationsDelete'
    { _edodXgafv = Nothing
    , _edodUploadProtocol = Nothing
    , _edodAccessToken = Nothing
    , _edodUploadType = Nothing
    , _edodName = pEdodName_
    , _edodCallback = Nothing
    }


-- | V1 error format.
edodXgafv :: Lens' EnterprisesDevicesOperationsDelete (Maybe Xgafv)
edodXgafv
  = lens _edodXgafv (\ s a -> s{_edodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edodUploadProtocol :: Lens' EnterprisesDevicesOperationsDelete (Maybe Text)
edodUploadProtocol
  = lens _edodUploadProtocol
      (\ s a -> s{_edodUploadProtocol = a})

-- | OAuth access token.
edodAccessToken :: Lens' EnterprisesDevicesOperationsDelete (Maybe Text)
edodAccessToken
  = lens _edodAccessToken
      (\ s a -> s{_edodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edodUploadType :: Lens' EnterprisesDevicesOperationsDelete (Maybe Text)
edodUploadType
  = lens _edodUploadType
      (\ s a -> s{_edodUploadType = a})

-- | The name of the operation resource to be deleted.
edodName :: Lens' EnterprisesDevicesOperationsDelete Text
edodName = lens _edodName (\ s a -> s{_edodName = a})

-- | JSONP
edodCallback :: Lens' EnterprisesDevicesOperationsDelete (Maybe Text)
edodCallback
  = lens _edodCallback (\ s a -> s{_edodCallback = a})

instance GoogleRequest
           EnterprisesDevicesOperationsDelete
         where
        type Rs EnterprisesDevicesOperationsDelete = Empty
        type Scopes EnterprisesDevicesOperationsDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesOperationsDelete'{..}
          = go _edodName _edodXgafv _edodUploadProtocol
              _edodAccessToken
              _edodUploadType
              _edodCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesDevicesOperationsDeleteResource)
                      mempty
