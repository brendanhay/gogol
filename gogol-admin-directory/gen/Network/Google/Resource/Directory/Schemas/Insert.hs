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
-- Module      : Network.Google.Resource.Directory.Schemas.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasInsert@.
module Network.Google.Resource.Directory.Schemas.Insert
    (
    -- * REST Resource
      SchemasInsertResource

    -- * Creating a Request
    , schemasInsert'
    , SchemasInsert'

    -- * Request Lenses
    , siPayload
    , siCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasInsert@ method which the
-- 'SchemasInsert'' request conforms to.
type SchemasInsertResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Schema :> Post '[JSON] Schema

-- | Create schema.
--
-- /See:/ 'schemasInsert'' smart constructor.
data SchemasInsert' = SchemasInsert'
    { _siPayload    :: !Schema
    , _siCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPayload'
--
-- * 'siCustomerId'
schemasInsert'
    :: Schema -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> SchemasInsert'
schemasInsert' pSiPayload_ pSiCustomerId_ =
    SchemasInsert'
    { _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
    }

-- | Multipart request metadata.
siPayload :: Lens' SchemasInsert' Schema
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Immutable id of the Google Apps account
siCustomerId :: Lens' SchemasInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

instance GoogleRequest SchemasInsert' where
        type Rs SchemasInsert' = Schema
        requestClient SchemasInsert'{..}
          = go _siCustomerId (Just AltJSON) _siPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasInsertResource)
                      mempty
