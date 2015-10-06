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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsUpdate@.
module Network.Google.Resource.DFAReporting.Ads.Update
    (
    -- * REST Resource
      AdsUpdateResource

    -- * Creating a Request
    , adsUpdate'
    , AdsUpdate'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIP
    , aProFileId
    , aPayload
    , aKey
    , aOAuthToken
    , aFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsUpdate@ which the
-- 'AdsUpdate'' request conforms to.
type AdsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Ad :> Put '[JSON] Ad

-- | Updates an existing ad.
--
-- /See:/ 'adsUpdate'' smart constructor.
data AdsUpdate' = AdsUpdate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIP      :: !(Maybe Text)
    , _aProFileId   :: !Int64
    , _aPayload     :: !Ad
    , _aKey         :: !(Maybe AuthKey)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aProFileId'
--
-- * 'aPayload'
--
-- * 'aKey'
--
-- * 'aOAuthToken'
--
-- * 'aFields'
adsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Ad -- ^ 'payload'
    -> AdsUpdate'
adsUpdate' pAProFileId_ pAPayload_ =
    AdsUpdate'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aProFileId = pAProFileId_
    , _aPayload = pAPayload_
    , _aKey = Nothing
    , _aOAuthToken = Nothing
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AdsUpdate' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AdsUpdate' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AdsUpdate' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | User profile ID associated with this request.
aProFileId :: Lens' AdsUpdate' Int64
aProFileId
  = lens _aProFileId (\ s a -> s{_aProFileId = a})

-- | Multipart request metadata.
aPayload :: Lens' AdsUpdate' Ad
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AdsUpdate' (Maybe AuthKey)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AdsUpdate' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AdsUpdate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AdsUpdate' where
        _AuthKey = aKey . _Just
        _AuthToken = aOAuthToken . _Just

instance GoogleRequest AdsUpdate' where
        type Rs AdsUpdate' = Ad
        request = requestWith dFAReportingRequest
        requestWith rq AdsUpdate'{..}
          = go _aProFileId _aQuotaUser (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
              _aPayload
          where go
                  = clientBuild (Proxy :: Proxy AdsUpdateResource) rq
