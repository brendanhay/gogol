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
-- Module      : Network.Google.Resource.Directory.Domains.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.domains.delete@.
module Network.Google.Resource.Directory.Domains.Delete
    (
    -- * REST Resource
      DomainsDeleteResource

    -- * Creating a Request
    , domainsDelete
    , DomainsDelete

    -- * Request Lenses
    , ddCustomer
    , ddDomainName
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.domains.delete@ method which the
-- 'DomainsDelete' request conforms to.
type DomainsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domains" :>
                 Capture "domainName" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a domain of the customer.
--
-- /See:/ 'domainsDelete' smart constructor.
data DomainsDelete =
  DomainsDelete'
    { _ddCustomer   :: !Text
    , _ddDomainName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddCustomer'
--
-- * 'ddDomainName'
domainsDelete
    :: Text -- ^ 'ddCustomer'
    -> Text -- ^ 'ddDomainName'
    -> DomainsDelete
domainsDelete pDdCustomer_ pDdDomainName_ =
  DomainsDelete' {_ddCustomer = pDdCustomer_, _ddDomainName = pDdDomainName_}

-- | Immutable ID of the G Suite account.
ddCustomer :: Lens' DomainsDelete Text
ddCustomer
  = lens _ddCustomer (\ s a -> s{_ddCustomer = a})

-- | Name of domain to be deleted
ddDomainName :: Lens' DomainsDelete Text
ddDomainName
  = lens _ddDomainName (\ s a -> s{_ddDomainName = a})

instance GoogleRequest DomainsDelete where
        type Rs DomainsDelete = ()
        type Scopes DomainsDelete =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainsDelete'{..}
          = go _ddCustomer _ddDomainName (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsDeleteResource)
                      mempty
