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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a customer resource if one does not already exist.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerCustomersInsert@.
module Network.Google.Resource.Reseller.Customers.Insert
    (
    -- * REST Resource
      CustomersInsertResource

    -- * Creating a Request
    , customersInsert'
    , CustomersInsert'

    -- * Request Lenses
    , ciPayload
    , ciCustomerAuthToken
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerCustomersInsert@ method which the
-- 'CustomersInsert'' request conforms to.
type CustomersInsertResource =
     "customers" :>
       QueryParam "customerAuthToken" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Customer :> Post '[JSON] Customer

-- | Creates a customer resource if one does not already exist.
--
-- /See:/ 'customersInsert'' smart constructor.
data CustomersInsert' = CustomersInsert'
    { _ciPayload           :: !Customer
    , _ciCustomerAuthToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
--
-- * 'ciCustomerAuthToken'
customersInsert'
    :: Customer -- ^ 'payload'
    -> CustomersInsert'
customersInsert' pCiPayload_ =
    CustomersInsert'
    { _ciPayload = pCiPayload_
    , _ciCustomerAuthToken = Nothing
    }

-- | Multipart request metadata.
ciPayload :: Lens' CustomersInsert' Customer
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | An auth token needed for inserting a customer for which domain already
-- exists. Can be generated at
-- https:\/\/www.google.com\/a\/cpanel\/\/TransferToken. Optional.
ciCustomerAuthToken :: Lens' CustomersInsert' (Maybe Text)
ciCustomerAuthToken
  = lens _ciCustomerAuthToken
      (\ s a -> s{_ciCustomerAuthToken = a})

instance GoogleRequest CustomersInsert' where
        type Rs CustomersInsert' = Customer
        requestClient CustomersInsert'{..}
          = go _ciCustomerAuthToken (Just AltJSON) _ciPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersInsertResource)
                      mempty
