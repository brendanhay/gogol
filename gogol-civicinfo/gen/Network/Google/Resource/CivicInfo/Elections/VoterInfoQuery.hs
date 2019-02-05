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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.elections.voterInfoQuery@.
module Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
    (
    -- * REST Resource
      ElectionsVoterInfoQueryResource

    -- * Creating a Request
    , electionsVoterInfoQuery
    , ElectionsVoterInfoQuery

    -- * Request Lenses
    , eviqReturnAllAvailableData
    , eviqElectionId
    , eviqAddress
    , eviqPayload
    , eviqOfficialOnly
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @civicinfo.elections.voterInfoQuery@ method which the
-- 'ElectionsVoterInfoQuery' request conforms to.
type ElectionsVoterInfoQueryResource =
     "civicinfo" :>
       "v2" :>
         "voterinfo" :>
           QueryParam "address" Text :>
             QueryParam "returnAllAvailableData" Bool :>
               QueryParam "electionId" (Textual Int64) :>
                 QueryParam "officialOnly" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] VoterInfoRequest :>
                       Get '[JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ 'electionsVoterInfoQuery' smart constructor.
data ElectionsVoterInfoQuery = ElectionsVoterInfoQuery'
    { _eviqReturnAllAvailableData :: !Bool
    , _eviqElectionId             :: !(Textual Int64)
    , _eviqAddress                :: !Text
    , _eviqPayload                :: !VoterInfoRequest
    , _eviqOfficialOnly           :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsVoterInfoQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviqReturnAllAvailableData'
--
-- * 'eviqElectionId'
--
-- * 'eviqAddress'
--
-- * 'eviqPayload'
--
-- * 'eviqOfficialOnly'
electionsVoterInfoQuery
    :: Text -- ^ 'eviqAddress'
    -> VoterInfoRequest -- ^ 'eviqPayload'
    -> ElectionsVoterInfoQuery
electionsVoterInfoQuery pEviqAddress_ pEviqPayload_ =
    ElectionsVoterInfoQuery'
    { _eviqReturnAllAvailableData = False
    , _eviqElectionId = 0
    , _eviqAddress = pEviqAddress_
    , _eviqPayload = pEviqPayload_
    , _eviqOfficialOnly = False
    }

-- | If set to true, the query will return the success codeand include any
-- partial information when it is unable to determine a matching address or
-- unable to determine the election for electionId=0 queries.
eviqReturnAllAvailableData :: Lens' ElectionsVoterInfoQuery Bool
eviqReturnAllAvailableData
  = lens _eviqReturnAllAvailableData
      (\ s a -> s{_eviqReturnAllAvailableData = a})

-- | The unique ID of the election to look up. A list of election IDs can be
-- obtained at
-- https:\/\/www.googleapis.com\/civicinfo\/{version}\/electionsIf no
-- election ID is specified in the query and there is more than one
-- election with data for the given voter, the additional elections are
-- provided in the otherElections response field.
eviqElectionId :: Lens' ElectionsVoterInfoQuery Int64
eviqElectionId
  = lens _eviqElectionId
      (\ s a -> s{_eviqElectionId = a})
      . _Coerce

-- | The registered address of the voter to look up.
eviqAddress :: Lens' ElectionsVoterInfoQuery Text
eviqAddress
  = lens _eviqAddress (\ s a -> s{_eviqAddress = a})

-- | Multipart request metadata.
eviqPayload :: Lens' ElectionsVoterInfoQuery VoterInfoRequest
eviqPayload
  = lens _eviqPayload (\ s a -> s{_eviqPayload = a})

-- | If set to true, only data from official state sources will be returned.
eviqOfficialOnly :: Lens' ElectionsVoterInfoQuery Bool
eviqOfficialOnly
  = lens _eviqOfficialOnly
      (\ s a -> s{_eviqOfficialOnly = a})

instance GoogleRequest ElectionsVoterInfoQuery where
        type Rs ElectionsVoterInfoQuery = VoterInfoResponse
        type Scopes ElectionsVoterInfoQuery = '[]
        requestClient ElectionsVoterInfoQuery'{..}
          = go (Just _eviqAddress)
              (Just _eviqReturnAllAvailableData)
              (Just _eviqElectionId)
              (Just _eviqOfficialOnly)
              (Just AltJSON)
              _eviqPayload
              civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy ElectionsVoterInfoQueryResource)
                      mempty
