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
-- Module      : Network.Google.Resource.Directory.Customers.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.customers.update@.
module Network.Google.Resource.Directory.Customers.Update
    (
    -- * REST Resource
      CustomersUpdateResource

    -- * Creating a Request
    , customersUpdate
    , CustomersUpdate

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuAccessToken
    , cuCustomerKey
    , cuUploadType
    , cuPayload
    , cuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.customers.update@ method which the
-- 'CustomersUpdate' request conforms to.
type CustomersUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customers" :>
             Capture "customerKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Customer :> Put '[JSON] Customer

-- | Updates a customer.
--
-- /See:/ 'customersUpdate' smart constructor.
data CustomersUpdate =
  CustomersUpdate'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuCustomerKey :: !Text
    , _cuUploadType :: !(Maybe Text)
    , _cuPayload :: !Customer
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuCustomerKey'
--
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuCallback'
customersUpdate
    :: Text -- ^ 'cuCustomerKey'
    -> Customer -- ^ 'cuPayload'
    -> CustomersUpdate
customersUpdate pCuCustomerKey_ pCuPayload_ =
  CustomersUpdate'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuCustomerKey = pCuCustomerKey_
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' CustomersUpdate (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CustomersUpdate (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' CustomersUpdate (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Id of the customer to be updated
cuCustomerKey :: Lens' CustomersUpdate Text
cuCustomerKey
  = lens _cuCustomerKey
      (\ s a -> s{_cuCustomerKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CustomersUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CustomersUpdate Customer
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | JSONP
cuCallback :: Lens' CustomersUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CustomersUpdate where
        type Rs CustomersUpdate = Customer
        type Scopes CustomersUpdate =
             '["https://www.googleapis.com/auth/admin.directory.customer"]
        requestClient CustomersUpdate'{..}
          = go _cuCustomerKey _cuXgafv _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersUpdateResource)
                      mempty
