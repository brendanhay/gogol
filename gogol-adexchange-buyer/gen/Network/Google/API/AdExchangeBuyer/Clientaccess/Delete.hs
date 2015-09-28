{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Clientaccess.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.delete@.
module Network.Google.API.AdExchangeBuyer.Clientaccess.Delete
    (
    -- * REST Resource
      ClientaccessDeleteAPI

    -- * Creating a Request
    , clientaccessDelete'
    , ClientaccessDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdSponsorAccountId
    , cdKey
    , cdClientAccountId
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.clientaccess.delete which the
-- 'ClientaccessDelete'' request conforms to.
type ClientaccessDeleteAPI =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "sponsorAccountId" Int32 :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

--
-- /See:/ 'clientaccessDelete'' smart constructor.
data ClientaccessDelete' = ClientaccessDelete'
    { _cdQuotaUser        :: !(Maybe Text)
    , _cdPrettyPrint      :: !Bool
    , _cdUserIp           :: !(Maybe Text)
    , _cdSponsorAccountId :: !Int32
    , _cdKey              :: !(Maybe Text)
    , _cdClientAccountId  :: !Int64
    , _cdOauthToken       :: !(Maybe Text)
    , _cdFields           :: !(Maybe Text)
    , _cdAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdSponsorAccountId'
--
-- * 'cdKey'
--
-- * 'cdClientAccountId'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
clientaccessDelete'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessDelete'
clientaccessDelete' pCdSponsorAccountId_ pCdClientAccountId_ =
    ClientaccessDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdSponsorAccountId = pCdSponsorAccountId_
    , _cdKey = Nothing
    , _cdClientAccountId = pCdClientAccountId_
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' ClientaccessDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' ClientaccessDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' ClientaccessDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

cdSponsorAccountId :: Lens' ClientaccessDelete' Int32
cdSponsorAccountId
  = lens _cdSponsorAccountId
      (\ s a -> s{_cdSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' ClientaccessDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

cdClientAccountId :: Lens' ClientaccessDelete' Int64
cdClientAccountId
  = lens _cdClientAccountId
      (\ s a -> s{_cdClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' ClientaccessDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' ClientaccessDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' ClientaccessDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest ClientaccessDelete' where
        type Rs ClientaccessDelete' = ()
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessDelete'{..}
          = go _cdQuotaUser (Just _cdPrettyPrint) _cdUserIp
              (Just _cdSponsorAccountId)
              _cdKey
              _cdClientAccountId
              _cdOauthToken
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessDeleteAPI)
                      r
                      u
