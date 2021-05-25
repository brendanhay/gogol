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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation
-- or other methods to check whether the cancellation succeeded or whether
-- the operation completed despite cancellation. On successful
-- cancellation, the operation is not deleted; instead, it becomes an
-- operation with an Operation.error value with a google.rpc.Status.code of
-- 1, corresponding to Code.CANCELLED.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.operations.cancel@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Operations.Cancel
    (
    -- * REST Resource
      BillingAccountsLocationsOperationsCancelResource

    -- * Creating a Request
    , billingAccountsLocationsOperationsCancel
    , BillingAccountsLocationsOperationsCancel

    -- * Request Lenses
    , balocXgafv
    , balocUploadProtocol
    , balocAccessToken
    , balocUploadType
    , balocPayload
    , balocName
    , balocCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.operations.cancel@ method which the
-- 'BillingAccountsLocationsOperationsCancel' request conforms to.
type BillingAccountsLocationsOperationsCancelResource
     =
     "v2" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CancelOperationRequest :>
                       Post '[JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server
-- makes a best effort to cancel the operation, but success is not
-- guaranteed. If the server doesn\'t support this method, it returns
-- google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation
-- or other methods to check whether the cancellation succeeded or whether
-- the operation completed despite cancellation. On successful
-- cancellation, the operation is not deleted; instead, it becomes an
-- operation with an Operation.error value with a google.rpc.Status.code of
-- 1, corresponding to Code.CANCELLED.
--
-- /See:/ 'billingAccountsLocationsOperationsCancel' smart constructor.
data BillingAccountsLocationsOperationsCancel =
  BillingAccountsLocationsOperationsCancel'
    { _balocXgafv :: !(Maybe Xgafv)
    , _balocUploadProtocol :: !(Maybe Text)
    , _balocAccessToken :: !(Maybe Text)
    , _balocUploadType :: !(Maybe Text)
    , _balocPayload :: !CancelOperationRequest
    , _balocName :: !Text
    , _balocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balocXgafv'
--
-- * 'balocUploadProtocol'
--
-- * 'balocAccessToken'
--
-- * 'balocUploadType'
--
-- * 'balocPayload'
--
-- * 'balocName'
--
-- * 'balocCallback'
billingAccountsLocationsOperationsCancel
    :: CancelOperationRequest -- ^ 'balocPayload'
    -> Text -- ^ 'balocName'
    -> BillingAccountsLocationsOperationsCancel
billingAccountsLocationsOperationsCancel pBalocPayload_ pBalocName_ =
  BillingAccountsLocationsOperationsCancel'
    { _balocXgafv = Nothing
    , _balocUploadProtocol = Nothing
    , _balocAccessToken = Nothing
    , _balocUploadType = Nothing
    , _balocPayload = pBalocPayload_
    , _balocName = pBalocName_
    , _balocCallback = Nothing
    }


-- | V1 error format.
balocXgafv :: Lens' BillingAccountsLocationsOperationsCancel (Maybe Xgafv)
balocXgafv
  = lens _balocXgafv (\ s a -> s{_balocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balocUploadProtocol :: Lens' BillingAccountsLocationsOperationsCancel (Maybe Text)
balocUploadProtocol
  = lens _balocUploadProtocol
      (\ s a -> s{_balocUploadProtocol = a})

-- | OAuth access token.
balocAccessToken :: Lens' BillingAccountsLocationsOperationsCancel (Maybe Text)
balocAccessToken
  = lens _balocAccessToken
      (\ s a -> s{_balocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balocUploadType :: Lens' BillingAccountsLocationsOperationsCancel (Maybe Text)
balocUploadType
  = lens _balocUploadType
      (\ s a -> s{_balocUploadType = a})

-- | Multipart request metadata.
balocPayload :: Lens' BillingAccountsLocationsOperationsCancel CancelOperationRequest
balocPayload
  = lens _balocPayload (\ s a -> s{_balocPayload = a})

-- | The name of the operation resource to be cancelled.
balocName :: Lens' BillingAccountsLocationsOperationsCancel Text
balocName
  = lens _balocName (\ s a -> s{_balocName = a})

-- | JSONP
balocCallback :: Lens' BillingAccountsLocationsOperationsCancel (Maybe Text)
balocCallback
  = lens _balocCallback
      (\ s a -> s{_balocCallback = a})

instance GoogleRequest
           BillingAccountsLocationsOperationsCancel
         where
        type Rs BillingAccountsLocationsOperationsCancel =
             Empty
        type Scopes BillingAccountsLocationsOperationsCancel
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsOperationsCancel'{..}
          = go _balocName _balocXgafv _balocUploadProtocol
              _balocAccessToken
              _balocUploadType
              _balocCallback
              (Just AltJSON)
              _balocPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsOperationsCancelResource)
                      mempty
