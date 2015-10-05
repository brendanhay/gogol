{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SQL.Flags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLFlagsList@.
module Network.Google.Resource.SQL.Flags.List
    (
    -- * REST Resource
      FlagsListResource

    -- * Creating a Request
    , flagsList'
    , FlagsList'

    -- * Request Lenses
    , flQuotaUser
    , flPrettyPrint
    , flUserIP
    , flKey
    , flOAuthToken
    , flFields
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLFlagsList@ which the
-- 'FlagsList'' request conforms to.
type FlagsListResource =
     "flags" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] FlagsListResponse

-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ 'flagsList'' smart constructor.
data FlagsList' = FlagsList'
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flUserIP      :: !(Maybe Text)
    , _flKey         :: !(Maybe AuthKey)
    , _flOAuthToken  :: !(Maybe OAuthToken)
    , _flFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlagsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flUserIP'
--
-- * 'flKey'
--
-- * 'flOAuthToken'
--
-- * 'flFields'
flagsList'
    :: FlagsList'
flagsList' =
    FlagsList'
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flUserIP = Nothing
    , _flKey = Nothing
    , _flOAuthToken = Nothing
    , _flFields = Nothing
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
flUserIP :: Lens' FlagsList' (Maybe Text)
flUserIP = lens _flUserIP (\ s a -> s{_flUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FlagsList' (Maybe AuthKey)
flKey = lens _flKey (\ s a -> s{_flKey = a})

-- | OAuth 2.0 token for the current user.
flOAuthToken :: Lens' FlagsList' (Maybe OAuthToken)
flOAuthToken
  = lens _flOAuthToken (\ s a -> s{_flOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FlagsList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

instance GoogleAuth FlagsList' where
        authKey = flKey . _Just
        authToken = flOAuthToken . _Just

instance GoogleRequest FlagsList' where
        type Rs FlagsList' = FlagsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u FlagsList'{..}
          = go _flQuotaUser (Just _flPrettyPrint) _flUserIP
              _flFields
              _flKey
              _flOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy FlagsListResource)
                      r
                      u
