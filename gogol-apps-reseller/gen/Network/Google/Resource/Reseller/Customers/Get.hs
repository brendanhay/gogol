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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a customer resource if one exists and is owned by the reseller.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.customers.get@.
module Network.Google.Resource.Reseller.Customers.Get
    (
    -- * REST Resource
      CustomersGetResource

    -- * Creating a Request
    , customersGet
    , CustomersGet

    -- * Request Lenses
    , cgCustomerId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.customers.get@ method which the
-- 'CustomersGet' request conforms to.
type CustomersGetResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Customer

-- | Gets a customer resource if one exists and is owned by the reseller.
--
-- /See:/ 'customersGet' smart constructor.
newtype CustomersGet = CustomersGet'
    { _cgCustomerId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCustomerId'
customersGet
    :: Text -- ^ 'cgCustomerId'
    -> CustomersGet
customersGet pCgCustomerId_ =
    CustomersGet'
    { _cgCustomerId = pCgCustomerId_
    }

-- | Id of the Customer
cgCustomerId :: Lens' CustomersGet Text
cgCustomerId
  = lens _cgCustomerId (\ s a -> s{_cgCustomerId = a})

instance GoogleRequest CustomersGet where
        type Rs CustomersGet = Customer
        type Scopes CustomersGet =
             '["https://www.googleapis.com/auth/apps.order",
               "https://www.googleapis.com/auth/apps.order.readonly"]
        requestClient CustomersGet'{..}
          = go _cgCustomerId (Just AltJSON) appsResellerService
          where go
                  = buildClient (Proxy :: Proxy CustomersGetResource)
                      mempty
