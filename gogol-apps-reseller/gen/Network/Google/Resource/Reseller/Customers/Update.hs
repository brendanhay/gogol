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
-- Update a customer resource if one it exists and is owned by the
-- reseller.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.customers.update@.
module Network.Google.Resource.Reseller.Customers.Update
    (
    -- * REST Resource
      CustomersUpdateResource

    -- * Creating a Request
    , customersUpdate
    , CustomersUpdate

    -- * Request Lenses
    , cuPayload
    , cuCustomerId
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @reseller.customers.update@ method which the
-- 'CustomersUpdate' request conforms to.
type CustomersUpdateResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Customer :> Put '[JSON] Customer

-- | Update a customer resource if one it exists and is owned by the
-- reseller.
--
-- /See:/ 'customersUpdate' smart constructor.
data CustomersUpdate = CustomersUpdate
    { _cuPayload    :: !Customer
    , _cuCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPayload'
--
-- * 'cuCustomerId'
customersUpdate
    :: Customer -- ^ 'cuPayload'
    -> Text -- ^ 'cuCustomerId'
    -> CustomersUpdate
customersUpdate pCuPayload_ pCuCustomerId_ =
    CustomersUpdate
    { _cuPayload = pCuPayload_
    , _cuCustomerId = pCuCustomerId_
    }

-- | Multipart request metadata.
cuPayload :: Lens' CustomersUpdate Customer
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | Id of the Customer
cuCustomerId :: Lens' CustomersUpdate Text
cuCustomerId
  = lens _cuCustomerId (\ s a -> s{_cuCustomerId = a})

instance GoogleRequest CustomersUpdate where
        type Rs CustomersUpdate = Customer
        type Scopes CustomersUpdate =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient CustomersUpdate{..}
          = go _cuCustomerId (Just AltJSON) _cuPayload
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersUpdateResource)
                      mempty
