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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Clientaccess.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientaccessPatch@.
module Network.Google.Resource.AdExchangeBuyer.Clientaccess.Patch
    (
    -- * REST Resource
      ClientaccessPatchResource

    -- * Creating a Request
    , clientaccessPatch'
    , ClientaccessPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpSponsorAccountId
    , cpKey
    , cpClientAccountId
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessPatch@ which the
-- 'ClientaccessPatch'' request conforms to.
type ClientaccessPatchResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "sponsorAccountId" Int32 :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Patch '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessPatch'' smart constructor.
data ClientaccessPatch' = ClientaccessPatch'
    { _cpQuotaUser        :: !(Maybe Text)
    , _cpPrettyPrint      :: !Bool
    , _cpUserIp           :: !(Maybe Text)
    , _cpSponsorAccountId :: !Int32
    , _cpKey              :: !(Maybe Text)
    , _cpClientAccountId  :: !Int64
    , _cpOauthToken       :: !(Maybe Text)
    , _cpFields           :: !(Maybe Text)
    , _cpAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpSponsorAccountId'
--
-- * 'cpKey'
--
-- * 'cpClientAccountId'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
clientaccessPatch'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessPatch'
clientaccessPatch' pCpSponsorAccountId_ pCpClientAccountId_ =
    ClientaccessPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpSponsorAccountId = pCpSponsorAccountId_
    , _cpKey = Nothing
    , _cpClientAccountId = pCpClientAccountId_
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' ClientaccessPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' ClientaccessPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' ClientaccessPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

cpSponsorAccountId :: Lens' ClientaccessPatch' Int32
cpSponsorAccountId
  = lens _cpSponsorAccountId
      (\ s a -> s{_cpSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ClientaccessPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

cpClientAccountId :: Lens' ClientaccessPatch' Int64
cpClientAccountId
  = lens _cpClientAccountId
      (\ s a -> s{_cpClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' ClientaccessPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ClientaccessPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' ClientaccessPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest ClientaccessPatch' where
        type Rs ClientaccessPatch' = ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIp
              (Just _cpSponsorAccountId)
              _cpKey
              _cpClientAccountId
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessPatchResource)
                      r
                      u
