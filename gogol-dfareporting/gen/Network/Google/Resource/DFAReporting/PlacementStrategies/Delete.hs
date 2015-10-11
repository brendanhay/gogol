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
    , psdUserIP
    , psdProFileId
    , psdKey
    , psdId
    , psdOAuthToken
    , psdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesDelete@ method which the
-- 'PlacementStrategiesDelete'' request conforms to.
type PlacementStrategiesDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing placement strategy.
--
-- /See:/ 'placementStrategiesDelete'' smart constructor.
data PlacementStrategiesDelete' = PlacementStrategiesDelete'
    { _psdQuotaUser   :: !(Maybe Text)
    , _psdPrettyPrint :: !Bool
    , _psdUserIP      :: !(Maybe Text)
    , _psdProFileId   :: !Int64
    , _psdKey         :: !(Maybe AuthKey)
    , _psdId          :: !Int64
    , _psdOAuthToken  :: !(Maybe OAuthToken)
    , _psdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdUserIP'
--
-- * 'psdProFileId'
--
-- * 'psdKey'
--
-- * 'psdId'
--
-- * 'psdOAuthToken'
--
-- * 'psdFields'
placementStrategiesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesDelete'
placementStrategiesDelete' pPsdProFileId_ pPsdId_ =
    PlacementStrategiesDelete'
    { _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdUserIP = Nothing
    , _psdProFileId = pPsdProFileId_
    , _psdKey = Nothing
    , _psdId = pPsdId_
    , _psdOAuthToken = Nothing
    , _psdFields = Nothing
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
psdUserIP :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdUserIP
  = lens _psdUserIP (\ s a -> s{_psdUserIP = a})

-- | User profile ID associated with this request.
psdProFileId :: Lens' PlacementStrategiesDelete' Int64
psdProFileId
  = lens _psdProFileId (\ s a -> s{_psdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' PlacementStrategiesDelete' (Maybe AuthKey)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | Placement strategy ID.
psdId :: Lens' PlacementStrategiesDelete' Int64
psdId = lens _psdId (\ s a -> s{_psdId = a})

-- | OAuth 2.0 token for the current user.
psdOAuthToken :: Lens' PlacementStrategiesDelete' (Maybe OAuthToken)
psdOAuthToken
  = lens _psdOAuthToken
      (\ s a -> s{_psdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' PlacementStrategiesDelete' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

instance GoogleAuth PlacementStrategiesDelete' where
        _AuthKey = psdKey . _Just
        _AuthToken = psdOAuthToken . _Just

instance GoogleRequest PlacementStrategiesDelete'
         where
        type Rs PlacementStrategiesDelete' = ()
        request = requestWith dFAReportingRequest
        requestWith rq PlacementStrategiesDelete'{..}
          = go _psdProFileId _psdId _psdQuotaUser
              (Just _psdPrettyPrint)
              _psdUserIP
              _psdFields
              _psdKey
              _psdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PlacementStrategiesDeleteResource)
                      rq
