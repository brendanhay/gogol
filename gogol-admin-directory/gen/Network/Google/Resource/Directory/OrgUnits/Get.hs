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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsGet@.
module Network.Google.Resource.Directory.OrgUnits.Get
    (
    -- * REST Resource
      OrgUnitsGetResource

    -- * Creating a Request
    , orgUnitsGet'
    , OrgUnitsGet'

    -- * Request Lenses
    , ougOrgUnitPath
    , ougCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsGet@ method which the
-- 'OrgUnitsGet'' request conforms to.
type OrgUnitsGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           Captures "orgUnitPath" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] OrgUnit

-- | Retrieve Organization Unit
--
-- /See:/ 'orgUnitsGet'' smart constructor.
data OrgUnitsGet' = OrgUnitsGet'
    { _ougOrgUnitPath :: ![Text]
    , _ougCustomerId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ougOrgUnitPath'
--
-- * 'ougCustomerId'
orgUnitsGet'
    :: [Text] -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsGet'
orgUnitsGet' pOugOrgUnitPath_ pOugCustomerId_ =
    OrgUnitsGet'
    { _ougOrgUnitPath = pOugOrgUnitPath_
    , _ougCustomerId = pOugCustomerId_
    }

-- | Full path of the organization unit or its Id
ougOrgUnitPath :: Lens' OrgUnitsGet' [Text]
ougOrgUnitPath
  = lens _ougOrgUnitPath
      (\ s a -> s{_ougOrgUnitPath = a})
      . _Coerce

-- | Immutable id of the Google Apps account
ougCustomerId :: Lens' OrgUnitsGet' Text
ougCustomerId
  = lens _ougCustomerId
      (\ s a -> s{_ougCustomerId = a})

instance GoogleRequest OrgUnitsGet' where
        type Rs OrgUnitsGet' = OrgUnit
        requestClient OrgUnitsGet'{..}
          = go _ougCustomerId _ougOrgUnitPath (Just AltJSON)
              directory
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsGetResource)
                      mempty
