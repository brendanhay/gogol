{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Flags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.flags.list@.
module Network.Google.API.Sql.Flags.List
    (
    -- * REST Resource
      FlagsListAPI

    -- * Creating a Request
    , flagsList'
    , FlagsList'

    -- * Request Lenses
    , flQuotaUser
    , flPrettyPrint
    , flUserIp
    , flKey
    , flOauthToken
    , flFields
    , flAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.flags.list which the
-- 'FlagsList'' request conforms to.
type FlagsListAPI =
     "flags" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Get '[JSON] FlagsListResponse

-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ 'flagsList'' smart constructor.
data FlagsList' = FlagsList'
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flUserIp      :: !(Maybe Text)
    , _flKey         :: !(Maybe Text)
    , _flOauthToken  :: !(Maybe Text)
    , _flFields      :: !(Maybe Text)
    , _flAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlagsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flUserIp'
--
-- * 'flKey'
--
-- * 'flOauthToken'
--
-- * 'flFields'
--
-- * 'flAlt'
flagsList'
    :: FlagsList'
flagsList' =
    FlagsList'
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flUserIp = Nothing
    , _flKey = Nothing
    , _flOauthToken = Nothing
    , _flFields = Nothing
    , _flAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
flQuotaUser :: Lens' FlagsList' (Maybe Text)
flQuotaUser
  = lens _flQuotaUser (\ s a -> s{_flQuotaUser = a})

-- | Returns response with indentations and line breaks.
flPrettyPrint :: Lens' FlagsList' Bool
flPrettyPrint
  = lens _flPrettyPrint
      (\ s a -> s{_flPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
flUserIp :: Lens' FlagsList' (Maybe Text)
flUserIp = lens _flUserIp (\ s a -> s{_flUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FlagsList' (Maybe Text)
flKey = lens _flKey (\ s a -> s{_flKey = a})

-- | OAuth 2.0 token for the current user.
flOauthToken :: Lens' FlagsList' (Maybe Text)
flOauthToken
  = lens _flOauthToken (\ s a -> s{_flOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FlagsList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

-- | Data format for the response.
flAlt :: Lens' FlagsList' Alt
flAlt = lens _flAlt (\ s a -> s{_flAlt = a})

instance GoogleRequest FlagsList' where
        type Rs FlagsList' = FlagsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u FlagsList'{..}
          = go _flQuotaUser (Just _flPrettyPrint) _flUserIp
              _flKey
              _flOauthToken
              _flFields
              (Just _flAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FlagsListAPI) r u
