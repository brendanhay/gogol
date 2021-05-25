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
-- Module      : Network.Google.Resource.Reseller.Customers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Orders a new customer\'s account. Before ordering a new customer
-- account, establish whether the customer account already exists using the
-- [\`customers.get\`](\/admin-sdk\/reseller\/v1\/reference\/customers\/get)
-- If the customer account exists as a direct Google account or as a resold
-- customer account from another reseller, use the \`customerAuthToken\\\`
-- as described in [order a resold account for an existing
-- customer](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#create_existing_customer).
-- For more information about ordering a new customer account, see [order a
-- new customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#create_customer).
-- After creating a new customer account, you must provision a user as an
-- administrator. The customer\'s administrator is required to sign in to
-- the Admin console and sign the G Suite via Reseller agreement to
-- activate the account. Resellers are prohibited from signing the G Suite
-- via Reseller agreement on the customer\'s behalf. For more information,
-- see [order a new customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#tos).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.insert@.
module Network.Google.Resource.Reseller.Customers.Insert
    (
    -- * REST Resource
      CustomersInsertResource

    -- * Creating a Request
    , customersInsert
    , CustomersInsert

    -- * Request Lenses
    , ciXgafv
    , ciUploadProtocol
    , ciAccessToken
    , ciUploadType
    , ciPayload
    , ciCustomerAuthToken
    , ciCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.customers.insert@ method which the
-- 'CustomersInsert' request conforms to.
type CustomersInsertResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customerAuthToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Customer :> Post '[JSON] Customer

-- | Orders a new customer\'s account. Before ordering a new customer
-- account, establish whether the customer account already exists using the
-- [\`customers.get\`](\/admin-sdk\/reseller\/v1\/reference\/customers\/get)
-- If the customer account exists as a direct Google account or as a resold
-- customer account from another reseller, use the \`customerAuthToken\\\`
-- as described in [order a resold account for an existing
-- customer](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#create_existing_customer).
-- For more information about ordering a new customer account, see [order a
-- new customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#create_customer).
-- After creating a new customer account, you must provision a user as an
-- administrator. The customer\'s administrator is required to sign in to
-- the Admin console and sign the G Suite via Reseller agreement to
-- activate the account. Resellers are prohibited from signing the G Suite
-- via Reseller agreement on the customer\'s behalf. For more information,
-- see [order a new customer
-- account](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#tos).
--
-- /See:/ 'customersInsert' smart constructor.
data CustomersInsert =
  CustomersInsert'
    { _ciXgafv :: !(Maybe Xgafv)
    , _ciUploadProtocol :: !(Maybe Text)
    , _ciAccessToken :: !(Maybe Text)
    , _ciUploadType :: !(Maybe Text)
    , _ciPayload :: !Customer
    , _ciCustomerAuthToken :: !(Maybe Text)
    , _ciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciXgafv'
--
-- * 'ciUploadProtocol'
--
-- * 'ciAccessToken'
--
-- * 'ciUploadType'
--
-- * 'ciPayload'
--
-- * 'ciCustomerAuthToken'
--
-- * 'ciCallback'
customersInsert
    :: Customer -- ^ 'ciPayload'
    -> CustomersInsert
customersInsert pCiPayload_ =
  CustomersInsert'
    { _ciXgafv = Nothing
    , _ciUploadProtocol = Nothing
    , _ciAccessToken = Nothing
    , _ciUploadType = Nothing
    , _ciPayload = pCiPayload_
    , _ciCustomerAuthToken = Nothing
    , _ciCallback = Nothing
    }


-- | V1 error format.
ciXgafv :: Lens' CustomersInsert (Maybe Xgafv)
ciXgafv = lens _ciXgafv (\ s a -> s{_ciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ciUploadProtocol :: Lens' CustomersInsert (Maybe Text)
ciUploadProtocol
  = lens _ciUploadProtocol
      (\ s a -> s{_ciUploadProtocol = a})

-- | OAuth access token.
ciAccessToken :: Lens' CustomersInsert (Maybe Text)
ciAccessToken
  = lens _ciAccessToken
      (\ s a -> s{_ciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ciUploadType :: Lens' CustomersInsert (Maybe Text)
ciUploadType
  = lens _ciUploadType (\ s a -> s{_ciUploadType = a})

-- | Multipart request metadata.
ciPayload :: Lens' CustomersInsert Customer
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | The \`customerAuthToken\` query string is required when creating a
-- resold account that transfers a direct customer\'s subscription or
-- transfers another reseller customer\'s subscription to your reseller
-- management. This is a hexadecimal authentication token needed to
-- complete the subscription transfer. For more information, see the
-- administrator help center.
ciCustomerAuthToken :: Lens' CustomersInsert (Maybe Text)
ciCustomerAuthToken
  = lens _ciCustomerAuthToken
      (\ s a -> s{_ciCustomerAuthToken = a})

-- | JSONP
ciCallback :: Lens' CustomersInsert (Maybe Text)
ciCallback
  = lens _ciCallback (\ s a -> s{_ciCallback = a})

instance GoogleRequest CustomersInsert where
        type Rs CustomersInsert = Customer
        type Scopes CustomersInsert =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient CustomersInsert'{..}
          = go _ciXgafv _ciUploadProtocol _ciAccessToken
              _ciUploadType
              _ciCustomerAuthToken
              _ciCallback
              (Just AltJSON)
              _ciPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersInsertResource)
                      mempty
