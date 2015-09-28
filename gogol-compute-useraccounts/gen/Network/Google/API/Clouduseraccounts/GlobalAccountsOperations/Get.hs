{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the specified operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.globalAccountsOperations.get@.
module Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Get
    (
    -- * REST Resource
      GlobalAccountsOperationsGetAPI

    -- * Creating a Request
    , globalAccountsOperationsGet'
    , GlobalAccountsOperationsGet'

    -- * Request Lenses
    , gaogQuotaUser
    , gaogPrettyPrint
    , gaogProject
    , gaogOperation
    , gaogUserIp
    , gaogKey
    , gaogOauthToken
    , gaogFields
    , gaogAlt
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.globalAccountsOperations.get which the
-- 'GlobalAccountsOperationsGet'' request conforms to.
type GlobalAccountsOperationsGetAPI =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           Capture "operation" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Operation

-- | Retrieves the specified operation resource.
--
-- /See:/ 'globalAccountsOperationsGet'' smart constructor.
data GlobalAccountsOperationsGet' = GlobalAccountsOperationsGet'
    { _gaogQuotaUser   :: !(Maybe Text)
    , _gaogPrettyPrint :: !Bool
    , _gaogProject     :: !Text
    , _gaogOperation   :: !Text
    , _gaogUserIp      :: !(Maybe Text)
    , _gaogKey         :: !(Maybe Text)
    , _gaogOauthToken  :: !(Maybe Text)
    , _gaogFields      :: !(Maybe Text)
    , _gaogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaogQuotaUser'
--
-- * 'gaogPrettyPrint'
--
-- * 'gaogProject'
--
-- * 'gaogOperation'
--
-- * 'gaogUserIp'
--
-- * 'gaogKey'
--
-- * 'gaogOauthToken'
--
-- * 'gaogFields'
--
-- * 'gaogAlt'
globalAccountsOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalAccountsOperationsGet'
globalAccountsOperationsGet' pGaogProject_ pGaogOperation_ =
    GlobalAccountsOperationsGet'
    { _gaogQuotaUser = Nothing
    , _gaogPrettyPrint = True
    , _gaogProject = pGaogProject_
    , _gaogOperation = pGaogOperation_
    , _gaogUserIp = Nothing
    , _gaogKey = Nothing
    , _gaogOauthToken = Nothing
    , _gaogFields = Nothing
    , _gaogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaogQuotaUser :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogQuotaUser
  = lens _gaogQuotaUser
      (\ s a -> s{_gaogQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaogPrettyPrint :: Lens' GlobalAccountsOperationsGet' Bool
gaogPrettyPrint
  = lens _gaogPrettyPrint
      (\ s a -> s{_gaogPrettyPrint = a})

-- | Project ID for this request.
gaogProject :: Lens' GlobalAccountsOperationsGet' Text
gaogProject
  = lens _gaogProject (\ s a -> s{_gaogProject = a})

-- | Name of the Operations resource to return.
gaogOperation :: Lens' GlobalAccountsOperationsGet' Text
gaogOperation
  = lens _gaogOperation
      (\ s a -> s{_gaogOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaogUserIp :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogUserIp
  = lens _gaogUserIp (\ s a -> s{_gaogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaogKey :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogKey = lens _gaogKey (\ s a -> s{_gaogKey = a})

-- | OAuth 2.0 token for the current user.
gaogOauthToken :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogOauthToken
  = lens _gaogOauthToken
      (\ s a -> s{_gaogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaogFields :: Lens' GlobalAccountsOperationsGet' (Maybe Text)
gaogFields
  = lens _gaogFields (\ s a -> s{_gaogFields = a})

-- | Data format for the response.
gaogAlt :: Lens' GlobalAccountsOperationsGet' Alt
gaogAlt = lens _gaogAlt (\ s a -> s{_gaogAlt = a})

instance GoogleRequest GlobalAccountsOperationsGet'
         where
        type Rs GlobalAccountsOperationsGet' = Operation
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u GlobalAccountsOperationsGet'{..}
          = go _gaogQuotaUser (Just _gaogPrettyPrint)
              _gaogProject
              _gaogOperation
              _gaogUserIp
              _gaogKey
              _gaogOauthToken
              _gaogFields
              (Just _gaogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAccountsOperationsGetAPI)
                      r
                      u
