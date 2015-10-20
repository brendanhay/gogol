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
-- Module      : Network.Google.Resource.Directory.Schemas.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.get@.
module Network.Google.Resource.Directory.Schemas.Get
    (
    -- * REST Resource
      SchemasGetResource

    -- * Creating a Request
    , schemasGet
    , SchemasGet

    -- * Request Lenses
    , sgCustomerId
    , sgSchemaKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.schemas.get@ method which the
-- 'SchemasGet' request conforms to.
type SchemasGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Schema

-- | Retrieve schema
--
-- /See:/ 'schemasGet' smart constructor.
data SchemasGet = SchemasGet
    { _sgCustomerId :: !Text
    , _sgSchemaKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgCustomerId'
--
-- * 'sgSchemaKey'
schemasGet
    :: Text -- ^ 'sgCustomerId'
    -> Text -- ^ 'sgSchemaKey'
    -> SchemasGet
schemasGet pSgCustomerId_ pSgSchemaKey_ =
    SchemasGet
    { _sgCustomerId = pSgCustomerId_
    , _sgSchemaKey = pSgSchemaKey_
    }

-- | Immutable id of the Google Apps account
sgCustomerId :: Lens' SchemasGet Text
sgCustomerId
  = lens _sgCustomerId (\ s a -> s{_sgCustomerId = a})

-- | Name or immutable Id of the schema
sgSchemaKey :: Lens' SchemasGet Text
sgSchemaKey
  = lens _sgSchemaKey (\ s a -> s{_sgSchemaKey = a})

instance GoogleRequest SchemasGet where
        type Rs SchemasGet = Schema
        requestClient SchemasGet{..}
          = go _sgCustomerId _sgSchemaKey (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasGetResource)
                      mempty
