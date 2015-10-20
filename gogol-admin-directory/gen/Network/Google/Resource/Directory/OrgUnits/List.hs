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
-- Module      : Network.Google.Resource.Directory.OrgUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve all Organization Units
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.list@.
module Network.Google.Resource.Directory.OrgUnits.List
    (
    -- * REST Resource
      OrgUnitsListResource

    -- * Creating a Request
    , orgUnitsList
    , OrgUnitsList

    -- * Request Lenses
    , oulOrgUnitPath
    , oulCustomerId
    , oulType
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.orgunits.list@ method which the
-- 'OrgUnitsList' request conforms to.
type OrgUnitsListResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "orgUnitPath" Text :>
             QueryParam "type" OrgUnitsListType :>
               QueryParam "alt" AltJSON :> Get '[JSON] OrgUnits

-- | Retrieve all Organization Units
--
-- /See:/ 'orgUnitsList' smart constructor.
data OrgUnitsList = OrgUnitsList
    { _oulOrgUnitPath :: !Text
    , _oulCustomerId  :: !Text
    , _oulType        :: !(Maybe OrgUnitsListType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulOrgUnitPath'
--
-- * 'oulCustomerId'
--
-- * 'oulType'
orgUnitsList
    :: Text -- ^ 'oulCustomerId'
    -> OrgUnitsList
orgUnitsList pOulCustomerId_ =
    OrgUnitsList
    { _oulOrgUnitPath = ""
    , _oulCustomerId = pOulCustomerId_
    , _oulType = Nothing
    }

-- | the URL-encoded organization unit\'s path or its Id
oulOrgUnitPath :: Lens' OrgUnitsList Text
oulOrgUnitPath
  = lens _oulOrgUnitPath
      (\ s a -> s{_oulOrgUnitPath = a})

-- | Immutable id of the Google Apps account
oulCustomerId :: Lens' OrgUnitsList Text
oulCustomerId
  = lens _oulCustomerId
      (\ s a -> s{_oulCustomerId = a})

-- | Whether to return all sub-organizations or just immediate children
oulType :: Lens' OrgUnitsList (Maybe OrgUnitsListType)
oulType = lens _oulType (\ s a -> s{_oulType = a})

instance GoogleRequest OrgUnitsList where
        type Rs OrgUnitsList = OrgUnits
        requestClient OrgUnitsList{..}
          = go _oulCustomerId (Just _oulOrgUnitPath) _oulType
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsListResource)
                      mempty
