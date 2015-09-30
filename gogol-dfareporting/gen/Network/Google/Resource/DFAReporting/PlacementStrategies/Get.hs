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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement strategy by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesGet@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Get
    (
    -- * REST Resource
      PlacementStrategiesGetResource

    -- * Creating a Request
    , placementStrategiesGet'
    , PlacementStrategiesGet'

    -- * Request Lenses
    , psgQuotaUser
    , psgPrettyPrint
    , psgUserIp
    , psgProfileId
    , psgKey
    , psgId
    , psgOauthToken
    , psgFields
    , psgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesGet@ which the
-- 'PlacementStrategiesGet'' request conforms to.
type PlacementStrategiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] PlacementStrategy

-- | Gets one placement strategy by ID.
--
-- /See:/ 'placementStrategiesGet'' smart constructor.
data PlacementStrategiesGet' = PlacementStrategiesGet'
    { _psgQuotaUser   :: !(Maybe Text)
    , _psgPrettyPrint :: !Bool
    , _psgUserIp      :: !(Maybe Text)
    , _psgProfileId   :: !Int64
    , _psgKey         :: !(Maybe Text)
    , _psgId          :: !Int64
    , _psgOauthToken  :: !(Maybe Text)
    , _psgFields      :: !(Maybe Text)
    , _psgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgUserIp'
--
-- * 'psgProfileId'
--
-- * 'psgKey'
--
-- * 'psgId'
--
-- * 'psgOauthToken'
--
-- * 'psgFields'
--
-- * 'psgAlt'
placementStrategiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesGet'
placementStrategiesGet' pPsgProfileId_ pPsgId_ =
    PlacementStrategiesGet'
    { _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgUserIp = Nothing
    , _psgProfileId = pPsgProfileId_
    , _psgKey = Nothing
    , _psgId = pPsgId_
    , _psgOauthToken = Nothing
    , _psgFields = Nothing
    , _psgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psgQuotaUser :: Lens' PlacementStrategiesGet' (Maybe Text)
psgQuotaUser
  = lens _psgQuotaUser (\ s a -> s{_psgQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgPrettyPrint :: Lens' PlacementStrategiesGet' Bool
psgPrettyPrint
  = lens _psgPrettyPrint
      (\ s a -> s{_psgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psgUserIp :: Lens' PlacementStrategiesGet' (Maybe Text)
psgUserIp
  = lens _psgUserIp (\ s a -> s{_psgUserIp = a})

-- | User profile ID associated with this request.
psgProfileId :: Lens' PlacementStrategiesGet' Int64
psgProfileId
  = lens _psgProfileId (\ s a -> s{_psgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' PlacementStrategiesGet' (Maybe Text)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | Placement strategy ID.
psgId :: Lens' PlacementStrategiesGet' Int64
psgId = lens _psgId (\ s a -> s{_psgId = a})

-- | OAuth 2.0 token for the current user.
psgOauthToken :: Lens' PlacementStrategiesGet' (Maybe Text)
psgOauthToken
  = lens _psgOauthToken
      (\ s a -> s{_psgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' PlacementStrategiesGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

-- | Data format for the response.
psgAlt :: Lens' PlacementStrategiesGet' Alt
psgAlt = lens _psgAlt (\ s a -> s{_psgAlt = a})

instance GoogleRequest PlacementStrategiesGet' where
        type Rs PlacementStrategiesGet' = PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesGet'{..}
          = go _psgQuotaUser (Just _psgPrettyPrint) _psgUserIp
              _psgProfileId
              _psgKey
              _psgId
              _psgOauthToken
              _psgFields
              (Just _psgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesGetResource)
                      r
                      u
