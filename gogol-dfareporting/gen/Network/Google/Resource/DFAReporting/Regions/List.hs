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
-- Module      : Network.Google.Resource.DFAReporting.Regions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of regions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRegionsList@.
module Network.Google.Resource.DFAReporting.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList'
    , RegionsList'

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIP
    , rlProFileId
    , rlKey
    , rlOAuthToken
    , rlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRegionsList@ which the
-- 'RegionsList'' request conforms to.
type RegionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "regions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] RegionsListResponse

-- | Retrieves a list of regions.
--
-- /See:/ 'regionsList'' smart constructor.
data RegionsList' = RegionsList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIP      :: !(Maybe Text)
    , _rlProFileId   :: !Int64
    , _rlKey         :: !(Maybe AuthKey)
    , _rlOAuthToken  :: !(Maybe OAuthToken)
    , _rlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIP'
--
-- * 'rlProFileId'
--
-- * 'rlKey'
--
-- * 'rlOAuthToken'
--
-- * 'rlFields'
regionsList'
    :: Int64 -- ^ 'profileId'
    -> RegionsList'
regionsList' pRlProFileId_ =
    RegionsList'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIP = Nothing
    , _rlProFileId = pRlProFileId_
    , _rlKey = Nothing
    , _rlOAuthToken = Nothing
    , _rlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RegionsList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RegionsList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIP :: Lens' RegionsList' (Maybe Text)
rlUserIP = lens _rlUserIP (\ s a -> s{_rlUserIP = a})

-- | User profile ID associated with this request.
rlProFileId :: Lens' RegionsList' Int64
rlProFileId
  = lens _rlProFileId (\ s a -> s{_rlProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RegionsList' (Maybe AuthKey)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | OAuth 2.0 token for the current user.
rlOAuthToken :: Lens' RegionsList' (Maybe OAuthToken)
rlOAuthToken
  = lens _rlOAuthToken (\ s a -> s{_rlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RegionsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

instance GoogleAuth RegionsList' where
        authKey = rlKey . _Just
        authToken = rlOAuthToken . _Just

instance GoogleRequest RegionsList' where
        type Rs RegionsList' = RegionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RegionsList'{..}
          = go _rlProFileId _rlQuotaUser (Just _rlPrettyPrint)
              _rlUserIP
              _rlFields
              _rlKey
              _rlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionsListResource)
                      r
                      u
