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
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one connection type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingConnectionTypesGet@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.Get
    (
    -- * REST Resource
      ConnectionTypesGetResource

    -- * Creating a Request
    , connectionTypesGet'
    , ConnectionTypesGet'

    -- * Request Lenses
    , ctgProFileId
    , ctgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingConnectionTypesGet@ method which the
-- 'ConnectionTypesGet'' request conforms to.
type ConnectionTypesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "connectionTypes" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ConnectionType

-- | Gets one connection type by ID.
--
-- /See:/ 'connectionTypesGet'' smart constructor.
data ConnectionTypesGet' = ConnectionTypesGet'
    { _ctgProFileId :: !Int64
    , _ctgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgProFileId'
--
-- * 'ctgId'
connectionTypesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ConnectionTypesGet'
connectionTypesGet' pCtgProFileId_ pCtgId_ =
    ConnectionTypesGet'
    { _ctgProFileId = pCtgProFileId_
    , _ctgId = pCtgId_
    }

-- | User profile ID associated with this request.
ctgProFileId :: Lens' ConnectionTypesGet' Int64
ctgProFileId
  = lens _ctgProFileId (\ s a -> s{_ctgProFileId = a})

-- | Connection type ID.
ctgId :: Lens' ConnectionTypesGet' Int64
ctgId = lens _ctgId (\ s a -> s{_ctgId = a})

instance GoogleRequest ConnectionTypesGet' where
        type Rs ConnectionTypesGet' = ConnectionType
        requestClient ConnectionTypesGet'{..}
          = go _ctgProFileId _ctgId (Just AltJSON) dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy ConnectionTypesGetResource)
                      mempty
