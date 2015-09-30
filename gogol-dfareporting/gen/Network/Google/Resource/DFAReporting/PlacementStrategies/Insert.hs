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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesInsert@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
    (
    -- * REST Resource
      PlacementStrategiesInsertResource

    -- * Creating a Request
    , placementStrategiesInsert'
    , PlacementStrategiesInsert'

    -- * Request Lenses
    , psiQuotaUser
    , psiPrettyPrint
    , psiUserIp
    , psiProfileId
    , psiKey
    , psiOauthToken
    , psiFields
    , psiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesInsert@ which the
-- 'PlacementStrategiesInsert'' request conforms to.
type PlacementStrategiesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] PlacementStrategy

-- | Inserts a new placement strategy.
--
-- /See:/ 'placementStrategiesInsert'' smart constructor.
data PlacementStrategiesInsert' = PlacementStrategiesInsert'
    { _psiQuotaUser   :: !(Maybe Text)
    , _psiPrettyPrint :: !Bool
    , _psiUserIp      :: !(Maybe Text)
    , _psiProfileId   :: !Int64
    , _psiKey         :: !(Maybe Text)
    , _psiOauthToken  :: !(Maybe Text)
    , _psiFields      :: !(Maybe Text)
    , _psiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiQuotaUser'
--
-- * 'psiPrettyPrint'
--
-- * 'psiUserIp'
--
-- * 'psiProfileId'
--
-- * 'psiKey'
--
-- * 'psiOauthToken'
--
-- * 'psiFields'
--
-- * 'psiAlt'
placementStrategiesInsert'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategiesInsert'
placementStrategiesInsert' pPsiProfileId_ =
    PlacementStrategiesInsert'
    { _psiQuotaUser = Nothing
    , _psiPrettyPrint = True
    , _psiUserIp = Nothing
    , _psiProfileId = pPsiProfileId_
    , _psiKey = Nothing
    , _psiOauthToken = Nothing
    , _psiFields = Nothing
    , _psiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psiQuotaUser :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiQuotaUser
  = lens _psiQuotaUser (\ s a -> s{_psiQuotaUser = a})

-- | Returns response with indentations and line breaks.
psiPrettyPrint :: Lens' PlacementStrategiesInsert' Bool
psiPrettyPrint
  = lens _psiPrettyPrint
      (\ s a -> s{_psiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psiUserIp :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiUserIp
  = lens _psiUserIp (\ s a -> s{_psiUserIp = a})

-- | User profile ID associated with this request.
psiProfileId :: Lens' PlacementStrategiesInsert' Int64
psiProfileId
  = lens _psiProfileId (\ s a -> s{_psiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psiKey :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiKey = lens _psiKey (\ s a -> s{_psiKey = a})

-- | OAuth 2.0 token for the current user.
psiOauthToken :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiOauthToken
  = lens _psiOauthToken
      (\ s a -> s{_psiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psiFields :: Lens' PlacementStrategiesInsert' (Maybe Text)
psiFields
  = lens _psiFields (\ s a -> s{_psiFields = a})

-- | Data format for the response.
psiAlt :: Lens' PlacementStrategiesInsert' Alt
psiAlt = lens _psiAlt (\ s a -> s{_psiAlt = a})

instance GoogleRequest PlacementStrategiesInsert'
         where
        type Rs PlacementStrategiesInsert' =
             PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesInsert'{..}
          = go _psiQuotaUser (Just _psiPrettyPrint) _psiUserIp
              _psiProfileId
              _psiKey
              _psiOauthToken
              _psiFields
              (Just _psiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesInsertResource)
                      r
                      u
