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
-- Module      : Network.Google.Resource.DFAReporting.Subaccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one subaccount by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubaccountsGet@.
module Network.Google.Resource.DFAReporting.Subaccounts.Get
    (
    -- * REST Resource
      SubaccountsGetResource

    -- * Creating a Request
    , subaccountsGet'
    , SubaccountsGet'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssUserIp
    , ssProfileId
    , ssKey
    , ssId
    , ssOauthToken
    , ssFields
    , ssAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsGet@ which the
-- 'SubaccountsGet'' request conforms to.
type SubaccountsGetResource =
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
    { _ssQuotaUser   :: !(Maybe Text)
    , _ssPrettyPrint :: !Bool
    , _ssUserIp      :: !(Maybe Text)
    , _ssProfileId   :: !Int64
    , _ssKey         :: !(Maybe Text)
    , _ssId          :: !Int64
    , _ssOauthToken  :: !(Maybe Text)
    , _ssFields      :: !(Maybe Text)
    , _ssAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssUserIp'
--
-- * 'ssProfileId'
--
-- * 'ssKey'
--
-- * 'ssId'
--
-- * 'ssOauthToken'
--
-- * 'ssFields'
--
-- * 'ssAlt'
subaccountsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubaccountsGet'
subaccountsGet' pSsProfileId_ pSsId_ =
    SubaccountsGet'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssUserIp = Nothing
    , _ssProfileId = pSsProfileId_
    , _ssKey = Nothing
    , _ssId = pSsId_
    , _ssOauthToken = Nothing
    , _ssFields = Nothing
    , _ssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' SubaccountsGet' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' SubaccountsGet' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIp :: Lens' SubaccountsGet' (Maybe Text)
ssUserIp = lens _ssUserIp (\ s a -> s{_ssUserIp = a})

-- | User profile ID associated with this request.
ssProfileId :: Lens' SubaccountsGet' Int64
ssProfileId
  = lens _ssProfileId (\ s a -> s{_ssProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SubaccountsGet' (Maybe Text)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | Subaccount ID.
ssId :: Lens' SubaccountsGet' Int64
ssId = lens _ssId (\ s a -> s{_ssId = a})

-- | OAuth 2.0 token for the current user.
ssOauthToken :: Lens' SubaccountsGet' (Maybe Text)
ssOauthToken
  = lens _ssOauthToken (\ s a -> s{_ssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SubaccountsGet' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

-- | Data format for the response.
ssAlt :: Lens' SubaccountsGet' Alt
ssAlt = lens _ssAlt (\ s a -> s{_ssAlt = a})

instance GoogleRequest SubaccountsGet' where
        type Rs SubaccountsGet' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsGet'{..}
          = go _ssQuotaUser (Just _ssPrettyPrint) _ssUserIp
              _ssProfileId
              _ssKey
              _ssId
              _ssOauthToken
              _ssFields
              (Just _ssAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsGetResource)
                      r
                      u
