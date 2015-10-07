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
-- Module      : Network.Google.Resource.Directory.Asps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the ASPs issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryAspsList@.
module Network.Google.Resource.Directory.Asps.List
    (
    -- * REST Resource
      AspsListResource

    -- * Creating a Request
    , aspsList'
    , AspsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIP
    , alKey
    , alOAuthToken
    , alUserKey
    , alFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryAspsList@ method which the
-- 'AspsList'' request conforms to.
type AspsListResource =
     "users" :>
       Capture "userKey" Text :>
         "asps" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Asps

-- | List the ASPs issued by a user.
--
-- /See:/ 'aspsList'' smart constructor.
data AspsList' = AspsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alUserIP      :: !(Maybe Text)
    , _alKey         :: !(Maybe AuthKey)
    , _alOAuthToken  :: !(Maybe OAuthToken)
    , _alUserKey     :: !Text
    , _alFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AspsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIP'
--
-- * 'alKey'
--
-- * 'alOAuthToken'
--
-- * 'alUserKey'
--
-- * 'alFields'
aspsList'
    :: Text -- ^ 'userKey'
    -> AspsList'
aspsList' pAlUserKey_ =
    AspsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alKey = Nothing
    , _alOAuthToken = Nothing
    , _alUserKey = pAlUserKey_
    , _alFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AspsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AspsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' AspsList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AspsList' (Maybe AuthKey)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' AspsList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
alUserKey :: Lens' AspsList' Text
alUserKey
  = lens _alUserKey (\ s a -> s{_alUserKey = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AspsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth AspsList' where
        _AuthKey = alKey . _Just
        _AuthToken = alOAuthToken . _Just

instance GoogleRequest AspsList' where
        type Rs AspsList' = Asps
        request = requestWith directoryRequest
        requestWith rq AspsList'{..}
          = go _alUserKey _alQuotaUser (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AspsListResource) rq
