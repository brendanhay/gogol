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
-- Module      : Network.Google.Resource.CivicInfo.Elections.ElectionQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of available elections to query.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.elections.electionQuery@.
module Network.Google.Resource.CivicInfo.Elections.ElectionQuery
    (
    -- * REST Resource
      ElectionsElectionQueryResource

    -- * Creating a Request
    , electionsElectionQuery
    , ElectionsElectionQuery

    -- * Request Lenses
    , eeqPayload
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @civicinfo.elections.electionQuery@ method which the
-- 'ElectionsElectionQuery' request conforms to.
type ElectionsElectionQueryResource =
     "civicinfo" :>
       "v2" :>
         "elections" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ElectionsQueryRequest :>
               Get '[JSON] ElectionsQueryResponse

-- | List of available elections to query.
--
-- /See:/ 'electionsElectionQuery' smart constructor.
newtype ElectionsElectionQuery =
  ElectionsElectionQuery'
    { _eeqPayload :: ElectionsQueryRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ElectionsElectionQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeqPayload'
electionsElectionQuery
    :: ElectionsQueryRequest -- ^ 'eeqPayload'
    -> ElectionsElectionQuery
electionsElectionQuery pEeqPayload_ =
  ElectionsElectionQuery' {_eeqPayload = pEeqPayload_}

-- | Multipart request metadata.
eeqPayload :: Lens' ElectionsElectionQuery ElectionsQueryRequest
eeqPayload
  = lens _eeqPayload (\ s a -> s{_eeqPayload = a})

instance GoogleRequest ElectionsElectionQuery where
        type Rs ElectionsElectionQuery =
             ElectionsQueryResponse
        type Scopes ElectionsElectionQuery = '[]
        requestClient ElectionsElectionQuery'{..}
          = go (Just AltJSON) _eeqPayload civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy ElectionsElectionQueryResource)
                      mempty
