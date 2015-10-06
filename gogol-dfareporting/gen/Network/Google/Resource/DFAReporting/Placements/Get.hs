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
    , pgUserIP
    , pgProFileId
    , pgKey
    , pgId
    , pgOAuthToken
    , pgFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet'' smart constructor.
data PlacementsGet' = PlacementsGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIP      :: !(Maybe Text)
    , _pgProFileId   :: !Int64
    , _pgKey         :: !(Maybe AuthKey)
    , _pgId          :: !Int64
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIP'
--
-- * 'pgProFileId'
--
-- * 'pgKey'
--
-- * 'pgId'
--
-- * 'pgOAuthToken'
--
-- * 'pgFields'
placementsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsGet'
placementsGet' pPgProFileId_ pPgId_ =
    PlacementsGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgProFileId = pPgProFileId_
    , _pgKey = Nothing
    , _pgId = pPgId_
    , _pgOAuthToken = Nothing
    , _pgFields = Nothing
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
pgUserIP :: Lens' PlacementsGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | User profile ID associated with this request.
pgProFileId :: Lens' PlacementsGet' Int64
pgProFileId
  = lens _pgProFileId (\ s a -> s{_pgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PlacementsGet' (Maybe AuthKey)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | Placement ID.
pgId :: Lens' PlacementsGet' Int64
pgId = lens _pgId (\ s a -> s{_pgId = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' PlacementsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PlacementsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth PlacementsGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest PlacementsGet' where
        type Rs PlacementsGet' = Placement
        request = requestWith dFAReportingRequest
        requestWith rq PlacementsGet'{..}
          = go _pgProFileId _pgId _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PlacementsGetResource)
                      rq
