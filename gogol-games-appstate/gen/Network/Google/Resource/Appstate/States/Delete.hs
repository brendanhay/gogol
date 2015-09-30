{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Appstate.States.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a key and the data associated with it. The key is removed and no
-- longer counts against the key quota. Note that since this method is not
-- safe in the face of concurrent modifications, it should only be used for
-- development and testing purposes. Invoking this method in shipping code
-- can result in data loss and data corruption.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @AppstateStatesDelete@.
module Appstate.States.Delete
    (
    -- * REST Resource
      StatesDeleteAPI

    -- * Creating a Request
    , statesDelete
    , StatesDelete

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdStateKey
    , sdKey
    , sdOauthToken
    , sdFields
    , sdAlt
    ) where

import           Network.Google.GamesAppState.Types
import           Network.Google.Prelude

-- | A resource alias for @AppstateStatesDelete@ which the
-- 'StatesDelete' request conforms to.
type StatesDeleteAPI =
     "states" :>
       Capture "stateKey" Int32 :> Delete '[JSON] ()

-- | Deletes a key and the data associated with it. The key is removed and no
-- longer counts against the key quota. Note that since this method is not
-- safe in the face of concurrent modifications, it should only be used for
-- development and testing purposes. Invoking this method in shipping code
-- can result in data loss and data corruption.
--
-- /See:/ 'statesDelete' smart constructor.
data StatesDelete = StatesDelete
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdStateKey    :: !Int32
    , _sdKey         :: !(Maybe Text)
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIp'
--
-- * 'sdStateKey'
--
-- * 'sdKey'
--
-- * 'sdOauthToken'
--
-- * 'sdFields'
--
-- * 'sdAlt'
statesDelete
    :: Int32 -- ^ 'stateKey'
    -> StatesDelete
statesDelete pSdStateKey_ =
    StatesDelete
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdStateKey = pSdStateKey_
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' StatesDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' StatesDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' StatesDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | The key for the data to be retrieved.
sdStateKey :: Lens' StatesDelete' Int32
sdStateKey
  = lens _sdStateKey (\ s a -> s{_sdStateKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' StatesDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' StatesDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' StatesDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' StatesDelete' Text
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest StatesDelete' where
        type Rs StatesDelete' = ()
        request = requestWithRoute defReq gamesAppStateURL
        requestWithRoute r u StatesDelete{..}
          = go _sdQuotaUser _sdPrettyPrint _sdUserIp
              _sdStateKey
              _sdKey
              _sdOauthToken
              _sdFields
              _sdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy StatesDeleteAPI) r
                      u
