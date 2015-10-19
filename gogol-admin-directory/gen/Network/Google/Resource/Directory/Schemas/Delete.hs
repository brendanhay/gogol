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
-- Module      : Network.Google.Resource.Directory.Schemas.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasDelete@.
module Network.Google.Resource.Directory.Schemas.Delete
    (
    -- * REST Resource
      SchemasDeleteResource

    -- * Creating a Request
    , schemasDelete'
    , SchemasDelete'

    -- * Request Lenses
    , sdCustomerId
    , sdSchemaKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasDelete@ method which the
-- 'SchemasDelete'' request conforms to.
type SchemasDeleteResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete schema
--
-- /See:/ 'schemasDelete'' smart constructor.
data SchemasDelete' = SchemasDelete'
    { _sdCustomerId :: !Text
    , _sdSchemaKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdCustomerId'
--
-- * 'sdSchemaKey'
schemasDelete'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasDelete'
schemasDelete' pSdCustomerId_ pSdSchemaKey_ =
    SchemasDelete'
    { _sdCustomerId = pSdCustomerId_
    , _sdSchemaKey = pSdSchemaKey_
    }

-- | Immutable id of the Google Apps account
sdCustomerId :: Lens' SchemasDelete' Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | Name or immutable Id of the schema
sdSchemaKey :: Lens' SchemasDelete' Text
sdSchemaKey
  = lens _sdSchemaKey (\ s a -> s{_sdSchemaKey = a})

instance GoogleRequest SchemasDelete' where
        type Rs SchemasDelete' = ()
        requestClient SchemasDelete'{..}
          = go _sdCustomerId _sdSchemaKey (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy SchemasDeleteResource)
                      mempty
