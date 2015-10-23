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
-- Module      : Network.Google.Resource.Directory.Schemas.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update schema. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.patch@.
module Network.Google.Resource.Directory.Schemas.Patch
    (
    -- * REST Resource
      SchemasPatchResource

    -- * Creating a Request
    , schemasPatch
    , SchemasPatch

    -- * Request Lenses
    , spPayload
    , spCustomerId
    , spSchemaKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.schemas.patch@ method which the
-- 'SchemasPatch' request conforms to.
type SchemasPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 Capture "schemaKey" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Schema :> Patch '[JSON] Schema

-- | Update schema. This method supports patch semantics.
--
-- /See:/ 'schemasPatch' smart constructor.
data SchemasPatch = SchemasPatch
    { _spPayload    :: !Schema
    , _spCustomerId :: !Text
    , _spSchemaKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spPayload'
--
-- * 'spCustomerId'
--
-- * 'spSchemaKey'
schemasPatch
    :: Schema -- ^ 'spPayload'
    -> Text -- ^ 'spCustomerId'
    -> Text -- ^ 'spSchemaKey'
    -> SchemasPatch
schemasPatch pSpPayload_ pSpCustomerId_ pSpSchemaKey_ =
    SchemasPatch
    { _spPayload = pSpPayload_
    , _spCustomerId = pSpCustomerId_
    , _spSchemaKey = pSpSchemaKey_
    }

-- | Multipart request metadata.
spPayload :: Lens' SchemasPatch Schema
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Immutable id of the Google Apps account
spCustomerId :: Lens' SchemasPatch Text
spCustomerId
  = lens _spCustomerId (\ s a -> s{_spCustomerId = a})

-- | Name or immutable Id of the schema.
spSchemaKey :: Lens' SchemasPatch Text
spSchemaKey
  = lens _spSchemaKey (\ s a -> s{_spSchemaKey = a})

instance GoogleRequest SchemasPatch where
        type Rs SchemasPatch = Schema
        requestClient SchemasPatch{..}
          = go _spCustomerId _spSchemaKey (Just AltJSON)
              _spPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasPatchResource)
                      mempty
