{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , appUserIP
    , appProFileId
    , appPayload
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
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Ad :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch'' smart constructor.
data AdsPatch' = AdsPatch'
    { _appQuotaUser   :: !(Maybe Text)
    , _appPrettyPrint :: !Bool
    , _appUserIP      :: !(Maybe Text)
    , _appProFileId   :: !Int64
    , _appPayload     :: !Ad
    , _appKey         :: !(Maybe Key)
    , _appId          :: !Int64
    , _appOAuthToken  :: !(Maybe OAuthToken)
    , _appFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appQuotaUser'
--
-- * 'appPrettyPrint'
--
-- * 'appUserIP'
--
-- * 'appProFileId'
--
-- * 'appPayload'
--
-- * 'appKey'
--
-- * 'appId'
--
-- * 'appOAuthToken'
--
-- * 'appFields'
adsPatch'
    :: Int64 -- ^ 'profileId'
    -> Ad -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AdsPatch'
adsPatch' pAppProFileId_ pAppPayload_ pAppId_ =
    AdsPatch'
    { _appQuotaUser = Nothing
    , _appPrettyPrint = True
    , _appUserIP = Nothing
    , _appProFileId = pAppProFileId_
    , _appPayload = pAppPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
appUserIP :: Lens' AdsPatch' (Maybe Text)
appUserIP
  = lens _appUserIP (\ s a -> s{_appUserIP = a})

-- | User profile ID associated with this request.
appProFileId :: Lens' AdsPatch' Int64
appProFileId
  = lens _appProFileId (\ s a -> s{_appProFileId = a})

-- | Multipart request metadata.
appPayload :: Lens' AdsPatch' Ad
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

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
          = go _appProFileId (Just _appId) _appQuotaUser
              (Just _appPrettyPrint)
              _appUserIP
              _appFields
              _appKey
              _appOAuthToken
              (Just AltJSON)
              _appPayload
          where go
                  = clientWithRoute (Proxy :: Proxy AdsPatchResource) r
                      u
