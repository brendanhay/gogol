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
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.customers.get@.
module Network.Google.Resource.Directory.Customers.Get
    (
    -- * REST Resource
      CustomersGetResource

    -- * Creating a Request
    , customersGet
    , CustomersGet

    -- * Request Lenses
    , cgCustomerKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.customers.get@ method which the
-- 'CustomersGet' request conforms to.
type CustomersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customers" :>
             Capture "customerKey" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Customer

-- | Retrieves a customer.
--
-- /See:/ 'customersGet' smart constructor.
newtype CustomersGet =
  CustomersGet'
    { _cgCustomerKey :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCustomerKey'
customersGet
    :: Text -- ^ 'cgCustomerKey'
    -> CustomersGet
customersGet pCgCustomerKey_ = CustomersGet' {_cgCustomerKey = pCgCustomerKey_}


-- | Id of the customer to be retrieved
cgCustomerKey :: Lens' CustomersGet Text
cgCustomerKey
  = lens _cgCustomerKey
      (\ s a -> s{_cgCustomerKey = a})

instance GoogleRequest CustomersGet where
        type Rs CustomersGet = Customer
        type Scopes CustomersGet =
             '["https://www.googleapis.com/auth/admin.directory.customer",
               "https://www.googleapis.com/auth/admin.directory.customer.readonly"]
        requestClient CustomersGet'{..}
          = go _cgCustomerKey (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy CustomersGetResource)
                      mempty
