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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update organizational unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.update@.
module Network.Google.Resource.Directory.OrgUnits.Update
    (
    -- * REST Resource
      OrgUnitsUpdateResource

    -- * Creating a Request
    , orgUnitsUpdate
    , OrgUnitsUpdate

    -- * Request Lenses
    , ouuPayload
    , ouuOrgUnitPath
    , ouuCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.orgunits.update@ method which the
-- 'OrgUnitsUpdate' request conforms to.
type OrgUnitsUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 Captures "orgUnitPath" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] OrgUnit :> Put '[JSON] OrgUnit

-- | Update organizational unit
--
-- /See:/ 'orgUnitsUpdate' smart constructor.
data OrgUnitsUpdate =
  OrgUnitsUpdate'
    { _ouuPayload     :: !OrgUnit
    , _ouuOrgUnitPath :: ![Text]
    , _ouuCustomerId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrgUnitsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouuPayload'
--
-- * 'ouuOrgUnitPath'
--
-- * 'ouuCustomerId'
orgUnitsUpdate
    :: OrgUnit -- ^ 'ouuPayload'
    -> [Text] -- ^ 'ouuOrgUnitPath'
    -> Text -- ^ 'ouuCustomerId'
    -> OrgUnitsUpdate
orgUnitsUpdate pOuuPayload_ pOuuOrgUnitPath_ pOuuCustomerId_ =
  OrgUnitsUpdate'
    { _ouuPayload = pOuuPayload_
    , _ouuOrgUnitPath = _Coerce # pOuuOrgUnitPath_
    , _ouuCustomerId = pOuuCustomerId_
    }

-- | Multipart request metadata.
ouuPayload :: Lens' OrgUnitsUpdate OrgUnit
ouuPayload
  = lens _ouuPayload (\ s a -> s{_ouuPayload = a})

-- | Full path of the organizational unit or its ID
ouuOrgUnitPath :: Lens' OrgUnitsUpdate [Text]
ouuOrgUnitPath
  = lens _ouuOrgUnitPath
      (\ s a -> s{_ouuOrgUnitPath = a})
      . _Coerce

-- | Immutable ID of the G Suite account
ouuCustomerId :: Lens' OrgUnitsUpdate Text
ouuCustomerId
  = lens _ouuCustomerId
      (\ s a -> s{_ouuCustomerId = a})

instance GoogleRequest OrgUnitsUpdate where
        type Rs OrgUnitsUpdate = OrgUnit
        type Scopes OrgUnitsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsUpdate'{..}
          = go _ouuCustomerId _ouuOrgUnitPath (Just AltJSON)
              _ouuPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsUpdateResource)
                      mempty
