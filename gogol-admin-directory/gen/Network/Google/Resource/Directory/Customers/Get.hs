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
-- Module      : Network.Google.Resource.Directory.Customers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.customers.get@.
module Network.Google.Resource.Directory.Customers.Get
    (
    -- * REST Resource
      CustomersGetResource

    -- * Creating a Request
    , customersGet
    , CustomersGet

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgAccessToken
    , cgCustomerKey
    , cgUploadType
    , cgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.customers.get@ method which the
-- 'CustomersGet' request conforms to.
type CustomersGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Customer

-- | Retrieves a customer.
--
-- /See:/ 'customersGet' smart constructor.
data CustomersGet =
  CustomersGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgCustomerKey :: !Text
    , _cgUploadType :: !(Maybe Text)
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgCustomerKey'
--
-- * 'cgUploadType'
--
-- * 'cgCallback'
customersGet
    :: Text -- ^ 'cgCustomerKey'
    -> CustomersGet
customersGet pCgCustomerKey_ =
  CustomersGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgCustomerKey = pCgCustomerKey_
    , _cgUploadType = Nothing
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' CustomersGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CustomersGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' CustomersGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Id of the customer to be retrieved
cgCustomerKey :: Lens' CustomersGet Text
cgCustomerKey
  = lens _cgCustomerKey
      (\ s a -> s{_cgCustomerKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CustomersGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | JSONP
cgCallback :: Lens' CustomersGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CustomersGet where
        type Rs CustomersGet = Customer
        type Scopes CustomersGet =
             '["https://www.googleapis.com/auth/admin.directory.customer",
               "https://www.googleapis.com/auth/admin.directory.customer.readonly"]
        requestClient CustomersGet'{..}
          = go _cgCustomerKey _cgXgafv _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy CustomersGetResource)
                      mempty
