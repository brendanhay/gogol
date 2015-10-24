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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.customers.update@.
module Network.Google.Resource.Directory.Customers.Update
    (
    -- * REST Resource
      CustomersUpdateResource

    -- * Creating a Request
    , customersUpdate
    , CustomersUpdate

    -- * Request Lenses
    , cuCustomerKey
    , cuPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.customers.update@ method which the
-- 'CustomersUpdate' request conforms to.
type CustomersUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customers" :>
             Capture "customerKey" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Customer :> Put '[JSON] Customer

-- | Updates a customer.
--
-- /See:/ 'customersUpdate' smart constructor.
data CustomersUpdate = CustomersUpdate
    { _cuCustomerKey :: !Text
    , _cuPayload     :: !Customer
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuCustomerKey'
--
-- * 'cuPayload'
customersUpdate
    :: Text -- ^ 'cuCustomerKey'
    -> Customer -- ^ 'cuPayload'
    -> CustomersUpdate
customersUpdate pCuCustomerKey_ pCuPayload_ =
    CustomersUpdate
    { _cuCustomerKey = pCuCustomerKey_
    , _cuPayload = pCuPayload_
    }

-- | Id of the customer to be updated
cuCustomerKey :: Lens' CustomersUpdate Text
cuCustomerKey
  = lens _cuCustomerKey
      (\ s a -> s{_cuCustomerKey = a})

-- | Multipart request metadata.
cuPayload :: Lens' CustomersUpdate Customer
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest CustomersUpdate where
        type Rs CustomersUpdate = Customer
        requestClient CustomersUpdate{..}
          = go _cuCustomerKey (Just AltJSON) _cuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersUpdateResource)
                      mempty
