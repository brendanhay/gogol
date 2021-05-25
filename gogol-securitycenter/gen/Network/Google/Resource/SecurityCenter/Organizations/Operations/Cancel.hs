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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.operations.cancel@.
module Network.Google.Resource.SecurityCenter.Organizations.Operations.Cancel
    (
    -- * REST Resource
      OrganizationsOperationsCancelResource

    -- * Creating a Request
    , organizationsOperationsCancel
    , OrganizationsOperationsCancel

    -- * Request Lenses
    , oocXgafv
    , oocUploadProtocol
    , oocAccessToken
    , oocUploadType
    , oocName
    , oocCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.operations.cancel@ method which the
-- 'OrganizationsOperationsCancel' request conforms to.
type OrganizationsOperationsCancelResource =
     "v1p1beta1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`. Clients can use
-- Operations.GetOperation or other methods to check whether the
-- cancellation succeeded or whether the operation completed despite
-- cancellation. On successful cancellation, the operation is not deleted;
-- instead, it becomes an operation with an Operation.error value with a
-- google.rpc.Status.code of 1, corresponding to \`Code.CANCELLED\`.
--
-- /See:/ 'organizationsOperationsCancel' smart constructor.
data OrganizationsOperationsCancel =
  OrganizationsOperationsCancel'
    { _oocXgafv :: !(Maybe Xgafv)
    , _oocUploadProtocol :: !(Maybe Text)
    , _oocAccessToken :: !(Maybe Text)
    , _oocUploadType :: !(Maybe Text)
    , _oocName :: !Text
    , _oocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oocXgafv'
--
-- * 'oocUploadProtocol'
--
-- * 'oocAccessToken'
--
-- * 'oocUploadType'
--
-- * 'oocName'
--
-- * 'oocCallback'
organizationsOperationsCancel
    :: Text -- ^ 'oocName'
    -> OrganizationsOperationsCancel
organizationsOperationsCancel pOocName_ =
  OrganizationsOperationsCancel'
    { _oocXgafv = Nothing
    , _oocUploadProtocol = Nothing
    , _oocAccessToken = Nothing
    , _oocUploadType = Nothing
    , _oocName = pOocName_
    , _oocCallback = Nothing
    }


-- | V1 error format.
oocXgafv :: Lens' OrganizationsOperationsCancel (Maybe Xgafv)
oocXgafv = lens _oocXgafv (\ s a -> s{_oocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oocUploadProtocol :: Lens' OrganizationsOperationsCancel (Maybe Text)
oocUploadProtocol
  = lens _oocUploadProtocol
      (\ s a -> s{_oocUploadProtocol = a})

-- | OAuth access token.
oocAccessToken :: Lens' OrganizationsOperationsCancel (Maybe Text)
oocAccessToken
  = lens _oocAccessToken
      (\ s a -> s{_oocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oocUploadType :: Lens' OrganizationsOperationsCancel (Maybe Text)
oocUploadType
  = lens _oocUploadType
      (\ s a -> s{_oocUploadType = a})

-- | The name of the operation resource to be cancelled.
oocName :: Lens' OrganizationsOperationsCancel Text
oocName = lens _oocName (\ s a -> s{_oocName = a})

-- | JSONP
oocCallback :: Lens' OrganizationsOperationsCancel (Maybe Text)
oocCallback
  = lens _oocCallback (\ s a -> s{_oocCallback = a})

instance GoogleRequest OrganizationsOperationsCancel
         where
        type Rs OrganizationsOperationsCancel = Empty
        type Scopes OrganizationsOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsOperationsCancel'{..}
          = go _oocName _oocXgafv _oocUploadProtocol
              _oocAccessToken
              _oocUploadType
              _oocCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsOperationsCancelResource)
                      mempty
