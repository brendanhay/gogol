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
-- Module      : Network.Google.Resource.Directory.Domains.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domains of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.domains.list@.
module Network.Google.Resource.Directory.Domains.List
    (
    -- * REST Resource
      DomainsListResource

    -- * Creating a Request
    , domainsList'
    , DomainsList'

    -- * Request Lenses
    , dlCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.domains.list@ method which the
-- 'DomainsList'' request conforms to.
type DomainsListResource =
     "customer" :>
       Capture "customer" Text :>
         "domains" :>
           QueryParam "alt" AltJSON :> Get '[JSON] Domains2

-- | Lists the domains of the customer.
--
-- /See:/ 'domainsList'' smart constructor.
newtype DomainsList' = DomainsList'
    { _dlCustomer :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlCustomer'
domainsList'
    :: Text -- ^ 'dlCustomer'
    -> DomainsList'
domainsList' pDlCustomer_ =
    DomainsList'
    { _dlCustomer = pDlCustomer_
    }

-- | Immutable id of the Google Apps account.
dlCustomer :: Lens' DomainsList' Text
dlCustomer
  = lens _dlCustomer (\ s a -> s{_dlCustomer = a})

instance GoogleRequest DomainsList' where
        type Rs DomainsList' = Domains2
        requestClient DomainsList'{..}
          = go _dlCustomer (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsListResource)
                      mempty
