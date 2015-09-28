{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.MobileCarriers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of mobile carriers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.mobileCarriers.list@.
module Network.Google.API.DFAReporting.MobileCarriers.List
    (
    -- * REST Resource
      MobileCarriersListAPI

    -- * Creating a Request
    , mobileCarriersList'
    , MobileCarriersList'

    -- * Request Lenses
    , mclQuotaUser
    , mclPrettyPrint
    , mclUserIp
    , mclProfileId
    , mclKey
    , mclOauthToken
    , mclFields
    , mclAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.mobileCarriers.list which the
-- 'MobileCarriersList'' request conforms to.
type MobileCarriersListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "mobileCarriers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] MobileCarriersListResponse

-- | Retrieves a list of mobile carriers.
--
-- /See:/ 'mobileCarriersList'' smart constructor.
data MobileCarriersList' = MobileCarriersList'
    { _mclQuotaUser   :: !(Maybe Text)
    , _mclPrettyPrint :: !Bool
    , _mclUserIp      :: !(Maybe Text)
    , _mclProfileId   :: !Int64
    , _mclKey         :: !(Maybe Text)
    , _mclOauthToken  :: !(Maybe Text)
    , _mclFields      :: !(Maybe Text)
    , _mclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclQuotaUser'
--
-- * 'mclPrettyPrint'
--
-- * 'mclUserIp'
--
-- * 'mclProfileId'
--
-- * 'mclKey'
--
-- * 'mclOauthToken'
--
-- * 'mclFields'
--
-- * 'mclAlt'
mobileCarriersList'
    :: Int64 -- ^ 'profileId'
    -> MobileCarriersList'
mobileCarriersList' pMclProfileId_ =
    MobileCarriersList'
    { _mclQuotaUser = Nothing
    , _mclPrettyPrint = True
    , _mclUserIp = Nothing
    , _mclProfileId = pMclProfileId_
    , _mclKey = Nothing
    , _mclOauthToken = Nothing
    , _mclFields = Nothing
    , _mclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mclQuotaUser :: Lens' MobileCarriersList' (Maybe Text)
mclQuotaUser
  = lens _mclQuotaUser (\ s a -> s{_mclQuotaUser = a})

-- | Returns response with indentations and line breaks.
mclPrettyPrint :: Lens' MobileCarriersList' Bool
mclPrettyPrint
  = lens _mclPrettyPrint
      (\ s a -> s{_mclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mclUserIp :: Lens' MobileCarriersList' (Maybe Text)
mclUserIp
  = lens _mclUserIp (\ s a -> s{_mclUserIp = a})

-- | User profile ID associated with this request.
mclProfileId :: Lens' MobileCarriersList' Int64
mclProfileId
  = lens _mclProfileId (\ s a -> s{_mclProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mclKey :: Lens' MobileCarriersList' (Maybe Text)
mclKey = lens _mclKey (\ s a -> s{_mclKey = a})

-- | OAuth 2.0 token for the current user.
mclOauthToken :: Lens' MobileCarriersList' (Maybe Text)
mclOauthToken
  = lens _mclOauthToken
      (\ s a -> s{_mclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mclFields :: Lens' MobileCarriersList' (Maybe Text)
mclFields
  = lens _mclFields (\ s a -> s{_mclFields = a})

-- | Data format for the response.
mclAlt :: Lens' MobileCarriersList' Alt
mclAlt = lens _mclAlt (\ s a -> s{_mclAlt = a})

instance GoogleRequest MobileCarriersList' where
        type Rs MobileCarriersList' =
             MobileCarriersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u MobileCarriersList'{..}
          = go _mclQuotaUser (Just _mclPrettyPrint) _mclUserIp
              _mclProfileId
              _mclKey
              _mclOauthToken
              _mclFields
              (Just _mclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobileCarriersListAPI)
                      r
                      u
