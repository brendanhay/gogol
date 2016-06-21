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
-- Module      : Network.Google.Resource.Directory.Customers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.customers.patch@.
module Network.Google.Resource.Directory.Customers.Patch
    (
    -- * REST Resource
      CustomersPatchResource

    -- * Creating a Request
    , customersPatch
    , CustomersPatch

    -- * Request Lenses
    , cpCustomerKey
    , cpPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.customers.patch@ method which the
-- 'CustomersPatch' request conforms to.
type CustomersPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customers" :>
             Capture "customerKey" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Customer :> Patch '[JSON] Customer

-- | Updates a customer. This method supports patch semantics.
--
-- /See:/ 'customersPatch' smart constructor.
data CustomersPatch = CustomersPatch'
    { _cpCustomerKey :: !Text
    , _cpPayload     :: !Customer
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpCustomerKey'
--
-- * 'cpPayload'
customersPatch
    :: Text -- ^ 'cpCustomerKey'
    -> Customer -- ^ 'cpPayload'
    -> CustomersPatch
customersPatch pCpCustomerKey_ pCpPayload_ =
    CustomersPatch'
    { _cpCustomerKey = pCpCustomerKey_
    , _cpPayload = pCpPayload_
    }

-- | Id of the customer to be updated
cpCustomerKey :: Lens' CustomersPatch Text
cpCustomerKey
  = lens _cpCustomerKey
      (\ s a -> s{_cpCustomerKey = a})

-- | Multipart request metadata.
cpPayload :: Lens' CustomersPatch Customer
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

instance GoogleRequest CustomersPatch where
        type Rs CustomersPatch = Customer
        type Scopes CustomersPatch =
             '["https://www.googleapis.com/auth/admin.directory.customer"]
        requestClient CustomersPatch'{..}
          = go _cpCustomerKey (Just AltJSON) _cpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy CustomersPatchResource)
                      mempty
