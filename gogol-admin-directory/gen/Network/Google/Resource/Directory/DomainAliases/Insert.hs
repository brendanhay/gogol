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
-- Module      : Network.Google.Resource.Directory.DomainAliases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a Domain alias of the customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.domainAliases.insert@.
module Network.Google.Resource.Directory.DomainAliases.Insert
    (
    -- * REST Resource
      DomainAliasesInsertResource

    -- * Creating a Request
    , domainAliasesInsert
    , DomainAliasesInsert

    -- * Request Lenses
    , daiPayload
    , daiCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.domainAliases.insert@ method which the
-- 'DomainAliasesInsert' request conforms to.
type DomainAliasesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "domainaliases" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DomainAlias :>
                     Post '[JSON] DomainAlias

-- | Inserts a Domain alias of the customer.
--
-- /See:/ 'domainAliasesInsert' smart constructor.
data DomainAliasesInsert =
  DomainAliasesInsert'
    { _daiPayload  :: !DomainAlias
    , _daiCustomer :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiPayload'
--
-- * 'daiCustomer'
domainAliasesInsert
    :: DomainAlias -- ^ 'daiPayload'
    -> Text -- ^ 'daiCustomer'
    -> DomainAliasesInsert
domainAliasesInsert pDaiPayload_ pDaiCustomer_ =
  DomainAliasesInsert'
    {_daiPayload = pDaiPayload_, _daiCustomer = pDaiCustomer_}


-- | Multipart request metadata.
daiPayload :: Lens' DomainAliasesInsert DomainAlias
daiPayload
  = lens _daiPayload (\ s a -> s{_daiPayload = a})

-- | Immutable ID of the G Suite account.
daiCustomer :: Lens' DomainAliasesInsert Text
daiCustomer
  = lens _daiCustomer (\ s a -> s{_daiCustomer = a})

instance GoogleRequest DomainAliasesInsert where
        type Rs DomainAliasesInsert = DomainAlias
        type Scopes DomainAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.domain"]
        requestClient DomainAliasesInsert'{..}
          = go _daiCustomer (Just AltJSON) _daiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy DomainAliasesInsertResource)
                      mempty
