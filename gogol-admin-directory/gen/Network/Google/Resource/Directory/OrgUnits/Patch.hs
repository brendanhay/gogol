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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update Organization Unit. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.patch@.
module Network.Google.Resource.Directory.OrgUnits.Patch
    (
    -- * REST Resource
      OrgUnitsPatchResource

    -- * Creating a Request
    , orgUnitsPatch
    , OrgUnitsPatch

    -- * Request Lenses
    , oupPayload
    , oupOrgUnitPath
    , oupCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.orgunits.patch@ method which the
-- 'OrgUnitsPatch' request conforms to.
type OrgUnitsPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 Captures "orgUnitPath" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] OrgUnit :> Patch '[JSON] OrgUnit

-- | Update Organization Unit. This method supports patch semantics.
--
-- /See:/ 'orgUnitsPatch' smart constructor.
data OrgUnitsPatch = OrgUnitsPatch'
    { _oupPayload     :: !OrgUnit
    , _oupOrgUnitPath :: ![Text]
    , _oupCustomerId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oupPayload'
--
-- * 'oupOrgUnitPath'
--
-- * 'oupCustomerId'
orgUnitsPatch
    :: OrgUnit -- ^ 'oupPayload'
    -> [Text] -- ^ 'oupOrgUnitPath'
    -> Text -- ^ 'oupCustomerId'
    -> OrgUnitsPatch
orgUnitsPatch pOupPayload_ pOupOrgUnitPath_ pOupCustomerId_ =
    OrgUnitsPatch'
    { _oupPayload = pOupPayload_
    , _oupOrgUnitPath = _Coerce # pOupOrgUnitPath_
    , _oupCustomerId = pOupCustomerId_
    }

-- | Multipart request metadata.
oupPayload :: Lens' OrgUnitsPatch OrgUnit
oupPayload
  = lens _oupPayload (\ s a -> s{_oupPayload = a})

-- | Full path of the organization unit or its Id
oupOrgUnitPath :: Lens' OrgUnitsPatch [Text]
oupOrgUnitPath
  = lens _oupOrgUnitPath
      (\ s a -> s{_oupOrgUnitPath = a})
      . _Coerce

-- | Immutable id of the Google Apps account
oupCustomerId :: Lens' OrgUnitsPatch Text
oupCustomerId
  = lens _oupCustomerId
      (\ s a -> s{_oupCustomerId = a})

instance GoogleRequest OrgUnitsPatch where
        type Rs OrgUnitsPatch = OrgUnit
        type Scopes OrgUnitsPatch =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsPatch'{..}
          = go _oupCustomerId _oupOrgUnitPath (Just AltJSON)
              _oupPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsPatchResource)
                      mempty
