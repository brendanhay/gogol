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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesPatch@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
    (
    -- * REST Resource
      PlacementStrategiesPatchResource

    -- * Creating a Request
    , placementStrategiesPatch'
    , PlacementStrategiesPatch'

    -- * Request Lenses
    , pspQuotaUser
    , pspPrettyPrint
    , pspUserIP
    , pspProFileId
    , pspPayload
    , pspKey
    , pspId
    , pspOAuthToken
    , pspFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesPatch@ which the
-- 'PlacementStrategiesPatch'' request conforms to.
type PlacementStrategiesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlacementStrategy :>
                             Patch '[JSON] PlacementStrategy

-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ 'placementStrategiesPatch'' smart constructor.
data PlacementStrategiesPatch' = PlacementStrategiesPatch'
    { _pspQuotaUser   :: !(Maybe Text)
    , _pspPrettyPrint :: !Bool
    , _pspUserIP      :: !(Maybe Text)
    , _pspProFileId   :: !Int64
    , _pspPayload     :: !PlacementStrategy
    , _pspKey         :: !(Maybe AuthKey)
    , _pspId          :: !Int64
    , _pspOAuthToken  :: !(Maybe OAuthToken)
    , _pspFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspQuotaUser'
--
-- * 'pspPrettyPrint'
--
-- * 'pspUserIP'
--
-- * 'pspProFileId'
--
-- * 'pspPayload'
--
-- * 'pspKey'
--
-- * 'pspId'
--
-- * 'pspOAuthToken'
--
-- * 'pspFields'
placementStrategiesPatch'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategy -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesPatch'
placementStrategiesPatch' pPspProFileId_ pPspPayload_ pPspId_ =
    PlacementStrategiesPatch'
    { _pspQuotaUser = Nothing
    , _pspPrettyPrint = True
    , _pspUserIP = Nothing
    , _pspProFileId = pPspProFileId_
    , _pspPayload = pPspPayload_
    , _pspKey = Nothing
    , _pspId = pPspId_
    , _pspOAuthToken = Nothing
    , _pspFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pspQuotaUser :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspQuotaUser
  = lens _pspQuotaUser (\ s a -> s{_pspQuotaUser = a})

-- | Returns response with indentations and line breaks.
pspPrettyPrint :: Lens' PlacementStrategiesPatch' Bool
pspPrettyPrint
  = lens _pspPrettyPrint
      (\ s a -> s{_pspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pspUserIP :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspUserIP
  = lens _pspUserIP (\ s a -> s{_pspUserIP = a})

-- | User profile ID associated with this request.
pspProFileId :: Lens' PlacementStrategiesPatch' Int64
pspProFileId
  = lens _pspProFileId (\ s a -> s{_pspProFileId = a})

-- | Multipart request metadata.
pspPayload :: Lens' PlacementStrategiesPatch' PlacementStrategy
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pspKey :: Lens' PlacementStrategiesPatch' (Maybe AuthKey)
pspKey = lens _pspKey (\ s a -> s{_pspKey = a})

-- | Placement strategy ID.
pspId :: Lens' PlacementStrategiesPatch' Int64
pspId = lens _pspId (\ s a -> s{_pspId = a})

-- | OAuth 2.0 token for the current user.
pspOAuthToken :: Lens' PlacementStrategiesPatch' (Maybe OAuthToken)
pspOAuthToken
  = lens _pspOAuthToken
      (\ s a -> s{_pspOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pspFields :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspFields
  = lens _pspFields (\ s a -> s{_pspFields = a})

instance GoogleAuth PlacementStrategiesPatch' where
        _AuthKey = pspKey . _Just
        _AuthToken = pspOAuthToken . _Just

instance GoogleRequest PlacementStrategiesPatch'
         where
        type Rs PlacementStrategiesPatch' = PlacementStrategy
        request = requestWith dFAReportingRequest
        requestWith rq PlacementStrategiesPatch'{..}
          = go _pspProFileId (Just _pspId) _pspQuotaUser
              (Just _pspPrettyPrint)
              _pspUserIP
              _pspFields
              _pspKey
              _pspOAuthToken
              (Just AltJSON)
              _pspPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PlacementStrategiesPatchResource)
                      rq
