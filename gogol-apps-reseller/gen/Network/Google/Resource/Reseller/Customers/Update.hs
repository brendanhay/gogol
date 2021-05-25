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
-- Module      : Network.Google.Resource.Reseller.Customers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer account\'s settings. You cannot update
-- \`customerType\` via the Reseller API, but a \`\"team\"\` customer can
-- verify their domain and become \`customerType = \"domain\"\`. For more
-- information, see [update a customer\'s
-- settings](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#update_customer).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.update@.
module Network.Google.Resource.Reseller.Customers.Update
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
    , cuUploadType
    , cuPayload
    , cuCustomerId
    , cuCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.customers.update@ method which the
-- 'CustomersUpdate' request conforms to.
type CustomersUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Customer :> Put '[JSON] Customer

-- | Updates a customer account\'s settings. You cannot update
-- \`customerType\` via the Reseller API, but a \`\"team\"\` customer can
-- verify their domain and become \`customerType = \"domain\"\`. For more
-- information, see [update a customer\'s
-- settings](\/admin-sdk\/reseller\/v1\/how-tos\/manage_customers#update_customer).
--
-- /See:/ 'customersUpdate' smart constructor.
data CustomersUpdate =
  CustomersUpdate'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuPayload :: !Customer
    , _cuCustomerId :: !Text
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
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuCustomerId'
--
-- * 'cuCallback'
customersUpdate
    :: Customer -- ^ 'cuPayload'
    -> Text -- ^ 'cuCustomerId'
    -> CustomersUpdate
customersUpdate pCuPayload_ pCuCustomerId_ =
  CustomersUpdate'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuCustomerId = pCuCustomerId_
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

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CustomersUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CustomersUpdate Customer
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
cuCustomerId :: Lens' CustomersUpdate Text
cuCustomerId
  = lens _cuCustomerId (\ s a -> s{_cuCustomerId = a})

-- | JSONP
cuCallback :: Lens' CustomersUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CustomersUpdate where
        type Rs CustomersUpdate = Customer
        type Scopes CustomersUpdate =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient CustomersUpdate'{..}
          = go _cuCustomerId _cuXgafv _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersUpdateResource)
                      mempty
