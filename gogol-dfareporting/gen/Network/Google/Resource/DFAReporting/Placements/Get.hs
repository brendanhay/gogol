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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsGet@.
module Network.Google.Resource.DFAReporting.Placements.Get
    (
    -- * REST Resource
      PlacementsGetResource

    -- * Creating a Request
    , placementsGet'
    , PlacementsGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgProfileId
    , pgKey
    , pgId
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsGet@ which the
-- 'PlacementsGet'' request conforms to.
type PlacementsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet'' smart constructor.
data PlacementsGet' = PlacementsGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgProfileId   :: !Int64
    , _pgKey         :: !(Maybe Text)
    , _pgId          :: !Int64
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgProfileId'
--
-- * 'pgKey'
--
-- * 'pgId'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
placementsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsGet'
placementsGet' pPgProfileId_ pPgId_ =
    PlacementsGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgProfileId = pPgProfileId_
    , _pgKey = Nothing
    , _pgId = pPgId_
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PlacementsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PlacementsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PlacementsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | User profile ID associated with this request.
pgProfileId :: Lens' PlacementsGet' Int64
pgProfileId
  = lens _pgProfileId (\ s a -> s{_pgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PlacementsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | Placement ID.
pgId :: Lens' PlacementsGet' Int64
pgId = lens _pgId (\ s a -> s{_pgId = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PlacementsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PlacementsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PlacementsGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PlacementsGet' where
        type Rs PlacementsGet' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgUserIp
              _pgProfileId
              _pgKey
              _pgId
              _pgOauthToken
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementsGetResource)
                      r
                      u
