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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsGet@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
    (
    -- * REST Resource
      FloodlightActivityGroupsGetResource

    -- * Creating a Request
    , floodlightActivityGroupsGet'
    , FloodlightActivityGroupsGet'

    -- * Request Lenses
    , faggQuotaUser
    , faggPrettyPrint
    , faggUserIP
    , faggProFileId
    , faggKey
    , faggId
    , faggOAuthToken
    , faggFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsGet@ which the
-- 'FloodlightActivityGroupsGet'' request conforms to.
type FloodlightActivityGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] FloodlightActivityGroup

-- | Gets one floodlight activity group by ID.
--
-- /See:/ 'floodlightActivityGroupsGet'' smart constructor.
data FloodlightActivityGroupsGet' = FloodlightActivityGroupsGet'
    { _faggQuotaUser   :: !(Maybe Text)
    , _faggPrettyPrint :: !Bool
    , _faggUserIP      :: !(Maybe Text)
    , _faggProFileId   :: !Int64
    , _faggKey         :: !(Maybe AuthKey)
    , _faggId          :: !Int64
    , _faggOAuthToken  :: !(Maybe OAuthToken)
    , _faggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faggQuotaUser'
--
-- * 'faggPrettyPrint'
--
-- * 'faggUserIP'
--
-- * 'faggProFileId'
--
-- * 'faggKey'
--
-- * 'faggId'
--
-- * 'faggOAuthToken'
--
-- * 'faggFields'
floodlightActivityGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivityGroupsGet'
floodlightActivityGroupsGet' pFaggProFileId_ pFaggId_ =
    FloodlightActivityGroupsGet'
    { _faggQuotaUser = Nothing
    , _faggPrettyPrint = True
    , _faggUserIP = Nothing
    , _faggProFileId = pFaggProFileId_
    , _faggKey = Nothing
    , _faggId = pFaggId_
    , _faggOAuthToken = Nothing
    , _faggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faggQuotaUser :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggQuotaUser
  = lens _faggQuotaUser
      (\ s a -> s{_faggQuotaUser = a})

-- | Returns response with indentations and line breaks.
faggPrettyPrint :: Lens' FloodlightActivityGroupsGet' Bool
faggPrettyPrint
  = lens _faggPrettyPrint
      (\ s a -> s{_faggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faggUserIP :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggUserIP
  = lens _faggUserIP (\ s a -> s{_faggUserIP = a})

-- | User profile ID associated with this request.
faggProFileId :: Lens' FloodlightActivityGroupsGet' Int64
faggProFileId
  = lens _faggProFileId
      (\ s a -> s{_faggProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faggKey :: Lens' FloodlightActivityGroupsGet' (Maybe AuthKey)
faggKey = lens _faggKey (\ s a -> s{_faggKey = a})

-- | Floodlight activity Group ID.
faggId :: Lens' FloodlightActivityGroupsGet' Int64
faggId = lens _faggId (\ s a -> s{_faggId = a})

-- | OAuth 2.0 token for the current user.
faggOAuthToken :: Lens' FloodlightActivityGroupsGet' (Maybe OAuthToken)
faggOAuthToken
  = lens _faggOAuthToken
      (\ s a -> s{_faggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
faggFields :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggFields
  = lens _faggFields (\ s a -> s{_faggFields = a})

instance GoogleAuth FloodlightActivityGroupsGet'
         where
        authKey = faggKey . _Just
        authToken = faggOAuthToken . _Just

instance GoogleRequest FloodlightActivityGroupsGet'
         where
        type Rs FloodlightActivityGroupsGet' =
             FloodlightActivityGroup
        request = requestWith dFAReportingRequest
        requestWith rq FloodlightActivityGroupsGet'{..}
          = go _faggProFileId _faggId _faggQuotaUser
              (Just _faggPrettyPrint)
              _faggUserIP
              _faggFields
              _faggKey
              _faggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy FloodlightActivityGroupsGetResource)
                      rq
