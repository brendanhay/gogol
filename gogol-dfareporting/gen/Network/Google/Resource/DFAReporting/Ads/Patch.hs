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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsPatch@.
module Network.Google.Resource.DFAReporting.Ads.Patch
    (
    -- * REST Resource
      AdsPatchResource

    -- * Creating a Request
    , adsPatch'
    , AdsPatch'

    -- * Request Lenses
    , appQuotaUser
    , appPrettyPrint
    , appAd
    , appUserIP
    , appProfileId
    , appKey
    , appId
    , appOAuthToken
    , appFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsPatch@ which the
-- 'AdsPatch'' request conforms to.
type AdsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Ad :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch'' smart constructor.
data AdsPatch' = AdsPatch'
    { _appQuotaUser   :: !(Maybe Text)
    , _appPrettyPrint :: !Bool
    , _appAd          :: !Ad
    , _appUserIP      :: !(Maybe Text)
    , _appProfileId   :: !Int64
    , _appKey         :: !(Maybe Key)
    , _appId          :: !Int64
    , _appOAuthToken  :: !(Maybe OAuthToken)
    , _appFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appQuotaUser'
--
-- * 'appPrettyPrint'
--
-- * 'appAd'
--
-- * 'appUserIP'
--
-- * 'appProfileId'
--
-- * 'appKey'
--
-- * 'appId'
--
-- * 'appOAuthToken'
--
-- * 'appFields'
adsPatch'
    :: Ad -- ^ 'Ad'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsPatch'
adsPatch' pAppAd_ pAppProfileId_ pAppId_ =
    AdsPatch'
    { _appQuotaUser = Nothing
    , _appPrettyPrint = True
    , _appAd = pAppAd_
    , _appUserIP = Nothing
    , _appProfileId = pAppProfileId_
    , _appKey = Nothing
    , _appId = pAppId_
    , _appOAuthToken = Nothing
    , _appFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
appQuotaUser :: Lens' AdsPatch' (Maybe Text)
appQuotaUser
  = lens _appQuotaUser (\ s a -> s{_appQuotaUser = a})

-- | Returns response with indentations and line breaks.
appPrettyPrint :: Lens' AdsPatch' Bool
appPrettyPrint
  = lens _appPrettyPrint
      (\ s a -> s{_appPrettyPrint = a})

-- | Multipart request metadata.
appAd :: Lens' AdsPatch' Ad
appAd = lens _appAd (\ s a -> s{_appAd = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
appUserIP :: Lens' AdsPatch' (Maybe Text)
appUserIP
  = lens _appUserIP (\ s a -> s{_appUserIP = a})

-- | User profile ID associated with this request.
appProfileId :: Lens' AdsPatch' Int64
appProfileId
  = lens _appProfileId (\ s a -> s{_appProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
appKey :: Lens' AdsPatch' (Maybe Key)
appKey = lens _appKey (\ s a -> s{_appKey = a})

-- | Ad ID.
appId :: Lens' AdsPatch' Int64
appId = lens _appId (\ s a -> s{_appId = a})

-- | OAuth 2.0 token for the current user.
appOAuthToken :: Lens' AdsPatch' (Maybe OAuthToken)
appOAuthToken
  = lens _appOAuthToken
      (\ s a -> s{_appOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
appFields :: Lens' AdsPatch' (Maybe Text)
appFields
  = lens _appFields (\ s a -> s{_appFields = a})

instance GoogleAuth AdsPatch' where
        authKey = appKey . _Just
        authToken = appOAuthToken . _Just

instance GoogleRequest AdsPatch' where
        type Rs AdsPatch' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsPatch'{..}
          = go _appQuotaUser (Just _appPrettyPrint) _appUserIP
              _appProfileId
              _appKey
              (Just _appId)
              _appOAuthToken
              _appFields
              (Just AltJSON)
              _appAd
          where go
                  = clientWithRoute (Proxy :: Proxy AdsPatchResource) r
                      u
