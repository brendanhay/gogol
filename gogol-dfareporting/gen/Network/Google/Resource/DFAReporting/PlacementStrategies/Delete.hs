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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesDelete@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
    (
    -- * REST Resource
      PlacementStrategiesDeleteResource

    -- * Creating a Request
    , placementStrategiesDelete'
    , PlacementStrategiesDelete'

    -- * Request Lenses
    , psdQuotaUser
    , psdPrettyPrint
    , psdUserIp
    , psdProfileId
    , psdKey
    , psdId
    , psdOauthToken
    , psdFields
    , psdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesDelete@ which the
-- 'PlacementStrategiesDelete'' request conforms to.
type PlacementStrategiesDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing placement strategy.
--
-- /See:/ 'placementStrategiesDelete'' smart constructor.
data PlacementStrategiesDelete' = PlacementStrategiesDelete'
    { _psdQuotaUser   :: !(Maybe Text)
    , _psdPrettyPrint :: !Bool
    , _psdUserIp      :: !(Maybe Text)
    , _psdProfileId   :: !Int64
    , _psdKey         :: !(Maybe Text)
    , _psdId          :: !Int64
    , _psdOauthToken  :: !(Maybe Text)
    , _psdFields      :: !(Maybe Text)
    , _psdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdUserIp'
--
-- * 'psdProfileId'
--
-- * 'psdKey'
--
-- * 'psdId'
--
-- * 'psdOauthToken'
--
-- * 'psdFields'
--
-- * 'psdAlt'
placementStrategiesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesDelete'
placementStrategiesDelete' pPsdProfileId_ pPsdId_ =
    PlacementStrategiesDelete'
    { _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdUserIp = Nothing
    , _psdProfileId = pPsdProfileId_
    , _psdKey = Nothing
    , _psdId = pPsdId_
    , _psdOauthToken = Nothing
    , _psdFields = Nothing
    , _psdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psdQuotaUser :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdQuotaUser
  = lens _psdQuotaUser (\ s a -> s{_psdQuotaUser = a})

-- | Returns response with indentations and line breaks.
psdPrettyPrint :: Lens' PlacementStrategiesDelete' Bool
psdPrettyPrint
  = lens _psdPrettyPrint
      (\ s a -> s{_psdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psdUserIp :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdUserIp
  = lens _psdUserIp (\ s a -> s{_psdUserIp = a})

-- | User profile ID associated with this request.
psdProfileId :: Lens' PlacementStrategiesDelete' Int64
psdProfileId
  = lens _psdProfileId (\ s a -> s{_psdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | Placement strategy ID.
psdId :: Lens' PlacementStrategiesDelete' Int64
psdId = lens _psdId (\ s a -> s{_psdId = a})

-- | OAuth 2.0 token for the current user.
psdOauthToken :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdOauthToken
  = lens _psdOauthToken
      (\ s a -> s{_psdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

-- | Data format for the response.
psdAlt :: Lens' PlacementStrategiesDelete' Alt
psdAlt = lens _psdAlt (\ s a -> s{_psdAlt = a})

instance GoogleRequest PlacementStrategiesDelete'
         where
        type Rs PlacementStrategiesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesDelete'{..}
          = go _psdQuotaUser (Just _psdPrettyPrint) _psdUserIp
              _psdProfileId
              _psdKey
              _psdId
              _psdOauthToken
              _psdFields
              (Just _psdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesDeleteResource)
                      r
                      u
