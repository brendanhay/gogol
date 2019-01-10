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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add organizational unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.insert@.
module Network.Google.Resource.Directory.OrgUnits.Insert
    (
    -- * REST Resource
      OrgUnitsInsertResource

    -- * Creating a Request
    , orgUnitsInsert
    , OrgUnitsInsert

    -- * Request Lenses
    , ouiPayload
    , ouiCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.orgunits.insert@ method which the
-- 'OrgUnitsInsert' request conforms to.
type OrgUnitsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrgUnit :> Post '[JSON] OrgUnit

-- | Add organizational unit
--
-- /See:/ 'orgUnitsInsert' smart constructor.
data OrgUnitsInsert = OrgUnitsInsert'
    { _ouiPayload    :: !OrgUnit
    , _ouiCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouiPayload'
--
-- * 'ouiCustomerId'
orgUnitsInsert
    :: OrgUnit -- ^ 'ouiPayload'
    -> Text -- ^ 'ouiCustomerId'
    -> OrgUnitsInsert
orgUnitsInsert pOuiPayload_ pOuiCustomerId_ =
    OrgUnitsInsert'
    { _ouiPayload = pOuiPayload_
    , _ouiCustomerId = pOuiCustomerId_
    }

-- | Multipart request metadata.
ouiPayload :: Lens' OrgUnitsInsert OrgUnit
ouiPayload
  = lens _ouiPayload (\ s a -> s{_ouiPayload = a})

-- | Immutable ID of the G Suite account
ouiCustomerId :: Lens' OrgUnitsInsert Text
ouiCustomerId
  = lens _ouiCustomerId
      (\ s a -> s{_ouiCustomerId = a})

instance GoogleRequest OrgUnitsInsert where
        type Rs OrgUnitsInsert = OrgUnit
        type Scopes OrgUnitsInsert =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsInsert'{..}
          = go _ouiCustomerId (Just AltJSON) _ouiPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsInsertResource)
                      mempty
