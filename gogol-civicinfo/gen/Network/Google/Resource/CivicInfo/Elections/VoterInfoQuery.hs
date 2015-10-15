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
-- Module      : Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicInfoElectionsVoterInfoQuery@.
module Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
    (
    -- * REST Resource
      ElectionsVoterInfoQueryResource

    -- * Creating a Request
    , electionsVoterInfoQuery'
    , ElectionsVoterInfoQuery'

    -- * Request Lenses
    , eviqElectionId
    , eviqAddress
    , eviqOfficialOnly
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicInfoElectionsVoterInfoQuery@ method which the
-- 'ElectionsVoterInfoQuery'' request conforms to.
type ElectionsVoterInfoQueryResource =
     "voterinfo" :>
       QueryParam "address" Text :>
         QueryParam "electionId" Int64 :>
           QueryParam "officialOnly" Bool :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ 'electionsVoterInfoQuery'' smart constructor.
data ElectionsVoterInfoQuery' = ElectionsVoterInfoQuery'
    { _eviqElectionId   :: !Int64
    , _eviqAddress      :: !Text
    , _eviqOfficialOnly :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsVoterInfoQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviqElectionId'
--
-- * 'eviqAddress'
--
-- * 'eviqOfficialOnly'
electionsVoterInfoQuery'
    :: Text -- ^ 'address'
    -> ElectionsVoterInfoQuery'
electionsVoterInfoQuery' pEviqAddress_ =
    ElectionsVoterInfoQuery'
    { _eviqElectionId = 0
    , _eviqAddress = pEviqAddress_
    , _eviqOfficialOnly = False
    }

-- | The unique ID of the election to look up. A list of election IDs can be
-- obtained at
-- https:\/\/www.googleapis.com\/civicinfo\/{version}\/elections
eviqElectionId :: Lens' ElectionsVoterInfoQuery' Int64
eviqElectionId
  = lens _eviqElectionId
      (\ s a -> s{_eviqElectionId = a})

-- | The registered address of the voter to look up.
eviqAddress :: Lens' ElectionsVoterInfoQuery' Text
eviqAddress
  = lens _eviqAddress (\ s a -> s{_eviqAddress = a})

-- | If set to true, only data from official state sources will be returned.
eviqOfficialOnly :: Lens' ElectionsVoterInfoQuery' Bool
eviqOfficialOnly
  = lens _eviqOfficialOnly
      (\ s a -> s{_eviqOfficialOnly = a})

instance GoogleRequest ElectionsVoterInfoQuery' where
        type Rs ElectionsVoterInfoQuery' = VoterInfoResponse
        requestClient ElectionsVoterInfoQuery'{..}
          = go (Just _eviqAddress) (Just _eviqElectionId)
              (Just _eviqOfficialOnly)
              (Just AltJSON)
              civicInfo
          where go
                  = buildClient
                      (Proxy :: Proxy ElectionsVoterInfoQueryResource)
                      mempty
