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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsPatch@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
    (
    -- * REST Resource
      AdvertiserGroupsPatchResource

    -- * Creating a Request
    , advertiserGroupsPatch'
    , AdvertiserGroupsPatch'

    -- * Request Lenses
    , agpQuotaUser
    , agpPrettyPrint
    , agpUserIP
    , agpProFileId
    , agpPayload
    , agpKey
    , agpId
    , agpOAuthToken
    , agpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsPatch@ which the
-- 'AdvertiserGroupsPatch'' request conforms to.
type AdvertiserGroupsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AdvertiserGroup :>
                             Patch '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ 'advertiserGroupsPatch'' smart constructor.
data AdvertiserGroupsPatch' = AdvertiserGroupsPatch'
    { _agpQuotaUser   :: !(Maybe Text)
    , _agpPrettyPrint :: !Bool
    , _agpUserIP      :: !(Maybe Text)
    , _agpProFileId   :: !Int64
    , _agpPayload     :: !AdvertiserGroup
    , _agpKey         :: !(Maybe Key)
    , _agpId          :: !Int64
    , _agpOAuthToken  :: !(Maybe OAuthToken)
    , _agpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agpQuotaUser'
--
-- * 'agpPrettyPrint'
--
-- * 'agpUserIP'
--
-- * 'agpProFileId'
--
-- * 'agpPayload'
--
-- * 'agpKey'
--
-- * 'agpId'
--
-- * 'agpOAuthToken'
--
-- * 'agpFields'
advertiserGroupsPatch'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroup -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsPatch'
advertiserGroupsPatch' pAgpProFileId_ pAgpPayload_ pAgpId_ =
    AdvertiserGroupsPatch'
    { _agpQuotaUser = Nothing
    , _agpPrettyPrint = True
    , _agpUserIP = Nothing
    , _agpProFileId = pAgpProFileId_
    , _agpPayload = pAgpPayload_
    , _agpKey = Nothing
    , _agpId = pAgpId_
    , _agpOAuthToken = Nothing
    , _agpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agpQuotaUser :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpQuotaUser
  = lens _agpQuotaUser (\ s a -> s{_agpQuotaUser = a})

-- | Returns response with indentations and line breaks.
agpPrettyPrint :: Lens' AdvertiserGroupsPatch' Bool
agpPrettyPrint
  = lens _agpPrettyPrint
      (\ s a -> s{_agpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agpUserIP :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpUserIP
  = lens _agpUserIP (\ s a -> s{_agpUserIP = a})

-- | User profile ID associated with this request.
agpProFileId :: Lens' AdvertiserGroupsPatch' Int64
agpProFileId
  = lens _agpProFileId (\ s a -> s{_agpProFileId = a})

-- | Multipart request metadata.
agpPayload :: Lens' AdvertiserGroupsPatch' AdvertiserGroup
agpPayload
  = lens _agpPayload (\ s a -> s{_agpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agpKey :: Lens' AdvertiserGroupsPatch' (Maybe Key)
agpKey = lens _agpKey (\ s a -> s{_agpKey = a})

-- | Advertiser group ID.
agpId :: Lens' AdvertiserGroupsPatch' Int64
agpId = lens _agpId (\ s a -> s{_agpId = a})

-- | OAuth 2.0 token for the current user.
agpOAuthToken :: Lens' AdvertiserGroupsPatch' (Maybe OAuthToken)
agpOAuthToken
  = lens _agpOAuthToken
      (\ s a -> s{_agpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agpFields :: Lens' AdvertiserGroupsPatch' (Maybe Text)
agpFields
  = lens _agpFields (\ s a -> s{_agpFields = a})

instance GoogleAuth AdvertiserGroupsPatch' where
        authKey = agpKey . _Just
        authToken = agpOAuthToken . _Just

instance GoogleRequest AdvertiserGroupsPatch' where
        type Rs AdvertiserGroupsPatch' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsPatch'{..}
          = go _agpProFileId (Just _agpId) _agpQuotaUser
              (Just _agpPrettyPrint)
              _agpUserIP
              _agpFields
              _agpKey
              _agpOAuthToken
              (Just AltJSON)
              _agpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsPatchResource)
                      r
                      u
