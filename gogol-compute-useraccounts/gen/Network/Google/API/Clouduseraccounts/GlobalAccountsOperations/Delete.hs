{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.globalAccountsOperations.delete@.
module Network.Google.API.Clouduseraccounts.GlobalAccountsOperations.Delete
    (
    -- * REST Resource
      GlobalAccountsOperationsDeleteAPI

    -- * Creating a Request
    , globalAccountsOperationsDelete'
    , GlobalAccountsOperationsDelete'

    -- * Request Lenses
    , gaodQuotaUser
    , gaodPrettyPrint
    , gaodProject
    , gaodOperation
    , gaodUserIp
    , gaodKey
    , gaodOauthToken
    , gaodFields
    , gaodAlt
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.globalAccountsOperations.delete which the
-- 'GlobalAccountsOperationsDelete'' request conforms to.
type GlobalAccountsOperationsDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified operation resource.
--
-- /See:/ 'globalAccountsOperationsDelete'' smart constructor.
data GlobalAccountsOperationsDelete' = GlobalAccountsOperationsDelete'
    { _gaodQuotaUser   :: !(Maybe Text)
    , _gaodPrettyPrint :: !Bool
    , _gaodProject     :: !Text
    , _gaodOperation   :: !Text
    , _gaodUserIp      :: !(Maybe Text)
    , _gaodKey         :: !(Maybe Text)
    , _gaodOauthToken  :: !(Maybe Text)
    , _gaodFields      :: !(Maybe Text)
    , _gaodAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaodQuotaUser'
--
-- * 'gaodPrettyPrint'
--
-- * 'gaodProject'
--
-- * 'gaodOperation'
--
-- * 'gaodUserIp'
--
-- * 'gaodKey'
--
-- * 'gaodOauthToken'
--
-- * 'gaodFields'
--
-- * 'gaodAlt'
globalAccountsOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> GlobalAccountsOperationsDelete'
globalAccountsOperationsDelete' pGaodProject_ pGaodOperation_ =
    GlobalAccountsOperationsDelete'
    { _gaodQuotaUser = Nothing
    , _gaodPrettyPrint = True
    , _gaodProject = pGaodProject_
    , _gaodOperation = pGaodOperation_
    , _gaodUserIp = Nothing
    , _gaodKey = Nothing
    , _gaodOauthToken = Nothing
    , _gaodFields = Nothing
    , _gaodAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaodQuotaUser :: Lens' GlobalAccountsOperationsDelete' (Maybe Text)
gaodQuotaUser
  = lens _gaodQuotaUser
      (\ s a -> s{_gaodQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaodPrettyPrint :: Lens' GlobalAccountsOperationsDelete' Bool
gaodPrettyPrint
  = lens _gaodPrettyPrint
      (\ s a -> s{_gaodPrettyPrint = a})

-- | Project ID for this request.
gaodProject :: Lens' GlobalAccountsOperationsDelete' Text
gaodProject
  = lens _gaodProject (\ s a -> s{_gaodProject = a})

-- | Name of the Operations resource to delete.
gaodOperation :: Lens' GlobalAccountsOperationsDelete' Text
gaodOperation
  = lens _gaodOperation
      (\ s a -> s{_gaodOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaodUserIp :: Lens' GlobalAccountsOperationsDelete' (Maybe Text)
gaodUserIp
  = lens _gaodUserIp (\ s a -> s{_gaodUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaodKey :: Lens' GlobalAccountsOperationsDelete' (Maybe Text)
gaodKey = lens _gaodKey (\ s a -> s{_gaodKey = a})

-- | OAuth 2.0 token for the current user.
gaodOauthToken :: Lens' GlobalAccountsOperationsDelete' (Maybe Text)
gaodOauthToken
  = lens _gaodOauthToken
      (\ s a -> s{_gaodOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gaodFields :: Lens' GlobalAccountsOperationsDelete' (Maybe Text)
gaodFields
  = lens _gaodFields (\ s a -> s{_gaodFields = a})

-- | Data format for the response.
gaodAlt :: Lens' GlobalAccountsOperationsDelete' Alt
gaodAlt = lens _gaodAlt (\ s a -> s{_gaodAlt = a})

instance GoogleRequest
         GlobalAccountsOperationsDelete' where
        type Rs GlobalAccountsOperationsDelete' = ()
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u
          GlobalAccountsOperationsDelete'{..}
          = go _gaodQuotaUser (Just _gaodPrettyPrint)
              _gaodProject
              _gaodOperation
              _gaodUserIp
              _gaodKey
              _gaodOauthToken
              _gaodFields
              (Just _gaodAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAccountsOperationsDeleteAPI)
                      r
                      u
