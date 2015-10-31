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
-- Module      : Network.Google.Resource.Directory.Schemas.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.update@.
module Network.Google.Resource.Directory.Schemas.Update
    (
    -- * REST Resource
      SchemasUpdateResource

    -- * Creating a Request
    , schemasUpdate
    , SchemasUpdate

    -- * Request Lenses
    , suPayload
    , suCustomerId
    , suSchemaKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.schemas.update@ method which the
-- 'SchemasUpdate' request conforms to.
type SchemasUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Schema :> Put '[JSON] Schema

-- | Update schema
--
-- /See:/ 'schemasUpdate' smart constructor.
data SchemasUpdate = SchemasUpdate
    { _suPayload    :: !Schema
    , _suCustomerId :: !Text
    , _suSchemaKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suPayload'
--
-- * 'suCustomerId'
--
-- * 'suSchemaKey'
schemasUpdate
    :: Schema -- ^ 'suPayload'
    -> Text -- ^ 'suCustomerId'
    -> Text -- ^ 'suSchemaKey'
    -> SchemasUpdate
schemasUpdate pSuPayload_ pSuCustomerId_ pSuSchemaKey_ =
    SchemasUpdate
    { _suPayload = pSuPayload_
    , _suCustomerId = pSuCustomerId_
    , _suSchemaKey = pSuSchemaKey_
    }

-- | Multipart request metadata.
suPayload :: Lens' SchemasUpdate Schema
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Immutable id of the Google Apps account
suCustomerId :: Lens' SchemasUpdate Text
suCustomerId
  = lens _suCustomerId (\ s a -> s{_suCustomerId = a})

-- | Name or immutable Id of the schema.
suSchemaKey :: Lens' SchemasUpdate Text
suSchemaKey
  = lens _suSchemaKey (\ s a -> s{_suSchemaKey = a})

instance GoogleRequest SchemasUpdate where
        type Rs SchemasUpdate = Schema
        type Scopes SchemasUpdate =
             '["https://www.googleapis.com/auth/admin.directory.userschema"]
        requestClient SchemasUpdate{..}
          = go _suCustomerId _suSchemaKey (Just AltJSON)
              _suPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasUpdateResource)
                      mempty
