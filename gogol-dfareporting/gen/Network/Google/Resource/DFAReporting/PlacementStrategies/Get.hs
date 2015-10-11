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
    , psgUserIP
    , psgProFileId
    , psgKey
    , psgId
    , psgOAuthToken
    , psgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesGet@ method which the
-- 'PlacementStrategiesGet'' request conforms to.
type PlacementStrategiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PlacementStrategy

-- | Gets one placement strategy by ID.
--
-- /See:/ 'placementStrategiesGet'' smart constructor.
data PlacementStrategiesGet' = PlacementStrategiesGet'
    { _psgQuotaUser   :: !(Maybe Text)
    , _psgPrettyPrint :: !Bool
    , _psgUserIP      :: !(Maybe Text)
    , _psgProFileId   :: !Int64
    , _psgKey         :: !(Maybe AuthKey)
    , _psgId          :: !Int64
    , _psgOAuthToken  :: !(Maybe OAuthToken)
    , _psgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgUserIP'
--
-- * 'psgProFileId'
--
-- * 'psgKey'
--
-- * 'psgId'
--
-- * 'psgOAuthToken'
--
-- * 'psgFields'
placementStrategiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesGet'
placementStrategiesGet' pPsgProFileId_ pPsgId_ =
    PlacementStrategiesGet'
    { _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgUserIP = Nothing
    , _psgProFileId = pPsgProFileId_
    , _psgKey = Nothing
    , _psgId = pPsgId_
    , _psgOAuthToken = Nothing
    , _psgFields = Nothing
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
psgUserIP :: Lens' PlacementStrategiesGet' (Maybe Text)
psgUserIP
  = lens _psgUserIP (\ s a -> s{_psgUserIP = a})

-- | User profile ID associated with this request.
psgProFileId :: Lens' PlacementStrategiesGet' Int64
psgProFileId
  = lens _psgProFileId (\ s a -> s{_psgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' PlacementStrategiesGet' (Maybe AuthKey)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | Placement strategy ID.
psgId :: Lens' PlacementStrategiesGet' Int64
psgId = lens _psgId (\ s a -> s{_psgId = a})

-- | OAuth 2.0 token for the current user.
psgOAuthToken :: Lens' PlacementStrategiesGet' (Maybe OAuthToken)
psgOAuthToken
  = lens _psgOAuthToken
      (\ s a -> s{_psgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' PlacementStrategiesGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

instance GoogleAuth PlacementStrategiesGet' where
        _AuthKey = psgKey . _Just
        _AuthToken = psgOAuthToken . _Just

instance GoogleRequest PlacementStrategiesGet' where
        type Rs PlacementStrategiesGet' = PlacementStrategy
        request = requestWith dFAReportingRequest
        requestWith rq PlacementStrategiesGet'{..}
          = go _psgProFileId _psgId _psgQuotaUser
              (Just _psgPrettyPrint)
              _psgUserIP
              _psgFields
              _psgKey
              _psgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PlacementStrategiesGetResource)
                      rq
