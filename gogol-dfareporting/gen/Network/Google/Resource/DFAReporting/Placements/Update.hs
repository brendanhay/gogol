{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsUpdate@.
module Network.Google.Resource.DFAReporting.Placements.Update
    (
    -- * REST Resource
      PlacementsUpdateResource

    -- * Creating a Request
    , placementsUpdate'
    , PlacementsUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIP
    , puProfileId
    , puKey
    , puOAuthToken
    , puPlacement
    , puFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsUpdate@ which the
-- 'PlacementsUpdate'' request conforms to.
type PlacementsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Placement :> Put '[JSON] Placement

-- | Updates an existing placement.
--
-- /See:/ 'placementsUpdate'' smart constructor.
data PlacementsUpdate' = PlacementsUpdate'
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIP      :: !(Maybe Text)
    , _puProfileId   :: !Int64
    , _puKey         :: !(Maybe Key)
    , _puOAuthToken  :: !(Maybe OAuthToken)
    , _puPlacement   :: !Placement
    , _puFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIP'
--
-- * 'puProfileId'
--
-- * 'puKey'
--
-- * 'puOAuthToken'
--
-- * 'puPlacement'
--
-- * 'puFields'
placementsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Placement -- ^ 'Placement'
    -> PlacementsUpdate'
placementsUpdate' pPuProfileId_ pPuPlacement_ =
    PlacementsUpdate'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIP = Nothing
    , _puProfileId = pPuProfileId_
    , _puKey = Nothing
    , _puOAuthToken = Nothing
    , _puPlacement = pPuPlacement_
    , _puFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlacementsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlacementsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PlacementsUpdate' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | User profile ID associated with this request.
puProfileId :: Lens' PlacementsUpdate' Int64
puProfileId
  = lens _puProfileId (\ s a -> s{_puProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlacementsUpdate' (Maybe Key)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PlacementsUpdate' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | Multipart request metadata.
puPlacement :: Lens' PlacementsUpdate' Placement
puPlacement
  = lens _puPlacement (\ s a -> s{_puPlacement = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlacementsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PlacementsUpdate' where
        authKey = puKey . _Just
        authToken = puOAuthToken . _Just

instance GoogleRequest PlacementsUpdate' where
        type Rs PlacementsUpdate' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsUpdate'{..}
          = go _puProfileId _puQuotaUser (Just _puPrettyPrint)
              _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
              _puPlacement
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsUpdateResource)
                      r
                      u
