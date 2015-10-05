{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersPatch@.
module Network.Google.Resource.DFAReporting.Advertisers.Patch
    (
    -- * REST Resource
      AdvertisersPatchResource

    -- * Creating a Request
    , advertisersPatch'
    , AdvertisersPatch'

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIP
    , apProFileId
    , apPayload
    , apKey
    , apId
    , apOAuthToken
    , apFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersPatch@ which the
-- 'AdvertisersPatch'' request conforms to.
type AdvertisersPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Advertiser :>
                             Patch '[JSON] Advertiser

-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ 'advertisersPatch'' smart constructor.
data AdvertisersPatch' = AdvertisersPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIP      :: !(Maybe Text)
    , _apProFileId   :: !Int64
    , _apPayload     :: !Advertiser
    , _apKey         :: !(Maybe Key)
    , _apId          :: !Int64
    , _apOAuthToken  :: !(Maybe OAuthToken)
    , _apFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apProFileId'
--
-- * 'apPayload'
--
-- * 'apKey'
--
-- * 'apId'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
advertisersPatch'
    :: Int64 -- ^ 'profileId'
    -> Advertiser -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AdvertisersPatch'
advertisersPatch' pApProFileId_ pApPayload_ pApId_ =
    AdvertisersPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apProFileId = pApProFileId_
    , _apPayload = pApPayload_
    , _apKey = Nothing
    , _apId = pApId_
    , _apOAuthToken = Nothing
    , _apFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AdvertisersPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AdvertisersPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIP :: Lens' AdvertisersPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | User profile ID associated with this request.
apProFileId :: Lens' AdvertisersPatch' Int64
apProFileId
  = lens _apProFileId (\ s a -> s{_apProFileId = a})

-- | Multipart request metadata.
apPayload :: Lens' AdvertisersPatch' Advertiser
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AdvertisersPatch' (Maybe Key)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Advertiser ID.
apId :: Lens' AdvertisersPatch' Int64
apId = lens _apId (\ s a -> s{_apId = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' AdvertisersPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AdvertisersPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth AdvertisersPatch' where
        authKey = apKey . _Just
        authToken = apOAuthToken . _Just

instance GoogleRequest AdvertisersPatch' where
        type Rs AdvertisersPatch' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersPatch'{..}
          = go _apProFileId (Just _apId) _apQuotaUser
              (Just _apPrettyPrint)
              _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
              _apPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersPatchResource)
                      r
                      u
