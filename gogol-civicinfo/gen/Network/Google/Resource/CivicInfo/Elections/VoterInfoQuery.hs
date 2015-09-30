{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicinfoElectionsVoterInfoQuery@.
module CivicInfo.Elections.VoterInfoQuery
    (
    -- * REST Resource
      ElectionsVoterInfoQueryAPI

    -- * Creating a Request
    , electionsVoterInfoQuery
    , ElectionsVoterInfoQuery

    -- * Request Lenses
    , eviqQuotaUser
    , eviqPrettyPrint
    , eviqUserIp
    , eviqElectionId
    , eviqAddress
    , eviqKey
    , eviqOfficialOnly
    , eviqOauthToken
    , eviqFields
    , eviqAlt
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicinfoElectionsVoterInfoQuery@ which the
-- 'ElectionsVoterInfoQuery' request conforms to.
type ElectionsVoterInfoQueryAPI =
     "voterinfo" :>
       QueryParam "electionId" Int64 :>
         QueryParam "address" Text :>
           QueryParam "officialOnly" Bool :>
             Get '[JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ 'electionsVoterInfoQuery' smart constructor.
data ElectionsVoterInfoQuery = ElectionsVoterInfoQuery
    { _eviqQuotaUser    :: !(Maybe Text)
    , _eviqPrettyPrint  :: !Bool
    , _eviqUserIp       :: !(Maybe Text)
    , _eviqElectionId   :: !Int64
    , _eviqAddress      :: !Text
    , _eviqKey          :: !(Maybe Text)
    , _eviqOfficialOnly :: !Bool
    , _eviqOauthToken   :: !(Maybe Text)
    , _eviqFields       :: !(Maybe Text)
    , _eviqAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsVoterInfoQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviqQuotaUser'
--
-- * 'eviqPrettyPrint'
--
-- * 'eviqUserIp'
--
-- * 'eviqElectionId'
--
-- * 'eviqAddress'
--
-- * 'eviqKey'
--
-- * 'eviqOfficialOnly'
--
-- * 'eviqOauthToken'
--
-- * 'eviqFields'
--
-- * 'eviqAlt'
electionsVoterInfoQuery
    :: Text -- ^ 'address'
    -> ElectionsVoterInfoQuery
electionsVoterInfoQuery pEviqAddress_ =
    ElectionsVoterInfoQuery
    { _eviqQuotaUser = Nothing
    , _eviqPrettyPrint = True
    , _eviqUserIp = Nothing
    , _eviqElectionId = 0
    , _eviqAddress = pEviqAddress_
    , _eviqKey = Nothing
    , _eviqOfficialOnly = False
    , _eviqOauthToken = Nothing
    , _eviqFields = Nothing
    , _eviqAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eviqQuotaUser :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqQuotaUser
  = lens _eviqQuotaUser
      (\ s a -> s{_eviqQuotaUser = a})

-- | Returns response with indentations and line breaks.
eviqPrettyPrint :: Lens' ElectionsVoterInfoQuery' Bool
eviqPrettyPrint
  = lens _eviqPrettyPrint
      (\ s a -> s{_eviqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eviqUserIp :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqUserIp
  = lens _eviqUserIp (\ s a -> s{_eviqUserIp = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eviqKey :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqKey = lens _eviqKey (\ s a -> s{_eviqKey = a})

-- | If set to true, only data from official state sources will be returned.
eviqOfficialOnly :: Lens' ElectionsVoterInfoQuery' Bool
eviqOfficialOnly
  = lens _eviqOfficialOnly
      (\ s a -> s{_eviqOfficialOnly = a})

-- | OAuth 2.0 token for the current user.
eviqOauthToken :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqOauthToken
  = lens _eviqOauthToken
      (\ s a -> s{_eviqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eviqFields :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqFields
  = lens _eviqFields (\ s a -> s{_eviqFields = a})

-- | Data format for the response.
eviqAlt :: Lens' ElectionsVoterInfoQuery' Text
eviqAlt = lens _eviqAlt (\ s a -> s{_eviqAlt = a})

instance GoogleRequest ElectionsVoterInfoQuery' where
        type Rs ElectionsVoterInfoQuery' = VoterInfoResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u ElectionsVoterInfoQuery{..}
          = go _eviqQuotaUser _eviqPrettyPrint _eviqUserIp
              (Just _eviqElectionId)
              (Just _eviqAddress)
              _eviqKey
              (Just _eviqOfficialOnly)
              _eviqOauthToken
              _eviqFields
              _eviqAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ElectionsVoterInfoQueryAPI)
                      r
                      u
