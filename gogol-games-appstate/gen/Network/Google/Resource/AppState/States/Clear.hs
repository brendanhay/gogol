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
-- Module      : Network.Google.Resource.AppState.States.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @AppStateStatesClear@.
module Network.Google.Resource.AppState.States.Clear
    (
    -- * REST Resource
      StatesClearResource

    -- * Creating a Request
    , statesClear'
    , StatesClear'

    -- * Request Lenses
    , scQuotaUser
    , scPrettyPrint
    , scUserIP
    , scStateKey
    , scCurrentDataVersion
    , scKey
    , scOAuthToken
    , scFields
    ) where

import           Network.Google.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for @AppStateStatesClear@ which the
-- 'StatesClear'' request conforms to.
type StatesClearResource =
     "states" :>
       Capture "stateKey" Int32 :>
         "clear" :>
           QueryParam "currentDataVersion" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] WriteResult

-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ 'statesClear'' smart constructor.
data StatesClear' = StatesClear'
    { _scQuotaUser          :: !(Maybe Text)
    , _scPrettyPrint        :: !Bool
    , _scUserIP             :: !(Maybe Text)
    , _scStateKey           :: !Int32
    , _scCurrentDataVersion :: !(Maybe Text)
    , _scKey                :: !(Maybe Key)
    , _scOAuthToken         :: !(Maybe OAuthToken)
    , _scFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scQuotaUser'
--
-- * 'scPrettyPrint'
--
-- * 'scUserIP'
--
-- * 'scStateKey'
--
-- * 'scCurrentDataVersion'
--
-- * 'scKey'
--
-- * 'scOAuthToken'
--
-- * 'scFields'
statesClear'
    :: Int32 -- ^ 'stateKey'
    -> StatesClear'
statesClear' pScStateKey_ =
    StatesClear'
    { _scQuotaUser = Nothing
    , _scPrettyPrint = True
    , _scUserIP = Nothing
    , _scStateKey = pScStateKey_
    , _scCurrentDataVersion = Nothing
    , _scKey = Nothing
    , _scOAuthToken = Nothing
    , _scFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scQuotaUser :: Lens' StatesClear' (Maybe Text)
scQuotaUser
  = lens _scQuotaUser (\ s a -> s{_scQuotaUser = a})

-- | Returns response with indentations and line breaks.
scPrettyPrint :: Lens' StatesClear' Bool
scPrettyPrint
  = lens _scPrettyPrint
      (\ s a -> s{_scPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scUserIP :: Lens' StatesClear' (Maybe Text)
scUserIP = lens _scUserIP (\ s a -> s{_scUserIP = a})

-- | The key for the data to be retrieved.
scStateKey :: Lens' StatesClear' Int32
scStateKey
  = lens _scStateKey (\ s a -> s{_scStateKey = a})

-- | The version of the data to be cleared. Version strings are returned by
-- the server.
scCurrentDataVersion :: Lens' StatesClear' (Maybe Text)
scCurrentDataVersion
  = lens _scCurrentDataVersion
      (\ s a -> s{_scCurrentDataVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scKey :: Lens' StatesClear' (Maybe Key)
scKey = lens _scKey (\ s a -> s{_scKey = a})

-- | OAuth 2.0 token for the current user.
scOAuthToken :: Lens' StatesClear' (Maybe OAuthToken)
scOAuthToken
  = lens _scOAuthToken (\ s a -> s{_scOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
scFields :: Lens' StatesClear' (Maybe Text)
scFields = lens _scFields (\ s a -> s{_scFields = a})

instance GoogleAuth StatesClear' where
        authKey = scKey . _Just
        authToken = scOAuthToken . _Just

instance GoogleRequest StatesClear' where
        type Rs StatesClear' = WriteResult
        request = requestWithRoute defReq appStateURL
        requestWithRoute r u StatesClear'{..}
          = go _scStateKey _scCurrentDataVersion _scQuotaUser
              (Just _scPrettyPrint)
              _scUserIP
              _scFields
              _scKey
              _scOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy StatesClearResource)
                      r
                      u
