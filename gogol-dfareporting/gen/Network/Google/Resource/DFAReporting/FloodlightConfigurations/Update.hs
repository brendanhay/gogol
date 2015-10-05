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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight configuration.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsUpdate@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
    (
    -- * REST Resource
      FloodlightConfigurationsUpdateResource

    -- * Creating a Request
    , floodlightConfigurationsUpdate'
    , FloodlightConfigurationsUpdate'

    -- * Request Lenses
    , fcuQuotaUser
    , fcuPrettyPrint
    , fcuUserIP
    , fcuProFileId
    , fcuPayload
    , fcuKey
    , fcuOAuthToken
    , fcuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsUpdate@ which the
-- 'FloodlightConfigurationsUpdate'' request conforms to.
type FloodlightConfigurationsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FloodlightConfiguration :>
                           Put '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration.
--
-- /See:/ 'floodlightConfigurationsUpdate'' smart constructor.
data FloodlightConfigurationsUpdate' = FloodlightConfigurationsUpdate'
    { _fcuQuotaUser   :: !(Maybe Text)
    , _fcuPrettyPrint :: !Bool
    , _fcuUserIP      :: !(Maybe Text)
    , _fcuProFileId   :: !Int64
    , _fcuPayload     :: !FloodlightConfiguration
    , _fcuKey         :: !(Maybe AuthKey)
    , _fcuOAuthToken  :: !(Maybe OAuthToken)
    , _fcuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcuQuotaUser'
--
-- * 'fcuPrettyPrint'
--
-- * 'fcuUserIP'
--
-- * 'fcuProFileId'
--
-- * 'fcuPayload'
--
-- * 'fcuKey'
--
-- * 'fcuOAuthToken'
--
-- * 'fcuFields'
floodlightConfigurationsUpdate'
    :: Int64 -- ^ 'profileId'
    -> FloodlightConfiguration -- ^ 'payload'
    -> FloodlightConfigurationsUpdate'
floodlightConfigurationsUpdate' pFcuProFileId_ pFcuPayload_ =
    FloodlightConfigurationsUpdate'
    { _fcuQuotaUser = Nothing
    , _fcuPrettyPrint = True
    , _fcuUserIP = Nothing
    , _fcuProFileId = pFcuProFileId_
    , _fcuPayload = pFcuPayload_
    , _fcuKey = Nothing
    , _fcuOAuthToken = Nothing
    , _fcuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcuQuotaUser :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuQuotaUser
  = lens _fcuQuotaUser (\ s a -> s{_fcuQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcuPrettyPrint :: Lens' FloodlightConfigurationsUpdate' Bool
fcuPrettyPrint
  = lens _fcuPrettyPrint
      (\ s a -> s{_fcuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcuUserIP :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuUserIP
  = lens _fcuUserIP (\ s a -> s{_fcuUserIP = a})

-- | User profile ID associated with this request.
fcuProFileId :: Lens' FloodlightConfigurationsUpdate' Int64
fcuProFileId
  = lens _fcuProFileId (\ s a -> s{_fcuProFileId = a})

-- | Multipart request metadata.
fcuPayload :: Lens' FloodlightConfigurationsUpdate' FloodlightConfiguration
fcuPayload
  = lens _fcuPayload (\ s a -> s{_fcuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcuKey :: Lens' FloodlightConfigurationsUpdate' (Maybe AuthKey)
fcuKey = lens _fcuKey (\ s a -> s{_fcuKey = a})

-- | OAuth 2.0 token for the current user.
fcuOAuthToken :: Lens' FloodlightConfigurationsUpdate' (Maybe OAuthToken)
fcuOAuthToken
  = lens _fcuOAuthToken
      (\ s a -> s{_fcuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcuFields :: Lens' FloodlightConfigurationsUpdate' (Maybe Text)
fcuFields
  = lens _fcuFields (\ s a -> s{_fcuFields = a})

instance GoogleAuth FloodlightConfigurationsUpdate'
         where
        authKey = fcuKey . _Just
        authToken = fcuOAuthToken . _Just

instance GoogleRequest
         FloodlightConfigurationsUpdate' where
        type Rs FloodlightConfigurationsUpdate' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsUpdate'{..}
          = go _fcuProFileId _fcuQuotaUser
              (Just _fcuPrettyPrint)
              _fcuUserIP
              _fcuFields
              _fcuKey
              _fcuOAuthToken
              (Just AltJSON)
              _fcuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightConfigurationsUpdateResource)
                      r
                      u
