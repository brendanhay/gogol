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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Operations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.operations.get@.
module Network.Google.Resource.Logging.BillingAccounts.Operations.Get
    (
    -- * REST Resource
      BillingAccountsOperationsGetResource

    -- * Creating a Request
    , billingAccountsOperationsGet
    , BillingAccountsOperationsGet

    -- * Request Lenses
    , baogXgafv
    , baogUploadProtocol
    , baogAccessToken
    , baogUploadType
    , baogName
    , baogCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.operations.get@ method which the
-- 'BillingAccountsOperationsGet' request conforms to.
type BillingAccountsOperationsGetResource =
     "v2" :>
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
-- /See:/ 'billingAccountsOperationsGet' smart constructor.
data BillingAccountsOperationsGet =
  BillingAccountsOperationsGet'
    { _baogXgafv :: !(Maybe Xgafv)
    , _baogUploadProtocol :: !(Maybe Text)
    , _baogAccessToken :: !(Maybe Text)
    , _baogUploadType :: !(Maybe Text)
    , _baogName :: !Text
    , _baogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baogXgafv'
--
-- * 'baogUploadProtocol'
--
-- * 'baogAccessToken'
--
-- * 'baogUploadType'
--
-- * 'baogName'
--
-- * 'baogCallback'
billingAccountsOperationsGet
    :: Text -- ^ 'baogName'
    -> BillingAccountsOperationsGet
billingAccountsOperationsGet pBaogName_ =
  BillingAccountsOperationsGet'
    { _baogXgafv = Nothing
    , _baogUploadProtocol = Nothing
    , _baogAccessToken = Nothing
    , _baogUploadType = Nothing
    , _baogName = pBaogName_
    , _baogCallback = Nothing
    }


-- | V1 error format.
baogXgafv :: Lens' BillingAccountsOperationsGet (Maybe Xgafv)
baogXgafv
  = lens _baogXgafv (\ s a -> s{_baogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baogUploadProtocol :: Lens' BillingAccountsOperationsGet (Maybe Text)
baogUploadProtocol
  = lens _baogUploadProtocol
      (\ s a -> s{_baogUploadProtocol = a})

-- | OAuth access token.
baogAccessToken :: Lens' BillingAccountsOperationsGet (Maybe Text)
baogAccessToken
  = lens _baogAccessToken
      (\ s a -> s{_baogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baogUploadType :: Lens' BillingAccountsOperationsGet (Maybe Text)
baogUploadType
  = lens _baogUploadType
      (\ s a -> s{_baogUploadType = a})

-- | The name of the operation resource.
baogName :: Lens' BillingAccountsOperationsGet Text
baogName = lens _baogName (\ s a -> s{_baogName = a})

-- | JSONP
baogCallback :: Lens' BillingAccountsOperationsGet (Maybe Text)
baogCallback
  = lens _baogCallback (\ s a -> s{_baogCallback = a})

instance GoogleRequest BillingAccountsOperationsGet
         where
        type Rs BillingAccountsOperationsGet = Operation
        type Scopes BillingAccountsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsOperationsGet'{..}
          = go _baogName _baogXgafv _baogUploadProtocol
              _baogAccessToken
              _baogUploadType
              _baogCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsOperationsGetResource)
                      mempty
