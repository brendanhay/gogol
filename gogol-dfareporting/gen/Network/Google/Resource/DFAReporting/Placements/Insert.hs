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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsInsert@.
module Network.Google.Resource.DFAReporting.Placements.Insert
    (
    -- * REST Resource
      PlacementsInsertResource

    -- * Creating a Request
    , placementsInsert'
    , PlacementsInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piUserIp
    , piProfileId
    , piKey
    , piOauthToken
    , piFields
    , piAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsInsert@ which the
-- 'PlacementsInsert'' request conforms to.
type PlacementsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Placement

-- | Inserts a new placement.
--
-- /See:/ 'placementsInsert'' smart constructor.
data PlacementsInsert' = PlacementsInsert'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piUserIp      :: !(Maybe Text)
    , _piProfileId   :: !Int64
    , _piKey         :: !(Maybe Text)
    , _piOauthToken  :: !(Maybe Text)
    , _piFields      :: !(Maybe Text)
    , _piAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIp'
--
-- * 'piProfileId'
--
-- * 'piKey'
--
-- * 'piOauthToken'
--
-- * 'piFields'
--
-- * 'piAlt'
placementsInsert'
    :: Int64 -- ^ 'profileId'
    -> PlacementsInsert'
placementsInsert' pPiProfileId_ =
    PlacementsInsert'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIp = Nothing
    , _piProfileId = pPiProfileId_
    , _piKey = Nothing
    , _piOauthToken = Nothing
    , _piFields = Nothing
    , _piAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PlacementsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PlacementsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIp :: Lens' PlacementsInsert' (Maybe Text)
piUserIp = lens _piUserIp (\ s a -> s{_piUserIp = a})

-- | User profile ID associated with this request.
piProfileId :: Lens' PlacementsInsert' Int64
piProfileId
  = lens _piProfileId (\ s a -> s{_piProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PlacementsInsert' (Maybe Text)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOauthToken :: Lens' PlacementsInsert' (Maybe Text)
piOauthToken
  = lens _piOauthToken (\ s a -> s{_piOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PlacementsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

-- | Data format for the response.
piAlt :: Lens' PlacementsInsert' Alt
piAlt = lens _piAlt (\ s a -> s{_piAlt = a})

instance GoogleRequest PlacementsInsert' where
        type Rs PlacementsInsert' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsInsert'{..}
          = go _piQuotaUser (Just _piPrettyPrint) _piUserIp
              _piProfileId
              _piKey
              _piOauthToken
              _piFields
              (Just _piAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsInsertResource)
                      r
                      u
