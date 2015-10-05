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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsList@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
    (
    -- * REST Resource
      FloodlightConfigurationsListResource

    -- * Creating a Request
    , floodlightConfigurationsList'
    , FloodlightConfigurationsList'

    -- * Request Lenses
    , fclQuotaUser
    , fclPrettyPrint
    , fclUserIP
    , fclIds
    , fclProFileId
    , fclKey
    , fclOAuthToken
    , fclFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsList@ which the
-- 'FloodlightConfigurationsList'' request conforms to.
type FloodlightConfigurationsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParams "ids" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] FloodlightConfigurationsListResponse

-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ 'floodlightConfigurationsList'' smart constructor.
data FloodlightConfigurationsList' = FloodlightConfigurationsList'
    { _fclQuotaUser   :: !(Maybe Text)
    , _fclPrettyPrint :: !Bool
    , _fclUserIP      :: !(Maybe Text)
    , _fclIds         :: !(Maybe [Int64])
    , _fclProFileId   :: !Int64
    , _fclKey         :: !(Maybe AuthKey)
    , _fclOAuthToken  :: !(Maybe OAuthToken)
    , _fclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclQuotaUser'
--
-- * 'fclPrettyPrint'
--
-- * 'fclUserIP'
--
-- * 'fclIds'
--
-- * 'fclProFileId'
--
-- * 'fclKey'
--
-- * 'fclOAuthToken'
--
-- * 'fclFields'
floodlightConfigurationsList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfigurationsList'
floodlightConfigurationsList' pFclProFileId_ =
    FloodlightConfigurationsList'
    { _fclQuotaUser = Nothing
    , _fclPrettyPrint = True
    , _fclUserIP = Nothing
    , _fclIds = Nothing
    , _fclProFileId = pFclProFileId_
    , _fclKey = Nothing
    , _fclOAuthToken = Nothing
    , _fclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fclQuotaUser :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclQuotaUser
  = lens _fclQuotaUser (\ s a -> s{_fclQuotaUser = a})

-- | Returns response with indentations and line breaks.
fclPrettyPrint :: Lens' FloodlightConfigurationsList' Bool
fclPrettyPrint
  = lens _fclPrettyPrint
      (\ s a -> s{_fclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fclUserIP :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclUserIP
  = lens _fclUserIP (\ s a -> s{_fclUserIP = a})

-- | Set of IDs of floodlight configurations to retrieve. Required field;
-- otherwise an empty list will be returned.
fclIds :: Lens' FloodlightConfigurationsList' [Int64]
fclIds
  = lens _fclIds (\ s a -> s{_fclIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
fclProFileId :: Lens' FloodlightConfigurationsList' Int64
fclProFileId
  = lens _fclProFileId (\ s a -> s{_fclProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fclKey :: Lens' FloodlightConfigurationsList' (Maybe AuthKey)
fclKey = lens _fclKey (\ s a -> s{_fclKey = a})

-- | OAuth 2.0 token for the current user.
fclOAuthToken :: Lens' FloodlightConfigurationsList' (Maybe OAuthToken)
fclOAuthToken
  = lens _fclOAuthToken
      (\ s a -> s{_fclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fclFields :: Lens' FloodlightConfigurationsList' (Maybe Text)
fclFields
  = lens _fclFields (\ s a -> s{_fclFields = a})

instance GoogleAuth FloodlightConfigurationsList'
         where
        authKey = fclKey . _Just
        authToken = fclOAuthToken . _Just

instance GoogleRequest FloodlightConfigurationsList'
         where
        type Rs FloodlightConfigurationsList' =
             FloodlightConfigurationsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsList'{..}
          = go _fclProFileId (_fclIds ^. _Default)
              _fclQuotaUser
              (Just _fclPrettyPrint)
              _fclUserIP
              _fclFields
              _fclKey
              _fclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightConfigurationsListResource)
                      r
                      u
