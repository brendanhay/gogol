{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Subaccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one subaccount by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.get@.
module Network.Google.API.DFAReporting.Subaccounts.Get
    (
    -- * REST Resource
      SubaccountsGetAPI

    -- * Creating a Request
    , subaccountsGet'
    , SubaccountsGet'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sProfileId
    , sKey
    , sId
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.subaccounts.get which the
-- 'SubaccountsGet'' request conforms to.
type SubaccountsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Subaccount

-- | Gets one subaccount by ID.
--
-- /See:/ 'subaccountsGet'' smart constructor.
data SubaccountsGet' = SubaccountsGet'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sProfileId   :: !Int64
    , _sKey         :: !(Maybe Text)
    , _sId          :: !Int64
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sProfileId'
--
-- * 'sKey'
--
-- * 'sId'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
subaccountsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubaccountsGet'
subaccountsGet' pSProfileId_ pSId_ =
    SubaccountsGet'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sProfileId = pSProfileId_
    , _sKey = Nothing
    , _sId = pSId_
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SubaccountsGet' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SubaccountsGet' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SubaccountsGet' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | User profile ID associated with this request.
sProfileId :: Lens' SubaccountsGet' Int64
sProfileId
  = lens _sProfileId (\ s a -> s{_sProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SubaccountsGet' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | Subaccount ID.
sId :: Lens' SubaccountsGet' Int64
sId = lens _sId (\ s a -> s{_sId = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SubaccountsGet' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SubaccountsGet' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SubaccountsGet' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SubaccountsGet' where
        type Rs SubaccountsGet' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsGet'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp
              _sProfileId
              _sKey
              _sId
              _sOauthToken
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SubaccountsGetAPI)
                      r
                      u
