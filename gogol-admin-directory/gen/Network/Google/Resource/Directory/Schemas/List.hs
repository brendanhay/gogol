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
-- Module      : Network.Google.Resource.Directory.Schemas.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all schemas for a customer
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.list@.
module Network.Google.Resource.Directory.Schemas.List
    (
    -- * REST Resource
      SchemasListResource

    -- * Creating a Request
    , schemasList
    , SchemasList

    -- * Request Lenses
    , slCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.schemas.list@ method which the
-- 'SchemasList' request conforms to.
type SchemasListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "schemas" :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Schemas

-- | Retrieve all schemas for a customer
--
-- /See:/ 'schemasList' smart constructor.
newtype SchemasList = SchemasList'
    { _slCustomerId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slCustomerId'
schemasList
    :: Text -- ^ 'slCustomerId'
    -> SchemasList
schemasList pSlCustomerId_ =
    SchemasList'
    { _slCustomerId = pSlCustomerId_
    }

-- | Immutable ID of the G Suite account
slCustomerId :: Lens' SchemasList Text
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

instance GoogleRequest SchemasList where
        type Rs SchemasList = Schemas
        type Scopes SchemasList =
             '["https://www.googleapis.com/auth/admin.directory.userschema",
               "https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
        requestClient SchemasList'{..}
          = go _slCustomerId (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasListResource)
                      mempty
