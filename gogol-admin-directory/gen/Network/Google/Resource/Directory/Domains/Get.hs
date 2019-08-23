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
-- Module      : Network.Google.Resource.Directory.Domains.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.domains.get@.
module Network.Google.Resource.Directory.Domains.Get
    (
    -- * REST Resource
      DomainsGetResource

    -- * Creating a Request
    , domainsGet
    , DomainsGet

    -- * Request Lenses
    , dgCustomer
    , dgDomainName
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.domains.get@ method which the
-- 'DomainsGet' request conforms to.
type DomainsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domains" :>
                 Capture "domainName" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Domains

-- | Retrieves a domain of the customer.
--
-- /See:/ 'domainsGet' smart constructor.
data DomainsGet =
  DomainsGet'
    { _dgCustomer   :: !Text
    , _dgDomainName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgCustomer'
--
-- * 'dgDomainName'
domainsGet
    :: Text -- ^ 'dgCustomer'
    -> Text -- ^ 'dgDomainName'
    -> DomainsGet
domainsGet pDgCustomer_ pDgDomainName_ =
  DomainsGet' {_dgCustomer = pDgCustomer_, _dgDomainName = pDgDomainName_}


-- | Immutable ID of the G Suite account.
dgCustomer :: Lens' DomainsGet Text
dgCustomer
  = lens _dgCustomer (\ s a -> s{_dgCustomer = a})

-- | Name of domain to be retrieved
dgDomainName :: Lens' DomainsGet Text
dgDomainName
  = lens _dgDomainName (\ s a -> s{_dgDomainName = a})

instance GoogleRequest DomainsGet where
        type Rs DomainsGet = Domains
        type Scopes DomainsGet =
             '["https://www.googleapis.com/auth/admin.directory.domain",
               "https://www.googleapis.com/auth/admin.directory.domain.readonly"]
        requestClient DomainsGet'{..}
          = go _dgCustomer _dgDomainName (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsGetResource)
                      mempty
