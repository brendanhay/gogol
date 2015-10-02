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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersInsert@.
module Network.Google.Resource.DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertResource

    -- * Creating a Request
    , advertisersInsert'
    , AdvertisersInsert'

    -- * Request Lenses
    , aiiQuotaUser
    , aiiPrettyPrint
    , aiiUserIP
    , aiiProfileId
    , aiiKey
    , aiiAdvertiser
    , aiiOAuthToken
    , aiiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersInsert@ which the
-- 'AdvertisersInsert'' request conforms to.
type AdvertisersInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Advertiser :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert'' smart constructor.
data AdvertisersInsert' = AdvertisersInsert'
    { _aiiQuotaUser   :: !(Maybe Text)
    , _aiiPrettyPrint :: !Bool
    , _aiiUserIP      :: !(Maybe Text)
    , _aiiProfileId   :: !Int64
    , _aiiKey         :: !(Maybe Key)
    , _aiiAdvertiser  :: !Advertiser
    , _aiiOAuthToken  :: !(Maybe OAuthToken)
    , _aiiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiQuotaUser'
--
-- * 'aiiPrettyPrint'
--
-- * 'aiiUserIP'
--
-- * 'aiiProfileId'
--
-- * 'aiiKey'
--
-- * 'aiiAdvertiser'
--
-- * 'aiiOAuthToken'
--
-- * 'aiiFields'
advertisersInsert'
    :: Int64 -- ^ 'profileId'
    -> Advertiser -- ^ 'Advertiser'
    -> AdvertisersInsert'
advertisersInsert' pAiiProfileId_ pAiiAdvertiser_ =
    AdvertisersInsert'
    { _aiiQuotaUser = Nothing
    , _aiiPrettyPrint = True
    , _aiiUserIP = Nothing
    , _aiiProfileId = pAiiProfileId_
    , _aiiKey = Nothing
    , _aiiAdvertiser = pAiiAdvertiser_
    , _aiiOAuthToken = Nothing
    , _aiiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiiQuotaUser :: Lens' AdvertisersInsert' (Maybe Text)
aiiQuotaUser
  = lens _aiiQuotaUser (\ s a -> s{_aiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiiPrettyPrint :: Lens' AdvertisersInsert' Bool
aiiPrettyPrint
  = lens _aiiPrettyPrint
      (\ s a -> s{_aiiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiiUserIP :: Lens' AdvertisersInsert' (Maybe Text)
aiiUserIP
  = lens _aiiUserIP (\ s a -> s{_aiiUserIP = a})

-- | User profile ID associated with this request.
aiiProfileId :: Lens' AdvertisersInsert' Int64
aiiProfileId
  = lens _aiiProfileId (\ s a -> s{_aiiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiiKey :: Lens' AdvertisersInsert' (Maybe Key)
aiiKey = lens _aiiKey (\ s a -> s{_aiiKey = a})

-- | Multipart request metadata.
aiiAdvertiser :: Lens' AdvertisersInsert' Advertiser
aiiAdvertiser
  = lens _aiiAdvertiser
      (\ s a -> s{_aiiAdvertiser = a})

-- | OAuth 2.0 token for the current user.
aiiOAuthToken :: Lens' AdvertisersInsert' (Maybe OAuthToken)
aiiOAuthToken
  = lens _aiiOAuthToken
      (\ s a -> s{_aiiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiiFields :: Lens' AdvertisersInsert' (Maybe Text)
aiiFields
  = lens _aiiFields (\ s a -> s{_aiiFields = a})

instance GoogleAuth AdvertisersInsert' where
        authKey = aiiKey . _Just
        authToken = aiiOAuthToken . _Just

instance GoogleRequest AdvertisersInsert' where
        type Rs AdvertisersInsert' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersInsert'{..}
          = go _aiiQuotaUser (Just _aiiPrettyPrint) _aiiUserIP
              _aiiProfileId
              _aiiKey
              _aiiOAuthToken
              _aiiFields
              (Just AltJSON)
              _aiiAdvertiser
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersInsertResource)
                      r
                      u
