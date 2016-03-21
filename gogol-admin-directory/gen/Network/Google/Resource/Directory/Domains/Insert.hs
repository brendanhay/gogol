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
-- Module      : Network.Google.Resource.Directory.Domains.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a domain of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.domains.insert@.
module Network.Google.Resource.Directory.Domains.Insert
    (
    -- * REST Resource
      DomainsInsertResource

    -- * Creating a Request
    , domainsInsert
    , DomainsInsert

    -- * Request Lenses
    , diPayload
    , diCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.domains.insert@ method which the
-- 'DomainsInsert' request conforms to.
type DomainsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domains" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Domains :> Post '[JSON] Domains

-- | Inserts a domain of the customer.
--
-- /See:/ 'domainsInsert' smart constructor.
data DomainsInsert = DomainsInsert'
    { _diPayload  :: !Domains
    , _diCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diPayload'
--
-- * 'diCustomer'
domainsInsert
    :: Domains -- ^ 'diPayload'
    -> Text -- ^ 'diCustomer'
    -> DomainsInsert
domainsInsert pDiPayload_ pDiCustomer_ =
    DomainsInsert'
    { _diPayload = pDiPayload_
    , _diCustomer = pDiCustomer_
    }

-- | Multipart request metadata.
diPayload :: Lens' DomainsInsert Domains
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | Immutable id of the Google Apps account.
diCustomer :: Lens' DomainsInsert Text
diCustomer
  = lens _diCustomer (\ s a -> s{_diCustomer = a})

instance GoogleRequest DomainsInsert where
        type Rs DomainsInsert = Domains
        type Scopes DomainsInsert =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainsInsert'{..}
          = go _diCustomer (Just AltJSON) _diPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy DomainsInsertResource)
                      mempty
