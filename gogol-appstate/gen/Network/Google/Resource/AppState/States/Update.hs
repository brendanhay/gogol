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
-- Module      : Network.Google.Resource.AppState.States.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @AppStateStatesUpdate@.
module Network.Google.Resource.AppState.States.Update
    (
    -- * REST Resource
      StatesUpdateResource

    -- * Creating a Request
    , statesUpdate'
    , StatesUpdate'

    -- * Request Lenses
    , suCurrentStateVersion
    , suQuotaUser
    , suPrettyPrint
    , suUserIP
    , suStateKey
    , suPayload
    , suKey
    , suOAuthToken
    , suFields
    ) where

import           Network.Google.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for @AppStateStatesUpdate@ which the
-- 'StatesUpdate'' request conforms to.
type StatesUpdateResource =
     "states" :>
       Capture "stateKey" Int32 :>
         QueryParam "currentStateVersion" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UpdateRequest :>
                           Put '[JSON] WriteResult

-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ 'statesUpdate'' smart constructor.
data StatesUpdate' = StatesUpdate'
    { _suCurrentStateVersion :: !(Maybe Text)
    , _suQuotaUser           :: !(Maybe Text)
    , _suPrettyPrint         :: !Bool
    , _suUserIP              :: !(Maybe Text)
    , _suStateKey            :: !Int32
    , _suPayload             :: !UpdateRequest
    , _suKey                 :: !(Maybe AuthKey)
    , _suOAuthToken          :: !(Maybe OAuthToken)
    , _suFields              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suCurrentStateVersion'
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIP'
--
-- * 'suStateKey'
--
-- * 'suPayload'
--
-- * 'suKey'
--
-- * 'suOAuthToken'
--
-- * 'suFields'
statesUpdate'
    :: Int32 -- ^ 'stateKey'
    -> UpdateRequest -- ^ 'payload'
    -> StatesUpdate'
statesUpdate' pSuStateKey_ pSuPayload_ =
    StatesUpdate'
    { _suCurrentStateVersion = Nothing
    , _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIP = Nothing
    , _suStateKey = pSuStateKey_
    , _suPayload = pSuPayload_
    , _suKey = Nothing
    , _suOAuthToken = Nothing
    , _suFields = Nothing
    }

-- | The version of the app state your application is attempting to update.
-- If this does not match the current version, this method will return a
-- conflict error. If there is no data stored on the server for this key,
-- the update will succeed irrespective of the value of this parameter.
suCurrentStateVersion :: Lens' StatesUpdate' (Maybe Text)
suCurrentStateVersion
  = lens _suCurrentStateVersion
      (\ s a -> s{_suCurrentStateVersion = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' StatesUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' StatesUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIP :: Lens' StatesUpdate' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | The key for the data to be retrieved.
suStateKey :: Lens' StatesUpdate' Int32
suStateKey
  = lens _suStateKey (\ s a -> s{_suStateKey = a})

-- | Multipart request metadata.
suPayload :: Lens' StatesUpdate' UpdateRequest
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' StatesUpdate' (Maybe AuthKey)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' StatesUpdate' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' StatesUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth StatesUpdate' where
        _AuthKey = suKey . _Just
        _AuthToken = suOAuthToken . _Just

instance GoogleRequest StatesUpdate' where
        type Rs StatesUpdate' = WriteResult
        request = requestWith appStateRequest
        requestWith rq StatesUpdate'{..}
          = go _suStateKey _suCurrentStateVersion _suQuotaUser
              (Just _suPrettyPrint)
              _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientBuild (Proxy :: Proxy StatesUpdateResource)
                      rq
