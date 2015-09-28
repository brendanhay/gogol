{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Subaccounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.patch@.
module Network.Google.API.DFAReporting.Subaccounts.Patch
    (
    -- * REST Resource
      SubaccountsPatchAPI

    -- * Creating a Request
    , subaccountsPatch'
    , SubaccountsPatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spUserIp
    , spProfileId
    , spKey
    , spId
    , spOauthToken
    , spFields
    , spAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.subaccounts.patch which the
-- 'SubaccountsPatch'' request conforms to.
type SubaccountsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Subaccount

-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ 'subaccountsPatch'' smart constructor.
data SubaccountsPatch' = SubaccountsPatch'
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spUserIp      :: !(Maybe Text)
    , _spProfileId   :: !Int64
    , _spKey         :: !(Maybe Text)
    , _spId          :: !Int64
    , _spOauthToken  :: !(Maybe Text)
    , _spFields      :: !(Maybe Text)
    , _spAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spUserIp'
--
-- * 'spProfileId'
--
-- * 'spKey'
--
-- * 'spId'
--
-- * 'spOauthToken'
--
-- * 'spFields'
--
-- * 'spAlt'
subaccountsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubaccountsPatch'
subaccountsPatch' pSpProfileId_ pSpId_ =
    SubaccountsPatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spUserIp = Nothing
    , _spProfileId = pSpProfileId_
    , _spKey = Nothing
    , _spId = pSpId_
    , _spOauthToken = Nothing
    , _spFields = Nothing
    , _spAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' SubaccountsPatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' SubaccountsPatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIp :: Lens' SubaccountsPatch' (Maybe Text)
spUserIp = lens _spUserIp (\ s a -> s{_spUserIp = a})

-- | User profile ID associated with this request.
spProfileId :: Lens' SubaccountsPatch' Int64
spProfileId
  = lens _spProfileId (\ s a -> s{_spProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SubaccountsPatch' (Maybe Text)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | Subaccount ID.
spId :: Lens' SubaccountsPatch' Int64
spId = lens _spId (\ s a -> s{_spId = a})

-- | OAuth 2.0 token for the current user.
spOauthToken :: Lens' SubaccountsPatch' (Maybe Text)
spOauthToken
  = lens _spOauthToken (\ s a -> s{_spOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SubaccountsPatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

-- | Data format for the response.
spAlt :: Lens' SubaccountsPatch' Alt
spAlt = lens _spAlt (\ s a -> s{_spAlt = a})

instance GoogleRequest SubaccountsPatch' where
        type Rs SubaccountsPatch' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsPatch'{..}
          = go _spQuotaUser (Just _spPrettyPrint) _spUserIp
              _spProfileId
              _spKey
              (Just _spId)
              _spOauthToken
              _spFields
              (Just _spAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsPatchAPI)
                      r
                      u
