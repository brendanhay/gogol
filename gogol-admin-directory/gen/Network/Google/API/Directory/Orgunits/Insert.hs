{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Orgunits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.orgunits.insert@.
module Network.Google.API.Directory.Orgunits.Insert
    (
    -- * REST Resource
      OrgunitsInsertAPI

    -- * Creating a Request
    , orgunitsInsert'
    , OrgunitsInsert'

    -- * Request Lenses
    , oiQuotaUser
    , oiPrettyPrint
    , oiUserIp
    , oiCustomerId
    , oiKey
    , oiOauthToken
    , oiFields
    , oiAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.orgunits.insert which the
-- 'OrgunitsInsert'' request conforms to.
type OrgunitsInsertAPI =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] OrgUnit

-- | Add Organization Unit
--
-- /See:/ 'orgunitsInsert'' smart constructor.
data OrgunitsInsert' = OrgunitsInsert'
    { _oiQuotaUser   :: !(Maybe Text)
    , _oiPrettyPrint :: !Bool
    , _oiUserIp      :: !(Maybe Text)
    , _oiCustomerId  :: !Text
    , _oiKey         :: !(Maybe Text)
    , _oiOauthToken  :: !(Maybe Text)
    , _oiFields      :: !(Maybe Text)
    , _oiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgunitsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiQuotaUser'
--
-- * 'oiPrettyPrint'
--
-- * 'oiUserIp'
--
-- * 'oiCustomerId'
--
-- * 'oiKey'
--
-- * 'oiOauthToken'
--
-- * 'oiFields'
--
-- * 'oiAlt'
orgunitsInsert'
    :: Text -- ^ 'customerId'
    -> OrgunitsInsert'
orgunitsInsert' pOiCustomerId_ =
    OrgunitsInsert'
    { _oiQuotaUser = Nothing
    , _oiPrettyPrint = True
    , _oiUserIp = Nothing
    , _oiCustomerId = pOiCustomerId_
    , _oiKey = Nothing
    , _oiOauthToken = Nothing
    , _oiFields = Nothing
    , _oiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oiQuotaUser :: Lens' OrgunitsInsert' (Maybe Text)
oiQuotaUser
  = lens _oiQuotaUser (\ s a -> s{_oiQuotaUser = a})

-- | Returns response with indentations and line breaks.
oiPrettyPrint :: Lens' OrgunitsInsert' Bool
oiPrettyPrint
  = lens _oiPrettyPrint
      (\ s a -> s{_oiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oiUserIp :: Lens' OrgunitsInsert' (Maybe Text)
oiUserIp = lens _oiUserIp (\ s a -> s{_oiUserIp = a})

-- | Immutable id of the Google Apps account
oiCustomerId :: Lens' OrgunitsInsert' Text
oiCustomerId
  = lens _oiCustomerId (\ s a -> s{_oiCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' OrgunitsInsert' (Maybe Text)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | OAuth 2.0 token for the current user.
oiOauthToken :: Lens' OrgunitsInsert' (Maybe Text)
oiOauthToken
  = lens _oiOauthToken (\ s a -> s{_oiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oiFields :: Lens' OrgunitsInsert' (Maybe Text)
oiFields = lens _oiFields (\ s a -> s{_oiFields = a})

-- | Data format for the response.
oiAlt :: Lens' OrgunitsInsert' Alt
oiAlt = lens _oiAlt (\ s a -> s{_oiAlt = a})

instance GoogleRequest OrgunitsInsert' where
        type Rs OrgunitsInsert' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgunitsInsert'{..}
          = go _oiQuotaUser (Just _oiPrettyPrint) _oiUserIp
              _oiCustomerId
              _oiKey
              _oiOauthToken
              _oiFields
              (Just _oiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrgunitsInsertAPI)
                      r
                      u
