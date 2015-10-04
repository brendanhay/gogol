{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CivicInfo.Elections.ElectionQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List of available elections to query.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicInfoElectionsElectionQuery@.
module Network.Google.Resource.CivicInfo.Elections.ElectionQuery
    (
    -- * REST Resource
      ElectionsElectionQueryResource

    -- * Creating a Request
    , electionsElectionQuery'
    , ElectionsElectionQuery'

    -- * Request Lenses
    , eeqQuotaUser
    , eeqPrettyPrint
    , eeqUserIP
    , eeqKey
    , eeqOAuthToken
    , eeqFields
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicInfoElectionsElectionQuery@ which the
-- 'ElectionsElectionQuery'' request conforms to.
type ElectionsElectionQueryResource =
     "elections" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ElectionsQueryResponse

-- | List of available elections to query.
--
-- /See:/ 'electionsElectionQuery'' smart constructor.
data ElectionsElectionQuery' = ElectionsElectionQuery'
    { _eeqQuotaUser   :: !(Maybe Text)
    , _eeqPrettyPrint :: !Bool
    , _eeqUserIP      :: !(Maybe Text)
    , _eeqKey         :: !(Maybe Key)
    , _eeqOAuthToken  :: !(Maybe OAuthToken)
    , _eeqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsElectionQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeqQuotaUser'
--
-- * 'eeqPrettyPrint'
--
-- * 'eeqUserIP'
--
-- * 'eeqKey'
--
-- * 'eeqOAuthToken'
--
-- * 'eeqFields'
electionsElectionQuery'
    :: ElectionsElectionQuery'
electionsElectionQuery' =
    ElectionsElectionQuery'
    { _eeqQuotaUser = Nothing
    , _eeqPrettyPrint = True
    , _eeqUserIP = Nothing
    , _eeqKey = Nothing
    , _eeqOAuthToken = Nothing
    , _eeqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeqQuotaUser :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqQuotaUser
  = lens _eeqQuotaUser (\ s a -> s{_eeqQuotaUser = a})

-- | Returns response with indentations and line breaks.
eeqPrettyPrint :: Lens' ElectionsElectionQuery' Bool
eeqPrettyPrint
  = lens _eeqPrettyPrint
      (\ s a -> s{_eeqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeqUserIP :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqUserIP
  = lens _eeqUserIP (\ s a -> s{_eeqUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeqKey :: Lens' ElectionsElectionQuery' (Maybe Key)
eeqKey = lens _eeqKey (\ s a -> s{_eeqKey = a})

-- | OAuth 2.0 token for the current user.
eeqOAuthToken :: Lens' ElectionsElectionQuery' (Maybe OAuthToken)
eeqOAuthToken
  = lens _eeqOAuthToken
      (\ s a -> s{_eeqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eeqFields :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqFields
  = lens _eeqFields (\ s a -> s{_eeqFields = a})

instance GoogleAuth ElectionsElectionQuery' where
        authKey = eeqKey . _Just
        authToken = eeqOAuthToken . _Just

instance GoogleRequest ElectionsElectionQuery' where
        type Rs ElectionsElectionQuery' =
             ElectionsQueryResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u ElectionsElectionQuery'{..}
          = go _eeqQuotaUser (Just _eeqPrettyPrint) _eeqUserIP
              _eeqFields
              _eeqKey
              _eeqOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ElectionsElectionQueryResource)
                      r
                      u
