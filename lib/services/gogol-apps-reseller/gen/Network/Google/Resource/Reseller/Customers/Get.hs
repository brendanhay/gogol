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
-- Module      : Network.Google.Resource.Reseller.Customers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a customer account. Use this operation to see a customer account
-- already in your reseller management, or to see the minimal account
-- information for an existing customer that you do not manage. For more
-- information about the API response for existing customers, see
-- [retrieving a customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#get_customer).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.get@.
module Network.Google.Resource.Reseller.Customers.Get
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
    , cgUploadType
    , cgCustomerId
    , cgCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.customers.get@ method which the
-- 'CustomersGet' request conforms to.
type CustomersGetResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Customer

-- | Gets a customer account. Use this operation to see a customer account
-- already in your reseller management, or to see the minimal account
-- information for an existing customer that you do not manage. For more
-- information about the API response for existing customers, see
-- [retrieving a customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#get_customer).
--
-- /See:/ 'customersGet' smart constructor.
data CustomersGet =
  CustomersGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgUploadType :: !(Maybe Text)
    , _cgCustomerId :: !Text
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
-- * 'cgUploadType'
--
-- * 'cgCustomerId'
--
-- * 'cgCallback'
customersGet
    :: Text -- ^ 'cgCustomerId'
    -> CustomersGet
customersGet pCgCustomerId_ =
  CustomersGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgCustomerId = pCgCustomerId_
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

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CustomersGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
cgCustomerId :: Lens' CustomersGet Text
cgCustomerId
  = lens _cgCustomerId (\ s a -> s{_cgCustomerId = a})

-- | JSONP
cgCallback :: Lens' CustomersGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CustomersGet where
        type Rs CustomersGet = Customer
        type Scopes CustomersGet =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient CustomersGet'{..}
          = go _cgCustomerId _cgXgafv _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient (Proxy :: Proxy CustomersGetResource)
                      mempty
