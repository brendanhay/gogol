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
    , eviqQuotaUser
    , eviqPrettyPrint
    , eviqUserIP
    , eviqElectionId
    , eviqAddress
    , eviqKey
    , eviqOfficialOnly
    , eviqOAuthToken
    , eviqFields
    ) where

import Network.Google.CivicInfo.Types
import Network.Google.Prelude

-- | A resource alias for @CivicInfoElectionsVoterInfoQuery@ which the
-- 'ElectionsVoterInfoQuery'' request conforms to.
type ElectionsVoterInfoQueryResource =
     "voterinfo" :>
       QueryParam "address" Text :>
         QueryParam "electionId" Int64 :>
           QueryParam "officialOnly" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] VoterInfoResponse

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
--
-- /See:/ 'electionsVoterInfoQuery'' smart constructor.
data ElectionsVoterInfoQuery' = ElectionsVoterInfoQuery'
    { _eviqQuotaUser :: !(Maybe Text)
    , _eviqPrettyPrint :: !Bool
    , _eviqUserIP :: !(Maybe Text)
    , _eviqElectionId :: !Int64
    , _eviqAddress :: !Text
    , _eviqKey :: !(Maybe Key)
    , _eviqOfficialOnly :: !Bool
    , _eviqOAuthToken :: !(Maybe OAuthToken)
    , _eviqFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsVoterInfoQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviqQuotaUser'
--
-- * 'eviqPrettyPrint'
--
-- * 'eviqUserIP'
--
-- * 'eviqElectionId'
--
-- * 'eviqAddress'
--
-- * 'eviqKey'
--
-- * 'eviqOfficialOnly'
--
-- * 'eviqOAuthToken'
--
-- * 'eviqFields'
electionsVoterInfoQuery'
    :: Text -- ^ 'address'
    -> ElectionsVoterInfoQuery'
electionsVoterInfoQuery' pEviqAddress_ = 
    ElectionsVoterInfoQuery'
    { _eviqQuotaUser = Nothing
    , _eviqPrettyPrint = True
    , _eviqUserIP = Nothing
    , _eviqElectionId = 0
    , _eviqAddress = pEviqAddress_
    , _eviqKey = Nothing
    , _eviqOfficialOnly = False
    , _eviqOAuthToken = Nothing
    , _eviqFields = Nothing
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
eviqUserIP :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqUserIP
  = lens _eviqUserIP (\ s a -> s{_eviqUserIP = a})

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
eviqKey :: Lens' ElectionsVoterInfoQuery' (Maybe Key)
eviqKey = lens _eviqKey (\ s a -> s{_eviqKey = a})

-- | If set to true, only data from official state sources will be returned.
eviqOfficialOnly :: Lens' ElectionsVoterInfoQuery' Bool
eviqOfficialOnly
  = lens _eviqOfficialOnly
      (\ s a -> s{_eviqOfficialOnly = a})

-- | OAuth 2.0 token for the current user.
eviqOAuthToken :: Lens' ElectionsVoterInfoQuery' (Maybe OAuthToken)
eviqOAuthToken
  = lens _eviqOAuthToken
      (\ s a -> s{_eviqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eviqFields :: Lens' ElectionsVoterInfoQuery' (Maybe Text)
eviqFields
  = lens _eviqFields (\ s a -> s{_eviqFields = a})

instance GoogleAuth ElectionsVoterInfoQuery' where
        authKey = eviqKey . _Just
        authToken = eviqOAuthToken . _Just

instance GoogleRequest ElectionsVoterInfoQuery' where
        type Rs ElectionsVoterInfoQuery' = VoterInfoResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u ElectionsVoterInfoQuery'{..}
          = go (Just _eviqAddress) (Just _eviqElectionId)
              (Just _eviqOfficialOnly)
              _eviqQuotaUser
              (Just _eviqPrettyPrint)
              _eviqUserIP
              _eviqFields
              _eviqKey
              _eviqOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ElectionsVoterInfoQueryResource)
                      r
                      u
