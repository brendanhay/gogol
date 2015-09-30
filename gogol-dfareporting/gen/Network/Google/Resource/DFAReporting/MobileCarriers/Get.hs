{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one mobile carrier by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingMobileCarriersGet@.
module DFAReporting.MobileCarriers.Get
    (
    -- * REST Resource
      MobileCarriersGetAPI

    -- * Creating a Request
    , mobileCarriersGet
    , MobileCarriersGet

    -- * Request Lenses
    , mcgQuotaUser
    , mcgPrettyPrint
    , mcgUserIp
    , mcgProfileId
    , mcgKey
    , mcgId
    , mcgOauthToken
    , mcgFields
    , mcgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingMobileCarriersGet@ which the
-- 'MobileCarriersGet' request conforms to.
type MobileCarriersGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "mobileCarriers" :>
           Capture "id" Int64 :> Get '[JSON] MobileCarrier

-- | Gets one mobile carrier by ID.
--
-- /See:/ 'mobileCarriersGet' smart constructor.
data MobileCarriersGet = MobileCarriersGet
    { _mcgQuotaUser   :: !(Maybe Text)
    , _mcgPrettyPrint :: !Bool
    , _mcgUserIp      :: !(Maybe Text)
    , _mcgProfileId   :: !Int64
    , _mcgKey         :: !(Maybe Text)
    , _mcgId          :: !Int64
    , _mcgOauthToken  :: !(Maybe Text)
    , _mcgFields      :: !(Maybe Text)
    , _mcgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgQuotaUser'
--
-- * 'mcgPrettyPrint'
--
-- * 'mcgUserIp'
--
-- * 'mcgProfileId'
--
-- * 'mcgKey'
--
-- * 'mcgId'
--
-- * 'mcgOauthToken'
--
-- * 'mcgFields'
--
-- * 'mcgAlt'
mobileCarriersGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> MobileCarriersGet
mobileCarriersGet pMcgProfileId_ pMcgId_ =
    MobileCarriersGet
    { _mcgQuotaUser = Nothing
    , _mcgPrettyPrint = True
    , _mcgUserIp = Nothing
    , _mcgProfileId = pMcgProfileId_
    , _mcgKey = Nothing
    , _mcgId = pMcgId_
    , _mcgOauthToken = Nothing
    , _mcgFields = Nothing
    , _mcgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcgQuotaUser :: Lens' MobileCarriersGet' (Maybe Text)
mcgQuotaUser
  = lens _mcgQuotaUser (\ s a -> s{_mcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcgPrettyPrint :: Lens' MobileCarriersGet' Bool
mcgPrettyPrint
  = lens _mcgPrettyPrint
      (\ s a -> s{_mcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcgUserIp :: Lens' MobileCarriersGet' (Maybe Text)
mcgUserIp
  = lens _mcgUserIp (\ s a -> s{_mcgUserIp = a})

-- | User profile ID associated with this request.
mcgProfileId :: Lens' MobileCarriersGet' Int64
mcgProfileId
  = lens _mcgProfileId (\ s a -> s{_mcgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcgKey :: Lens' MobileCarriersGet' (Maybe Text)
mcgKey = lens _mcgKey (\ s a -> s{_mcgKey = a})

-- | Mobile carrier ID.
mcgId :: Lens' MobileCarriersGet' Int64
mcgId = lens _mcgId (\ s a -> s{_mcgId = a})

-- | OAuth 2.0 token for the current user.
mcgOauthToken :: Lens' MobileCarriersGet' (Maybe Text)
mcgOauthToken
  = lens _mcgOauthToken
      (\ s a -> s{_mcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcgFields :: Lens' MobileCarriersGet' (Maybe Text)
mcgFields
  = lens _mcgFields (\ s a -> s{_mcgFields = a})

-- | Data format for the response.
mcgAlt :: Lens' MobileCarriersGet' Text
mcgAlt = lens _mcgAlt (\ s a -> s{_mcgAlt = a})

instance GoogleRequest MobileCarriersGet' where
        type Rs MobileCarriersGet' = MobileCarrier
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u MobileCarriersGet{..}
          = go _mcgQuotaUser _mcgPrettyPrint _mcgUserIp
              _mcgProfileId
              _mcgKey
              _mcgId
              _mcgOauthToken
              _mcgFields
              _mcgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobileCarriersGetAPI)
                      r
                      u
