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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesUpdate@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Update
    (
    -- * REST Resource
      PlacementStrategiesUpdateResource

    -- * Creating a Request
    , placementStrategiesUpdate'
    , PlacementStrategiesUpdate'

    -- * Request Lenses
    , psuQuotaUser
    , psuPrettyPrint
    , psuUserIP
    , psuProfileId
    , psuPayload
    , psuKey
    , psuOAuthToken
    , psuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesUpdate@ which the
-- 'PlacementStrategiesUpdate'' request conforms to.
type PlacementStrategiesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlacementStrategy :>
                           Put '[JSON] PlacementStrategy

-- | Updates an existing placement strategy.
--
-- /See:/ 'placementStrategiesUpdate'' smart constructor.
data PlacementStrategiesUpdate' = PlacementStrategiesUpdate'
    { _psuQuotaUser   :: !(Maybe Text)
    , _psuPrettyPrint :: !Bool
    , _psuUserIP      :: !(Maybe Text)
    , _psuProfileId   :: !Int64
    , _psuPayload     :: !PlacementStrategy
    , _psuKey         :: !(Maybe Key)
    , _psuOAuthToken  :: !(Maybe OAuthToken)
    , _psuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuQuotaUser'
--
-- * 'psuPrettyPrint'
--
-- * 'psuUserIP'
--
-- * 'psuProfileId'
--
-- * 'psuPayload'
--
-- * 'psuKey'
--
-- * 'psuOAuthToken'
--
-- * 'psuFields'
placementStrategiesUpdate'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategy -- ^ 'payload'
    -> PlacementStrategiesUpdate'
placementStrategiesUpdate' pPsuProfileId_ pPsuPayload_ =
    PlacementStrategiesUpdate'
    { _psuQuotaUser = Nothing
    , _psuPrettyPrint = True
    , _psuUserIP = Nothing
    , _psuProfileId = pPsuProfileId_
    , _psuPayload = pPsuPayload_
    , _psuKey = Nothing
    , _psuOAuthToken = Nothing
    , _psuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psuQuotaUser :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuQuotaUser
  = lens _psuQuotaUser (\ s a -> s{_psuQuotaUser = a})

-- | Returns response with indentations and line breaks.
psuPrettyPrint :: Lens' PlacementStrategiesUpdate' Bool
psuPrettyPrint
  = lens _psuPrettyPrint
      (\ s a -> s{_psuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psuUserIP :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuUserIP
  = lens _psuUserIP (\ s a -> s{_psuUserIP = a})

-- | User profile ID associated with this request.
psuProfileId :: Lens' PlacementStrategiesUpdate' Int64
psuProfileId
  = lens _psuProfileId (\ s a -> s{_psuProfileId = a})

-- | Multipart request metadata.
psuPayload :: Lens' PlacementStrategiesUpdate' PlacementStrategy
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psuKey :: Lens' PlacementStrategiesUpdate' (Maybe Key)
psuKey = lens _psuKey (\ s a -> s{_psuKey = a})

-- | OAuth 2.0 token for the current user.
psuOAuthToken :: Lens' PlacementStrategiesUpdate' (Maybe OAuthToken)
psuOAuthToken
  = lens _psuOAuthToken
      (\ s a -> s{_psuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psuFields :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuFields
  = lens _psuFields (\ s a -> s{_psuFields = a})

instance GoogleAuth PlacementStrategiesUpdate' where
        authKey = psuKey . _Just
        authToken = psuOAuthToken . _Just

instance GoogleRequest PlacementStrategiesUpdate'
         where
        type Rs PlacementStrategiesUpdate' =
             PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesUpdate'{..}
          = go _psuProfileId _psuQuotaUser
              (Just _psuPrettyPrint)
              _psuUserIP
              _psuFields
              _psuKey
              _psuOAuthToken
              (Just AltJSON)
              _psuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesUpdateResource)
                      r
                      u
